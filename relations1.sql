CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8, 2),
    costomer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
/* find every order of the customer */
SELECT * FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id=1;

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
    
/* ....joins way */

/* cross join - meaningless */
/* order after FROM doesn't matter */
SELECT * FROM customers, orders;

/* implicit inner join */
SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id;

/* explicit inner join */
/* things from common for A and B */
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;
    
/* left join */
/* everything from 1, (along with anything in that was also in 2) */
/* IFNULL */
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent DESC;

/* right join */
/* everythings from 2, along with any matching things in 1 */
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;
    
/* ON DELETE CASCADE */
/* deleting customer with all his orders */
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8, 2),
    costomer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
        
);