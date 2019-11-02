/* Queries 0.1.0 */

/*Note:
	- Per l'area personale ed altre query, si presuppone che per identificare l'utente, si prenda la matricola
    o l'email, per identificare la sessione;
    - inserire il collegamento con "insegna" nelle query docente, per gestire il corso;
    - sessione gestita con email o matricola?
*/

/* Visualizza docente
	1) Tutti;
    2) Dati per la visualizzazione del docente (Ora inizio/fine, studio e giorno) messi così perché nella pagina
	   da visualizzare sono due;
	3) Singolo docente;
    4) Singolo docente (Area personale docente).
*/

SELECT doc.matricolaDoc, doc.nome, doc.cognome, doc.email, corso.nome FROM docente as doc, corso;
SELECT ricev.ora_inizio, ricev.ora_fine, ricev.studio, ricev.giorno FROM docente as doc, ricevimento as ricev WHERE ricev.ricevMatricolaDoc = doc.matricolaDoc;
SELECT doc.matricolaDoc, doc.nome, doc.cognome, doc.email FROM docente as doc WHERE matricolaDoc = ?;
SELECT * FROM docente WHERE matricolaDoc = ?;

/* Visualizza studente
	1) Tutti;
    2) Singolo;
    3) Singolo studente (Area personale studente);
    4) Lato docente (studente prentato).
*/

SELECT stud.matricolaStud, stud.nome, stud.cognome, stud.email FROM studente as stud;
SELECT stud.matricolaStud, stud.nome, stud.cognome, stud.email FROM studente as stud WHERE matricolaStud = ?;
SELECT * FROM studente WHERE matricolaStud = ?;
SELECT stud.nome, stud.cognome, stud.matricolaStud, prenot.nome_corso, prenot.giorno, stud.email, prenot.tipologia
FROM studente as stud, prenotazione as prenot, docente as doc
WHERE stud.matricolaStud = prenot.prenotaMatricolaStud AND
	  doc.matricolaDoc = prenot.prenotaMatricolaDoc AND
      prenot.prenotaMatricolaDoc = ?;

/* Visualizza preferiti (tutti) */

SELECT doc.matricolaDoc, doc.nome, doc.cognome, doc.email FROM docente as doc, studente as stud, aggiungi_ai_preferiti as pref 
WHERE doc.matricolaDoc = pref.matricolaDoc AND 
	  stud.matricolaStud = pref.matricolaStud AND
      stud.matricolaStud = ?;

/* Visualizza prenotazione 
	1) Riferimento a UI_STUD_9, secondo mock-up, nella sezione creata, visualizzare Prenotazione: nome_corso;
    2) Prenotazione;
*/

SELECT prenot.nome_corso FROM prenotazione as prenot, studente.stud WHERE prenot.prenotaMatricolaStud = stud.matricolaStud;

/*Da rivedere*/
SELECT doc.nome, doc.cognome, prenot.tipologia, prenot.orario, prenot.numero_prenotazione
FROM docente as doc, prenotazione as prenot, studente as stud
WHERE stud.matricolaStud = prenot.prenotaMatricolaStud AND
	  doc.matricolaDoc = prenot.prenotaMatricolaDoc;
      
/* Login (da rivedere)
	1) Studente;
    2) Docente.
*/

SELECT email,password FROM studente WHERE email = '?' AND password = '?';
SELECT email,password FROM docente WHERE email = '?' AND password = '?';

/* Ricerca docente */

SELECT doc.nome, doc.cognome FROM docente as doc WHERE doc.nome = '?' OR doc.cognome = '?';

/* Effettua prenotazione (da finire)
	- Nome corso, tipologia, orario, giorno, prenotaMatricolaStud, prenotaMatricolaDoc;
*/

INSERT INTO prenotazione VALUES ('?','?','?','?','?');

/* Elimina prenotazione (da rivedere/finire) */

DELETE  FROM prenotazione WHERE numero_prenotazione = '?';

/* Aggiungi docente ai preferiti (da rivedere/finire)
	- Matricola studente;
    - Matricola docente.
    
   Elimina docente dai preferiti (da rivedere)
*/

INSERT INTO aggiungi_ai_preferiti VALUES ('?','?');
DELETE  FROM aggiungi_ai_preferiti WHERE preferitiMatricolaStud = '?' AND preferitiMatricolaDoc = '?';

/* Aggiunta del corso da parte del docente. Comprende:
	- Inserimento nella tabella "corsi", del corso (Nome corso, num_cfu, ore_totali);
    - Inserimento dell'insegnamento nella tabella "insegna" (insegnaMatricolaDoc, insegnaCodiceCorso).
*/

INSERT INTO insegna VALUES ('?','?'); /* Da rivedere: come so il codice del corso creato ? Nel senso, 
										 se due docenti creano nello stesso momento un corso, come faccio ad
                                         associare quel corso, al docente? La risposta dovrebbe essere tramite
                                         l'id della sessione, ma come? */

/* Modifica corso, lato docente 
	- REVISIONARE;
*/

UPDATE corso SET nome_corso = '?' WHERE codice = '?';
UPDATE corso SET num_cfu = '?' WHERE codice = '?';
UPDATE corso SET ore_totali = '?' WHERE codice = '?';
UPDATE corso SET nome_corso = '?', num_cfu = '?', ore_totali = '?' WHERE codice = '?';

/* Elimina corso, lato docente
	- REVISIONARE;
*/

DELETE  FROM corso WHERE codice = '?';

/* Aggiunta orario di ricevimento
    - Campi: matricola doc, ora_inizio, ora_fine, studio, giorno
	- REVISIONARE;
    - L'aggiunta dell'orario, come primo metodo, si aggiunge mettendo a 0 i campi che il docente non aggiunge
	  effettivamente, poiché sennò si dovrebbe gestire dinamicamente solo i campi che il docente aggiunge;
	- Lo studio? Nel mockup UI_DOC_18 non è presente l'aggiunta di uno studio... è statico? Va ricavato tramite
      la matricola del docente?
*/

/*INSERT INTO ricevimento VALUES */

/* Inserimento docente/studente */
INSERT INTO docente VALUES ('?','?','?','?','?','?','?');
INSERT INTO studente VALUES ('?','?','?','?','?');



