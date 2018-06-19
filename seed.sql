DROP TABLE IF EXISTS food_data;

CREATE TABLE food_data (

  id SERIAL PRIMARY KEY,
  city VARCHAR(50),
  country VARCHAR(50),
  shopping VARCHAR(50)

);

insert into food_data (city, country, shopping) values ('La Esperanza', 'Colombia', 'Green Apple');
insert into food_data (city, country, shopping) values ('Jaroměř', 'Czech Republic', 'Angel Hair Pasta');
insert into food_data (city, country, shopping) values ('Bojnik', 'Serbia', 'Smoked Eel');
insert into food_data (city, country, shopping) values ('Doug An', 'Vietnam', 'Shredded Coconut');
insert into food_data (city, country, shopping) values ('Nanjie', 'China', 'Radish');
insert into food_data (city, country, shopping) values ('Göteborg', 'Sweden', 'Lamb Shanks');
insert into food_data (city, country, shopping) values ('Bulbul', 'Syria', 'Mayonnaise');
insert into food_data (city, country, shopping) values ('Pemba', 'Mozambique', '10% Cream');
insert into food_data (city, country, shopping) values ('Biny Selo', 'Azerbaijan', 'Tarragon Chicken');
insert into food_data (city, country, shopping) values ('Kangasala', 'Finland', 'Pork Kidney');
