CREATE OR REPLACE TRIGGER capaciteitCheck
BEFORE INSERT OR UPDATE ON practica
FOR EACH ROW
DECLARE 
	plidTest lokaal.lcapa%TYPE;
BEGIN 
	select lcapa INTO plidTest from lokaal where lid=:new.plid;
	IF plidTest> 20 THEN
		raise_application_error( -20020, 'capaciteit is max20');

	END IF;
END;
/
