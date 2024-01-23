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
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('blond', 'Frank Ocean', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('My Beatiful Dark Twisted Fantasy', 'Ye', '077030122-3', 11);
insert into products (name, description, code, price) values ('The Life of Pablo', 'Ye', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Utopia', 'Travis Scott', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('To Pimp a Butterfly', '
  Kendrick Lamar', '686928463-6', 14);
insert into products (name, description, code, price) values ('Flower Boy', 'Tyler the Creator', '492662523-7', 14);

