use AIRLINE;
GO

INSERT INTO CUSTOMER
VALUES	('65645064880212678', 'Andrew Bucky', '555-0014', 'fasasdaf@hotmail.com', '', 'UK', '064784130');

UPDATE CUSTOMER
SET Phone_number = '555-0016' 
WHERE National_identification_number = '65645064880212678';

DELETE FROM CUSTOMER
WHERE National_identification_number = '65645064880212678';
