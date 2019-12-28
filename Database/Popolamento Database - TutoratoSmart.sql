Use tutoratosmart;

-- Utenti:
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex) VALUES ('d.molinaro@commissione.unicampania.it',SHA2('D12345678', 256),1,'Danila','Molinari','3374488832','F');
#INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('g.capo@commissione.unicampania.it',SHA2('M12345678', 256),'Giuseppe','Capo','334335566','M','0512102499');
#INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('v.biordi@commissione.unicampania.it',SHA2('M12345678', 256),'Veronica','Biordi','3343355645','F','0512102473');

INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('m.pisciotta@studenti.unicampania.it',SHA2('M12345678', 256),2,'Manuel','Pisciotta','3343355632','M','0512102493');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('c.ferrari@studenti.unicampania.it',SHA2('M12345678', 256),2,'Caterina','Ferrari','3343355633','F','0512102494');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('m.lombardo@studenti.unicampania.it',SHA2('M12345678', 256),2,'Marta','Lombardo','3343355634','F','0512102495');

INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('g.luongo@studenti.unicampania.it',SHA2('M12345678', 256),3,'Gianluca','Luongo','3343355636','M','0512102496');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('e.merola@studenti.unicampania.it',SHA2('M12345678', 256),3,'Eduardo','Merola','3343355637','M','0512102497');
INSERT INTO TS_USER (Email,Pwd,UserRole,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('a.tommasino@studenti.unicampania.it',SHA2('M12345678', 256),3,'Antonio','Tommasino','3343355638','M','0512102498');


-- Student
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('g.luongo@studenti.unicampania.it','2016');
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('e.merola@studenti.unicampania.it','2017');
INSERT INTO STUDENT(Email,AcademicYear) VALUES ('a.tommasino@studenti.unicampania.it','2018');

-- Membri Commissione di Tutorato:
INSERT INTO TUTORING_COMMISSION_MEMBER (Email) VALUES ('d.molinaro@commissione.unicampania.it');
#INSERT INTO TUTORING_COMMISSION_MEMBER (Email) VALUES ('g.capo@commissione.unicampania.it');
#INSERT INTO TUTORING_COMMISSION_MEMBER (Email) VALUES ('v.biordi@commissione.unicampania.it');


-- Registri:
#INSERT INTO REGISTER(TotalHours) VALUES (100);
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (1, 'Approvato', 10, 10, 100);
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (2, 'Non approvato', 1, 10, 10);
INSERT INTO REGISTER(IdRegister,State,ValidatedHours,TotalHours,PercentageComplete) VALUES (3, 'Non approvato', 1, 10, 10);


-- Tutors:
INSERT INTO TUTOR(Email,StartDate,CommissionMember,RegisterId) VALUES ('m.pisciotta@studenti.unicampania.it','2019-12-23','d.molinaro@commissione.unicampania.it', 1);
INSERT INTO TUTOR(Email,StartDate,CommissionMember,RegisterId) VALUES ('c.ferrari@studenti.unicampania.it','2019-10-22','d.molinaro@commissione.unicampania.it', 2);
INSERT INTO TUTOR(Email,StartDate,CommissionMember,RegisterId) VALUES ('m.lombardo@studenti.unicampania.it','2019-09-21','d.molinaro@commissione.unicampania.it', 3);


-- Activity
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (1,'Sportello informativo', '2019-12-24', 11, 13, 2, 'In valutazione', 'Dettagli1', 'm.pisciotta@studenti.unicampania.it', 1);
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (2,'Assistenza Esame', '2019-12-25', 12, 13, 1, 'Convalidata', 'Dettagli2', 'c.ferrari@studenti.unicampania.it', 2);
INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (3, 'Organizzazione Seminario', '2019-12-26', 15, 18, 3, 'Convalidata', 'Dettagli3', 'm.lombardo@studenti.unicampania.it', 3);
#INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (4);
#INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (5);
#INSERT INTO ACTIVITY_TUTOR(IdActivity,Category,ActivityDate,StartTime,FinishTime,Hours,State,Details,Tutor,RegisterId) VALUES (6);


-- Request
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (1, 'Accettata', 'Commento studente', '2019-12-24', 720, 30, 'g.luongo@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (2, 'Accettata', 'Commento studente2', '2019-10-23', 550, 40, 'e.merola@studenti.unicampania.it');
INSERT INTO REQUEST(IdRequest,State,StudentComment,RequestDate,RequestTime,Duration,Student) VALUES (3, 'In valutazione', 'Commento studente3', '2019-09-22', 820, 50, 'a.tommasino@studenti.unicampania.it');


-- Appoitment
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (1, 'Dettagli1', '1', 'm.pisciotta@studenti.unicampania.it');
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (2,'Dettagli2', '2', 'c.ferrari@studenti.unicampania.it');
INSERT INTO APPOINTMENT(IdAppointment,Details,RequestId,Tutor) VALUES (3,'Dettagli3', '3', 'm.lombardo@studenti.unicampania.it');


-- Calendario giorni lavorativi:
INSERT INTO CALENDAR(IdCalendar,CommissionMember) VALUES (1, 'd.molinaro@commissione.unicampania.it');


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

-- Giorni Lavorativi:
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Monday',710,920,true);
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Tuesday',540,780,true);
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Wednesday',810,990,true);
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Thursday',610,790,false);
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Friday',410,690,false);