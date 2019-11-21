CREATE OR REPLACE TRIGGER ntCheck
BEFORE INSERT ON groepoefpra
FOR EACH ROW
DECLARE
	aantlGr integer;

BEGIN
	select sum(aant) INTO aantlGr from groepoefpra where dafk=:NEW.dafk;
	IF (aantlGr+:NEW.aant)>10 THEN
		raise_application_error ( -20020,'u geeft te veel lessen'||aantlGr ||' '||:NEW.aant);
		insert into groepoefpra values (:NEW.aid,:NEW.dafk,10-(aantlGr+:NEW.aant));
		dbms_output.put_line(aantlGr+:NEW.aant||'is te veel, er zijn er' || (10-(aantlGr+:NEW.aant))||'toegevoegd');
	END IF;

END;
/
