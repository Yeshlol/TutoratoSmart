Use tutoratosmart;

-- Users:
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex) VALUES ('d.molinaro@commissione.unicampania.it',SHA2('D12345678', 256),1,'Danila','Molinari','3374488832','F');

INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('m.pisciotta@studenti.unicampania.it',SHA2('M12345678', 256),2,'Manuel','Pisciotta','3343355632','M','A512102493');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('c.ferrari@studenti.unicampania.it',SHA2('M12345678', 256),2,'Caterina','Ferrari','3343355633','F','B512102494');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('m.lombardo@studenti.unicampania.it',SHA2('M12345678', 256),2,'Marta','Lombardo','3343355634','F','A212102495');

INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('g.luongo@studenti.unicampania.it',SHA2('M12345678', 256),3,'Gianluca','Luongo','3343355636','M','B512102496');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('e.merola@studenti.unicampania.it',SHA2('M12345678', 256),3,'Eduardo','Merola','3343355637','M','A512102497');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('a.tommasino@studenti.unicampania.it',SHA2('M12345678', 256),3,'Antonio','Tommasino','3343355638','M','B512102498');


-- Students:
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('g.luongo@studenti.unicampania.it','2016');
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('e.merola@studenti.unicampania.it','2017');
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('a.tommasino@studenti.unicampania.it','2018');


-- Commission Members:
INSERT INTO TUTORING_COMMISSION_MEMBER (Email) VALUES ('d.molinaro@commissione.unicampania.it');


-- Registers:
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (1, 'Approvato', 10, 10, 100);
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (2, 'Non approvato', 1, 10, 10);
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (3, 'Non approvato', 1, 10, 10);


-- Tutors:
INSERT INTO TUTOR(Email,StartDate,FinishDate,CommissionMember,RegisterId) VALUES ('m.pisciotta@studenti.unicampania.it','2019-12-23','2019-12-28','d.molinaro@commissione.unicampania.it', 1);
INSERT INTO TUTOR(Email,StartDate,FinishDate,CommissionMember,RegisterId) VALUES ('c.ferrari@studenti.unicampania.it','2019-10-22','2019-12-28','d.molinaro@commissione.unicampania.it', 2);
INSERT INTO TUTOR(Email,StartDate,FinishDate,CommissionMember,RegisterId) VALUES ('m.lombardo@studenti.unicampania.it','2019-09-21','2019-12-28','d.molinaro@commissione.unicampania.it', 3);


-- Activity
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (1,'Sportello informativo', '2019-12-24', 600, 650, 0.83, 'In valutazione', 'Dettagli1', 'm.pisciotta@studenti.unicampania.it', 1);
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (2,'Assistenza Esame', '2019-12-25', 720, 780, 1, 'Convalidata', 'Dettagli2', 'c.ferrari@studenti.unicampania.it', 2);
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (3, 'Organizzazione Seminario', '2019-12-26', 540, 780, 4, 'Convalidata', 'Dettagli3', 'm.lombardo@studenti.unicampania.it', 3);


-- Request
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (1, 'Accettata', 'Supporto Immatricolazione', '2019-01-31', 720, 80, 'g.luongo@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (2, 'Accettata', 'Aiuto preparazione esame', '2019-10-02', 550, 40, 'e.merola@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (3, 'Accettata', 'Non riesco a prenotarmi per la prova intercorso', '2020-01-02', 590, 30, 'a.tommasino@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (4, 'In valutazione', 'Supporto prenotazione esame', '2020-01-08', 600, 20, 'e.merola@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (5, 'In valutazione', 'Preparazione prova scritta', '2020-01-08', 730, 15, 'g.luongo@studenti.unicampania.it');


-- Appointment
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (1, 'Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.Stava molto ucciso, aveva bisogno della 104.', '1', 'm.pisciotta@studenti.unicampania.it');
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (2,'Dettagli2', '2', 'c.ferrari@studenti.unicampania.it');
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (3,'Dettagli3', '3', 'm.lombardo@studenti.unicampania.it');


-- Contained_in
INSERT INTO CONTAINED_IN(AppointmentId,ActivityId) VALUES (1, 1);
INSERT INTO CONTAINED_IN(AppointmentId,ActivityId) VALUES (2, 2);
INSERT INTO CONTAINED_IN(AppointmentId,ActivityId) VALUES (3, 3);


-- Manages
INSERT INTO MANAGES(Tutor,RequestId) VALUES ('m.pisciotta@studenti.unicampania.it', 1);
INSERT INTO MANAGES(Tutor,RequestId) VALUES ('c.ferrari@studenti.unicampania.it', 2);
INSERT INTO MANAGES(Tutor,RequestId) VALUES ('m.lombardo@studenti.unicampania.it', 3);


-- Validates
INSERT INTO VALIDATES(CommissionMember,ActivityId) VALUES('d.molinaro@commissione.unicampania.it', 1);
INSERT INTO VALIDATES(CommissionMember,ActivityId) VALUES('d.molinaro@commissione.unicampania.it', 2);
INSERT INTO VALIDATES(CommissionMember,ActivityId) VALUES('d.molinaro@commissione.unicampania.it', 3);