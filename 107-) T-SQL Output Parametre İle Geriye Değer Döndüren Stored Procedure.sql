--T-SQL Output Parametre İle Geriye Değer Döndüren Stored Procedure



--###########################
--OUTPUT ILE DEGER DONDURME

CREATE PROC sp_ORNEK3
(
	@ID INT,
	@AD NVARCHAR(MAX) OUTPUT,
	@SOYAD NVARCHAR(MAX) OUTPUT
)
AS
SELECT @AD=Adi, @SOYAD=SoyAdi FROM Personeller WHERE PersonelID=@ID


--KULLANIMI
DECLARE @AD NVARCHAR(MAX), @SOYAD NVARCHAR(MAX)
EXEC sp_ORNEK3 3, @AD, @SOYAD
SELECT @AD + ' ' + @SOYAD