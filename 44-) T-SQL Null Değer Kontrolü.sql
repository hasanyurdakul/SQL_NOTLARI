--T-SQL Null Değer Kontrolü

USE Northwind
GO

--NULL KONTROL MEKANIZMALARI

SELECT MusteriAdi,Bolge FROM Musteriler

SELECT MusteriAdi,
CASE
	WHEN Bolge   IS NULL THEN 'BOLGE BILINMIYOR' 
	ELSE Bolge 
END	[BOLGEISMI]
FROM Musteriler
