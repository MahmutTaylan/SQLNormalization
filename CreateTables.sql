CREATE DATABASE BankDB
GO 

USE BankDB

CREATE TABLE Musteriler 
(
	MusteriID INT IDENTITY (100,1) PRIMARY KEY,
	FirstName NVARCHAR(30),
	LastName NVARCHAR(30)	
)

CREATE TABLE Subeler
(
	SubeKodu INT PRIMARY KEY,
	SubeAdi NVARCHAR(30)
)

CREATE TABLE HesapTipi
(
	HesapTipiID INT IDENTITY(10,1) PRIMARY KEY,
	HesapTipiAdi NVARCHAR(30)	
)


CREATE TABLE IslemTipi
(
	IslemTipiID INT IDENTITY PRIMARY KEY,
	IslemTipiAdi NVARCHAR(100)
	
)

CREATE TABLE Islemler
(
	IslemID INT  PRIMARY KEY,
	MusteriID INT REFERENCES Musteriler(MusteriID),
	IslemTipiID INT REFERENCES IslemTipi(IslemTipiID),
	HesapTipiID INT REFERENCES HesapTipi(HesapTipiID),
	IslemTarihi DATE,
	IslemTutari MONEY
)

CREATE TABLE MusteriSube
(
	MusteriID INT REFERENCES Musteriler(MusteriID),
	SubeKodu INT REFERENCES Subeler(SubeKodu),
	PRIMARY KEY (MusteriID, SubeKodu)
)

CREATE TABLE MusteriHesapTipi
(
	MusteriID INT REFERENCES Musteriler(MusteriID),
	HesapTipiID INT REFERENCES HesapTipi(HesapTipiID)
)

CREATE TABLE HesapNo
(
	MusteriID INT REFERENCES Musteriler(MusteriID),
	SubeKodu INT REFERENCES Subeler(SubeKodu),
	HesapTipiID INT REFERENCES HesapTipi(HesapTipiID),
	PRIMARY KEY (MusteriID,SubeKodu,HesapTipiID)
)

INSERT INTO Musteriler (FirstName,LastName) VALUES

('Ali' ,'KARA'),
('Ayþe','SARI')


INSERT INTO Subeler(SubeKodu,SubeAdi) VALUES

(67,'Zonguldak')
,(74,'Bartýn'),
(78,'Karabük')

INSERT INTO HesapTipi(HesapTipiAdi) VALUES

('TL'),
('Euro'),
('Dolar')

INSERT INTO IslemTipi (IslemTipiAdi) VALUES
('ATM den TL Para Yatýrma'),
('ATM den TL Para Çekme'),
('Ýnternetten TL Fatura Ödeme'),
('Þubeden EURO Para Yatýrma'),
('ATM den USD Para Çekme'),
('Þubeden TL Para Çekme'),
('Internetten TL Fatura Ödeme')

INSERT INTO Islemler (IslemID,MusteriID,IslemTipiID,IslemTarihi,IslemTutari,HesapTipiID) VALUES
(100001,100,1,'2023-02-10',400,10),
(100002,100,2,'2023-01-25',200,10),
(100003,100,3,'2023/01/20',89,10),
(100025,100,4,'2023/01/15',200,11),
(100058,101,5,'2023/02/20',100,12),
(101005,101,6,'2023/01/20',200,10),
(101048,101,7,'2023/01/20',115,10)

INSERT INTO MusteriSube (MusteriID,SubeKodu) VALUES 
(100,67),
(100,74),
(101,74),
(101,78)

INSERT INTO MusteriHesapTipi (MusteriID,HesapTipiID) VALUES
(100,10),
(100,11),
(101,10),
(101,12)

INSERT INTO HesapNo(MusteriID,SubeKodu,HesapTipiID) VALUES
(100,67,11),
(100,74,10),
(101,74,10),
(101,78,12)