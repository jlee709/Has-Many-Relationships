
-- 1. Create a new postgres user named `has_many_user`
-- 1. Create a new database named `has_many_blogs` owned by `has_many_user`

-- 1. Before each create table statement, add a drop table if exists statement.
-- 1. In `has_many_blogs.sql` Create the tables (including any PKs, Indexes, and Constraints that you may need) to fulfill the requirements of the **has_many_blogs schema** below.
-- 1. Create the necessary FKs needed to relate the tables according to the **relationship table** below.
-- 1. Run the provided `scripts/blog_data.sql`

DROP DATABASE IF EXISTS has_many_blogs;
DROP USER IF EXISTS has_many_user;

CREATE USER normal_user;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;