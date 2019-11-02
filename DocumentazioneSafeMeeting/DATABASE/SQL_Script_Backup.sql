/* SQL Backup */

/* File di backup di idee e funzioni scritte *

/* Visualizza prenotazione

@ora_fine_precedente = (SELECT @ora FROM ricevimento as ricev, prenotazione as prenot, docente as doc, studente as stud
									WHERE ricev.ricevMatricolaDoc = doc.matricolaDoc AND
										  prenot.prenotaMatricolaDoc = ricev.MatricolaDoc AND
                                          stud.matricolaStud = prenot.prenotaMatricolaStud AND
                                          ricev.giorno = (SELECT CASE DATEPART(WEEKDAY,GETDATE())  
																  WHEN 1 THEN 'Domenica' 
																  WHEN 2 THEN 'Lunedì' 
																  WHEN 3 THEN 'Martedì' 
																  WHEN 4 THEN 'Mercoledì' 
																  WHEN 5 THEN 'Giovedì' 
																  WHEN 6 THEN 'Venerdì' 
																  WHEN 7 THEN 'Sabato' 
														         END) AND
	
    SET @orario = time();
SET @orario_fine_precedente = time();
SET @ora = time();
SET @numero = num_prenotazione();

CREATE FUNCTION num_prenotazione() RETURNS int
BEGIN
  SELECT IF(STRCMP(stud.prenotaMatricolaStud,"?") = 0, prenot.numero_prentazione,0)
  FROM prenotazione as prenot, studente as stud
  WHERE prenot.prenotaMatricolaStud = stud.matricolaStud;
END;

    
    prenot.prenotaMatricolaDoc = doc.matricolaDoc AND
	  prenot.prenotaMatricolaStud = stud.matricolaStud AND
	  tipologia.tipoMatricolaDoc = doc.matricolaDoc AND
      ricev.ricevMatricolaDoc = prenot.prenotaMatricolaDoc AND
      prenot.tipologia = tipologia.tipo AND
      ricev.giorno = (SELECT ricev.giorno FROM ricevimenti as ricev, prenotazione as prenot
					  WHERE ricev.ricevMatricolaDoc = prenot.prenotaMatricolaDoc AND
*/