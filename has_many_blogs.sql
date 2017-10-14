-- checking and driopping key DB if they exist 

DROP DATABASE IF EXISTS has_many_blogs;
DROP USER IF EXISTS has_many_user;
CREATE USER has_many_user;
CREATE DATABASE has_many_blogs WITH owner has_many_user;

--connecting
\c has_many_blogs has_many_user;

--drop TABLES if exists on script run
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;


-- creating main user table 
CREATE TABLE users (
  id serial not null primary key,
  username character varying(90) not null,
  first_name character varying(90),
  last_name character varying(90),
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

-- creating posts table with referance to users id 
CREATE TABLE posts (
  id serial not null primary key,
  title character varying(180),
  url character varying(510),
  content text,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  users_id integer references users(id) not null
);

-- creating comment table with referance to users and posts id
CREATE TABLE  comments (
  id serial not null primary key,
  body character varying(510),
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  users_id integer references users(id) not null,
  posts_id integer references posts(id) not null
);

--runs main script

\i scripts/blog_data.sql