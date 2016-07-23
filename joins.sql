-- 1. Create a query to get all fields from the users table
SELECT * FROM users;

-- 2. Create a query to get all fields from the posts table where the user_id is 100
SELECT * FROM posts WHERE user_id = 100;

-- 3. Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200
SELECT *, users.first_name, users.last_name FROM posts
  INNER JOIN users ON posts.user_id = users.id
  WHERE posts.user_id = 200;

-- 4. Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'
SELECT *, users.username FROM posts
  INNER JOIN users ON posts.user_id = users.id
  WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

-- 5. Create a query to get usernames from the users table where the user has created a post after January 1, 2015
SELECT username FROM users
  INNER JOIN posts ON users.id = posts.user_id
  WHERE posts.created_at > '2015-01-01';