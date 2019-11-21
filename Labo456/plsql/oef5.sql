create or replace procedure werk is
begin
	if (to_char(sysdate, 'hh24')) between 8 and 12 then
		if (to_char(sysdate,'dy')) != 'sat'and  (to_char(sysdate,'dy')) !='sun' then
			dbms_output.put_line('WERK!');
		end if;
	else 
		raise_application_error(-20031,'niet werken op rustmomenten');
	end if;
end;
/
