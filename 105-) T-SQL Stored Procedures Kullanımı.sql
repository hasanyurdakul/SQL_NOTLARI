﻿--T-SQL Stored Procedures Kullanımı

--STORED PROCEDURE'LAR EXEC VEYA EXECUTE KOMUTU ILE KULLANILIRLAR

EXEC sp_ORNEK

--YA DA 

EXECUTE 'sp_ORNEK'


--EGER PARAMETRE ALACAKSA ASAGIDAKI GIBI KULLANILIR.
EXEC sp_ORNEK 3
EXEC sp_ORNEK 3, 5, 'HASAN'

