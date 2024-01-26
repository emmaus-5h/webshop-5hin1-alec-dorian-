--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Blond', 'Frank Ocean', '816905633-0', 29.99);
insert into products (name, description, code, price) values ('My Beatiful Dark Twisted Fantasy', 'Ye', '077030122-3', 24.99);
insert into products (name, description, code, price) values ('The Life of Pablo', 'Ye', '445924201-X', 24.99);
insert into products (name, description, code, price) values ('Utopia', 'Travis Scott', '693155505-7', 29.99);
insert into products (name, description, code, price) values ('To Pimp a Butterfly', 'Kendrick Lamar', '686928463-6', 14);
insert into products (name, description, code, price) values ('Flower Boy', 'Tyler the Creator', '492662523-7', 24.99);
insert into products (name, description, code, price) values ('Mm.. Food', 'MF Doom', '816905633-0', 29.99);
insert into products (name, description, code, price) values ('Graduation', 'Ye', '077030122-3', 19.99);
insert into products (name, description, code, price) values ('IGOR', 'Tyler the Creator', '445924201-X', 24.99);
insert into products (name, description, code, price) values ('Whole Lotta Red', 'Playboy Carti', '693155505-7', 24.99);