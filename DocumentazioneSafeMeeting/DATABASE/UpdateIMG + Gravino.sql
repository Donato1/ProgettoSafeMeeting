USE safe_meeting;

UPDATE docente SET immagine = 'negro.jpg' WHERE matricolaDoc = '0512101001';
UPDATE docente SET immagine = 'ferrucci.jpg' WHERE matricolaDoc = '0512101002';
UPDATE docente SET immagine = 'defelice.jpg' WHERE matricolaDoc = '0512101003';
UPDATE docente SET immagine = 'zizza.jpg' WHERE matricolaDoc = '0512101004';
UPDATE docente SET immagine = 'risi.jpg' WHERE matricolaDoc = '0512101005';
UPDATE docente SET immagine = 'malandrino.jpg' WHERE matricolaDoc = '0512101006';
UPDATE docente SET immagine = 'tortora.jpg' WHERE matricolaDoc = '0512101007';
UPDATE docente SET immagine = 'cattaneo.jpg' WHERE matricolaDoc = '0512101008';
UPDATE docente SET immagine = 'nappi.jpg' WHERE matricolaDoc = '0512101009';
UPDATE docente SET immagine = 'vaccaro.jpg' WHERE matricolaDoc = '0512101010';

ALTER TABLE `safe_meeting`.`studente` CHANGE COLUMN `nome` `nome` VARCHAR(50) NOT NULL ;
/********************************************************************************/

INSERT INTO docente VALUES('0512101011','Carmine','Gravino','F/NgVDRA+O9FrDoLn9AGew==','gravino@unisa.it','A011','gravino.jpg');
INSERT INTO docente VALUES('0512101012','Andrea Francesco','Abate','F/NgVDRA+O9FrDoLn9AGew==','abate@unisa.it','A012','abate.jpg');

INSERT INTO insegna VALUES('0512101011','0512100019'); /*Gravino -> IS*/
INSERT INTO insegna VALUES('0512101012','0512100006'); /*Abate -> SO*/

/* Ricevimento Gravino */
INSERT INTO ricevimento VALUES ('0512101011','10:00','11:00','Lunedì');
INSERT INTO ricevimento VALUES ('0512101011','14:00','15:00','Mercoledì');

/* Ricevimento Abate */
INSERT INTO ricevimento VALUES ('0512101012','15:00','16:00','Martedì');
INSERT INTO ricevimento VALUES ('0512101012','16:00','17:00','Giovedì');







