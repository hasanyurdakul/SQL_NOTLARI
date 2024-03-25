﻿USE Northwind
--INNER JOIN 
--IKIDEN FAZLA TABLOYU BIRLESTIRME


--1997 YILINDAN ITIBAREN NANCY'NIN SATIS YAPTIGI FIRMALARIN ISIMLERINI GETIREN SORGU (1997 YILI DAHİL) (MUSTERILER, SATISLAR, PERSONELLER)
SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID=S.PersonelID INNER JOIN Musteriler M ON S.MusteriID=M.MusteriID WHERE P.Adi='NANCY' AND YEAR(S.SatisTarihi)>=1997 

--LIMITED OLAN TEDARIKCILERDEN ALINMIS SEAFOOD KATEGORISINDEKI URUNLERIN TOPLAM SATIS TUTARI(URUNLER, KATEGORILER, TEDARIKCILER)
SELECT * FROM Urunler, Kategoriler,Tedarikciler
SELECT * FROM Urunler U INNER JOIN Tedarikciler T ON U.TedarikciID=T.TedarikciID INNER JOIN Kategoriler K ON U.KategoriID=K.KategoriID WHERE T.SirketAdi LIKE '%Ltd.%' AND K.KategoriAdi='Seafood'
SELECT SUM(U.HedefStokDuzeyi*U.BirimFiyati) FROM Urunler U INNER JOIN Kategoriler K ON U.KategoriID=K.KategoriID INNER JOIN Tedarikciler T ON T.TedarikciID=U.TedarikciID WHERE T.SirketAdi LIKE '%LTD%' AND K.KategoriAdi='SEAFOOD'
