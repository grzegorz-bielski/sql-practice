/* concat */
SELECT 
    CONCAT(author_fname,' ', author_lname) AS 'Full name'
FROM books;

SELECT
    author_fname AS first,
    author_lname AS last,
    CONCAT(author_fname, ' ', author_lname) AS full
FROM books;

SELECT
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;

/* substring */
SELECT SUBSTRING('Hello World,', 1, 4);
SELECT SUBSTRING('Hello World,', 7);

SELECT
    SUBSTRING(title, 1, 10) AS 'short title'
FROM books;

SELECT
    CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;

/* replace */
SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT
    SUBSTRING(
        REPLACE(title, 'e', '3'),
        1,
        10
    ) AS 'weird string'
FROM books;

/* reverse */
SELECT REVERSE('Hello World');

/* char length */
SELECT CHAR_LENGTH('Hello World');

SELECT author_lname, CHAR_LENGTH(author_lname) 
    AS 'length'
FROm books;

/* upper, lower */
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');

SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

SELECT 
    REPLACE(title, ' ', '->') AS title
FROM books;

SELECT
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
FROM books;

SELECT
    UPPER(
        CONCAT(author_fname, ' ', author_lname)
    ) AS 'full name in caps'
FROM books;

SELECT
    CONCAT(
        title,
        ' was realised in ',
        released_year
    ) AS blurb
FROM books;

SELECT
    title, 
    CHAR_LENGTH(title) AS 'characters count'
FROM books;

SELECT
    CONCAT(
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title',
    CONCAT(
        author_lname, ',',author_fname
    ) AS 'author',
    CONCAT(
        stock_quantity,
        ' in stock'
    ) AS 'stock quantity'
FROM books;
    

