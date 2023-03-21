USE VOOS;
GO

CREATE TABLE Airport(
	city VARCHAR(30) NOT NULL,
	airport_code INT NOT NULL,
	state VARCHAR(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	
	PRIMARY KEY (airport_code)
);

CREATE TABLE Airplane_Type(
	max_seats INT NOT NULL,
	ttype_name VARCHAR(30) NOT NULL,
	company VARCHAR(30) NOT NULL,

	PRIMARY KEY (ttype_name)
);

CREATE TABLE Can_Land(
	airport_code INT NOT NULL,
	ttype_name VARCHAR(30) NOT NULL,
	
	PRIMARY KEY (airport_code, ttype_name),
	FOREIGN KEY (airport_code) REFERENCES Airport(airport_code),
	FOREIGN KEY (ttype_name) REFERENCES Airplane_Type(ttype_name)
);

CREATE TABLE Airplane(
	total_no_of_seats INT NOT NULL,
	ttype VARCHAR(30) NOT NULL,
	airplane_id INT NOT NULL,

	PRIMARY KEY (airplane_id),
	FOREIGN KEY (ttype) REFERENCES Airplane_Type(ttype_name)
);

CREATE TABLE Flight(
	airline varchar(30) NOT NULL,
	number INT NOT NULL,
	weekdays varchar(30) NOT NULL,

	PRIMARY KEY (number)
);

CREATE TABLE Flight_Leg(
	leg_no INT NOT NULL,
	flight_num INT NOT NULL,
	cod_airport_dep INT NOT NULL,
	cod_airport_arr INT NOT NULL,
	sched_dep_time TIME NOT NULL,
	sched_arr_time TIME NOT NULL,

	PRIMARY KEY (leg_no, flight_num),
	FOREIGN KEY (flight_num) REFERENCES Flight(number),
	FOREIGN KEY (cod_airport_dep) REFERENCES Airport(airport_code),
	FOREIGN KEY (cod_airport_arr) REFERENCES Airport(airport_code)
);

CREATE TABLE Leg_Instance(
	ddate DATE NOT NULL,
	leg_no INT NOT NULL,
	flight_num INT NOT NULL,
	cod_airport_dep INT NOT NULL,
	cod_airport_arr INT NOT NULL,
	sched_dep_time TIME NOT NULL,
	sched_arr_time TIME NOT NULL,
	airplane_id INT NOT NULL,

	PRIMARY KEY (ddate, leg_no),
	FOREIGN KEY (leg_no, flight_num) REFERENCES Flight_Leg(leg_no, flight_num),
	FOREIGN KEY (cod_airport_dep) REFERENCES Airport(airport_code),
	FOREIGN KEY (cod_airport_arr) REFERENCES Airport(airport_code),
	FOREIGN KEY (airplane_id) REFERENCES Airplane(airplane_id)
);

CREATE TABLE Seat(
	seat_no INT NOT NULL,
	flight_num INT NOT NULL,
	leg_no INT NOT NULL,
	costumer_name varchar(50) NOT NULL,
	cphone varchar(9) NOT NULL,
	ddate DATE NOT NULL,

	PRIMARY KEY (seat_no, flight_num),
	FOREIGN KEY (ddate, leg_no, flight_num) REFERENCES Leg_Instance(ddate, leg_no, flight_num)
);