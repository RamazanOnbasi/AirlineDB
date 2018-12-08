use AIRLINE;
GO

ALTER TABLE FLIGHT_LEG
ADD Mileage int NOT NULL

ALTER TABLE LEG_INSTANCE
ADD Mileage int NOT NULL

ALTER TABLE SEAT_RESERVATION
ADD Has_checked_in bit NOT NULL

CREATE TABLE FFC
  (
     Costumer_id varchar(18) FOREIGN KEY REFERENCES CUSTOMER(National_identification_number),
	 Flight_number varchar(6) NOT NULL,
	 Leg_number tinyint NOT NULL,
	 Date date NOT NULL,
     Mileage int NOT NULL CHECK (Mileage>=0),
	 CONSTRAINT PK_FFC PRIMARY KEY(Costumer_id, Flight_number, Leg_number, Date),
	 CONSTRAINT FK_FFC FOREIGN KEY(Flight_number, Leg_number, Date) REFERENCES LEG_INSTANCE(Flight_number, Leg_number, Date)
  );