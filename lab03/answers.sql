-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name 
FROM users 
ORDER BY last_name;



-- Exercise 4
SELECT id, user_id, image_url 
FROM posts 
WHERE user_id=26;



-- Exercise 5
SELECT id, user_id, image_url 
FROM posts 
WHERE user_id=12 OR user_id=26;



-- Exercise 6
SELECT count(*) FROM posts



-- Exercise 7
SELECT user_id, count(*) 
FROM comments 
GROUP BY user_id 
ORDER BY count desc;



-- Exercise 8*
SELECT p.id, p.image_url, p.user_id, u.username, u.first_name, u.last_name 
FROM posts p
INNER JOIN users u
ON u.id = p.user_id
WHERE p.user_id=26 OR p.user_id=12;



-- Exercise 9*
SELECT p.id, p.pub_date, f.following_id 
FROM posts p
INNER JOIN following f
ON p.user_id = f.following_id
WHERE f.user_id = 26;



-- Exercise 10




-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp) 
VALUES (26, 219, now()), (26, 220, now()), (26, 221, now());



-- Exercise 12
DELETE FROM bookmarks 
WHERE user_id = 26 AND (post_id = 219 OR post_id = 220 OR post_id = 221);



-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com' 
WHERE id = 26;



-- Exercise 14
