-- SELECT city, count(reservations.*) as number_of_reservations
-- FROM properties
-- JOIN reservations ON properties.id = property_id
-- ORDER BY city; 

SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;