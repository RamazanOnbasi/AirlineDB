use AIRLINE;
GO

INSERT INTO AIRPORT
VALUES 	('SFO', 'San-Francisco-International', 'San-Francisco', 'CA'),
		('OAK', 'Oakland-International', 'Oakland', 'CA'),
		('LAS', 'McCarren-International', 'Las-Vegas', 'CA'),
		('HNL', 'Honolulu-International', 'Honolulu', 'HI'),
		('JFK', 'John-F-Kennedy-International', 'New-York', 'NY'),
		('FAT', 'Fresno-Yosemite-International', 'Fresno', 'CA'),
		('MSY', 'Louis-Armstrong', 'New-Orleans', 'LA'),
		('ORD', 'Chicago-OHare-International', 'Chicago', 'IL'),
		('MDW', 'Midway', 'Chicago', 'IL'),
		('SMF', 'Sacramento-International', 'Sacramento', 'CA'),
		('SCK', 'Stockton-Metropolitan', 'Stockton', 'CA'),
		('PHX', 'Phoenix-Sky-Harbor', 'Phoenix', 'AZ'),
		('DEN', 'Denver-Interational', 'Denver', 'CO'),
		('EWR', 'Newark-International', 'Newark', 'NJ'),
		('IAH', 'Bush-Intercontinental', 'Houston', 'TX'),
		('LAX', 'Los-Angeles-International', 'Los-Angeles', 'CA'),
		('DCA', 'Ronald-Reagan-National', 'Arlington', 'VA'),
		('IAD', 'Washington-Dulles-International', 'Dulles', 'VA'),
		('MSN', 'Dane-County-Regional', 'Madison', 'WI'),
		('MSP', 'Minneapolis-St-Paul', 'Minneapolis-St-Paul', 'MN'),
		('SLC', 'Salt-Lake-City-International', 'Salt-Lake-City', 'UT'),
		('DFW', 'Dallas-Fort-Worth', 'DFW', 'TX'),
		('SAN', 'San-Diego-International', 'San-Diego', 'CA'),
		('IWA', 'Phoenix-Mesa-Gateway', 'Phoenix', 'AZ'),
		('SJC', 'San-Jose-International', 'San-Jose', 'CA'),
		('ONT', 'Ontario-International', 'Ontario', 'CA');

INSERT INTO COMPANY		
VALUES 	('United', 'AIRLINE'),
		('Jetblue', 'AIRLINE'),
		('Delta', 'AIRLINE'),
		('Allegiant', 'AIRLINE'),
		('Hawaiian', 'AIRLINE'),
		('American', 'AIRLINE'),
		('Southwest', 'AIRLINE'),
		('Airbus', 'AIRPLANE'),
		('Boeing', 'AIRPLANE'),
		('Embraer', 'AIRPLANE'),
		('Bombardier', 'AIRPLANE'),
		('McDonnell-Douglas', 'AIRPLANE'),
		('', 'AIRPLANE'),
		('', 'AIRPLANE'),
		('', 'AIRPLANE'),
		('', 'AIRPLANE');
		
INSERT INTO FLIGHT
VALUES	('UA560', 'United', 'Yes'),
		('B6624', 'Jetblue', 'Yes'),
		('DL5841', 'Delta', 'Yes'),
		('DL1149', 'Delta', 'Yes'),
		('G4529', 'Allegiant', 'No'),
		('G4154', 'Allegiant', 'No'),
		('G4155', 'Allegiant', 'No'),
		('HA48', 'Hawaiian', 'No'),
		('AA1522', 'American', 'Yes'),
		('AA3472', 'American', 'Yes'),
		('WN380', 'Southwest', 'Yes');

INSERT INTO FARE
VALUES 	('UA560', 'J', '350', 'No'),
		('G4154', 'Y', '106', 'No'),
		('G4155', 'Y', '142', 'No'),
		('DL5841', 'F', '100', 'Yes'),
		('DL1149', 'J', '500', 'Yes'),
		('HA48', 'F', '1000', 'Yes'),
		('AA1522', 'Y', '250', 'No'),
		('AA3472', 'Y', '150', 'Yes'),
		('WN380', 'Y', '256', 'No'),
		('B6624', 'F', '98', 'No');

INSERT INTO AIRPLANE_TYPE
VALUES	('A320', '180', 'Airbus'),
		('A319', '156', 'Airbus'),
		('A321', '236', 'Airbus'),
		('A332', '200', 'Airbus'),
		('707', '189', 'Boeing'),
		('737', '124', 'Boeing'),
		('747', '550', 'Boeing'),
		('757', '228', 'Boeing'),
		('727', '189', 'Boeing'),
		('767', '290', 'Boeing'),
		('777', '440', 'Boeing'),
		('787', '323', 'Boeing'),
		('ERJ145', '50', 'Embraer'),
		('190', '114', 'Embraer'),
		('170', '80', 'Embraer'),
		('CRJ440', '44', 'Bombardier'),
		('CRJ100', '50', 'Bombardier'),
		('CRJ700', '78', 'Bombardier'),
		('MD80', '166', 'McDonnell-Douglas');

INSERT INTO AIRPLANE
VALUES	('1', '180', 'A320'),
		('2', '175', 'A320'),
		('3', '156', 'A319'),
		('4', '150', 'A319'),
		('5', '145', 'A319'),
		('6', '188', '707'),
		('7', '187', '707'),
		('8', '124', '727'),
		('9', '123', '737'),
		('10', '120', '737'),
		('11', '550', '747'),
		('12', '500', '747'),
		('13', '225', '757'),
		('14', '290', '767'),
		('15', '285', '767'),
		('16', '440', '777'),
		('17', '323', '787'),
		('18', '50', 'ERJ145'),
		('19', '50', 'ERJ145'),
		('20', '110', '190'),
		('21', '80', '170'),
		('22', '44', 'CRJ440'),
		('23', '40', 'CRJ440'),
		('24', '50', 'CRJ100'),
		('25', '70', 'CRJ700'),
		('26', '75', 'CRJ700'),
		('27', '77', 'CRJ700'),
		('28', '166', 'MD80'),
		('29', '200', 'A321'),
		('30', '180', 'A332');

INSERT INTO CAN_LAND
VALUES	('MD80', 'SCK'),
		('MD80', 'SAN'),
		('MD80', 'IWA'),
		('MD80', 'LAS'),
		('ERJ145', 'IWA'),
		('ERJ145', 'FAT'),
		('ERJ145', 'ORD'),
		('ERJ145', 'MSN'),
		('CRJ440', 'MSN'),
		('CRJ440', 'MSP'),
		('CRJ100', 'MSN'),
		('CRJ100', 'MSP'),
		('CRJ700', 'MSN'),
		('CRJ700', 'SLC'),
		('CRJ700', 'ORD'),
		('170', 'OAK'),
		('170', 'LAX'),
		('190', 'SLC'),
		('190', 'OAK'),
		('707', 'HNL'),
		('707', 'OAK'),
		('707', 'MDW'),
		('707', 'SJC'),
		('727', 'SMF'),
		('727', 'SJC'),
		('727', 'LAX'),
		('737', 'OAK'),
		('737', 'SFO'),
		('737', 'ORD'),
		('737', 'MDW'),
		('737', 'ONT'),
		('737', 'SMF'),
		('737', 'SJC'),	
		('737', 'SAN'),
		('737', 'LAS'),
		('747', 'SFO'),
		('747', 'JFK'),
		('747', 'ORD'),
		('747', 'MSP'),
		('747', 'DEN'),
		('757', 'LAS'),
		('757', 'PHX'),
		('757', 'DCA'),
		('757', 'LAX'),
		('757', 'HNL'),
		('777', 'ORD'),
		('777', 'LAX'),
		('777', 'IAD'),
		('787', 'IAH'),
		('787', 'JFK'),
		('787', 'EWR'),
		('A321', 'DFW'),
		('A321', 'DEN'),
		('A332', 'OAK'),
		('A332', 'HNL'),
		('A320', 'JFK'),
		('A320', 'LAX'),
		('A320', 'IAH'),
		('A319', 'SLC'),
		('A319', 'PHX'),
		('A319', 'MSP'),
		('A319', 'SFO'),
		('A319', 'MDW');

INSERT INTO FLIGHT_LEG
VALUES	('G4155', '1', 'SCK', '2016-01-28 5:31PM', 'IWA', '2016-01-28 8:14PM', 1000),
		('G4154', '1', 'IWA', '2016-02-03 4:06PM', 'SCK', '2016-02-03 4:51PM', 2000),
		('DL5841', '1', 'OAK', '2016-02-09 12:40PM', 'LAX', '2016-02-09 2:00PM', 1500),
		('DL1149', '1', 'LAX', '2016-02-09 6:45PM', 'HNL', '2016-02-09 10:43PM', 750),
		('HA48', '1', 'HNL', '2016-02-24 2:15PM', 'OAK', '2016-02-24 9:30PM', 1235),
		('AA1522', '1', 'SFO', '2016-08-05 11:59PM', 'ORD', '2016-08-06 6:04AM', 1200),
		('AA3472', '1', 'ORD', '2016-08-05 7:19AM', 'MSN', '2016-08-05 8:19AM', 3000),
		('WN380', '1', 'MDW', '2016-08-05 7:55AM', 'ONT', '2016-08-05 10:10AM', 1550),
		('WN380', '2', 'ONT', '2016-08-05 10:45AM', 'SMF', '2016-08-05 11:45AM', 1640),
		('B6624', '1', 'LAX', '2016-02-09 9:15PM', 'JFK', '2016-02-10 5:22AM', 1315);

INSERT INTO LEG_INSTANCE
VALUES	('G4155', '1', '2016-01-28', '3', '28', 'SCK', '2016-01-28 5:35PM', 'IWA', '2016-01-28 8:19PM', 1000),
		('G4154', '1', '2016-02-03', '19', '28', 'SCK', '2016-02-03 4:06PM', 'IWA', '2016-02-03 4:51PM', 2000),
		('DL5841', '1', '2016-02-09', '5', '21', 'OAK', '2016-02-09 12:45PM', 'LAX', '2016-02-09 2:05PM', 1500),
		('DL1149', '1', '2016-02-09', '20', '13', 'LAX', '2016-02-09 6:45PM', 'HNL', '2016-02-09 10:43PM', 750),
		('HA48', '1', '2016-02-24', '10', '30', 'HNL', '2016-02-24 2:15PM', 'OAK', '2016-02-24 9:10PM', 1235),
		('AA1522', '1', '2016-08-05', '70', '9', 'SFO', '2016-08-05 12:05AM', 'ORD', '2016-08-05 6:04AM', 1200),
		('AA3472', '1', '2016-08-05', '15', '18', 'ORD', '2016-08-05 7:19AM', 'MSN', '2016-08-05 8:19AM', 3000),
		('WN380', '1', '2016-08-05', '130', '10', 'MDW', '2016-08-05 7:55AM', 'ONT', '2016-08-05 10:10AM', 1550),
		('WN380', '2', '2016-08-05', '130', '10', 'ONT', '2016-08-05 10:45AM', 'SMF', '2016-08-05 11:45AM', 1640),
		('B6624', '1', '2016-02-09', '100', '1', 'LAX', '2016-02-09 9:15PM', 'JFK', '2016-02-10 5:22AM', 1315);

INSERT INTO CUSTOMER
VALUES	('1123456789', 'Osvaldo Smith', '555-55-5555', 'asdasf@hotmail.com', '', 'Russia', '123456789'),
		('1234567890', 'Caitlin Smith', '867-5309', 'asd0fsd12@hotmail.com', '', 'Japan', '234567891'),
		('2345678901', 'Shandip Smith', '555-0002', 'sdasf@hotmail.com', '', 'Syria', '345678912'),
		('3456789012', 'Stephen Smith', '555-0003', 'sf@hotmail.com', '', 'Iraq', '456789123'),
		('4567890123', 'Deana Smith', '555-0004', 'asfdf@hotmail.com', '', 'USA', '567891234'),
		('5678901234', 'Cameron Smith', '555-0006', 'asfffssasf@hotmail.com', '', 'UK', '678912345'),
		('6789012345', 'Trevor Smith', '555-0007', 'asdadfdfgsf@hotmail.com', '', 'Sweden', '789123456'),
		('7890123456', 'Bren Smith', '555-0008', 'asda101sf@hotmail.com', '', 'Neverland', '134697821'),
		('8901234567', 'Walter White', '555-0009', 'asdasf@hotmail.com', '', 'France', '916437546'),
		('9012345678', 'John Smith', '555-0010', 'asd@hotmail.com', '', 'Germany', '804612345'),
		('1346454887', 'Edward Bald', '555-0011', 'sfh@hotmail.com', '', 'USA', '741258963'),
		('32564213145654', 'Aung Shallburn', '555-0012', 'adhh@hotmail.com', '', 'USA', '357159804'),
		('54654645344654', 'Justin Whie', '555-0013', 'dsffasf@hotmail.com', '', 'UK', '146753014');

INSERT INTO SEAT_RESERVATION
VALUES	('G4155', '1', '2016-01-28', '1A', '1123456789', 0),
		('G4155', '1', '2016-01-28', '2A', '1234567890', 1),
		('DL1149', '1', '2016-02-09', '17A', '2345678901', 1),
		('DL5841', '1', '2016-02-09', '7A', '3456789012', 1),
		('DL1149', '1', '2016-02-09', '11B', '4567890123', 0),
		('DL5841', '1', '2016-02-09', '7D', '5678901234', 1),
		('DL5841', '1', '2016-02-09', '7C', '6789012345', 0),
		('DL1149', '1', '2016-02-09', '8A', '7890123456', 0),
		('HA48', '1', '2016-02-24', '7E', '8901234567', 0),
		('HA48', '1', '2016-02-24', '10A', '9012345678', 1),
		('HA48', '1', '2016-02-24', '13A', '1346454887', 0),
		('HA48', '1', '2016-02-24', '1E', '32564213145654', 0),
		('HA48', '1', '2016-02-24', '14A', '54654645344654', 0);

		
		