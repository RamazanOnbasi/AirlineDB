use AIRLINE;
GO

INSERT INTO FLIGHT
VALUES('UA256', 'United', 'No');

UPDATE FLIGHT
SET Weekdays='Yes'
WHERE Flight_number='UA256';

DELETE FROM FLIGHT
WHERE Flight_number='UA256';


INSERT INTO AIRPORT
VALUES('HND', 'Haneda Airport', 'Tokyo', 'Kanto');

UPDATE AIRPORT
SET Airport_code = 'IEJ', Name = 'Iejima Airport', City = 'Okinawa', State = 'Chugoku'
WHERE Airport_code='HND';

DELETE FROM AIRPORT
WHERE Airport_code = 'IEJ';


INSERT INTO CAN_LAND
VALUES('MD80', 'FAT');

UPDATE CAN_LAND
SET Airport_code = 'MSN'
WHERE Airplane_type_name = 'MD80' AND Airport_code = 'FAT';

DELETE FROM CAN_LAND
WHERE Airplane_type_name = 'MD80' AND Airport_code = 'MSN';
