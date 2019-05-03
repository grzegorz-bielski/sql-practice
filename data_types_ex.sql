CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

SELECT CURTIME() as time;
SELECT DATE() as 'date';
SELECT DAYOFWEEK(NOW()) AS 'day of week';
SELECT DATE_FORMAT(NOW(), '%w') + 1 AS 'num day of the week';
SELECT DATE_FORMAT(NOW(), '%W') + 1 AS 'day of the week';
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweet (
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);