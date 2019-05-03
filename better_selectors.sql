/* DISTINCT */
/* return only one if there are many */
SELECT DISTINCT author_lname FROM books;

SELECT 
    DISTINCT CONCAT(author_fname, ' ', author_lname ) 
FROM books;

SELECT
    DISTINCT author_fname, author_lname
FROM books;

/* ORDER BY */
/* ascending by default */

SELECT
    author_lname
FROM books
ORDER BY author_lname DESC;

SELECT
    title, released_year, pages
FROM books ORDER BY 2;

SELECT
    author_fname, author_lname
FROM books ORDER BY author_lname, author_fname;

/* LIMIT */

SELECT title FROM books LIMIT 5;

SELECT 
    title, released_year
FROM books
ORDER BY released_year DESC LIMIT 0,5;

/* every thing after 5 */
SELECT 
    title, released_year
FROM books
ORDER BY released_year DESC LIMIT 5,555555555555555;

/* LIKE */
SELECT title, author_fname
FROM books
WHERE author_fname LIKE '%da%';

/* _ = 1 char long */
/* % = anything or nothing */
SELECT title, author_fname
FROM books
WHERE stock_quantity
stock_quantity LIKE '____';