CREATE DATABASE rental CHARACTER SET utf8 COLLATEutf8_general_ci;
USE rental;
CREATE TABLE dvd (dvd_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(250), production_year YEAR);
CREATE TABLE customer (customer_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(250), last_name VARCHAR(250), passport_code VARCHAR(50), registration_date DATETIME);
CREATE TABLE offer (offer_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, dvd_id INT(11) UNSIGNED, customer_id INT(11) UNSIGNED, offer_date DATETIME, return_date DATETIME);

INSERT INTO dvd (title, production_year) SELECT 'first', 2010 UNION SELECT 'second', 2010 UNION SELECT 'third', 2011 UNION SELECT 'forth', 2010 UNION SELECT 'fifth', 2010;
INSERT INTO customer (first_name, last_name, passport_code, registration_date) SELECT 'John', 'Smith', '111', now() UNION SELECT 'Sarah', 'Keith', '2220', now();
INSERT INTO offer (customer_id, dvd_id, offer_date, return_date) SELECT 1, 1, '2014-03-01', '2014-03-20' UNION SELECT 1, 2, '2015-04-05', '2015-04-10' UNION SELECT 2, 3, '2015-05-05', '2015-05-10' UNION SELECT 2, 4, '2015-05-10', NULL;

SELECT * FROM dvd WHERE production_year=2010 ORDER BY title;
SELECT * FROM dvd WHERE dvd_id IN (SELECT dvd_id FROM offer WHERE return_date IS NULL OR return_date > now());
SELECT first_name, last_name, passport_code, registration_date, title FROM customer AS c JOIN offer AS o ON c.customer_id=o.customer_id JOIN dvd AS d ON d.dvd_id=o.dvd_id WHERE YEAR(o.offer_date)=YEAR(now()) OR YEAR(o.return_date)=YEAR(now())