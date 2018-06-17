DROP TABLE IF EXISTS food_data;

CREATE TABLE food_data (

  id SERIAL PRIMARY KEY,
  city VARCHAR(50),
  country VARCHAR(50),
  shopping VARCHAR(50)

);

insert into food (city, country, shopping) values ('La Esperanza', 'Colombia', 'Smirnoff Green Apple Twist');
insert into food (city, country, shopping) values ('Jaroměř', 'Czech Republic', 'Pasta - Angel Hair');
insert into food (city, country, shopping) values ('Bojnik', 'Serbia', 'Eel - Smoked');
insert into food (city, country, shopping) values ('Doug An', 'Vietnam', 'Coconut - Shredded, Sweet');
insert into food (city, country, shopping) values ('Nanjie', 'China', 'Radish');
insert into food (city, country, shopping) values ('Göteborg', 'Sweden', 'Lamb - Shanks');
insert into food (city, country, shopping) values ('Bulbul', 'Syria', 'Mayonnaise - Individual Pkg');
insert into food (city, country, shopping) values ('Pemba', 'Mozambique', 'Cream - 10%');
insert into food (city, country, shopping) values ('Biny Selo', 'Azerbaijan', 'Appetizer - Tarragon Chicken');
insert into food (city, country, shopping) values ('Kangasala', 'Finland', 'Pork - Kidney');
