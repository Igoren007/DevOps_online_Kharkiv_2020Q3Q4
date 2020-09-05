
CREATE TABLE airports (
    airport_id smallint unsigned NOT NULL AUTO_INCREMENT,
    airport_code varchar(20) UNIQUE,
    airport_name varchar(255),
    city varchar(255),
    country varchar(255),
    timezone time,
    PRIMARY KEY (airport_id)
);

CREATE TABLE aircrafts (
    aircraft_id smallint unsigned NOT NULL AUTO_INCREMENT,
    aircraft_code varchar(20) UNIQUE,
    model varchar(255),
    max_range int(10),
    seats smallint unsigned,
    PRIMARY KEY (aircraft_id)
);

CREATE TABLE flights (
    flight_id smallint unsigned NOT NULL AUTO_INCREMENT,
    fligfht_numb varchar(20),
    scheduled_departure timestamp,
    scheduled_arrival timestamp,
    departure_airport_id smallint unsigned,
    arrival_airport_id smallint unsigned,
    status varchar(128),
    aircraft_id smallint unsigned,
    actual_departure timestamp,
    actual_arrival timestamp,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (departure_airport_id) REFERENCES airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES airports(airport_id),
    FOREIGN KEY (aircraft_id) REFERENCES aircrafts(aircraft_id)
);

insert into aircrafts values (default,'B772','Boeing 777-200',11165,505), (default,'B77W','Boeing 777-300ER',17500,550), (default,'320','Airbus A320',5700,150);

insert into airports values (default,'KPB', 'Boryspil',	'Kyiv',	'Ukraine', '03:00:00'), (default,'IEV', 'Sikorsky Airport','Kyiv',	'Ukraine', '03:00:00'), (default,'LHR', 'London Heathrow Airport',	'London',	'United Kingdom', '00:00:00'), (default,'ROV', 'Platov',	'Rostov on Don','Russia', '03:00:00'), (default,'FCO', 'Aeroporti di Roma','Rome','Italy', '02:00:00');

insert into flights values (default,'FR-3678','2020-09-05 12:50:00','2020-09-05 14:20:00',1,3,'Boarding',1,'2020-09-05 13:10:00','2020-09-05 14:40:00'), (default,'FR-2818','2020-09-04 15:50:00','2020-09-04 19:20:00',5,3,'Check-in',3,'2020-09-04 15:50:00','2020-09-04 19:20:00'), (default,'RG-5483','2020-09-02 11:50:00','2020-09-02 13:50:00',2,4,'Take-Of',2,'2020-09-02 11:55:00','2020-09-02 14:10:00');

ALTER TABLE aircrafts CHANGE COLUMN model airplane_model varchar(255);

UPDATE aircrafts
SET seats = 400
WHERE aircraft_code = 'B77W';

DELETE FROM flights
WHERE status = 'Take-Of';

CREATE USER 'user_ro'@'localhost' IDENTIFIED BY 'User_1234';

CREATE USER 'user_2'@'localhost' IDENTIFIED BY 'User_12345';

GRANT SELECT ON airline.* TO 'user_ro'@'localhost';

GRANT INSERT ON airline.aircrafts TO 'user_2'@'localhost';

FLUSH PRIVILEGES;

REVOKE ALL PRIVILEGES ON airline.aircrafts FROM 'user_2'@'localhost';