﻿--T-SQL Coalesce Fonksiyonu İle Null Değer Kontrolü
USE Northwind

SELECT MusteriAdi,Bolge FROM Musteriler


SELECT MusteriAdi,
CASE
	WHEN Bolge   IS NULL THEN 'BOLGE BILINMIYOR' 
	ELSE Bolge 
END	[BOLGEISMI]
FROM Musteriler

--BOLGE KOLONUNDA BULUNAN VE DEGERI NULL OLAN BILGILERI 'BOLGE BILIMIYOR' OLARAK YAZDIRMAK ISTERSEK KULLANILIR.
--COALESCE(KOLON ADI,NULL ISE YAZDIRILMAK ISTENEN IFADE)
SELECT MusteriAdi, COALESCE(Bolge,'BOLGE BILINMIYOR') FROM Musteriler