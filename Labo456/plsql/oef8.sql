create or replace procedure th is
	 doc docent.dafk%type;
begin
	for doc in (select distinct dafk from docent)
	loop
		dbms_output.put_line(doc.dafk);
		thopl(doc.dafk);
	end loop;
end;
/
