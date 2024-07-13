-- write your queries here

-- first q

joins_exercise=# SELECT * FROM owners o
joins_exercise-# JOIN vehicles v
joins_exercise-# ON o.id = v.owner_id;


-- second q

joins_exercise=# SELECT first_name, last_name 
joins_exercise-# ,COUNT(owner_id) FROM owners o
joins_exercise-# JOIN vehicles v on o.id=v.owner_id
joins_exercise-# GROUP BY (first_name, last_name)
joins_exercise-# ORDER BY first_name;

-- third q
joins_exercise-# SELECT first_name, last_name, 
joins_exercise-# ROUND(AVG(price)) as average_price, 
joins_exercise-# COUNT(owner_id) 
joins_exercise-# FROM owners o 
joins_exercise-# JOIN vehicles v on o.id=v.owner_id 
joins_exercise-# GROUP BY (first_name, last_name) 
joins_exercise-# HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
joins_exercise-# ORDER BY first_name DESC;