use AIRLINE;
GO

ALTER TABLE SEAT_RESERVATION
DROP COLUMN Customer_name;

ALTER TABLE SEAT_RESERVATION
DROP COLUMN Customer_phone;

CREATE TABLE CUSTOMER
  (
	 National_identification_number varchar(18) NOT NULL PRIMARY KEY,
	 Name varchar(255) NOT NULL,
	 Phone_number varchar(15) NOT NULL,
	 Email varchar(254),
	 Address varchar(255),
	 Country varchar(255) NOT NULL,
	 Passport_number varchar(9)
  );
  
CREATE UNIQUE NONCLUSTERED INDEX UniqueExceptNulls
ON CUSTOMER(Passport_number)
WHERE Passport_number IS NOT NULL;

ALTER TABLE SEAT_RESERVATION
ADD Costumer_id varchar(18) NOT NULL FOREIGN KEY REFERENCES CUSTOMER(National_identification_number);