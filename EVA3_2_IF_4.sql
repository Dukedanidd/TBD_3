delimiter $$
create function conversion_temp(formula int, valor int)
returns int deterministic
begin 
	declare cak int;
    declare caf int;
    declare kac int;
    declare resu int;
    case formula
		when 1 then set cak = valor +273;
        when 2 then set caf = valor * 1.8 +32;
        when 3 then set kac = valor -273;
        else
			set resu = 'No valido';
	end case;
    return resu;
    
end;
delimiter;