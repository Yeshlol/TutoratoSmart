DROP SCHEMA if exists TutoratoSmart;
CREATE SCHEMA TutoratoSmart;

USE TutoratoSmart;

CREATE TABLE Utente
(	Email				VARCHAR(45)		NOT NULL,
	Ruolo				ENUM('Studente', 'Tutor', 'Responsabile Commissione')		NOT NULL	DEFAULT 'Studente',
    Nome				VARCHAR(30)		NOT NULL,
    Cognome				VARCHAR(30)		NOT NULL,
    Sesso				ENUM('M', 'F')	NOT NULL,
    Pwd					VARCHAR(40)		NOT NULL,
    Numero_Telefono		VARCHAR(15),
    Matricola			CHAR(10)		NOT NULL,
PRIMARY KEY (Email),
UNIQUE (Matricola));


CREATE TABLE Registro
(	ID_Registro			INT				NOT NULL	AUTO_INCREMENT,
	Stato				ENUM('Da Compilare', 'Compilato', 'Approvato')		NOT NULL 	DEFAULT 'Da Compilare',
    Percentuale_Completamento	FLOAT	NOT NULL	DEFAULT 0,
    Responsabile		VARCHAR(45)		NOT NULL,
PRIMARY KEY (ID_Registro),
FOREIGN KEY (Responsabile) REFERENCES Utente(Email));


CREATE TABLE Tutor
(	Email				VARCHAR(45)		NOT NULL,
	Data_Inizio			DATE			NOT NULL,
    Data_Termine		DATE			NOT NULL,
    ID_Registro			INT				NOT NULL,
PRIMARY KEY (Email),
FOREIGN KEY (Email) REFERENCES Utente(Email) ON DELETE CASCADE,
FOREIGN KEY (ID_Registro) REFERENCES Registro(ID_Registro));


CREATE TABLE Prenotazione
(	ID_Prenotazione		INT				NOT NULL	AUTO_INCREMENT,
	Giorno				DATE			NOT NULL,
    Ora					CHAR(5)			NOT NULL,
    Studente			VARCHAR(45)		NOT NULL,
PRIMARY KEY (ID_Prenotazione),
FOREIGN KEY (Studente) REFERENCES Utente(Email));

   
CREATE TABLE Ora_Lavorativa
(	Tutor 				VARCHAR(45)		NOT NULL,
	Giorno				DATE			NOT NULL,
    Ora					CHAR(5)			NOT NULL,
    Tipologia			ENUM('Sportello informativo', 'Assistenza Esame', 'Organizzazione Seminario', 'Seminario', 'Organizzazione Evento', 'Evento')		NOT NULL,
    Descrizione			VARCHAR(3000)	NOT NULL,
    Numero_Registro		INT				NOT NULL,
PRIMARY KEY (Tutor, Giorno, Ora),
FOREIGN KEY (Tutor) REFERENCES Utente(Email),
FOREIGN KEY (Numero_Registro) REFERENCES Registro(ID_Registro));


CREATE TABLE Gestisce
(	Tutor 				VARCHAR(45)		NOT NULL,
	Numero_Prenotazione	INT				NOT NULL,
PRIMARY KEY (Tutor, Numero_Prenotazione),
FOREIGN KEY (Tutor) REFERENCES Utente(Email),
FOREIGN KEY (Numero_Prenotazione) REFERENCES Prenotazione(ID_Prenotazione));


CREATE TABLE Contenuta_In
(	Numero_Prenotazione	INT				NOT NULL,
	Tutor				VARCHAR(45)		NOT NULL,
	Giorno				DATE			NOT NULL,
    Ora					CHAR(5)			NOT NULL,
PRIMARY KEY (Numero_Prenotazione, Tutor, Giorno, Ora),
FOREIGN KEY (Numero_Prenotazione) REFERENCES Prenotazione(ID_Prenotazione),
FOREIGN KEY (Tutor, Giorno, Ora) REFERENCES Ora_Lavorativa(Tutor, Giorno, Ora));
