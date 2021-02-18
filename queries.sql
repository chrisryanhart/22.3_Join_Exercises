-- write your queries here

SELECT *
FROM vehicles;

SELECT * 
FROM owners;

--1.
SELECT *
FROM owners o
LEFT JOIN vehicles v
ON o.id=v.owner_id;

--2.
SELECT o.first_name,o.last_name, COUNT(v.owner_id) AS vehicle_count
FROM owners o
JOIN vehicles v
ON o.id=v.owner_id
GROUP BY o.id
ORDER BY vehicle_count, o.first_name;

 as Integer
--3. 
SELECT o.first_name,o.last_name, ROUND(AVG(v.price)) AS avg_price,COUNT(v.owner_id) AS car_count
FROM owners o
JOIN vehicles v
ON o.id=v.owner_id
GROUP BY o.id
HAVING COUNT(v.owner_id)>1 AND ROUND(AVG(v.price)) > 10000
ORDER BY car_count DESC


