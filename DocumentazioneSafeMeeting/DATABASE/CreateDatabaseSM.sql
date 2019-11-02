/* Versione 0.2.0: 
	- Aggiunto "auto_increment" all'attributo "numero_prenotazione" in prenota;
    - Modificato il tipo degli attributi "ora_inizio", "ora_fine" (Ricevimento), "orario" (Prenota) da int(5), 
      in "time" (Formato HH:MM);
	
    Note: 
    - "numero_prenotazione" va lasciato char(10) o va messo come semplice int?
    - l'attributo "tipo" va lasciato varchar(30) o va messo tipo enum?
*/

/* Versione 0.3.0:
	- Modificato "numero_prenotazione" da char(10) in int;
    - Aggiunto "USE", in modo da eseguire direttamente lo script;
    
    Note:
    - attributo "tipo" lasciato in varchar;
    - per far partire "numero_prenotazione" da un diverso numero che non sia 0, eseguire la seguente stringa:
      ALTER TABLE Prenota AUTO_INCREMENT=100; 
   
   Versione 0.3.1:
	- Aggiunto "giorno" nella tabella prenotazione;
    
    Note:
    - Codice del corso dovrebbe essere auto-increment?
	- Lo studio del docente dovrebbe stare nell'area personale del docente, poiché è un'informazione statica
    
   Versione 0.3.2:
	- Cambiata la chiave primaria di studente in "email"
    - 
    
*/

CREATE SCHEMA safe_meeting;

USE safe_meeting;

CREATE TABLE Docente (

matricolaDoc char(10) not null,
nome varchar(15) not null,
cognome varchar(15) not null,
password varchar(30) not null,
email varchar(50) not null,
studio varchar(5) not null,
immagine varchar(100) null,
Primary key (matricolaDoc)
);

CREATE TABLE Studente (

matricolaStud char(10) not null,
nome varchar(15) not null,
cognome varchar(15) not null,
password varchar(30) not null,
email varchar(50) not null,
Primary Key (email)
);

CREATE TABLE Ricevimento (

ricevMatricolaDoc char(10) not null,
ora_inizio time not null,
ora_fine time not null,
giorno varchar(15) not null,
Foreign Key (ricevMatricolaDoc) references Docente(matricolaDoc)
);

CREATE TABLE Corso (

Codice char(10) not null,
num_cfu int(5) not null,
nome varchar(50) not null,
ore_totali int(5) not null,
Primary key (Codice)
);

CREATE TABLE Prenota (

numero_prenotazione int not null auto_increment,
nome_corso varchar(30) not null,
tipologia varchar(30) not null,
orario time not null,
giorno date not null,
prenotaEmailStud varchar(50) not null,
prenotaMatricolaDoc char(10) not null,
Primary key (numero_prenotazione),
Foreign key (prenotaEmailStud) references Studente (email),
Foreign Key (prenotaMatricolaDoc) references Docente (matricolaDoc)
);

CREATE TABLE Insegna (

insegnaMatricolaDoc char(10) not null,
insegnaCodiceCorso char(10) not null,
Foreign key (insegnaMatricolaDoc) references Docente (matricolaDoc),
Foreign key (insegnaCodiceCorso) references Corso (codice)
);

CREATE TABLE Aggiungi_ai_preferiti (

preferitiMatricolaDoc char(10) not null,
preferitiEmailStud varchar(50) not null,
Foreign key (preferitiMatricolaDoc) references Docente (matricolaDoc),
Foreign key (preferitiEmailStud) references Studente (email)
);

CREATE TABLE Tipologia (

tipoMatricolaDoc char(10) not null,
tempo int(5) not null,
tipo varchar(50) not null,
Foreign key (tipoMatricolaDoc) references Docente (matricolaDoc)
);

