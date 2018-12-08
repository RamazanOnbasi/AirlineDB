use AIRLINE;
GO

CREATE VIEW A AS 
SELECT City, Flight_number, Departure_time
FROM AIRPORT, LEG_INSTANCE
WHERE Arrival_airport_code = Airport_code;

CREATE VIEW B AS
SELECT City, Fare_code, Amount
FROM FARE, AIRPORT, FLIGHT_LEG
WHERE Arrival_airport_code = Airport_code AND FARE.Flight_number = FLIGHT_LEG.Flight_number;

CREATE VIEW C AS
SELECT Airplane_type, Flight_number
FROM AIRPLANE, LEG_INSTANCE
WHERE AIRPLANE.Airplane_id = LEG_INSTANCE.Airplane_id;