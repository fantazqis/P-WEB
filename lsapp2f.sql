CREATE TABLE Wisata (
    WisataID int NOT NULL,
    Provinsi varchar(20) NOT NULL,
    NamaWisata varchar(50) NOT NULL,
    PetaLokasi varchar(70) NOT NULL,
    HotelID int,
    PRIMARY KEY (WisataID)
); 

INSERT INTO Wisata (WisataID, Provinsi, NamaWisata, PetaLokasi)
VALUES ('1', 'Jawa Barat', 'Curug Luhur', 'https://goo.gl/maps/omZhQ9EHXt12'),
('2', 'Jawa Barat', 'Kebun Raya Bogor', 'https://goo.gl/maps/y6jRYXaoB6B2');
('3', 'Jawa Barat', 'Puncak', 'https://goo.gl/maps/mg3Qfk5EUdT2');
('4', 'Jawa Barat', 'Taman Safari Indonesia', 'https://goo.gl/maps/ePSEW4Ex9KT2');
('5', 'Jawa Barat', 'Gunung Tangkuban Parahu', 'https://goo.gl/maps/ye5ca2ZWQbr');
('6', 'Jawa Barat', 'Kawah Putih', 'https://goo.gl/maps/vkBt6GRBC3x');
('7', 'Jawa Barat', 'Taman Wisata Mekarsari', 'https://goo.gl/maps/LcA9Dzy4Ecw');
('8', 'Jawa Barat', 'Taman Wisata Matahari', 'https://goo.gl/maps/92Ss2qUv1A42');
('9', 'Jawa Tengah', 'Lawang Sewu', 'https://goo.gl/maps/FiBbTQVJQy52');
('10', 'Jawa Tengah', 'Taman Budaya Raden Saleh', 'https://goo.gl/maps/NoNDbNWiGgs');
('11', 'Jawa Tengah', 'Pantai Marina', 'https://goo.gl/maps/893qGiJasRD2');
('12', 'Jawa Tengah', 'Pantai Maron', 'https://goo.gl/maps/XKRvX7p9tLD2');
('13', 'Jawa Tengah', 'Masjid Agung Jawa Tengah', 'https://goo.gl/maps/yBqEy2VuDv92');
('14', 'Jawa Tengah', 'Museum Kereta Api Ambarawa', 'https://goo.gl/maps/d9kSiSNAmJk');
('15', 'Jawa Tengah', 'Air Terjun Suroloyo', 'https://goo.gl/maps/nb162HiV5yw');
('16', 'Jawa Tengah', 'Goa Sakti', 'https://goo.gl/maps/DKVwbP6n3CR2');
('17', 'Jawa Tengah', 'Tugu Identitas Kudus', 'https://goo.gl/maps/2tTPXPDmeLn');
('18', 'Jawa Tengah', 'Masjid Agung Demak', 'https://goo.gl/maps/LjRFrByr5Wp');
('19', 'Jawa Tengah', 'Borobudur', 'https://goo.gl/maps/d9hvPQBz37t');
('20', 'Jawa Timur', 'Kota Surabaya', 'https://goo.gl/maps/q6dU79G8ibP2');
('21', 'Jawa Timur', 'Jembatan Nasional Suramadu', 'https://goo.gl/maps/uGshVGiTEgJ2');
('22', 'Jawa Timur', 'Kota Malang', 'https://goo.gl/maps/XFFyckSkyFA2');
('23', 'Jawa Timur', 'Taman Wisata Wendit', 'https://goo.gl/maps/2Xgt4eRt3yT2');
('24', 'Jawa Timur', 'Taman Nasional Bromo Tengger Semeru', 'https://goo.gl/maps/CYanaZpL58r');
('25', 'Jawa Timur', 'Batu Secret Zoo', 'https://goo.gl/maps/GHdasQQy7Z22');
('26', 'Jawa Timur', 'Museum Satwa', 'https://goo.gl/maps/9HA73RWBu7w');
('27', 'Jawa Timur', 'Batu Night Spectacular', 'https://goo.gl/maps/cr4Mx9KqJTk');
('28', 'Jawa Timur', 'Jatim Park1', 'https://goo.gl/maps/6AkkD4Z6wRH2');
('29', 'Jawa Timur', 'Jawa Timur Park 2', 'https://goo.gl/maps/2AUEP278CwJ2');
('30', 'Jawa Timur', 'Museum Angkut', 'https://goo.gl/maps/fSkxyJc53hq');


CREATE TABLE Hotel (
    HotelID int NOT NULL,
    NamaHotel varchar(100) NOT NULL,
    LokasiHotel varchar(100) NOT NULL,
    WisataID int,
    PRIMARY KEY (HotelID),
    FOREIGN KEY (WisataID) REFERENCES Wisata(WisataID)
); 
('1', 'Herman Lantang Camp', 'https://goo.gl/maps/FZLX35fx8cr', '1');
('2', 'Villa Diantie', 'https://goo.gl/maps/Nw1MPtcXNME2', '1');
('3', 'Padjadjaran Suite Resort & Convention Hotel', 'https://goo.gl/maps/YG2Ptf77rAx', '1');
('4', 'Amaris Pajajaran Hotel', 'https://goo.gl/maps/6E9HWN24P5M2', '2');
('5', 'Hotel Permata', 'https://goo.gl/maps/jMrHYroP3qp', '2');
('6', 'Whiz Prime Pajajaran Bogor', 'https://goo.gl/maps/mc9FCAc9eFn', '2');
('7', 'Puncak Pass Resort', 'https://goo.gl/maps/K4ANPsx8XwK2', '3');
('8', 'ARRA LEMBAH PINUS HOTEL', 'https://goo.gl/maps/S21Wj9mvGT42', '3');
('9', 'Casa Monte Rosa Hotel', 'https://goo.gl/maps/j4QFBrPR8T22', '3');
('10', 'Permata Alam', 'https://goo.gl/maps/JDga4sHpd8M2', '4');  
('11', 'Rumah Pohon Safari Lodge', 'https://goo.gl/maps/DpCfr3b7dV92', '4'); 
('12', 'Safari lodge', 'https://goo.gl/maps/ctU33LtAsT62', '4'); 
('13', 'Maple House by Villa Istana Bunga', 'https://goo.gl/maps/nzwVxk529on', '5');  
('14', 'Sari Ater Hotel & Resort', 'https://goo.gl/maps/N3X66ki5hfD2', '5'); 
('15', 'Hotel & Banquet Panorama Lembang', 'https://goo.gl/maps/d4jTYTf3Z2v', '5'); 
('16', 'Cimanggu Cottage', 'https://goo.gl/maps/fw6HLPdYcES2', '6');  
('17', 'Guest House Ciwalini', 'https://goo.gl/maps/kkSEWAphEWw', '6');
('18', 'Green Hill Park TWA Cimanggu', 'https://goo.gl/maps/j4QFBrPR8T22', '6');
('19', 'Razha Guesthouse Cibubur', 'https://goo.gl/maps/BA7jWSPA6Lk', '7');
('20', 'Hotel Ciputra Cibubur', 'hhttps://goo.gl/maps/uEtg5VXQWNT2', '7');
('21', 'Mekarsari Indah Hotel', 'https://goo.gl/maps/uMo4tytky1A2', '7');
('22', 'Hotel Matahari', 'https://goo.gl/maps/gfFFgiPU3TU2', '8');
('23', 'Grand Diara Hotel', 'https://goo.gl/maps/41cnysvjdH12', '8');
('24', 'Citra Cikopo Hotel & Family Cottages', 'https://goo.gl/maps/euRfD2ksDRE2', '8');
('25', 'Louis Kienne Hotel Pandanaran Semarang', 'https://goo.gl/maps/To1KhKWKmWp', '9');
('26', 'POP! Hotel Pemuda Semarang', 'https://goo.gl/maps/j2XvV2dgYHn', '9');
('27', 'Rooms Inc.', 'https://goo.gl/maps/sdEc8D8B9Jq', '9');
('28', 'Omah Pelem syariah', 'https://goo.gl/maps/eRUUifCfbKv', '10');
('29', 'Hotel Ibrahim Syariah Simpang Lima', 'https://goo.gl/maps/hac4gtVTdBM2', '10');
('30', 'Star Hotel Semarang', 'https://goo.gl/maps/NtNb2Zjkq9S2', '10');
('31', 'DS Résidences Marina', 'https://goo.gl/maps/UomXcN4vP7z', '11');
('32', 'Airy Tawangsari Puri Anjasmoro EE3 5 Semarang', 'https://goo.gl/maps/oGd1gpJ8D8C2', '11');
('33', 'Hotel Puri Garden', 'https://goo.gl/maps/Nk86RCSMGyG2', '11');
('34', 'Sunshine Hostel', 'https://goo.gl/maps/iM6sCBmvSEv', '12');
('35', 'The Azana Hotel Airport Semarang', 'https://goo.gl/maps/J1aBb3fTi3U2', '12');
('36', 'Airy Hanoman Tujuh 26 Semarang', 'https://goo.gl/maps/pf4hc7BXtGD2', '12');
('37', 'Griya Kulon Guest House', 'https://goo.gl/maps/G41Aug4BZLJ2', '13');
('38', 'Sunrise Hotel Semarang', 'https://goo.gl/maps/EigRwejwjTP2', '13');
('39', 'Hotel Gets', 'https://goo.gl/maps/nEyn83AQSKr', '13');
('40', 'Griya Katarina', 'https://goo.gl/maps/X5PzFnhrS462', '14');
('41', 'Hotel Griya Wijaya', 'https://goo.gl/maps/fyeUqiG9Vhv', '14');
('42', 'Hotel Melati Satu Aman', 'https://goo.gl/maps/Dm9CuiA3vJ32', '14');
('43', 'The Gecho Inn Country', 'https://goo.gl/maps/sUkDCrjt7s52', '15');
('44', 'LONG GARDEN GUEST HOUSE', 'https://goo.gl/maps/aqkjfdmg7By', '15');
('45', 'Ocean View Residence-Hotel Jepara', 'https://goo.gl/maps/2Ga1vrXS3M52', '15');
('46', 'The Gecho Inn Country', 'https://goo.gl/maps/WK23L5UZAJr', '16');
('47', 'Coconut Lodge', 'https://goo.gl/maps/SjCwfagvhtG2', '16');
('48', 'Harum Manis Cottages', 'https://goo.gl/maps/uRKVGoePS342', '16');
('49', 'Central Hotel', 'https://goo.gl/maps/S6jH2paZ2cP2', '17');
('50', '@HOM Hotel Kudus', 'https://goo.gl/maps/odV3C3zJYd32', '17');
('51', 'Prima Graha Hotel', 'https://goo.gl/maps/2gpb7CYN7U62', '17');
('52', 'Amantis Hotel', 'https://goo.gl/maps/VnWrzrXsW4S2', '18');
('53', 'Nature imagery cottage Confinement', 'https://goo.gl/maps/KVPUqvCXkHs', '18');
('54', 'Sederhana Hotel', 'https://goo.gl/maps/xh3M4YeHTK62', '18');
('55', 'Watu Agung Guesthouse and Resto', 'https://goo.gl/maps/AZYU4YqAbD22', '19');
('56', 'RedDoorz near Borobudur Temple', 'https://goo.gl/maps/bix5U9Dfqoz', '19');
('57', 'Cempaka Villa', 'https://goo.gl/maps/BDUV7g3r1Dq', '19');
('58', 'Prime Royal Hotel', 'https://goo.gl/maps/88DragEKKk32', '20');
('59', 'Garden Palace Hotel Surabaya', 'https://goo.gl/maps/sHtn9aT8SYn', '20');
('60', 'favehotel Graha Agung Surabaya', 'https://goo.gl/maps/5VnQRR9CiDS2', '20');
('61', 'OYO 143 Dukuh Kupang Residence', 'https://goo.gl/maps/vEyBSGSFNwK2', '21');
('62', 'Hotel Pesonna Surabaya', 'https://goo.gl/maps/XGJJHyZLyxL2', '21');
('63', 'Horison Arcadia Surabaya', 'https://goo.gl/maps/kwp5CxTUPCm', '21');
('64', 'Hotel Pelangi Malang', 'https://goo.gl/maps/JJtyY8qtKqB2', '22');
('65', 'Swiss-Belinn Malang', 'https://goo.gl/maps/ur1EhpNdrPB2', '22');
('66', 'Same Hotel Malang', 'https://goo.gl/maps/Z4g1UCX93eo', '22');
('67', 'Airy Syariah Sawojajar Danau Tondano Raya A5 J16 Malang', 'https://goo.gl/maps/SrpUDoZwEwj', '23');
('68', 'Atria Hotel Malang', 'https://goo.gl/maps/eVBxj5ddgk82', '23');
('69', 'DFresh Guest House and Resto', 'https://goo.gl/maps/Zc8rUVFP6Cr', '23');
('70', 'Hotel Bromo Permai 1 Probolinggo', 'https://goo.gl/maps/A4TNob6jQjL2', '24');
('71', 'Cemara Indah Hotel', 'https://goo.gl/maps/184RsnZAGnw', '24');
('72', 'Homestay Bromo Indah', 'https://goo.gl/maps/Uz6s9SVqHUH2', '24');
('73', 'THE BATU Hotel & Villas', 'https://goo.gl/maps/R5DSr9xAwUG2', '25');
('74', 'Pondok Jatim Park Hotel & Café', 'https://goo.gl/maps/RWeFCBa9gpp', '25');
('75', 'Kemboja Bed & Breakfast Cafe', 'https://goo.gl/maps/tjt48j1kyoG2', '25');
('76', 'Airy Jatim Park Cendrawasih A7 Batu Malang', 'https://goo.gl/maps/KzVipFjSUwk', '26');
('77', 'Villa Villi', 'https://goo.gl/maps/67F38X4sorE2', '26');
('78', 'Delima Villa Batu', 'https://goo.gl/maps/RAbQQLccQus', '26');
('79', 'Hotel Surya Indah', 'https://goo.gl/maps/atr6A5JKM9t', '27');
('80', 'Batuque Town Villa', 'https://goo.gl/maps/JBtEdVC9Be52', '27');
('80', 'Cemaras Homestay', 'https://goo.gl/maps/qAEQkj8DsAp', '27');
('80', 'Villa blessed batu malang / villa agro batu malang', 'https://goo.gl/maps/BBHmaEzTqiQ2', '28');
('80', 'Aston Inn Batu', 'https://goo.gl/maps/BuaVvJTtuV72', '28');
('80', 'Klub Bunga Boutique Resort', 'https://goo.gl/maps/RgcSTs75TCC2', '28');
('80', 'Pohon Inn Hotel', 'https://goo.gl/maps/6tgWLNyw2SE2', '29');
('80', 'Villa All New Cappuccino', 'https://goo.gl/maps/BXPc6A33VSG2', '29');
('80', 'Villa Della Scala Batu', 'https://goo.gl/maps/ruZyGy6NaTL2', '29');
('80', 'villa de tiara', 'https://goo.gl/maps/DRGEAzo2xDN2', '30');
('80', 'Zam Zam Hotel & Convention', 'https://goo.gl/maps/gpm1rm5HBiT2', '30');
('80', 'Villa Batu Malang', 'https://goo.gl/maps/xJQEGd7GgDy', '30');
