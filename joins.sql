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
  FROM users
  INNER JOIN posts
  ON users.id=posts.id
  WHERE users.created_at < '2015-01-01';

--7
SELECT comments.*, posts.title AS "Post Title"
  FROM comments
  INNER JOIN posts
  ON comments.id=posts.id;

--8
SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
  FROM comments
  INNER JOIN posts
  ON comments.id=posts.id
  INNER JOIN users
  ON users.id=posts.id
  WHERE users.created_at < '2015-01-01';

--9
SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
  FROM comments
  INNER JOIN posts
  ON comments.id=posts.id
  INNER JOIN users
  ON users.id=posts.id
  WHERE users.created_at > '2015-01-01';

--10
SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
  FROM comments
  INNER JOIN posts
  ON comments.id=posts.id
  WHERE comments.body LIKE '%USB%';

--11 -- 855 results
SELECT posts.title AS "post_title", users.first_name, users.last_name, comments.body AS "comment_body"
  FROM posts
  INNER JOIN comments
  ON posts.id=comments.id
  INNER JOIN users
  ON posts.id=users.id
  WHERE comments.body LIKE '%matrix%';

--12 -- 102 results
SELECT users.first_name, users.last_name, comments.body AS "comment_body"
  FROM comments
  INNER JOIN users
  ON comments.post_id=users.id
  INNER JOIN posts
  ON comments.post_id=posts.id
  WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

  --13 -- 218 results
SELECT users.first_name AS "post_author_first_name", users.last_name AS "post_author_last_name", posts.title AS "post_title", users.username AS "comment_author_username", comments.body AS "comment_body"
  FROM comments
  INNER JOIN users
  ON comments.post_id=users.id
  INNER JOIN posts
  ON comments.post_id=posts.id
  WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND posts.content LIKE '%nemo%';