drop table if exists temp;
create table temp(
    i number ( 10, 0 ),
    x number ( 10, 0 ),
    text varchar ( 40 )
);

-- prodecimiento de ejemplo

declare 
    x number := 100;
begin
    for i in 1..20 loop
        if mod(i, 2) = 0 then
            insert into temp values ( i, x, 'i is even' );
        else
            insert into temp values ( i, x, 'i is odd');
        end if;
        x := x + 100;
    end loop;
end;    
/

commit;
-- mostrar tabla
select * from temp order by i asc;
