/* = != */
SELECT 
    title,
    released_year
FROM books
WHERE released_year != 2017;

/* LIKE, NOT LIKE */
SELECT title
FROM books
WHERE title LIKE '%W';

SELECT title
FROM books
WHERE title NOT LIKE '%W';

/* > >= <= < */
SELECT * FROM books
WHERE released_year > 2000;

/* && / AND */
SELECT * FROM books
WHERE author_lname='Eggers' && released_year > 2010;

/* || / OR */
SELECT * FROM books
WHERE author_lname='Eggers' || released_year > 2010;

/* BETWEEN, NOT BETWEEN */
SELECT 
    title,
    released_year
FROM books
WHERE released_year BETWEEN 2004 AND 2015;

/* comparing dates 
    changing type for consistency reason
*/
SELECT 
    name,
    birthdt
FROM people
WHERE birthdt 
BETWEEN 
    CAST('1980-05-02' AS DATETIME)
    AND CAST('2000-05-02' AS DATETIME);
    
/* IN, NOT IN */
SELECT 
    title, 
    author_lname
FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT
    title,
    released_year
FROM books
WHERE
    released_year >= 2000
    AND released_year NOT IN (
        2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016
    );

/* % */
SELECT
    title,
    released_year
FROM books
WHERE 
    released_year >= 2000
    AND released_year & 2 != 0;
    
/* case statements */
SELECT 
    title, 
    released_year,
    CASE
        WHEN released_year >= 200 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS Genre
FROM books;

SELECT 
    title, 
    released_year,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

SELECT 
    title, 
    released_year,
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
