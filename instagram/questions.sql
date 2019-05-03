-- 5 oldest users
SELECT
    username,
    created_at
FROM users
ORDER BY created_at LIMIT 5;

-- what day of the week do most users register on?
SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC LIMIT 2;

-- users who have never posted a photo
SELECT
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- who has most likes on a single photo
SELECT
    username,
    photos.image_url AS url,
    photos.id AS photo_id,
    COUNT(*) AS Likes
FROM photos
JOIN likes
    ON photos.id = likes.photo_id
JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY Likes DESC LIMIT 1;

-- how many times does the average user post?
SELECT
    COUNT(DISTINCT photos.id) / COUNT(DISTINCT users.id) AS avg_posts_per_user
FROM users
LEFT JOIN photos
    ON photos.user_id = users.id;
    
-- 5 most commonly used hashtags
SELECT 
    tags.tag_name,
    COUNT(*) as total
FROM photo_tags
JOIN tags
    ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC LIMIT 5;

-- users who have liked every photo
/* HAVING */
/*
1. counting how many likes gave every user
2. counting what is maximium amount of likes someone could give
( number of photos )
*/
SELECT 
    username,
    COUNT(*) as total
FROM users
JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total = (SELECT COUNT(*) FROM photos);