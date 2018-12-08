use AIRLINE;
GO

/*Delta airline'ının ekonomi uçuşları*/
SELECT Flight_number
FROM FLIGHT
WHERE Airline ='Delta' AND Flight_number IN (SELECT Flight_number
FROM FARE
WHERE Fare_code = 'Y');

/*Haftaiçi her gün uçuşu olmayan ekonomi uçuşları.*/
SELECT Flight_number
FROM FLIGHT 
WHERE Weekdays = 'No' AND Flight_number IN (SELECT Flight_number
FROM FARE
WHERE Fare_code = 'Y');

/*200 dolardan daha ucuza bilet satan airline'lar*/
SELECT Airline
FROM FLIGHT
WHERE Flight_number IN (SELECT Flight_number
FROM FARE
WHERE Amount<200);

/*Madison'a giden yolcular.*/
SELECT Customer_name
FROM SEAT_RESERVATION
WHERE Flight_number IN (SELECT Flight_number
FROM FLIGHT_LEG
WHERE Arrival_airport_code IN (SELECT Airport_code
FROM AIRPORT
WHERE City = 'Madison'));

/*500 dolardan daha pahalı biletleri olan uçuşlar.*/
SELECT Flight_number 
FROM FLIGHT
WHERE EXISTS 
(SELECT *
FROM FARE
WHERE Amount = 500);

/*Tüm biletleri 500 dolardan daha ucuz olan uçuşlar.*/
SELECT Flight_number
FROM FLIGHT
WHERE NOT EXISTS 
(SELECT *
FROM FARE
WHERE Amount > 500);

SELECT *
FROM FLIGHT
LEFT JOIN FARE ON FLIGHT.Flight_number = FARE.Flight_number 

SELECT *
FROM FLIGHT
RIGHT JOIN FARE ON FLIGHT.Flight_number = FARE.Flight_number 

SELECT *
FROM FLIGHT
FULL OUTER JOIN FARE ON FLIGHT.Flight_number = FARE.Flight_number 
