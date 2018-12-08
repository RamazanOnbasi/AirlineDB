use AIRLINE;
GO

/*Allegiant airline'ının ekonomi uçuşları*/
SELECT FLIGHT.Flight_number
FROM FLIGHT, FARE
WHERE Airline ='Allegiant' AND Fare_code = 'Y' AND FLIGHT.Flight_number=FARE.Flight_number;

/*Haftaiçi olan first class uçuşlar.*/
SELECT FLIGHT.Flight_number
FROM FLIGHT, FARE
WHERE Weekdays = 'Yes' AND Fare_code = 'F' AND FLIGHT.Flight_number=FARE.Flight_number;

/*200 dolardan daha pahalıya bilet satan airline'lar*/
SELECT Airline
FROM FLIGHT, FARE
WHERE Amount>200 AND FLIGHT.Flight_number=FARE.Flight_number;

/*Chicago'ya giden yolcular.*/
SELECT Customer_name
FROM SEAT_RESERVATION, AIRPORT, FLIGHT_LEG
WHERE City = 'Chicago' AND Arrival_airport_code=Airport_code AND SEAT_RESERVATION.Flight_number = FLIGHT_LEG.Flight_number;

/*Hawaiian ile 2016-02-24 tarihinde first class'ta uçan yolcular*/
SELECT Customer_name
FROM SEAT_RESERVATION, FARE, FLIGHT
WHERE Airline = 'Hawaiian' AND Date ='2016-02-24' AND Fare_code = 'F' AND SEAT_RESERVATION.Flight_number = FLIGHT.Flight_number, FARE.Flight_number=FLIGHT.Flight_number;

/*Ontario'ten yola çıkan yolcular*/
SELECT Customer_name
FROM SEAT_RESERVATION, AIRPORT, FLIGHT_LEG
WHERE City = 'Ontario' AND Departure_airport_code=Airport_code AND SEAT_RESERVATION.Flight_number = FLIGHT_LEG.Flight_number;

/*Hataiçi olan fist class uçuşlarda uçan yolcular */
SELECT Customer_name
FROM FLIGHT, FARE, SEAT_RESERVATION
WHERE Weekdays = 'Yes' AND Fare_code = 'F' AND FLIGHT.Flight_number=FARE.Flight_number AND SEAT_RESERVATION.Flight_number = FLIGHT.Flight_number;

/*100'den daha fazla koltuğu olan uçaklarla Phoenix'e yapılan uçuşlar*/
SELECT FLIGHT.Flight_number
FROM FLIGHT, AIRPORT, LEG_INSTANCE, AIRPLANE
WHERE Total_number_of_seats>100 AND City = 'Phoenix' AND Arrival_airport_code = Airport_code AND LEG_INSTANCE.Flight_number = FLIGHT.Flight_number AND AIRPLANE.Airplane_id = LEG_INSTANCE.Airplane_id

/*San-Francisco'dan kalkan uçuşlardan ekonomi klasında uçan yolcular*/
SELECT Customer_name
FROM FARE, AIRPORT, SEAT_RESERVATION, FLIGHT_LEG
WHERE City = 'San-Francisco' AND Fare_code = 'Y' AND SEAT_RESERVATION.Flight_number=FARE.Flight_number AND Departure_airport_code = Airport_code AND SEAT_RESERVATION.Flight_number = FLIGHT_LEG.Flight_number;

/*Los-Angeles'a firs class uçan yolcular*/
SELECT Customer_name
FROM FARE, AIRPORT, SEAT_RESERVATION, FLIGHT_LEG
WHERE City = 'Los-Angeles' AND Fare_code = 'F' AND SEAT_RESERVATION.Flight_number=FARE.Flight_number AND Arrival_airport_code = Airport_code AND SEAT_RESERVATION.Flight_number = FLIGHT_LEG.Flight_number;