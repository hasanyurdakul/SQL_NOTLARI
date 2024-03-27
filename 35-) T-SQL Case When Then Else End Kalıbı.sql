﻿USE Northwind
GO

--T-SQL Case When Then Else End Kalıbı

--PERSONELLERIN AD SOYADLARININ YANINA, UNVANEKI MR. İSE ERKEK ---- MRS. İSE KADIN YAZSIN

--#####CASE
SELECT Adi,SoyAdi,UnvanEki FROM Personeller
SELECT Adi,SoyAdi,
CASE
	WHEN UnvanEki='Mr.' THEN 'ERKEK'
	WHEN UnvanEki='Ms.' OR UnvanEki='Mrs.' THEN 'KADIN'
	ELSE UnvanEki
END
FROM Personeller

--EGER URUNUN BIRIM FIYATI 0-50 ARASINDA ISE 'CIN MALI' 50-100 ARASINDA ISE 'UCUZ', 100-200 ARASINDA ISE 'NORMAL', 200'DEN FAZLA ISE 'PAHALI' YAZSIN

SELECT * FROM Urunler
SELECT UrunID,UrunAdi,BirimFiyati,
CASE
	WHEN BirimFiyati BETWEEN 0 AND 50 THEN 'CIN MALI'
	WHEN BirimFiyati BETWEEN 50 AND 100 THEN 'UCUZ'
	WHEN BirimFiyati BETWEEN 100 AND 200 THEN 'NORMAL'
	WHEN BirimFiyati > 200 THEN 'PAHALI'
END
FROM Urunler

