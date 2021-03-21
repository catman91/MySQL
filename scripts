# скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные
таблицы)
 
 SELECT users_id_users, first_name, last_name
 FROM profiles
 WHERE first_name = 'Роман' ;

SELECT users_id_users, 
'ACTIVE', 
UPPER(first_name), UPPER(last_name)
FROM profiles

SELECT DISTINCT id_product_type
FROM products ;

SELECT users_id_users, first_name, last_name, adress
FROM profiles
WHERE users_id_users = (SELECT MAX(users_id_users) FROM profiles) ;
SELECT first_name, last_name, id_sales
FROM  profiles JOIN sales 
ON id_sales = id_sales ;

SELECT first_name, last_name 
FROM profiles 
ORDER BY first_name DESC LIMIT 5;

SELECT first_name, last_name, users_id_users
FROM profiles 
HAVING users_id_users > 3 ;

# представления

CREATE VIEW profiles_vw AS
SELECT users_id_users, first_name, last_name, birthday_date
FROM profiles ;

SELECT users_id_users, birthday_date
FROM profiles_vw ;

CREATE VIEW tasks_vw AS
SELECT id_tasks, users_id_users, task
FROM tasks ;

SELECT task
FROM tasks_vw ;
