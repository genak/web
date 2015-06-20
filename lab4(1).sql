CREATE DATABASE rental CHARACTER SET utf8 COLLATE utf8_general_ci;
USE rental;
CREATE TABLE pc (id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, cpu INT, memory INT, hdd INT);
INSERT INTO pc (cpu, memory, hdd)
VALUES (1600, 2000, 500), (2400, 3000, 800), (3200, 3000, 1200), (2400, 2000, 500);
-- 1)
SELECT id, cpu, memory FROM pc WHERE memory=3000;
SELECT min(hdd) AS hdd FROM pc;
SELECT count(id) AS count, hdd FROM pc WHERE hdd=(SELECT min(hdd) FROM pc);

-- 2)
CREATE TABLE track_downloads ( 
      download_id BIGINT(20) NOT NULL AUTO_INCREMENT, 
      track_id INT NOT NULL, 
      user_id BIGINT(20) NOT NULL, 
      download_time TIMESTAMP NOT NULL DEFAULT 0, 
       
      PRIMARY KEY (download_id) 
    ); 
    
SELECT download_count, count(user_id) AS user_count FROM
(
  SELECT user_id, count(download_id) AS download_count
  FROM track_downloads
  WHERE (download_time>='2010-11-10' AND download_time<'2010-11-11')
  GROUP BY user_id
) as a GROUP BY download_count;

-- 4)
CREATE TABLE student (student_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(250));
CREATE TABLE kurs (kurs_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(250));
CREATE TABLE student_kurs (student_id INT(11) UNSIGNED, kurs_id INT(11) UNSIGNED);
INSERT INTO student (name) VALUES ('Иванов1'), ('Иванов2'), ('Иванов3'), ('Иванов4'), ('Иванов5'), ('Иванов6');
INSERT INTO kurs (name) VALUES ('Курс 1'), ('Курс 2'), ('Курс 3'), ('Курс 4'), ('Курс 5'), ('Курс 6');
SELECT * FROM kurs;
TRUNCATE student_kurs;
INSERT INTO student_kurs (student_id, kurs_id) VALUES (1, 2), (1, 6), (1, 3), (1, 4), (1, 5), (1, 1),
(2, 2), (2, 3), (2, 4), (2, 5), (2, 1),
(3, 2), (3, 6), (3, 3), (3, 4), (3, 5), (3, 1),
(4, 2), (4, 6), (4, 3), (4, 4), (4, 1),
(5, 2), (5, 3), (5, 4), (5, 5), (5, 1),
(6, 2), (6, 6), (6, 3), (6, 4), (6, 5), (6, 1);

-- 4.1
SELECT COUNT(DISTINCT kurs_id) FROM
(
SELECT kurs_id, COUNT(DISTINCT student_id) AS students FROM student_kurs GROUP BY kurs_id
) AS a WHERE students > 5;
-- 4.2
SELECT DISTINCT a.name FROM kurs AS a
JOIN student_kurs AS b ON a.kurs_id=b.kurs_id
JOIN student AS c ON b.student_id=c.student_id
WHERE c.name='Иванов2';

-- 7)
CREATE TABLE users (users_id INT, name VARCHAR(250));
CREATE TABLE orders (orders_id INT, users_id INT, status INT);
INSERT INTO users VALUES (1, 'name 1'), (2, 'name 2'), (3, 'name 3'), (4, 'name 4');
TRUNCATE orders;
INSERT INTO orders VALUES (1, 1, 0), (2, 1, 1), (3, 2, 0), (4, 2, 0), (5, 1, 1), (6, 1, 1), (7, 1, 1), (8, 1, 1), (9, 1, 1);
-- 7.1
SELECT name FROM users
WHERE users_id IN (SELECT DISTINCT users_id FROM orders WHERE status = 0)
and users_id NOT IN (SELECT DISTINCT users_id FROM orders WHERE status <> 0);
-- 7.2
SELECT name from users WHERE users_id IN
  (SELECT users_id FROM orders WHERE status=1 GROUP BY users_id HAVING COUNT(orders_id) > 5);
