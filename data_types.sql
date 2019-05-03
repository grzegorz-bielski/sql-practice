/*
CURDATE() - curr date
CURTIME() - curr time
NOW() - curr datetime

*/

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (
    name,
    birthdate,
    birthtime,
    birthdt
) 
VALUES (
    'Padma', 
    '1983-11-11',
    '10:07:35',
    '1983-11-11 10:07:35'
), (
    'Larry',
    '1983-12-11',
    '11:07:35',
    '1983-12-11 11:07:35'
);

INSERT INTO people (
    name,
    birthdate,
    birthtime,
    birthdt
) 
VALUES (
    'Microwave', 
    CURDATE(),
    CURTIME(),
    NOW()
);

/*
DAY()
DAYNAME()
DAYOFWEEK()
DAYOFYEAR()
MONTH()
DATE_FORMAT()
*/
SELECT
    name,
    DATE_FORMAT(birthdt, '%W %M %Y') as 'date',
    DAYNAME(birthdt) AS day
FROM people;

/*
DATEDIFF
DATE_ADD
+/-
*/
SELECT
    name,
    birthdate,
    DATEDIFF(NOW(), birthdate)
FROM people;

SELECT 
    birthdt,
    DATE_ADD(birthdt, INTERVAL 1 MONTH)
FROM people;

SELECT 
    birthdt,
    birthdt + INTERVAL 1 MONTH
FROM people;

/* timestamps */
CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments2 (
    content
)
VALUES (
    'fhat wqddwqwqda story Mark'
);

CREATE TABLE comments2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

UPDATE comments2
SET content='ajajaja'
WHERE content='fhat wqddwqwqda story Mark';