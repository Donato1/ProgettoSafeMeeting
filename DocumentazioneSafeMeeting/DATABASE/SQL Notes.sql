/*SQL RELEASE NOTES 0.1.0

Versione 0.3.1 CreateDatabaseSM:

	- Aggiunto "giorno" nella tabella prenotazione;
    
    Note:
    - Codice del corso dovrebbe essere auto-increment?
	- Lo studio del docente dovrebbe stare nell'area personale del docente, poiché è un'informazione statica.

Versione 0.1.0 Queries:
	
    Note:
    - Sessione gestita con email o matricola?
	- L'aggiunta dell'orario, come primo metodo, si aggiunge mettendo a 0 i campi che il docente non aggiunge
	  effettivamente, poiché sennò si dovrebbe gestire dinamicamente solo i campi che il docente aggiunge;
	- Lo studio? Nel mockup UI_DOC_18 (Aggiunta ricevimento) non è presente l'aggiunta di uno studio... è statico?
      Va ricavato tramite la matricola del docente?;
	- Controllare file Queries per ulteriori informazioni;
*/

/*SQL RELEASE NOTES 0.2.0

Aggiunto "studio" in docente, da ricevimento;

*/