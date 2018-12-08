use AIRLINE;
GO

CREATE TABLE SEGMENTS
  (
     Airline varchar(255) NOT NULL FOREIGN KEY REFERENCES COMPANY(Name),
     Miles int NOT NULL,
	 Segment varchar(255) NOT NULL,
	 Reward varchar(255) NOT NULL,
	 CONSTRAINT PK_SEGMENTS PRIMARY KEY(Airline, Segment)
  );
  
CREATE TABLE FFC_SEGMENTATION
  (
	 Costumer_id varchar(18),
     Airline varchar(255) NOT NULL,
     Total_miles int NOT NULL CHECK (Total_miles>=0),
	 Segment varchar(255) NOT NULL,
	 CONSTRAINT PK_FFC_SEGMENTATION PRIMARY KEY(Costumer_id, Airline),
	 CONSTRAINT FK_FFC_SEGMENTATION FOREIGN KEY(Airline, Segment) REFERENCES SEGMENTS(Airline, Segment)
  );