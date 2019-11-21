CREATE OR REPLACE TRIGGER tijdCheck
BEFORE INSERT OR UPDATE ON activiteit
BEGIN
	IF (to_char(sysdate,'hh24'))<12 THEN
		raise_application_error(-20202,'niet werken voor 12 uur ');
	END IF;
END;
/
