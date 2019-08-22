SELECT reservations.*, properties.*, AVG(property_reviews.rating)
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON property_reviews.reservation_id = reservations.id
WHERE property_reviews.guest_id = '1'
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date DESC
LIMIT 10
;