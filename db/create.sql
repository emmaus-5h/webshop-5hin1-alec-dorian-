--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  Artist_id INTEGER,
  Rating_id INTEGER
);


CREATE TABLE Artist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE Rating (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE FeaturedArtist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);


CREATE TABLE ProductMetFeaturedArtist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Product_id INTEGER,
  FeaturedArtist_id INTEGER,
  FOREIGN KEY (Product_id) REFERENCES products(id),
  FOREIGN KEY (FeaturedArtist_id) REFERENCES FeaturedArtist(id)
);



--heb de site https://www.w3schools.com/sql/sql_foreignkey.asp#:~:text=A%20FOREIGN%20KEY%20is%20a,the%20referenced%20or%20parent%20table. gebruikt voor het maken van N op M

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, Artist_id, Rating_id) values ('Blond', 'Frank Ocean', '816905633-0', 29.99, 1, 2);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('My Beatiful Dark Twisted Fantasy', 'Ye', '077030122-3', 24.99, 2, 2);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('The Life of Pablo', 'Ye', '445924201-X', 24.99, 2, 3);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('Utopia', 'Travis Scott', '693155505-7', 29.99, 3, 3);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('To Pimp a Butterfly', 'Kendrick Lamar', '686928463-6', 14.99, 4, 1);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('Flower Boy', 'Tyler the Creator', '492662523-7', 24.99, 5, 2);
insert into products (name, description, code, price, Artist_id, Rating_id) values ('Astroworld', 'Travis Scott', '816905633-0', 29.99, 3, 3 );
insert into products (name, description, code, price, Artist_id, Rating_id) values ('Graduation', 'Ye', '077030122-3', 19.99, 2, 3 );
insert into products (name, description, code, price, Artist_id, Rating_id) values ('IGOR', 'Tyler the Creator', '445924201-X', 24.99, 5, 2 );
insert into products (name, description, code, price, Artist_id, Rating_id) values ('Damn', 'Kendrick Lamar', '693155505-7', 24.99, 4, 3 );


insert into Artist (name) values ('Frank Ocean');
insert into Artist (name) values ('Ye');
insert into Artist (name) values ('Travis Scott');
insert into Artist (name) values ('Kendrick Lamar');
insert into Artist (name) values ('Tyler the Creator');

insert into Rating (name) values ('10/10');
insert into Rating (name) values ('9/10');
insert into Rating (name) values ('8/10');
insert into Rating (name) values ('7/10');
insert into Rating (name) values ('6/10');
insert into Rating (name) values ('5/10');
insert into Rating (name) values ('4/10');
insert into Rating (name) values ('3/10');
insert into Rating (name) values ('2/10');
insert into Rating (name) values ('1/10');

insert into FeaturedArtist (name) values ('Pharrell Williams');
insert into FeaturedArtist (name) values ('Tyler The Creator');
insert into FeaturedArtist (name) values ('Kanye West');
insert into FeaturedArtist (name) values ('Beyoncé');
insert into FeaturedArtist (name) values ('Frank Ocean');
insert into FeaturedArtist (name) values ('Drake');
insert into FeaturedArtist (name) values ('21 Savage');
insert into FeaturedArtist (name) values ('Kid Cudi');
insert into FeaturedArtist (name) values ('The Weeknd');
insert into FeaturedArtist (name) values ('JAY-Z');
insert into FeaturedArtist (name) values ('Nicki Minaj');
insert into FeaturedArtist (name) values ('Kendrick Lamar');
insert into FeaturedArtist (name) values ('Playboi Carti');
insert into FeaturedArtist (name) values ('Young Thug');
insert into FeaturedArtist (name) values ('A$AP Rocky');
insert into FeaturedArtist (name) values ('lil Wayne');
insert into FeaturedArtist (name) values ('Rihanna');


INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 1
AND fa.name IN ( 1, 3, 4);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 2
AND fa.name IN ( 8, 10, 11, 3);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 3
AND fa.name IN ( 8, 14, 17, 9, 5, 12);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 4
AND fa.name IN ( 6, 13, 7, 14, 4, 8);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 5
AND fa.name IN (2, 6, 9, 4, 15, 13);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 6
AND fa.name IN (1, 10, 7, 16, 3);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 7
AND fa.name IN (8, 11, 7, 14, 5, 4);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 8
AND fa.name IN (1, 4, 7, 3, 9, 13, 17);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 9
AND fa.name IN (12, 7, 5, 3, 9, 10);

INSERT INTO ProductMetFeaturedArtist (Product_id, FeaturedArtist_id)
SELECT p.id AS Product_id, fa.id AS FeaturedArtist_id
FROM products p
CROSS JOIN FeaturedArtist fa
WHERE p.name = 10
AND fa.name IN (7, 1, 10, 5 , 15, 4);

