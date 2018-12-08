use AIRLINE;
GO

/* 
Müsait olan koltuk sayısı var olan koltuk sayısından fazla olamaz.
*/
CREATE TRIGGER A
ON LEG_INSTANCE
FOR INSERT
AS BEGIN
BEGIN
DECLARE @Airplane_ID int, @Avaible_Seats int
SELECT @Airplane_ID = inserted.Airplane_id, @Avaible_Seats=inserted.Number_of_available_seats FROM INSERTED
END
IF @Avaible_Seats>(SELECT Total_number_of_seats FROM AIRPLANE WHERE Airplane_id=@Airplane_ID)
ROLLBACK TRANSACTION
END
GO

/* 
Bir uçaktaki toplam koltuk sayısı o uçağın tipinin müsade ettiği koltuk sayısından fazla olamaz.
*/
CREATE TRIGGER B
ON AIRPLANE
FOR INSERT
AS BEGIN
BEGIN
DECLARE @Airplane_TYPE int, @Total_Seats int
SELECT @Airplane_TYPE = inserted.Airplane_type, @Total_Seats=Total_number_of_seats FROM INSERTED
END
IF @Total_Seats>(SELECT Max_seats FROM AIRPLANE_TYPE WHERE Airplane_type_name=@Airplane_TYPE)
ROLLBACK TRANSACTION
END
GO

/* 
Bir kişi aynı uçuşta birden fazla koltuğa sahip olamaz.
*/
CREATE TRIGGER C
ON SEAT_RESERVATION
FOR INSERT
AS BEGIN
BEGIN
DECLARE @Flight_NO varchar(6), @Leg_NO tinyint, @Date date, @Cus_name varchar(255) 
SELECT @Flight_NO = inserted.Flight_number, @Leg_NO=inserted.Leg_number, @date = inserted.Date, @Cus_name=inserted.Customer_name FROM INSERTED
END
IF EXISTS (SELECT * FROM SEAT_RESERVATION WHERE Flight_number=@Flight_NO AND Leg_number=@Leg_NO AND Date = @date AND Customer_name=@Cus_name)
ROLLBACK TRANSACTION
END
