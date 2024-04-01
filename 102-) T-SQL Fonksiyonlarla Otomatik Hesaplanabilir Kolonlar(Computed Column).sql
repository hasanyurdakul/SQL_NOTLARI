--T-SQL Fonksiyonlarla Otomatik Hesaplanabilir Kolonlar(Computed Column)

--HERHANGI BIR KOLONDA FONKSIYON KULLANARAK OTOMATIK HESAPLANABILIR KOLONLAR(COMPUTED COLUMN) OLUSTURMAK MUMKUNDUR.

--## ORNEK ##
--CIKTI OLARAK ''__________ KATEGORISINDEKI ______ URUNUNUN TOPLAM MALIYETI : ____ 'DIR'' SEKLINDE BIR CIKTI VEREN BIR FONKSIYON YAZINIZ.

CREATE FUNCTION RAPOR(@KATEGORI NVARCHAR(MAX),@URUNADI NVARCHAR(MAX), @BIRIMFIYAT INT, @STOKMIKTARI INT)
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @CIKTI NVARCHAR(MAX)
	SET @CIKTI = @KATEGORI + ' KATEGORISINDEKI ' + @URUNADI + ' URUNUNUN TOPLAM MALIYETI ' + CAST((@BIRIMFIYAT*@STOKMIKTARI) AS NVARCHAR(MAX)) + ' ''DIR' 
	RETURN @CIKTI
END

SELECT dbo.RAPOR(K.KategoriAdi,U.UrunAdi,U.BirimFiyati,U.HedefStokDuzeyi) FROM Urunler U INNER JOIN Kategoriler K ON U.KategoriID=K.KategoriID