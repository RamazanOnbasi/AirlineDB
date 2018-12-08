CREATE DATABASE AIRLINE;
GO
use AIRLINE;

CREATE TABLE AIRPORT
  (
     Airport_code char(3) NOT NULL PRIMARY KEY,
     Name         varchar(255) NOT NULL,
     City         varchar(255) NOT NULL,
     State        varchar(255)
  );

CREATE TABLE FLIGHT
  (
     Flight_number varchar(6) NOT NULL PRIMARY KEY,
	 Airline       varchar(255) NOT NULL,
	 Weekdays      varchar(255) NOT NULL
  );
  
CREATE TABLE FARE
  (
     Flight_number varchar(6) NOT NULL FOREIGN KEY REFERENCES FLIGHT(Flight_number),
	 Fare_code varchar(8) NOT NULL,
	 Amount smallmoney NOT NULL CHECK (Amount>0),
	 Restrictions varchar(255),
	 CONSTRAINT PK_FARE PRIMARY KEY(Flight_number, Fare_code)
  );
  
CREATE TABLE AIRPLANE_TYPE
  (
     Airplane_type_name varchar(255) NOT NULL PRIMARY KEY,
	 Max_seats smallint NOT NULL CHECK (Max_seats>0),
	 Company varchar(255) NOT NULL
  );

CREATE TABLE AIRPLANE
  (
	 Airplane_id int NOT NULL PRIMARY KEY,
	 Total_number_of_seats smallint NOT NULL CHECK (Total_number_of_seats>0),
	 Airplane_type varchar(255) NOT NULL FOREIGN KEY REFERENCES AIRPLANE_TYPE(Airplane_type_name)
  );
  
CREATE TABLE CAN_LAND
  (
     Airplane_type_name varchar(255) NOT NULL FOREIGN KEY REFERENCES AIRPLANE_TYPE(Airplane_type_name),
	 Airport_code char(3) NOT NULL FOREIGN KEY REFERENCES AIRPORT(Airport_code),
	 CONSTRAINT PK_CAN_LEND PRIMARY KEY(Airplane_type_name, Airport_code)
  );
  
CREATE TABLE FLIGHT_LEG
  (
     Flight_number varchar(6) NOT NULL FOREIGN KEY REFERENCES FLIGHT(Flight_number),
	 Leg_number tinyint NOT NULL CHECK (Leg_number>0),
	 Departure_airport_code char(3) NOT NULL FOREIGN KEY REFERENCES AIRPORT(Airport_code),
	 Scheduled_departure_time datetime,
	 Arrival_airport_code char(3) NOT NULL FOREIGN KEY REFERENCES AIRPORT(Airport_code),
	 Scheduled_arrival_time datetime,
	 CONSTRAINT PK_FLIGHT_LEG PRIMARY KEY(Flight_number, Leg_number),
	 CONSTRAINT CHK_FLIGHT_LEG_TIME CHECK (Scheduled_arrival_time>Scheduled_departure_time)
  );


CREATE TABLE LEG_INSTANCE
  (
     Flight_number varchar(6) NOT NULL,
	 Leg_number tinyint NOT NULL,
	 Date date NOT NULL,
	 Number_of_available_seats smallint NOT NULL CHECK (Number_of_available_seats>=0),
	 Airplane_id int NOT NULL FOREIGN KEY REFERENCES AIRPLANE(Airplane_id),
	 Departure_airport_code char(3) FOREIGN KEY REFERENCES AIRPORT(Airport_code),
	 Departure_time datetime,
	 Arrival_airport_code char(3) FOREIGN KEY REFERENCES AIRPORT(Airport_code),
	 Arrival_time datetime,
	 CONSTRAINT PK_LEG_INSTANCE PRIMARY KEY(Flight_number, Leg_number, Date),
	 CONSTRAINT FK_LEG_INSTANCE FOREIGN KEY(Flight_number, Leg_number) REFERENCES FLIGHT_LEG(Flight_number, Leg_number),
	 CONSTRAINT CHK_LEG_INSTANCE_TIME CHECK (Arrival_time>Departure_time)
  );

CREATE TABLE SEAT_RESERVATION
  (
     Flight_number varchar(6) NOT NULL,
	 Leg_number tinyint NOT NULL,
	 Date date NOT NULL,
	 Seat_number varchar(10) NOT NULL,
	 Customer_name varchar(255) NOT NULL,
	 Customer_phone varchar(15),
	 CONSTRAINT PK_SEAT_RESERVATION PRIMARY KEY(Flight_number, Leg_number, Date, Seat_number),
	 CONSTRAINT FK_SEAT_RESERVATION FOREIGN KEY(Flight_number, Leg_number, Date) REFERENCES LEG_INSTANCE(Flight_number, Leg_number, Date)
  );