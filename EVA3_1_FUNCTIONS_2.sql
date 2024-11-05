create function show_message(cadena varchar(20))
returns varchar(100) deterministic
return concat('Tu mensaje: ', cadena);