DROP TABLE IF EXISTS place_data;

CREATE TABLE place_data (

  id SERIAL PRIMARY KEY,
  country_name VARCHAR(50),
  currency VARCHAR(50),

);

insert into place_data (country_name, currency) values ('Armenia', 'Dram');
insert into place_data (country_name, currency) values ('Argentina', 'Peso');
insert into place_data (country_name, currency) values ('Japan', 'Yen');
insert into place_data (country_name, currency) values ('Poland', 'Zloty');
insert into place_data (country_name, currency) values ('Philippines', 'Peso');
insert into place_data (country_name, currency) values ('Sweden', 'Krona');
insert into place_data (country_name, currency) values ('Brazil', 'Real');
insert into place_data (country_name, currency) values ('Indonesia', 'Rupiah');
insert into place_data (country_name, currency) values ('Armenia', 'Dram');
insert into place_data (country_name, currency) values ('China', 'Yuan Renminbi');
