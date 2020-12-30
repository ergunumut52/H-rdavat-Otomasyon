-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Ara 2020, 20:26:26
-- Sunucu sürümü: 10.4.16-MariaDB
-- PHP Sürümü: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hırdavat_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fatura`
--

CREATE TABLE `fatura` (
  `faturaID` int(11) NOT NULL,
  `urunID` int(11) DEFAULT NULL,
  `urunadı` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alistarihi` datetime DEFAULT NULL,
  `teslimtarihi` datetime DEFAULT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` int(11) DEFAULT NULL,
  `Adet` int(11) DEFAULT NULL,
  `musteriID` int(11) DEFAULT NULL,
  `PersonelID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fatura`
--

INSERT INTO `fatura` (`faturaID`, `urunID`, `urunadı`, `alistarihi`, `teslimtarihi`, `adres`, `fiyat`, `Adet`, `musteriID`, `PersonelID`) VALUES
(1, 27, 'Poly Organizer ve Avadanlık Çanta', '2019-01-11 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 50, 1, 20, 4),
(2, 42, 'Bileme Makinasi', '2020-03-21 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 660, 1, 12, 4),
(3, 26, '3\'ü 1 Arada Takım Çantası', '2020-09-10 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 540, 1, 11, 4),
(4, 76, 'Hortum Boru Kelepçesi', '2020-12-13 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 160, 80, 9, 3),
(5, 52, 'Hava Kompresörü', '2019-04-23 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 2500, 1, 4, 6),
(6, 18, 'Levye', '2020-01-03 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 330, 3, 6, 5),
(7, 4, 'Yan Kesici', '2019-06-30 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 138, 1, 15, 4),
(8, 31, 'Uzun Zımba Takımı', '2020-03-12 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 140, 1, 1, 4),
(9, 37, 'Yüksek Dal Kesme Testeresi', '2020-07-28 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 260, 1, 2, 7),
(10, 12, 'Düz Tornavida', '2019-02-10 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 7, 1, 4, 6),
(11, 11, 'Yıldız Tornavida', '2020-07-18 13:35:29', '2020-08-11 13:35:29', 'İstanbul', 7, 1, 3, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `geribildirim`
--

CREATE TABLE `geribildirim` (
  `GeribildirimID` int(11) NOT NULL,
  `GeribildirimkategoriID` int(11) DEFAULT NULL,
  `Geribildirimaciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `GeribildirimTarihi` datetime DEFAULT NULL,
  `BildirenID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `geribildirim`
--

INSERT INTO `geribildirim` (`GeribildirimID`, `GeribildirimkategoriID`, `Geribildirimaciklama`, `GeribildirimTarihi`, `BildirenID`) VALUES
(0, 3, 'Mağazanın çıkış kapısı ile otopark arasındaki mesafe çok uzun.', '2020-12-09 05:39:21', 1),
(1, 2, 'Ürün Çalışmıyor', '2020-05-08 12:35:29', 6),
(2, 1, 'Hakaret Söylemi', '2020-07-10 13:35:29', 8),
(3, 3, 'Ürün Üstlerinde Toz Bulunuyor', '2020-12-12 07:35:29', 9),
(4, 3, 'Temiizlenmesi Gerekiyor Mağazanın', '2020-01-02 17:35:29', 1),
(5, 2, 'Ürün sarj olmuyor', '2020-09-04 19:35:29', 18),
(6, 3, 'Mağazanın çıkış kapısı ile otopark arasındaki mesafe çok uzun.', '2020-12-09 05:39:21', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `geribildirimkategoriid`
--

CREATE TABLE `geribildirimkategoriid` (
  `GeribildirimkategoriID` int(11) NOT NULL,
  `GeribildirimkategoriAdı` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `geribildirimkategoriid`
--

INSERT INTO `geribildirimkategoriid` (`GeribildirimkategoriID`, `GeribildirimkategoriAdı`) VALUES
(1, 'Personel Şikayetleri'),
(2, 'Ürün Şikayetleri'),
(3, 'Mağaza Şikayetleri'),
(4, 'Diğer Şikayetler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marka`
--

CREATE TABLE `marka` (
  `markaID` int(11) NOT NULL,
  `Marka` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `marka`
--

INSERT INTO `marka` (`markaID`, `Marka`) VALUES
(1, 'Salt'),
(2, 'İzeltaş'),
(3, 'Troy'),
(4, 'Stanley'),
(5, 'Rico'),
(6, 'KL'),
(7, 'Stanley'),
(8, 'Owden'),
(9, 'DW'),
(10, 'Bosch'),
(11, 'Makita'),
(12, 'Roney'),
(13, 'Özçeik'),
(14, 'RTR MAX'),
(15, 'MY TOL'),
(16, 'Lutian'),
(17, 'SGS'),
(18, 'Soyberg'),
(19, 'SLB'),
(20, 'BEST'),
(21, 'Atlas'),
(22, 'WERT'),
(23, 'EPS'),
(24, '404'),
(25, 'DG2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteriID` int(11) NOT NULL,
  `mADI` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mSOYADI` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mTELEFON` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mEPOSTA` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mADRES` varchar(45) COLLATE utf8_turkish_ci DEFAULT 'İstanbul',
  `mSIFRE` varchar(6) COLLATE utf8_turkish_ci DEFAULT '000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='							';

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteriID`, `mADI`, `mSOYADI`, `mTELEFON`, `mEPOSTA`, `mADRES`, `mSIFRE`) VALUES
(1, 'Mesut', 'Özil', '05344568125', 'mesut@gmail.com', 'İstanbul', '000000'),
(2, 'Abdurrahman', 'Albayrak', '05324548489', 'albayrak@outlook.com', 'Rize', '000000'),
(3, 'Duran', 'Durdu', '05374546546', 'durduduran@yahoo.com', 'İstanbul', '123456'),
(4, 'Ersin', 'Korkut', '05459468488', 'Ersinkorkut@gmail.com', 'Iğdır', '345498'),
(5, 'Fahrettin', 'Koca', '05344648798', 'FahrettinKoca@gmail.com', 'İstanbul', '565454'),
(6, 'Fırat', 'Aydunus', '05555465454', NULL, 'İstanbul', '000000'),
(7, 'Sebahattin', 'Yayla', '05455464168', NULL, 'İstanbul', '000000'),
(8, 'Taylan', 'Antalyalı', '05368454689', NULL, 'Antalya', '123454'),
(9, 'Tayfun', 'Korkut', '05355484898', 'Tayfunnnn@outlook.com', 'İzmir', '000000'),
(10, 'Tugay', 'Kerimoğlu', '05415798455', NULL, 'Denizli', '000000'),
(11, 'Ufuk', 'Akyol', '05448522458', NULL, 'Ordu', '985542'),
(12, 'Yağız', 'Sabuncuoğlu', '05557894562', NULL, 'Kastamonu', '190707'),
(13, 'Yaşar', 'Tekeci', '05448987845', 'YaşarTekeciii@hotmail.com', 'İstanbul', '000000'),
(14, 'Yasin', 'Tekeci', '05445289644', NULL, 'Kahrmanmaraş', '465468'),
(15, 'Volkan', 'Ballı', '05397894562', 'Ballı1907@gmail.com', 'Sakarya', '000000'),
(16, 'Ahmet', 'Kutucu', '05381488869', NULL, 'Kocaeli', '123549'),
(17, 'Burak', 'Çamlıoğlu', '05316138081', NULL, 'İstanbul', '000000'),
(18, 'Canan', 'Büyükkeskin', '05444568985', 'Cananı@icloud.com', 'İstanbul', '000000'),
(19, 'Tuğba', 'Özdil', '05324586205', NULL, 'Çanakkale', '159845'),
(20, 'Feyza', 'Şenol', '05344585389', 'Feyza_Şenol@gmail.com', 'İstanbul', '000000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musterisifrelog`
--

CREATE TABLE `musterisifrelog` (
  `musteriID` int(11) NOT NULL,
  `sifre1` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre2` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre3` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musterisifrelog`
--

INSERT INTO `musterisifrelog` (`musteriID`, `sifre1`, `sifre2`, `sifre3`) VALUES
(3, '123456', '000000', NULL),
(4, '345498', '000000', NULL),
(5, '565454', '999999', '455549'),
(8, '123454', '000000', NULL),
(11, '985542', '528954', '000000'),
(12, '190707', '000000', NULL),
(14, '465468', '000000', NULL),
(16, '123549', '000000', NULL),
(19, '159845', '000000', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `PersonelID` int(11) NOT NULL,
  `ADI` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SOYADI` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `TELEFON` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `EPOSTA` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ADRES` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SEMT` varchar(45) COLLATE utf8_turkish_ci DEFAULT 'Merkez',
  `SEHİR` varchar(45) COLLATE utf8_turkish_ci DEFAULT 'İstanbul',
  `PASS` varchar(6) COLLATE utf8_turkish_ci DEFAULT '000000',
  `PersonelgorevID` int(11) DEFAULT NULL,
  `maas` float DEFAULT 2324
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`PersonelID`, `ADI`, `SOYADI`, `TELEFON`, `EPOSTA`, `ADRES`, `SEMT`, `SEHİR`, `PASS`, `PersonelgorevID`, `maas`) VALUES
(1, 'Oğuzhan', 'Taş', '05454370000', 'oğuzhantas@gmail.com', 'kazım karabekir mahallesi 122 sokak no 7 dair', 'Şişli', 'İstanbul', '123457', 1, 8600),
(2, 'Umut', 'Ergün', '05340580000', 'umut.fb.34@hotmail.com', 'karadeniz mahallesi 1113 sokak no 12', 'Gaziosmanpaşa', 'İstanbul', '112233', 2, 5200),
(3, 'Arda', 'Bulu', '05449752438', 'arda.bulu@gmail.com', 'Uğur mumcu mahallesi Akdeniz sokak no 2', 'Sultangazi', 'İstanbul', '987654', 5, 3500),
(4, 'Doğukan', 'Aydın', '05326754789', 'Doğukan.aydn@yahoo.com', 'Yunus emre mahallesi 27 sokak no 42 d2', 'Eyüp', 'İstanbul', '546545', 4, 2600),
(5, 'Selami', 'Aydemir', '05555289898', 'Aydemir.selmani@icloud.com', 'Fevziçakmak mahallesi 2113 sokak no 18', 'Bağcılar', 'İstanbul', '111111', 3, 2750),
(6, 'Selim', 'Yılmaz', '05392657855', 'Selimyilmaz@outlook.com', 'Gazi mahallesi 769 sokak no 17 d 2', 'Sultangazi', 'İstanbul', '000000', 3, 2750),
(7, 'Onur', 'Yıldırım', '05425878979', 'Onur.flash@gmail.com', 'Selimiye mahallesi 12 sokak no 47 d 6', 'Bakırköy', 'İstanbul', '190707', 3, 2750),
(8, 'Furkan', 'Keskin', '05305897852', 'Furkanyılmaz25@yahoo.com', 'Mesudiye mahallesi 987 sokak no 78 d 7', 'Okmeydan', 'İstanbul', '111111', 4, 3150);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personelgorev`
--

CREATE TABLE `personelgorev` (
  `PersonelgorevID` int(11) NOT NULL,
  `Personelgorevi` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personelgorev`
--

INSERT INTO `personelgorev` (`PersonelgorevID`, `Personelgorevi`) VALUES
(1, 'Müdür'),
(2, 'Müdür Yardımcısı'),
(3, 'Saha Personeli'),
(4, 'Kasiyer'),
(5, 'Joker');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personelsifrelog`
--

CREATE TABLE `personelsifrelog` (
  `personelID` int(11) NOT NULL,
  `sifre1` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre2` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre3` varchar(6) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personelsifrelog`
--

INSERT INTO `personelsifrelog` (`personelID`, `sifre1`, `sifre2`, `sifre3`) VALUES
(1, '123457', '123455', '123456'),
(2, '112233', NULL, NULL),
(3, '987654', '987655', NULL),
(4, '546545', '454646', NULL),
(5, '111111', '222222', '333333'),
(6, '000000', NULL, NULL),
(7, '190707', '190719', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urunID` int(11) NOT NULL,
  `urunadı` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `markaID` int(11) DEFAULT NULL,
  `urunkategoriID` int(11) DEFAULT NULL,
  `urundetay` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `alısfiyat` decimal(15,2) DEFAULT NULL,
  `satisfiyat` decimal(15,2) DEFAULT NULL,
  `urunstok` int(11) DEFAULT 0,
  `sayac` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urunID`, `urunadı`, `markaID`, `urunkategoriID`, `urundetay`, `alısfiyat`, `satisfiyat`, `urunstok`, `sayac`) VALUES
(1, 'Demirci Insaat Makarasi', 1, 1, '125/1 - 5 adet', '177.00', '253.00', 35, 25),
(2, 'Demirci Insaat Makarasi', 1, 1, '100/1 - 5 adet', '161.00', '230.00', 32, 55),
(3, 'Demirci İnşaat Makarası', 1, 1, '75/1 - 5 adet', '148.00', '212.00', 25, 65),
(4, 'Yan Kesici', 2, 1, 'Ağır Tip 160mm', '117.00', '138.00', 45, 13),
(5, 'Kablo Siyirici', 2, 1, 'Mekanik', '134.00', '157.00', 12, 56),
(6, 'Kablo Siyirici', 2, 1, 'Koaksiyel', '102.00', '120.00', 8, 21),
(7, 'Kablo Siyirma', 3, 1, 'Tek Parça', '26.00', '34.00', 19, 87),
(8, 'Kablo Kesme', 3, 1, 'izoleli', '1021.00', '1143.00', 22, 65),
(9, 'Kablo Kesme', 3, 1, 'Normal', '300.00', '344.00', 13, 33),
(10, '10 Parca Tornavida Seti', 4, 1, 'ST-265014', '280.00', '314.00', 11, 12),
(11, 'Yildiz Tornavida', 5, 1, 'Tek Parca', '4.00', '7.00', 50, 156),
(12, 'Duz Tornavida', 5, 1, 'Tek Parca', '4.00', '7.00', 52, 157),
(13, 'Degisilebilir Uclu Tornavida', 3, 1, '3 Uclu', '17.00', '24.00', 21, 232),
(14, 'Darbeli Duz Tornavida', 5, 1, '8x200', '41.00', '59.00', 28, 120),
(15, 'Darbeli Duz Tornavida', 5, 1, '9,25x250', '62.00', '90.00', 31, 150),
(16, 'Darbeli Duz Tornavida', 5, 1, '6x125', '30.00', '43.00', 28, 8),
(17, 'Klasik Levye', 5, 1, 'Klasik', '18.00', '26.00', 28, 15),
(18, 'Levye', 2, 1, 'Kivrik uclu', '93.00', '110.00', 8, 7),
(19, 'Oluklu Levye', 2, 1, '600mm', '80.00', '95.00', 7, 5),
(20, 'Plastik Depolu Boya Tabancasi', 6, 1, '2.0mm', '240.00', '270.00', 9, 4),
(22, 'Plastik Depolu Boya Tabancasi', 6, 1, '1.7mm', '240.00', '270.00', 10, 3),
(23, 'Plastik Depolu Boya Tabancasi', 6, 1, '1.4mm', '240.00', '270.00', 8, 2),
(24, 'Tekerlekli Takim cantasi', 7, 1, 'Plastik', '1400.00', '1700.00', 3, 2),
(25, 'Tekerlekli Takim cantasi', 7, 1, 'Metal', '450.00', '500.00', 2, 3),
(26, '3\'u 1 Arada Takim cantasi', 7, 1, '3 Parca', '470.00', '540.00', 4, 5),
(27, 'Poly Organizer ve Avadanlık Çanta', 7, 1, '22 Bolmeli', '35.00', '50.00', 6, 15),
(28, 'Cimbiz Seti', 5, 1, '12 Parca', '110.00', '160.00', 9, 70),
(29, 'Cimbiz Seti', 5, 1, '6 Parca', '75.00', '105.00', 15, 89),
(30, 'Uzun Zimba Takimi', 8, 1, '8 Parca', '150.00', '190.00', 7, 42),
(31, 'Uzun Zimba Takimi', 8, 1, '5 Parca', '110.00', '140.00', 6, 43),
(32, 'Mekanik Saatli Kumpas', 9, 1, '0.02mm', '120.00', '150.00', 4, 3),
(33, 'Mekanik Standart Kumpas', 9, 1, 'Ustten Vidali', '60.00', '75.00', 5, 4),
(34, 'Elektrikli Cim Bicme Makinesi', 10, 2, '1200 Watt', '760.00', '870.00', 4, 44),
(35, 'Elektrikli Cim Bicme Makinesi', 11, 2, '1800 Watt', '2700.00', '3150.00', 2, 54),
(36, 'Dis Budama Testeresi', 5, 2, 'Ince', '60.00', '90.00', 8, 5),
(37, 'Yuksek Dal Kesme Testeresi', 12, 2, 'Metal Govde', '215.00', '260.00', 12, 3),
(38, 'Benzinli Yan Tirpan', 11, 2, '39.0 CC', '6000.00', '7000.00', 7, 12),
(39, 'Elektrikli Tirpan', 11, 2, '700 Watt', '700.00', '850.00', 6, 13),
(40, 'Agac Kesme Motoru', 11, 2, '50cm Pala', '500.00', '600.00', 4, 7),
(41, 'Motorlu Testere', 11, 2, '42.2 CC', '4200.00', '5200.00', 7, 15),
(42, 'Bileme Makinasi', 3, 3, '110 W', '580.00', '660.00', 2, 12),
(43, 'Taslama Motoru', 10, 3, '600 Watt', '1500.00', '1900.00', 4, 4),
(44, 'Baretool Akulu El Supurgesi', 10, 3, '18 Volt', '500.00', '600.00', 12, 78),
(45, 'Elektrikli Kirici Delici', 10, 3, '2.7 Kg', '1500.00', '1800.00', 6, 8),
(46, 'Elektrikli Vidalama', 10, 3, '701 Watt/ 6000 Devir', '1400.00', '1700.00', 4, 79),
(47, 'Beta Plus Portatif Yatarli Kesim Makinasi', 13, 3, '300 mm', '3400.00', '4000.00', 2, 57),
(48, 'Alfa Portatif Yatarlı Kesim Makinasi', 13, 3, '300 mm', '3300.00', '3900.00', 1, 56),
(49, 'Havalı Matkap', 14, 4, '190 mm', '380.00', '550.00', 15, 37),
(50, 'Havalı Kallıpçı Taşlama Seti', 14, 4, 'D?z', '330.00', '480.00', 8, 12),
(51, 'Kasnaklı Hava Kompresörü', 15, 4, '200 Litre/ 4 HP', '3000.00', '3750.00', 6, 16),
(52, 'Hava Kompresörü', 15, 4, '100 Litre/ 3 HP', '2000.00', '2500.00', 4, 12),
(53, 'Benzinli Jeranatör', 14, 5, '8.8 KVA', '11500.00', '16000.00', 4, 24),
(54, 'Benzinli Jeranatör', 14, 5, '9.4 KVA', '7000.00', '10000.00', 3, 17),
(55, 'Dizel Profesyonel Jeranatör', 16, 5, '13Hp 4.8kVa', '9500.00', '10200.00', 10, 3),
(56, 'Dizel Profesyonel Jeranatör', 16, 5, '13Hp 4.8kVa', '7500.00', '9000.00', 8, 5),
(57, 'Kaynak Maske Camı', 17, 6, '50 Paket / 110x80mm', '75.00', '110.00', 60, 746),
(58, 'Kaynak Maske Camı', 17, 6, '110x80mm', '1.00', '3.00', 800, 850),
(59, 'Kaynak Makinası', 18, 6, '500 Amper', '1900.00', '2200.00', 2, 46),
(60, 'Kaynak Makinası', 18, 6, '400 Amper', '1800.00', '2100.00', 3, 79),
(61, 'Plastik Kelepçe', 17, 7, '100 Adet', '2.00', '4.00', 400, 1756),
(62, 'Makara', 19, 7, '100x35', '5.00', '8.00', 25, 45),
(63, 'Serpme Küreği', 17, 7, '20x40 cm', '10.00', '15.00', 26, 12),
(64, 'Traktör Sprey Boyası', 20, 7, '400 ML', '12.00', '20.00', 39, 152),
(65, 'İş Eldiveni Mavi', 17, 7, '12 Çift', '34.00', '45.00', 132, 892),
(66, 'İş Eldiveni Sarı', 17, 7, '250 Çift', '570.00', '650.00', 4, 747),
(67, 'Zımpara Kağıdı', 21, 7, '125mm', '11.00', '16.00', 75, 1024),
(68, 'Zımpara Kağıdı', 21, 7, '115', '11.00', '16.00', 80, 1003),
(69, 'Taşınılabilir Projektör', 3, 7, 'Enerji Tasarruflu', '400.00', '470.00', 15, 52),
(70, 'LED Projektör', 3, 7, '30W', '640.00', '750.00', 18, 90),
(71, 'Metal Hava Kompresörü', 5, 8, 'Tek Silindir', '220.00', '320.00', 4, 105),
(72, 'Akü Test Cihazı', 22, 8, '6-12 Volt', '360.00', '430.00', 35, 80),
(73, 'Akü  Sarj Cihazı', 23, 8, '65 Watt', '213.00', '305.00', 17, 75),
(74, 'Antifriz', 24, 8, '16 Litre', '70.00', '90.00', 20, 63),
(75, 'Antifriz', 24, 8, '1.5 Litre', '10.00', '15.00', 60, 348),
(76, 'Hortum Boru Kelepçesi', 25, 8, 'Somonlu', '1.00', '2.00', 350, 165),
(77, 'Alçıpan Vidası', 17, 8, '3.5mm', '43.00', '62.00', 1400, 2647),
(78, 'Dübel', 17, 8, '8x34mm 500 Adet', '19.00', '28.00', 1000, 1865);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunkategori`
--

CREATE TABLE `urunkategori` (
  `urunkategoriID` int(11) NOT NULL,
  `Kategori` varchar(45) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'DİGERLERİ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunkategori`
--

INSERT INTO `urunkategori` (`urunkategoriID`, `Kategori`) VALUES
(1, 'EL ALETLERİ'),
(2, 'BAHÇE ALETLERİ'),
(3, 'ELEKTRİKLİ EL ALETLERİ'),
(4, 'HAVALI ALETLER'),
(5, 'JENARATÖRLER'),
(6, 'KAYNAK MAKİNELERİ'),
(7, 'HIRDAVAT MALZEMELERİ'),
(8, 'OTOMOTİV ÜRÜNLERİ'),
(9, 'DİGERLERİ');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`faturaID`),
  ADD KEY `urunıdfrg_idx` (`urunID`),
  ADD KEY `musterifrg_idx` (`musteriID`),
  ADD KEY `personelfrg_idx` (`PersonelID`);

--
-- Tablo için indeksler `geribildirim`
--
ALTER TABLE `geribildirim`
  ADD PRIMARY KEY (`GeribildirimID`),
  ADD KEY `bildirenIDfrg_idx` (`BildirenID`),
  ADD KEY `Geribildirimkategorifrg_idx` (`GeribildirimkategoriID`);

--
-- Tablo için indeksler `geribildirimkategoriid`
--
ALTER TABLE `geribildirimkategoriid`
  ADD PRIMARY KEY (`GeribildirimkategoriID`);

--
-- Tablo için indeksler `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`markaID`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteriID`);

--
-- Tablo için indeksler `musterisifrelog`
--
ALTER TABLE `musterisifrelog`
  ADD PRIMARY KEY (`musteriID`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`PersonelID`),
  ADD KEY `prsnfrg_idx` (`PersonelgorevID`),
  ADD KEY `SEMT` (`SEMT`);

--
-- Tablo için indeksler `personelgorev`
--
ALTER TABLE `personelgorev`
  ADD PRIMARY KEY (`PersonelgorevID`);

--
-- Tablo için indeksler `personelsifrelog`
--
ALTER TABLE `personelsifrelog`
  ADD PRIMARY KEY (`personelID`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urunID`),
  ADD KEY `markafrg` (`markaID`),
  ADD KEY `kategorifrg` (`urunkategoriID`);

--
-- Tablo için indeksler `urunkategori`
--
ALTER TABLE `urunkategori`
  ADD PRIMARY KEY (`urunkategoriID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fatura`
--
ALTER TABLE `fatura`
  MODIFY `faturaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `marka`
--
ALTER TABLE `marka`
  MODIFY `markaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `PersonelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `personelgorev`
--
ALTER TABLE `personelgorev`
  MODIFY `PersonelgorevID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Tablo için AUTO_INCREMENT değeri `urunkategori`
--
ALTER TABLE `urunkategori`
  MODIFY `urunkategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `musterifrg` FOREIGN KEY (`musteriID`) REFERENCES `musteri` (`musteriID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personelfrg` FOREIGN KEY (`PersonelID`) REFERENCES `personel` (`PersonelID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `urunıdfrg` FOREIGN KEY (`urunID`) REFERENCES `urun` (`urunID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `geribildirim`
--
ALTER TABLE `geribildirim`
  ADD CONSTRAINT `Geribildirimkategorifrg` FOREIGN KEY (`GeribildirimkategoriID`) REFERENCES `geribildirimkategoriid` (`GeribildirimkategoriID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bildirenIDfrg` FOREIGN KEY (`BildirenID`) REFERENCES `musteri` (`musteriID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `musterisifrelog`
--
ALTER TABLE `musterisifrelog`
  ADD CONSTRAINT `musterisifrefrg` FOREIGN KEY (`musteriID`) REFERENCES `musteri` (`musteriID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `prsnfrg` FOREIGN KEY (`PersonelgorevID`) REFERENCES `personelgorev` (`PersonelgorevID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `personelsifrelog`
--
ALTER TABLE `personelsifrelog`
  ADD CONSTRAINT `sifreprsn` FOREIGN KEY (`personelID`) REFERENCES `personel` (`PersonelID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `urun`
--
ALTER TABLE `urun`
  ADD CONSTRAINT `kategorifrg` FOREIGN KEY (`urunkategoriID`) REFERENCES `urunkategori` (`urunkategoriID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `markafrg` FOREIGN KEY (`markaID`) REFERENCES `marka` (`markaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
