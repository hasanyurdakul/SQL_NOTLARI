﻿--T-SQL If - Else Yapısı
USE Northwind

--IF YAPISI
-- = --> ESITSE
-- <> --> ESIT DEGILSE
-- < --> KUCUKSE
-- > --> BUYUKSE

--############
--TEK SATIRLIK CALISMA
--############

DECLARE @ISIM NVARCHAR(MAX)
SET @ISIM = 'HASAN'

IF @ISIM = 'HASAN'
PRINT 'EVET'
ELSE 
PRINT 'HAYIR'


--############
--ÇOK SATIRLIK CALISMA (BEGIN END YANI SCOPE YAPISI)
--############

DECLARE @SAYI1 INT = 3
DECLARE @SAYI2 INT = 5

IF @SAYI1 < @SAYI2
	BEGIN
		PRINT 'SAYI 1, SAYI 2''DEN KUCUKTUR.'
		SELECT @SAYI1 [SAYI 1], @SAYI2 [SAYI 2] 
	END
ELSE 
	BEGIN
		PRINT 'SAYI 1, SAYI 2''DEN KUCUK DEGILDIR.'
		SELECT @SAYI1 [SAYI 1], @SAYI2 [SAYI 2] 
	END