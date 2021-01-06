SELECT properties.id, properties.title, properties.cost_per_night, AVG(rating) AS average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(rating) >= 4
ORDER BY properties.cost_per_night
LIMIT 10;