/* COUNT */
SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;

SELECT
COUNT(*)
FROM books
WHERE title LIKE '%the%';

/* GROUP BY */
/* summarizes identical data into single rows */
/* COUNT(*) -> how many things are under author_lname */
SELECT 
    author_lname, 
    COUNT(*) AS 'number of written books'
FROM books GROUP BY author_lname;

SELECT
    author_fname,
    author_lname,
    COUNT(*)
FROM books
GROUP BY author_lname, author_fname;

SELECT
    CONCAT(
        'In ',
        released_year,
        ' ',
        COUNT(*),
        ' book(s) released'
    )
FROM books
GROUP BY released_year;

/*MIN MAX*/
SELECT MIN(released_year)
FROM books;
/* Subqueries - slow */
SELECT title FROM books
WHERE pages = (SELECT Min(pages) FROM books);

SELECT title FROM books
ORDER BY pages ASC LIMIT 1;

SELECT
    author_fname,
    author_lname,
    MIN(released_year)
FROM books
GROUP BY 
    author_lname,
    author_lname;

/* SUM */
SELECT SUM(pages)
FROM books;

SELECT
    author_fname,
    author_lname,
    SUM(pages)
FROM books
GROUP BY author_lname, author_lname;

/* AVG */
SELECT
    AVG(released_year)
FROM books;

SELECT
    author_fname,
    author_lname,
    AVG(pages)
FROM books
GROUP BY author_lname, author_fname;
