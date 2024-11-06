delimiter $$
create function comparar_numeros(num1 int, num2 int)
returns varchar(20) deterministic
begin
 declare resultado varchar(20);
 if num1 > num2 then set resultado = 'Numero 1 es mayor';
 elseif num1 < num2 then set resultado = 'Numero 2 es mayor';
 else set resultado = 'Los numeros son iguales';
end if;
return resultado;
end$$
delimiter ;