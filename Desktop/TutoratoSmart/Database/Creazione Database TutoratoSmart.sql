DROP SCHEMA if exists TutoratoSmart;
CREATE SCHEMA TutoratoSmart;

USE TutoratoSmart;

CREATE TABLE TS_User
(	Email				VARCHAR(30)		NOT NULL,
    Pwd					VARCHAR(40)		NOT NULL,
	FirstName			VARCHAR(30)		NOT NULL,
    LastName			VARCHAR(30)		NOT NULL,
    TelephoneNumber		VARCHAR(10)		NOT NULL,
    Sex					ENUM('M', 'F')  NOT NULL,
    RegistrationNumber	CHAR(10)		NOT NULL,
PRIMARY KEY (Email),
UNIQUE (RegistrationNumber));

CREATE TABLE Student
(	Email				VARCHAR(30)		NOT NULL,
	AcademicYear		INT				NOT NULL,
PRIMARY KEY (Email),
FOREIGN KEY (Email) REFERENCES TS_User(Email));

CREATE TABLE Tutoring_Commission_Member
(	Email				VARCHAR(30)		NOT NULL,
PRIMARY KEY (Email),
FOREIGN KEY (Email) REFERENCES TS_User(Email));

CREATE TABLE Register
(	IdRegister			INT				NOT NULL	AUTO_INCREMENT,
	State				ENUM('Non approvato', 'Approvato')		NOT NULL 	DEFAULT 'Non approvato',
    ValidatedHours		INT				NOT NULL	DEFAULT 0,
    TotalHours			INT				NOT NULL,
    PercentageComplete	FLOAT			NOT NULL	DEFAULT 0,
PRIMARY KEY (IdRegister));

CREATE TABLE Tutor
(	Email				VARCHAR(30)		NOT NULL,
	StartDate			DATE			NOT NULL,
    CommissionMember	VARCHAR(30)		NOT NULL,
    RegisterId			INT				NOT NULL,
PRIMARY KEY (Email),
FOREIGN KEY (Email) REFERENCES TS_User(Email),
FOREIGN KEY (CommissionMember) REFERENCES Tutoring_Commission_Member(Email),
FOREIGN KEY (RegisterId) REFERENCES Register(IdRegister));

CREATE TABLE Request
(	IdRequest			INT				NOT NULL	AUTO_INCREMENT,
	State				ENUM('In valutazione', 'Accettata')  NOT NULL	DEFAULT 'In valutazione',
	StudentComment		VARCHAR(240)	NOT NULL,
    RequestDate			DATE			NOT NULL,
    RequestTime			INT				NOT NULL,
    Duration			INT				NOT NULL,
    Student				VARCHAR(30)		NOT NULL,
PRIMARY KEY (IdRequest),
FOREIGN KEY (Student) REFERENCES Student(Email));

CREATE TABLE Appointment
(	IdAppointment		INT				NOT NULL	AUTO_INCREMENT,
	Details				VARCHAR(240)	NOT NULL,
    RequestId			INT				NOT NULL,
    Tutor				VARCHAR(30)		NOT NULL,
PRIMARY KEY (IdAppointment),
FOREIGN KEY (RequestId) REFERENCES Request(IdRequest),
FOREIGN KEY (Tutor) REFERENCES Tutor(Email));

CREATE TABLE Activity_Tutor
(	IdActivity			INT				NOT NULL	AUTO_INCREMENT,
	Category			ENUM('Sportello informativo', 'Assistenza Esame', 'Organizzazione Seminario', 'Seminario', 'Organizzazione Evento', 'Evento')	NOT NULL,
	ActivityDate		DATE			NOT NULL,
    StartTime			INT				NOT NULL,
    FinishTime			INT				NOT NULL,
    Hours				FLOAT			NOT NULL,
    State				ENUM('In valutazione', 'Convalidata')	NOT NULL	DEFAULT 'In valutazione',
    Details				VARCHAR(320)	NOT NULL,
    Tutor				VARCHAR(30)		NOT NULL,
    RegisterId			INT				NOT NULL,
PRIMARY KEY (IdActivity),
FOREIGN KEY (Tutor) REFERENCES TS_User(Email),
FOREIGN KEY (RegisterId) REFERENCES Register(IdRegister));

CREATE TABLE Work_Day
(	WorkDayName			ENUM('Lunedì', 'Martedì', 'Mercoledì', 'Giovedì', 'Venerdì')	NOT NULL,
	StartTime			INT				NOT NULL,
    FinishTime			INT				NOT NULL,
    IsOpen				BOOLEAN			NOT NULL 	DEFAULT FALSE,
    CommissionMember	VARCHAR(30)		NOT NULL,
PRIMARY KEY (WorkDayName),
FOREIGN KEY (CommissionMember) REFERENCES Tutoring_Commission_Member(Email));

CREATE TABLE Manages
(	Tutor 				VARCHAR(30)		NOT NULL,
	RequestId			INT				NOT NULL,
PRIMARY KEY (Tutor, RequestId),
FOREIGN KEY (Tutor) REFERENCES Tutor(Email),
FOREIGN KEY (RequestId) REFERENCES Request(IdRequest));

CREATE TABLE Contained_In
(	AppointmentId		INT				NOT NULL,
	ActivityId			INT				NOT NULL,
PRIMARY KEY (AppointmentId, ActivityId),
FOREIGN KEY (AppointmentId) REFERENCES Appointment(IdAppointment),
FOREIGN KEY (ActivityId) REFERENCES Activity_Tutor(IdActivity));

CREATE TABLE Validates
(	CommissionMember	VARCHAR(30)		NOT NULL,
	ActivityId			INT				NOT NULL,
PRIMARY KEY (CommissionMember, ActivityId),
FOREIGN KEY (CommissionMember) REFERENCES Tutoring_Commission_Member(Email),
FOREIGN KEY (ActivityId) REFERENCES Activity_Tutor(IdActivity));