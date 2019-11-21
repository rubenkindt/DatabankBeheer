create or replace procedure sometjes(opl in basisact.bafk%type, res out integer)is
	cursor acur is select sum(ascu) from activiteit where activiteit.aid in (select aid from basisact where opl=bafk union all select aid from minoract where opl=bafk);
begin
	open acur;
	res:=0;
	loop
		fetch acur into res;
		if res is null then
		res:=0;
		exit when acur%NOTFOUND;
		else 
			exit when acur%NOTFOUND;
		end if;
	end loop;
	close acur;
end;
/
