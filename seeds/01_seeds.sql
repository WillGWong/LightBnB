INSERT INTO users (name, email, password) VALUES
('Eva Stanley', 'EStanley@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer', 'LMeyer@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks', 'DParks@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
;

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, street, parking_spaces, number_of_bathrooms, 
number_of_bedrooms, country, city, province, post_code, active) VALUES
(1, '333', 'autobody collision', 'thumb.png', 'cover.png', 15.00, 'Clark Dr', 5, 1, 2, 'Canada', 'Vancouver', 'BC', 'V9S3D7', FALSE),
(2, 'Red Gate', 'studios', 'thumb.png', 'cover.png', 5.00, 'Main St.', 2, 3, 4, 'Canada', 'Vancouver', 'BC', 'V3A9V6', TRUE),
(3, 'Deep Blue', 'warehouse','thumb.png', 'cover.png', 20.00, 'Broadway', 12, 2, 1, 'Canada', 'Vancouver', 'BC', 'V2N8K6', TRUE)
;

INSERT INTO rates (start_date, end_date, cost_per_night, property_id) VALUES
('2019-01-30', '2019-02-02', 15.00, 1),
('2018-03-07', '2018-03-10', 20.00, 3),
('2019-04-20', '2019-04-21', 5.00, 2)
;

INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES
('2018-09-11', '2018-09-26', 1, 3),
('2019-01-04', '2019-02-01', 2, 1),
('2021-10-01', '2021-10-14', 3, 2)
;

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message) VALUES
(3, 1, 1, 2, 'dirty'),
(1, 2, 2, 3, 'too small'),
(2, 3, 3, 5, 'large space')
;

INSERT INTO guest_reviews (guest_id, reservation_id, owner_id, rating, message) VALUES
(3, 1, 1, 4, 'clean'),
(1, 2, 2, 3, 'polite'),
(2, 3, 3, 1, 'noisy')
;