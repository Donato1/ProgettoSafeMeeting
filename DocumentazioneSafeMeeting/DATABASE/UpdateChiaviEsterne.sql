/* Update chiavi esterne */

USE safe_meeting;

/********** Preferiti *********/

/* FK Studente */
ALTER TABLE `safe_meeting`.`aggiungi_ai_preferiti` DROP FOREIGN KEY `aggiungi_ai_preferiti_ibfk_2`;

ALTER TABLE `safe_meeting`.`aggiungi_ai_preferiti` ADD CONSTRAINT `aggiungi_ai_preferiti_ibfk_2`
  FOREIGN KEY (`preferitiEmailStud`)
  REFERENCES `safe_meeting`.`studente` (`email`)
  ON UPDATE CASCADE
  ON DELETE CASCADE;
  
/* FK Docente */
ALTER TABLE `safe_meeting`.`aggiungi_ai_preferiti` DROP FOREIGN KEY `aggiungi_ai_preferiti_ibfk_1`;

ALTER TABLE `safe_meeting`.`aggiungi_ai_preferiti` 
ADD CONSTRAINT `aggiungi_ai_preferiti_ibfk_1`
  FOREIGN KEY (`preferitiMatricolaDoc`)
  REFERENCES `safe_meeting`.`docente` (`matricolaDoc`)
  ON DELETE CASCADE;

/********** Prenotazione *********/

/* FK Studente */
ALTER TABLE `safe_meeting`.`prenota` DROP FOREIGN KEY `prenota_ibfk_1`;

ALTER TABLE `safe_meeting`.`prenota` 
ADD CONSTRAINT `prenota_ibfk_1`
  FOREIGN KEY (`prenotaEmailStud`)
  REFERENCES `safe_meeting`.`studente` (`email`)
  ON UPDATE CASCADE
  ON DELETE CASCADE;

/* FK Docente */
ALTER TABLE `safe_meeting`.`prenota` DROP FOREIGN KEY `prenota_ibfk_2`;

ALTER TABLE `safe_meeting`.`prenota` 
ADD CONSTRAINT `prenota_ibfk_2`
  FOREIGN KEY (`prenotaMatricolaDoc`)
  REFERENCES `safe_meeting`.`docente` (`matricolaDoc`)
  ON DELETE CASCADE;
  
/********** Ricevimento *********/

/* FK Docente */
ALTER TABLE `safe_meeting`.`ricevimento` DROP FOREIGN KEY `ricevimento_ibfk_1`;

ALTER TABLE `safe_meeting`.`ricevimento` 
ADD CONSTRAINT `ricevimento_ibfk_1`
  FOREIGN KEY (`ricevMatricolaDoc`)
  REFERENCES `safe_meeting`.`docente` (`matricolaDoc`)
  ON DELETE CASCADE;

/********** Tipologia *********/

/* FK Docente */
ALTER TABLE `safe_meeting`.`tipologia`  DROP FOREIGN KEY `tipologia_ibfk_1`;

ALTER TABLE `safe_meeting`.`tipologia` 
ADD CONSTRAINT `tipologia_ibfk_1`
  FOREIGN KEY (`tipoMatricolaDoc`)
  REFERENCES `safe_meeting`.`docente` (`matricolaDoc`)
  ON DELETE CASCADE;
  
 /********** Insegna *********/

/* FK Docente */ 
ALTER TABLE `safe_meeting`.`insegna` DROP FOREIGN KEY `insegna_ibfk_1`;

ALTER TABLE `safe_meeting`.`insegna` 
ADD CONSTRAINT `insegna_ibfk_1`
  FOREIGN KEY (`insegnaMatricolaDoc`)
  REFERENCES `safe_meeting`.`docente` (`matricolaDoc`)
  ON DELETE CASCADE;

