--T-SQL Foreign Key Constraint
USE Northwind

--###FOREIGN KEY CONSTRAINT###

--TABLOLARIN KOLONLARI ARASINDA ILISKI KURMAMIZI SAGLAR. BU ILISKI NETICESINDE, FOREIGN KEY OLAN KOLONDAKI KARSILIGININ BOSA DUSMEMESI ICIN PRIMARY KEY KOLONU OLAN TABLODAN VERI SILINMESINI VE GUNCELLENMESINI ENGELLER.

--GENEL YAPISI 
--ADD CONSTRAINT [CONSTRAINT_ADI] FOREIGN KEY (KOLON_ADI) REFERENCES [IKINCI_TABLO_ADI] (IKINCI_TABLODAKI_KOLON_ADI)

CREATE TABLE OGRENCILER
(
	OGRENCIID INT PRIMARY KEY IDENTITY(1,1),
	DERSID INT,
	ADI NVARCHAR(MAX),
	SOYADI NVARCHAR(MAX)
)

CREATE TABLE DERSLER
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERSADI NVARCHAR(MAX)
)

ALTER TABLE OGRENCILER
ADD CONSTRAINT FK_OGRENCI_DERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)