
CREATE VIEW vw_SinavSorusu
AS
SELECT        CONCAT_WS(' ', Subeler.SubeKodu,Musteriler.MusteriID,HesapTipi.HesapTipiID) AS 'HesapNO',CONCAT_WS(' ',Musteriler.MusteriID,Musteriler.FirstName, Musteriler.LastName) AS 'Müþteri', Musteriler.MusteriID, CONCAT(Subeler.SubeKodu,' ',Subeler.SubeAdi) AS 'Þube', CONCAT_WS('-',HesapTipi.HesapTipiID, HesapTipi.HesapTipiAdi+' Hesabý') AS 'Hesap', CONCAT_WS('-',Islemler.IslemID, Islemler.IslemTutari, 
                         IslemTipi.IslemTipiAdi) AS Islem,CONCAT_WS('-',DAY(Islemler.IslemTarihi),MONTH(Islemler.IslemTarihi)) AS 'Islem Tarihi'
FROM            HesapNo INNER JOIN
                         HesapTipi ON HesapNo.HesapTipiID = HesapTipi.HesapTipiID INNER JOIN
                         Islemler ON HesapTipi.HesapTipiID = Islemler.HesapTipiID INNER JOIN
                         IslemTipi ON Islemler.IslemTipiID = IslemTipi.IslemTipiID INNER JOIN
                         MusteriHesapTipi ON HesapTipi.HesapTipiID = MusteriHesapTipi.HesapTipiID INNER JOIN
                         Musteriler ON HesapNo.MusteriID = Musteriler.MusteriID AND Islemler.MusteriID = Musteriler.MusteriID AND MusteriHesapTipi.MusteriID = Musteriler.MusteriID INNER JOIN
                         MusteriSube ON Musteriler.MusteriID = MusteriSube.MusteriID INNER JOIN
                         Subeler ON HesapNo.SubeKodu = Subeler.SubeKodu AND MusteriSube.SubeKodu = Subeler.SubeKodu

SELECT * FROM vw_SinavSorusu