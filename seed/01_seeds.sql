INSERT INTO users (name, email, password) VALUES ('Jane', 'jane@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Bob', 'bob@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jack', 'jack@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Max', 'max@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Mary', 'mary@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url,
cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, 
number_of_bedrooms, country, street, city, province, post_code, active) VALUES ( 1, 'cozy bright', 'description','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marniehomes.com%2Fmarnies-notebook%2Fcozy-home-ideas-welcome-fall%2F&psig=AOvVaw1Rf8xE9zX_f7xi9f8qRrlV&ust=1593140766434000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDe_v39m-oCFQAAAAAdAAAAABAD',
 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fkenclayseclee%2Fphotos%2Fd41d8cd9%2F457279591799381%2F&psig=AOvVaw170cGb-KlRUlmmcSduSTK7&ust=1593140898375000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOD_z73-m-oCFQAAAAAdAAAAABAD',
50,1,2,2,'Canada','Rideau','Ottawa', 'Ontario', 'K1N0B7', TRUE),
( 2, 'amazing palace', 'description','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marniehomes.com%2Fmarnies-notebook%2Fcozy-home-ideas-welcome-fall%2F&psig=AOvVaw1Rf8xE9zX_f7xi9f8qRrlV&ust=1593140766434000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDe_v39m-oCFQAAAAAdAAAAABAD',
 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fkenclayseclee%2Fphotos%2Fd41d8cd9%2F457279591799381%2F&psig=AOvVaw170cGb-KlRUlmmcSduSTK7&ust=1593140898375000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOD_z73-m-oCFQAAAAAdAAAAABAD',
100,1,1,2,'Germany','Berlin','Berlin', 'Berlin', 'B1B0B7', False
),
( 3, 'downtown tower', 'description','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marniehomes.com%2Fmarnies-notebook%2Fcozy-home-ideas-welcome-fall%2F&psig=AOvVaw1Rf8xE9zX_f7xi9f8qRrlV&ust=1593140766434000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDe_v39m-oCFQAAAAAdAAAAABAD',
 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fkenclayseclee%2Fphotos%2Fd41d8cd9%2F457279591799381%2F&psig=AOvVaw170cGb-KlRUlmmcSduSTK7&ust=1593140898375000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOD_z73-m-oCFQAAAAAdAAAAABAD',
150,1,2,3,'Canada','Queens West','Toronto', 'Ontario', 'K2N0G7', TRUE
),
( 4, 'forest cabin', 'description','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marniehomes.com%2Fmarnies-notebook%2Fcozy-home-ideas-welcome-fall%2F&psig=AOvVaw1Rf8xE9zX_f7xi9f8qRrlV&ust=1593140766434000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDe_v39m-oCFQAAAAAdAAAAABAD',
 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fkenclayseclee%2Fphotos%2Fd41d8cd9%2F457279591799381%2F&psig=AOvVaw170cGb-KlRUlmmcSduSTK7&ust=1593140898375000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOD_z73-m-oCFQAAAAAdAAAAABAD',
90,2,2,4,'Iran','Tehran','Tehran', 'Tehran', 'W1N0B0', TRUE
),
( 5, 'cozy', 'description','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marniehomes.com%2Fmarnies-notebook%2Fcozy-home-ideas-welcome-fall%2F&psig=AOvVaw1Rf8xE9zX_f7xi9f8qRrlV&ust=1593140766434000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDe_v39m-oCFQAAAAAdAAAAABAD',
 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Fkenclayseclee%2Fphotos%2Fd41d8cd9%2F457279591799381%2F&psig=AOvVaw170cGb-KlRUlmmcSduSTK7&ust=1593140898375000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOD_z73-m-oCFQAAAAAdAAAAABAD',
40,1,1,1,'Canada','Prince Philip','St Johns', 'NL', 'A1B1B7', TRUE
);


INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ('2019-01-04', '2020-01-04', 1,1),
('2015-01-04', '2020-01-04', 2,2),
('2019-01-04', '2020-01-01', 3,3),
('2017-01-04', '2020-01-04', 4,4),
('2016-01-04', '2020-01-04', 5,5);


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message ) VALUES (1,1,1,5,'That was amazing!'),
(2,2,2,5,'That was great!'),
(3,3,3,5,'That was great!'),
(4,4,1,4,'That was great but a little over priced!!'),
(5,5,1,5,'That was awesome!');