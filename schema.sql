drop table if exists phones;

create table phones (
    id integer primary key autoincrement,
    vendor text not null,
    model text not null,
    price integer not null,
    create_year integer not null default 2020,
    camera_resolution float not null,
    mah integer not null,
    sim_cards integer not null default 2,
    weight integer not null,
    network text not null default '2G',
    have_button boolean not null default true,
    have_games boolean not null default false,
    screen_size float not null
);

--insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, network, have_button, have_games, screen_size)
--values ('', '', , , , , , , '', true, false, );

insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, network, have_games, screen_size)
values ('Nokia', '230', 5990, 2015, 2, 1200, 92, '2G/3G', true, 2.8);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('Nokia', '3310', 6590, 2017, 2, 1200, 140, true, 2.4);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, have_games, screen_size)
values ('Panasonic', 'KX-TU456', 4928, 2017, 0.3, 1000, 1, 110, false, 2.4);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('Philips', 'Xenium E255', 3580, 2018, 0.3, 1050, 82, false, 2.4);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('DIGMA', 'LINX B280', 2117, 2019, 0.08, 3000, 230, false, 2.8);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('Nokia', '216', 4318, 2016, 0.3, 1020, 83, true, 2.4);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, have_games, screen_size)
values ('Nokia', '105 SS', 1990, 2019, 0, 800, 1, 74, true, 1.77);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, have_games, screen_size)
values ('Caterpillar Cat', 'B26', 6900, 2016, 2, 1500, 1, 150, false, 2.4);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('teXet', 'TM-B227', 2996, 2018, 0, 1500, 137, false, 2.2);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('DIGMA', 'LINX A230WT', 4590, 2019, 0, 6000, 266, false, 2.31);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_games, screen_size)
values ('BQ', '2810 BOOM XL', 2367, 2018, 0.3, 1700, 156, false, 2.8);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, weight, have_button, have_games, screen_size)
values ('Apple', 'iPhone 13', 109990, 2021, 12, 3240, 173, false, false, 6.1);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, network, have_button, have_games, screen_size)
values ('ONIX', 'TELMAR', 18050, 1978, 0, 0, 0, 2570, '', false, false, 0);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, network, have_games, screen_size)
values ('teXet', 'TX-241', 1290, 2020, 0, 0, 0, 480, '', false, 0);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, network, have_games, screen_size)
values ('Panasonic', 'KX-TS2363', 3659, 2018, 0, 0, 0, 633, '', false, 0);
insert into phones(vendor, model, price, create_year, camera_resolution, mah, sim_cards, weight, network, have_games, screen_size)
values ('Panasonic', 'KV-HDV430', 21950, 2017, 0, 0, 0, 870, '', false, 4.3);