--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  Artist_id INTEGER
);


CREATE TABLE Artist (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, Artist_id) values ('Blond', 'Frank Ocean', '816905633-0', 29.99, 1);
insert into products (name, description, code, price, Artist_id) values ('My Beatiful Dark Twisted Fantasy', 'Ye', '077030122-3', 24.99, 2);
insert into products (name, description, code, price, Artist_id) values ('The Life of Pablo', 'Ye', '445924201-X', 24.99,2);
insert into products (name, description, code, price, Artist_id) values ('Utopia', 'Travis Scott', '693155505-7', 29.99,3);
insert into products (name, description, code, price, Artist_id) values ('To Pimp a Butterfly', 'Kendrick Lamar', '686928463-6', 14.99, 4);
insert into products (name, description, code, price, Artist_id) values ('Flower Boy', 'Tyler the Creator', '492662523-7', 24.99, 5);
insert into products (name, description, code, price, Artist_id) values ('Astroworld', 'Travis Scott', '816905633-0', 29.99, 3);
insert into products (name, description, code, price, Artist_id) values ('Graduation', 'Ye', '077030122-3', 19.99, 2);
insert into products (name, description, code, price, Artist_id) values ('IGOR', 'Tyler the Creator', '445924201-X', 24.99, 5);
insert into products (name, description, code, price, Artist_id) values ('Damn', 'Kendrick Lamar', '693155505-7', 24.99, 4);


insert into Artist (name) values ('Frank Ocean');
insert into Artist (name) values ('Ye');
insert into Artist (name) values ('Travis Scott');
insert into Artist (name) values ('Kendrick Lamar');
insert into Artist (name) values ('Tyler the Creator');