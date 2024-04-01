﻿--T-SQL View - With Check Option Komutu


--################################
--WITH CHECK OPTION KOMUTU
--WIEW'IN ICERISINDEKI SORGUDA BULUNAN ŞARTA UYGUN KAYITLARIN INSERT EDILMESINE MUSADE EDILIP, UYMAYAN KAYITLARIN MUSADE EDILMEMESINI SAGLAYAN BIR KOMUTTUR.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE '%A%'

INSERT ORNEKVIEW2 VALUES ('HASAN','YURDAKUL')
INSERT ORNEKVIEW2 VALUES ('TAHA','YURDAKUL')

SELECT * FROM ORNEKVIEW2

--''WITH ENCRYPTION'' VE ''WITH SCHEMABINDING'' KOMUTLARI ''AS'' KEYWORDUNDEN ONCE KULLANILIYORDU. ANCAK ''WITH CHECK OPTION'' KOMUTU ''WHERE'' SARTINDAN SONRA BELIRTILMELIDIR.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi, SoyAdi FROM Personeller WHERE Adi LIKE '%A%'
WITH CHECK OPTION