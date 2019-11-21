create or replace procedure thAct (afk IN theorie.tdafk%type )is
	elem activiteit.anaam%type;
begin
	for elem in (select anaam from activiteit,theorie where aid=theorie.taid and theorie.tdafk=afk) 
	loop
		dbms_output.put_line(elem.anaam);
	end loop;
end;
/
