SELECT productname, categoryname, price
FROM products
    JOIN categories ON products.categoryid = categories.categoryid; 


SELECT productname, categoryname, price
FROM products
    JOIN categories ON products.categoryid = categories.categoryid
WHERE price BETWEEN 10 AND 50;
select supplierid, suppliername
from suppliers;

select supplierid, suppliername
from suppliers;


SELECT productname, price
FROM products;


SELECT productname, price 
FROM products
WHERE supplierID = 1;


SELECT shipperid,shippername
FROM shippers;