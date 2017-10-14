-- start
DROP DATABASE IF EXISTS has_many_blogs;
DROP USER IF EXISTS has_many_user;

CREATE USER normal_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs normal_user;
\i blog_data.sql;


--drop table if exits 
DROP TABLE IF EXISTS users_table

CREATE TABLE Users (
id int,
user_name varchar(90)
last_name varchar(90),
first_name varchar(90), 
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS posts_table

CREATE TABLE Posts(
UserID 100,

)


-- 1. In `has_many_blogs.sql` Create the tables (including any PKs, Indexes, and Constraints that you may need)
 -- to fulfill the requirements of the **has_many_blogs schema** below.


-- 1. Create the necessary FKs needed to relate the tables according to the **relationship table** below.
-- 1. Run the provided `scripts/blog_data.sql`


-- 1. Create a query to get all fields from the `users` table
-- 1. Create a query to get all fields from the `posts` table where the `user_id` is 100