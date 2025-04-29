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
