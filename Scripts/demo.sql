-- sending letter to Mary Smith

SELECT * from sakila.customer c ; --   adrress id = 5

SELECT * FROM sakila.address a WHERE a.address_id  = 5; -- city = 463

SELECT * FROM sakila.city c  WHERE c.city_id  = 463;

SELECT * FROM sakila.country c2  WHERE c2.country_id  = 50;


SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS 'Full Name', 
    CONCAT(a.address, ' ', a.district, ', ', ci.city, ' ', co.country) AS 'Full Address'
FROM 
    sakila.customer c
left JOIN 
    sakila.address a ON c.address_id = a.address_id
left JOIN 
    sakila.city ci ON a.city_id = ci.city_id
INNER JOIN 
    sakila.country co ON ci.country_id = co.country_id WHERE CONCAT(c.first_name, ' ', c.last_name) like "Mary%" ;

