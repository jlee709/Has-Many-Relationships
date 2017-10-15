
-- 1. Create a query to get all fields from the `posts` table where the `user_id` is 100
SELECT * FROM users;

SELECT * FROM posts WHERE users_id = 100;
-- 1. Create a query to get all posts fields, the user's first name, and the user's last name, from the `posts` table where the user's id is 200

SELECT first_name, last_name, posts * FROM users;
INNER JOIN posts ON posts.users_id = users_id;
WHERE users_id = 200;

-- 1. Create a query to get all posts fields, and the user's username, from the `posts` table where the user's first name is 'Norene' and the user's lastame is 'Schmitt'

SELECT posts *, users.username FROM users;
INNER JOIN posts ON posts.users_id = users.id;
WHERE first_name = "Norene" AND lastame = "Schmitt";

-- 1. Create a query to get usernames from the `users` table where the user has created a post after January 1, 2015

SELECT users.username FROM users;
INNER JOIN posts ON posts.users_id = users_id;
WHERE posts.created_at > "January 1, 2015";


-- 1. Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015

-- 1. Create a query to get the all rows in the `comments` table, showing post title (aliased as 'Post Title'), and the all the comment's fields









