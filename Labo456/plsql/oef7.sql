create or replace procedure thOpl (afk IN theorie.tdafk%type )is
	belem basis.bnaam%type;
	melem minor.mnaam%type;
begin
	for belem in (select distinct bnaam from theorie, basisact,basis where tdafk=afk and taid=aid and basisact.bafk=basis.bafk) 
	loop
		dbms_output.put_line(belem.bnaam);
	end loop;

	for melem in (select distinct mnaam from theorie, minoract,minor where tdafk=afk and taid=aid and minoract.bafk=minor.bafk and minoract.mafk=minor.mafk) 
	loop
		dbms_output.put_line('minor '||melem.mnaam);
	end loop;


end;
/

