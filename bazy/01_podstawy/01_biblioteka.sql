mysql -u root
CREATE DATABASE 4_2_biblioteka; 
SHOW DATABASES;
DROP DATABASE 4e_2_exam;
USE 4_2_biblioteka;
CREATE TABLE books(
    autor text,
    title text,
    price int
);