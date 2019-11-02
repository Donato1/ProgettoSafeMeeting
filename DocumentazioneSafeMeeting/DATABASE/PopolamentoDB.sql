/* Versione 0.2.1 */


/* Docenti 
	Matricola: 05121010XX;
    Numero docenti presenti: 10;
    Password: 1234;
    Email: surname@unisa.it;
*/

INSERT INTO docente VALUES ('0512101001', 'Alberto', 'Negro', 'F/NgVDRA+O9FrDoLn9AGew==', 'alberto@unisa.it', 'A001','');
INSERT INTO docente VALUES ('0512101002', 'Filomena', 'Ferrucci', 'F/NgVDRA+O9FrDoLn9AGew==', 'fferrucci@unisa.it', 'A002','');
INSERT INTO docente VALUES ('0512101003', 'Clelia', 'De Felice', 'F/NgVDRA+O9FrDoLn9AGew==', 'cdefelice@unisa.it','A003','');
INSERT INTO docente VALUES ('0512101004', 'Rosalba', 'Zizza', 'F/NgVDRA+O9FrDoLn9AGew==', 'rzizza@unisa.it','A004','');
INSERT INTO docente VALUES ('0512101005', 'Michele', 'Risi', 'F/NgVDRA+O9FrDoLn9AGew==', 'mrisi@unisa.it','A005','');
INSERT INTO docente VALUES ('0512101006', 'Delfina', 'Malandrino', 'F/NgVDRA+O9FrDoLn9AGew==', 'dmalandrino@unisa.it','A006','');
INSERT INTO docente VALUES ('0512101007', 'Genoveffa', 'Tortora', 'F/NgVDRA+O9FrDoLn9AGew==', 'tortora@unisa.it','A007','');
INSERT INTO docente VALUES ('0512101008', 'Giuseppe', 'Cattaneo', 'F/NgVDRA+O9FrDoLn9AGew==', 'cattaneo@unisa.it','A008','');
INSERT INTO docente VALUES ('0512101009', 'Michele', 'Nappi', 'F/NgVDRA+O9FrDoLn9AGew==', 'mnappi@unisa.it','A009','');
INSERT INTO docente VALUES ('0512101010', 'Ugo', 'Vaccaro', 'F/NgVDRA+O9FrDoLn9AGew==', 'uvaccaro@unisa.it','A010','');

/* Studenti
	Matricola: Reali;
    Numero studenti presenti: 10;
	Password: 1234;
    Email: n.surnameN@studenti.unisa.it
*/

INSERT INTO studente VALUES ('0512104599', 'Gianluca', 'Verlingieri', 'F/NgVDRA+O9FrDoLn9AGew==', 'g.verlingieri@studenti.unisa.it');
INSERT INTO studente VALUES ('0512105019', 'Luca', 'Di Chiara', 'F/NgVDRA+O9FrDoLn9AGew==', 'l.dichiara3@studenti.unisa.it');
INSERT INTO studente VALUES ('0512103443', 'Alfonso', 'Serio', 'F/NgVDRA+O9FrDoLn9AGew==', 'a.serio14@studenti.unisa.it');
INSERT INTO studente VALUES ('0512105057', 'Matteo', 'Ferrara', 'F/NgVDRA+O9FrDoLn9AGew==', 'm.ferrara119@studenti.unisa.it');
INSERT INTO studente VALUES ('0512104565', 'Donato', 'Marmora', 'F/NgVDRA+O9FrDoLn9AGew==', 'd.marmora1@studenti.unisa.it');
INSERT INTO studente VALUES ('0512104615', 'Alessandra', 'Capo', 'F/NgVDRA+O9FrDoLn9AGew==', 'a.capo36@studenti.unisa.it');
INSERT INTO studente VALUES ('0512103881', 'Andrea', 'Califano', 'F/NgVDRA+O9FrDoLn9AGew==', 'a.califano72@studenti.unisa.it');
INSERT INTO studente VALUES ('0512104841', 'Emilio', 'Mainardi', 'F/NgVDRA+O9FrDoLn9AGew==', 'e.mainardi@studenti.unisa.it');
INSERT INTO studente VALUES ('0522500569', 'Roberta', 'Gesumaria', 'F/NgVDRA+O9FrDoLn9AGew==', 'r.gesumaria@studenti.unisa.it');
INSERT INTO studente VALUES ('0522500568', 'Francesca', 'Tassatone', 'F/NgVDRA+O9FrDoLn9AGew==', 'f.tassatone@studenti.unisa.it');

/* Ricevimento
	Matricola docente: 05121010XX;
	Numero ricevimenti presenti: 20 (2 per ogni docente);
    Studio: A0XX;
*/

INSERT INTO ricevimento VALUES ('0512101001', '12:00', '13:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101001', '16:00', '17:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101002', '14:00', '15:00', 'Martedì');
INSERT INTO ricevimento VALUES ('0512101002', '17:00', '18:00', 'Martedì');
INSERT INTO ricevimento VALUES ('0512101003', '09:00', '10:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101003', '11:00', '12:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101004', '12:00', '13:00', 'Mercoledì');
INSERT INTO ricevimento VALUES ('0512101004', '15:00', '16:00', 'Mercoledì');
INSERT INTO ricevimento VALUES ('0512101005', '10:00', '11:00', 'Giovedì');
INSERT INTO ricevimento VALUES ('0512101005', '14:00', '15:00', 'Giovedì');
INSERT INTO ricevimento VALUES ('0512101006', '11:00', '12:00', 'Giovedì');
INSERT INTO ricevimento VALUES ('0512101006', '15:00', '16:00', 'Venerdì');
INSERT INTO ricevimento VALUES ('0512101007', '10:00', '11:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101007', '12:00', '13:00', 'Mercoledì');
INSERT INTO ricevimento VALUES ('0512101008', '17:00', '18:00', 'Martedì');
INSERT INTO ricevimento VALUES ('0512101008', '12:00', '13:00', 'Giovedì');
INSERT INTO ricevimento VALUES ('0512101009', '16:00', '17:00', 'Martedì');
INSERT INTO ricevimento VALUES ('0512101009', '11:00', '12:00', 'Mercoledì');
INSERT INTO ricevimento VALUES ('0512101010', '12:00', '13:00', 'Lunedì');
INSERT INTO ricevimento VALUES ('0512101010', '15:00', '16:00', 'Lunedì');


/* Corso
	Codice: 05121000XX;
    Numero di corsi presenti: 27;
    Numero di professori che insegnano due materie nella lista: 2; (De Felice, Malandrino)
*/

INSERT INTO corso VALUES ('0512100001', 9, 'Analisi Matematica', 72);
INSERT INTO corso VALUES ('0512100002', 9, 'Architettura degli elaboratori', 72);
INSERT INTO corso VALUES ('0512100008', 9, 'Basi di dati', 72);
INSERT INTO corso VALUES ('0512100009', 6, 'Calcolo delle probabilità e statistica matematica', 48);
INSERT INTO corso VALUES ('0512100045', 6, 'Calcolo scientifico', 48);
INSERT INTO corso VALUES ('0512100018', 9, 'Elementi di teoria della computazione', 72);
INSERT INTO corso VALUES ('0512100003', 6, 'Fisica', 54);
INSERT INTO corso VALUES ('0512100049', 6, 'Grafica ed interattività', 48);
INSERT INTO corso VALUES ('0512100019', 9, 'Ingegneria del software', 78);
INSERT INTO corso VALUES ('0512100020', 6, 'Interazione uomo macchina', 48);
INSERT INTO corso VALUES ('0512100015', 6, 'Lingua inglese', 48);
INSERT INTO corso VALUES ('0512100040', 9, 'Matematica discreta', 72);
INSERT INTO corso VALUES ('0512100041', 6, 'Metodi matematici per l informatica', 48);
INSERT INTO corso VALUES ('0512100051', 6, 'Mobile computing', 48);
INSERT INTO corso VALUES ('0512100043', 9, 'Progettazione di algoritmi', 72);
INSERT INTO corso VALUES ('0512100052', 9, 'Programmazione & strutture dati', 72);
INSERT INTO corso VALUES ('0512100047', 6, 'Programmazione avanzata', 48);
INSERT INTO corso VALUES ('0512100021', 9, 'Programmazione distribuita', 72);
INSERT INTO corso VALUES ('0512100005', 9, 'Programmazione I', 72);
INSERT INTO corso VALUES ('0512100053', 9, 'Programmazione object oriented', 72);
INSERT INTO corso VALUES ('0512100011', 6, 'Reti di calcolatori', 48);
INSERT INTO corso VALUES ('0512100012', 6, 'Ricerca operativa', 48);
INSERT INTO corso VALUES ('0512100048', 6, 'Sicurezza', 48);
INSERT INTO corso VALUES ('0512100025', 6, 'Simulazione', 48);
INSERT INTO corso VALUES ('0512100006', 9, 'Sistemi operativi', 72);
INSERT INTO corso VALUES ('0512100056', 9, 'Tecnologie software per il web', 72);

/* Prenota
	Numero prenotazione: auto increment;
*/

/*INSERT INTO prenota VALUES (0,'Ingegneria del software', 'Altro', '14:00', '0512102001', '0512101002');*/

/* Insegna
	Matricola docente: 05121010XX;
    Codice corso: 05121000XX;
    Numero di tuple presenti: 12;
*/

INSERT INTO insegna VALUES ('0512101001', '0512100002');
INSERT INTO insegna VALUES ('0512101002', '0512100019');
INSERT INTO insegna VALUES ('0512101003', '0512100018');
INSERT INTO insegna VALUES ('0512101003', '0512100041');
INSERT INTO insegna VALUES ('0512101004', '0512100005');
INSERT INTO insegna VALUES ('0512101005', '0512100056');
INSERT INTO insegna VALUES ('0512101006', '0512100011');
INSERT INTO insegna VALUES ('0512101006', '0512100021');
INSERT INTO insegna VALUES ('0512101007', '0512100008');
INSERT INTO insegna VALUES ('0512101008', '0512100006');
INSERT INTO insegna VALUES ('0512101009', '0512100052');
INSERT INTO insegna VALUES ('0512101010', '0512100043');

/* Aggiungi ai preferiti
	Matricola docente: 05121010XX;
    Matricola studente: Reali;
    Numero di tuple presenti: 30 (3 docenti per ogni studente);
*/

INSERT INTO aggiungi_ai_preferiti VALUES ('0512101001','g.verlingieri@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101007','g.verlingieri@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101010','g.verlingieri@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101001','l.dichiara3@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101004','l.dichiara3@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101005','l.dichiara3@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101002','a.serio14@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101006','a.serio14@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101008','a.serio14@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101009','m.ferrara119@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101003','m.ferrara119@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101001','m.ferrara119@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101006','d.marmora1@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101003','d.marmora1@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101007','d.marmora1@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101002','a.capo36@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101010','a.capo36@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101001','a.capo36@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101004','a.califano72@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101005','a.califano72@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101006','a.califano72@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101008','e.mainardi@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101007','e.mainardi@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101002','e.mainardi@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101003','r.gesumaria@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101002','r.gesumaria@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101001','r.gesumaria@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101003','f.tassatone@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101002','f.tassatone@studenti.unisa.it');
INSERT INTO aggiungi_ai_preferiti VALUES ('0512101007','f.tassatone@studenti.unisa.it');

/* Tipologia
	Matricola docente: 05121010XX;
    Tipo: informazioni, tesi, problematiche relative al corso, altro;
    Tempo: unità di misura in minuti (30 = 30 minuti);
    Numero di tuple presenti: 25;
*/

INSERT INTO tipologia VALUES ('0512101001', 30, 'Tesi');
INSERT INTO tipologia VALUES ('0512101001', 10, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101001', 15, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101001', 20, 'Altro');
INSERT INTO tipologia VALUES ('0512101002', 15, 'Altro');
INSERT INTO tipologia VALUES ('0512101003', 15, 'Altro');
INSERT INTO tipologia VALUES ('0512101004', 15, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101004', 30, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101005', 15, 'Tesi');
INSERT INTO tipologia VALUES ('0512101005', 10, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101005', 10, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101006', 30, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101006', 20, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101006', 30, 'Altro');
INSERT INTO tipologia VALUES ('0512101007', 15, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101007', 25, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101007', 30, 'Altro');
INSERT INTO tipologia VALUES ('0512101008', 40, 'Tesi');
INSERT INTO tipologia VALUES ('0512101008', 15, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101008', 25, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101009', 15, 'Altro');
INSERT INTO tipologia VALUES ('0512101010', 30, 'Tesi');
INSERT INTO tipologia VALUES ('0512101010', 20, 'Problematiche relative al corso');
INSERT INTO tipologia VALUES ('0512101010', 15, 'Informazioni');
INSERT INTO tipologia VALUES ('0512101010', 15, 'Altro');