--T-SQL Unique Constraint
USE Northwind

--###UNIQUE CONSTRAINT###
--TEK AMACI,BELIRTILEN KOLONDAKI DEGERLERIN TEKIL OLMASINI SAGLAMAKTIR.

--GENEL YAPISI
--ADD CONSTRAINT [CONSTRAINT_ADI] UNIQUE (KOLON_ADI)

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT ORNEKTABLOUNIQUE UNIQUE (KOLON2)

--''KOLON2'' KOLONUNA UNIQUE CONSTRAINT VERILEREK TEKIL HALE GETIRILMISTIR. BUNDAN SONRA IKI TANE AYNI VERIDEN VERI GIRISI YAPILAMAYACAKTIR.
