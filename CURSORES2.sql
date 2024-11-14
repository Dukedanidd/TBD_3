DELIMITER $$
CREATE PROCEDURE CONTAR_PAISES(OUT CONT INT)

BEGIN
	DECLARE SALIR INT DEFAULT FALSE;
    DECLARE ID VARCHAR(2);
    
	DECLARE CUENTA_PAISES CURSOR FOR 
		SELECT country_id from countries;
	DECLARE CONTINUE HANDLER FOR NOT FOUND
    BEGIN
		SET SALIR = TRUE;
    END;
    OPEN CUENTA_PAISES;
    SET CONT = 0;
    CONTAR_P:LOOP
		FETCH CUENTA_PAISES INTO ID;
        SET CONT =  CONT + 1;
        IF SALIR THEN
			LEAVE CONTAR_P;
		END IF;
    END LOOP;
END$$ 
DELIMITER ;