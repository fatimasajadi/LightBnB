const { Pool } = require('pg')
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  database: 'lightbnb'
});

const properties = require('./json/properties.json');
const users = require('./json/users.json');

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {

  const query = `SELECT * FROM users WHERE email=$1`;
  return pool.query(query, [email])
    .then(res => res.rows[0])

  .catch(err => console.error(err));
}
exports.getUserWithEmail = getUserWithEmail;

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {

  const query = `SELECT * FROM users WHERE id = $1`;
  return pool.query(query, [id])
    .then(res => res.rows[0])
    .catch(err => console.error(err));

}
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser = function(user) {
  const query = `INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING *`;
  return pool.query(query, [user.name, user.email, user.password])
    .then(res => res.rows[0])
    .catch(err => console.error(err));
}
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  const query = `SELECT properties.*, reservations.*, avg(rating) as average_rating
  FROM reservations
  JOIN properties ON reservations.property_id = properties.id
  JOIN property_reviews ON properties.id = property_reviews.property_id 
  WHERE reservations.guest_id = $1
  AND reservations.end_date < now()::date
  GROUP BY properties.id, reservations.id
  ORDER BY reservations.start_date
  LIMIT ${limit}`;
  return pool.query(query, [guest_id])
    .then(res => res.rows[0])
    .catch(err => console.error(err));

}
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = function(options, limit = 10) {
  // 1 define an array to hold any params that are available
  const queryParams = [];
  // 2 start the query with everything that comes before the where clause
  let queryString = `
  SELECT properties.*, avg(property_reviews.rating) as average_rating
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  `;

  // 3 check if a city has been passed as an option, add the city to the params array and create a where clause
  if (options.city) {
    queryParams.push(`%${options.city}%`);
    queryString += `WHERE city LIKE $${queryParams.length} `;
  }

  // check if an owner_id is passed, add the owner_id and update the where clause with an AND stmt
  if (options.owner_id) {
    queryParams.push(`%${options.owner_id}%`);
    queryString += ` AND owner_id = $${queryParams.length}`;
  }

  if (options.minimum_price_per_night || options.maximum_price_per_night) {
    queryParams.push(parseInt(`${options.minimum_price_per_night * 100}`));
    const minParam = queryParams.length;
    queryParams.push(parseInt(`${options.maximum_price_per_night * 100}`));
    const maxParam = queryParams.length;
    queryString += ` AND cost_per_night BETWEEN $${minParam} AND $${maxParam}`;
  }

  if (options.minimum_rating) {
    queryParams.push(Number(options.minimum_rating));
    queryString += ` AND rating >= $${queryParams.length}`;
  }

  // 4 add any query that comes after the where clause
  queryParams.push(limit);
  queryString += `
  GROUP BY properties.id
  ORDER BY cost_per_night
  LIMIT $${queryParams.length};
  `;

  // 5 inspect output
  console.log('queryString: ', queryString, 'queryParams', queryParams);

  // 6 return the promise
  return pool.query(queryString, queryParams)
    .then(res => {
      return res.rows;
    });

}
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const query = `INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, 
    cost_per_night, street, city, province, post_code, country, parking_spaces, number_of_bathrooms, 
    number_of_bedrooms) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14) RETURNING *`;
  return db.query(query, [property.owner_id, property.title, property.description, property.thumbnail_photo_url,
      property.cover_photo_url, property.cost_per_night, property.street, property.city, property.province,
      property.post_code, property.country, property.parking_spaces, property.number_of_bathrooms,
      property.number_of_bedrooms
    ])
    .then(res => res.rows)
    .catch(err => console.error(err));
}
exports.addProperty = addProperty;