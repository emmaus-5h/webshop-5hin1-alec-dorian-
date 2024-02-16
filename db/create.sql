
  CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code VARCHAR(15),  
    name VARCHAR(255),
    description TEXT,
    price NUMERIC(10,2),
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
    Feat_Artist VARCHAR(255)
  );


  CREATE TABLE ProductMetFeaturedArtist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    products_id INTEGER,
    FeaturedArtist_id INTEGER
  );



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

  insert into FeaturedArtist (Feat_Artist) values ('Pharrell Williams');
  insert into FeaturedArtist (Feat_Artist) values ('Tyler The Creator');
  insert into FeaturedArtist (Feat_Artist) values ('Kanye West');
  insert into FeaturedArtist (Feat_Artist) values ('Beyoncé');
  insert into FeaturedArtist (Feat_Artist) values ('Frank Ocean');
  insert into FeaturedArtist (Feat_Artist) values ('Drake');
  insert into FeaturedArtist (Feat_Artist) values ('21 Savage');
  insert into FeaturedArtist (Feat_Artist) values ('Kid Cudi');
  insert into FeaturedArtist (Feat_Artist) values ('The Weeknd');
  insert into FeaturedArtist (Feat_Artist) values ('JAY-Z');
  insert into FeaturedArtist (Feat_Artist) values ('Nicki Minaj');
  insert into FeaturedArtist (Feat_Artist) values ('Kendrick Lamar');
  insert into FeaturedArtist (Feat_Artist) values ('Playboi Carti');
  insert into FeaturedArtist (Feat_Artist) values ('Young Thug');
  insert into FeaturedArtist (Feat_Artist) values ('A$AP Rocky');
  insert into FeaturedArtist (Feat_Artist) values ('lil Wayne');
  insert into FeaturedArtist (Feat_Artist) values ('Rihanna');



  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (1, 1 );
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (1, 3 );
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (1, 4 );
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (2, 8);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (2, 3);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (2, 10);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (2, 11);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 8);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 14);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 17);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 9);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 5);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (3, 12);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 6);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 13);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 14);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 4);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (4, 8);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 13);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 15);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 2);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 6);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 9);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (5, 4);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (6, 1);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (6, 10);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (6, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (6, 16);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (6, 3);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 8);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 11);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 14);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 5);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (7, 4);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 1);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 4);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 3);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 9);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 13);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (8, 17);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 12);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 5);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 3);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 9);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (9, 10);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 7);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 1);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 10);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 5);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 15);
  insert into ProductMetFeaturedArtist (products_id,FeaturedArtist_id) values (10, 4);



  select products.id as Album_ID, products.name as Album_Name, products.description as Main_Artist, FeaturedArtist.id as Feat_Artist_ID, FeaturedArtist.Feat_Artist  from products join ProductMetFeaturedArtist
  on products.id = ProductMetFeaturedArtist.products_id
  join FeaturedArtist 
  on FeaturedArtist.id = ProductMetFeaturedArtist.FeaturedArtist_id

  -- Meneer van geest zei dat dit ^^^ stukje ergens in de api moet komen alleen ik weet niet waar --
