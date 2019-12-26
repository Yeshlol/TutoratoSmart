Use tutoratosmart;

-- Utenti:
INSERT INTO TS_USER (Email,Pwd,FirstName,LastName,TelephoneNumber,Sex,RegistrationNumber) VALUES ('m.pisciotta@studenti.unicampania.it',SHA2('M12345678', 256),'Manuel','Pisciotta','3343355632','M','0512102493');
INSERT INTO TS_USER (Email,Pwd,FirstName,LastName,TelephoneNumber,Sex) VALUES ('d.molinaro@commissione.unicampania.it',SHA2('23456789', 256),'Danila','Molinari','3374488832','F');

-- Membri Commissione di Tutorato:
INSERT INTO TUTORING_COMMISSION_MEMBER (Email) VALUES ('d.molinaro@commissione.unicampania.it');

-- Registri:
INSERT INTO REGISTER(TotalHours) VALUES (100);

-- Tutors:
INSERT INTO TUTOR(Email,StartDate,CommissionMember,RegisterId) VALUES ('m.pisciotta@studenti.unicampania.it','2019-12-23','d.molinaro@commissione.unicampania.it', 1);

-- Calendario giorni lavorativi:
INSERT INTO CALENDAR(IdCalendar,CommissionMember) VALUES (1, 'd.molinaro@commissione.unicampania.it');

-- Giorni Lavorativi:
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Martedì',540,780,true);
INSERT INTO WORK_DAY(CalendarId,WorkDayName,StartTime,FinishTime,IsOpen) VALUES (1, 'Mercoledì',810,990,true);