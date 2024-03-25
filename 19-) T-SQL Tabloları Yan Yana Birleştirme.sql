﻿USE Northwind

--TABLOLARI AYRI AYRI ÇAĞIRALIM
SELECT * FROM Personeller
SELECT * FROM Satislar


--AŞAĞIDAKİ ŞEKİLDE TABLOLARI YAN YANA ÇAĞIRABİLİRİZ
--TABLO BOYUTLARI FARKLI İSE EKSİK OLAN HÜCRELERE NULL ATAMASI YAPILACAKTIR.
SELECT * FROM Personeller,Satislar

--İSTERSEK FARKLI TABLOLARDAKİ KOLONLARI DA YANYANA YAZDIRABİLİRİZ.
SELECT SoyAdi, Adi,Unvan,ShipVia,SevkAdi FROM Personeller,Satislar

--SORGUSU YAPILACAK KOLONUN ADI HER İKİ TABLODA DA VAR İSE AŞAĞIDAKİ ŞEKİLDE HANGİ TABLODAN GETİRİLECEĞİ BELİRTİLMELİDİR.
--AŞAĞIDAKİ SORGU PersonelID KOLONUNUN PERSONELLER TABLOSUNDAN ÇEKİLECEĞİNİ BELİRTİR.
SELECT Personeller.PersonelID,Satislar.MusteriID FROM Personeller,Satislar WHERE Personeller.PersonelID=Satislar.PersonelID order by PersonelID ASC 

