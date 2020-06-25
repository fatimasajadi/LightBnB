SELECT properties.id as id, properties.title as title, properties.cost_per_night as cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id= property_reviews.id 
WHERE city LIKE '%ancouv%'
HAVING avg(property_reviews.rating) >= 4
GROUP BY properties.id
ORDER BY cost_per_night;