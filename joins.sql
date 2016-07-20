--1
SELECT *
  FROM users;

--2
SELECT *
  FROM posts
  WHERE user_id = 100;

--3
SELECT users.first_name, users.last_name, posts.id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, posts.user_id
  FROM users, posts
  WHERE posts.user_id = 200;

--4
SELECT users.username, posts.id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, posts.user_id
  FROM users, posts
  WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

--5
SELECT username
  FROM users
  WHERE created_at > '2015-01-01';

--6
SELECT posts.title, posts.content, users.username
  FROM posts, users
  WHERE users.created_at < '2015-01-01';

--7


--8

--9

--10

--11

--12

--13
