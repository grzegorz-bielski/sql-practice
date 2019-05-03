SELECT 10 != 10; // 0
SELECT 15 > 14 && 99 - 5 <= 94; // 1
SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10; // 1

SELECT title
FROM books
WHERE released_year < 1980;

SELECT title, author_lname
FROM books
WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

SELECT title, author_lname
FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200;

SELECT title
FROM books
WHERE SUBSTR(
    author_lname,
    1,
    1
) IN ('C', 'S');

SELECT
    title,
    author_lname,
     CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' || title = 'A Heartbreaking Work of Staggering Genius'  THEN 'Memoir'
        ELSE 'Novel'
    END AS 'Type'
FROM books;

SELECT
    author_fname
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS 'COUNT'
FROM books
GROUP BY author_lname, author_fname;