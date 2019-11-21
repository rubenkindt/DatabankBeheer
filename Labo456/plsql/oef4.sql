create or replace function lokgr(mas in integer)return integer is 
	elem lokaal%ROWTYPE;
	som integer :=0;
begin
	for elem in (select * from lokaal where lcapa=mas)
	loop
		som:=som+1;
		dbms_output.put_line(elem.lid);
	end loop;
return som;
end;
/
