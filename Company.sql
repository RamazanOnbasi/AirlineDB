use AIRLINE;
GO

CREATE TABLE COMPANY
  (
     Name varchar(255) NOT NULL PRIMARY KEY,
     Type varchar(8) NOT NULL CHECK (Type IN ('AIRPLANE', 'AIRLINE'))
  );
  
ALTER TABLE FLIGHT
ADD FOREIGN KEY(Airline) REFERENCES COMPANY(Name);

ALTER TABLE AIRPLANE_TYPE
ADD FOREIGN KEY(Company) REFERENCES COMPANY(Name);