create table ogrenci_tablo (
ogrNo int not null identity(10000,1) UNIQUE,
ogrAd nvarchar(50) not null,
ogrTc char(11) not null,
ogrCinsiyet nvarchar(50) not null,
doðumtarihi date not null,
ogrSoyad nvarchar(50) not null,
ogrTel char(11) not null,
ogrEposta nvarchar(100) not null,
ogrÝlceId int not null,
dnsmnId int not null,
primary key (ogrNo),
);

INSERT INTO ogrenci_tablo (ogrAd, ogrSoyad, ogrTc, ogrCinsiyet, doðumTarihi,  ogrTel, ogrEposta, ogrÝlceId, dnsmnId)
VALUES
('Uzay', 'Çetin', '19191919191' ,'Erkek', '2000-08-16',  '5555555550', 'uzaycetin@ogrenci.ege.edu.tr', 1, 1),
('Bulut', 'Þimþek', '19191919192' ,'Erkek', '2023-06-09',  '5555555551', 'bulutsimsek@ogrenci.ege.edu.tr', 2, 2),
('Güneþ', 'Alma', '19191919193' , 'Erkek','2000-07-13' ,  '5555555552', 'gunesalma@ogrenci.ege.edu.tr', 3, 3),
('Emircan', 'Akçiçek', '19191919195' ,'Erkek', '2001-03-22',  '5555555554', 'emircanakcicek@ogrenci.ege.edu.tr', 4,  4),
('Fatih', 'Demir', '19191919196' , 'Erkek','2000-01-06',  '5555555555', 'fatihdemir@ogrenci.ege.edu.tr', 5,  1),
('Muhammed Taha', 'Keleþ', '19191919197' ,'Erkek', '2002-06-02',  '5555555556', 'muhammedtahakeles@ogrenci.ege.edu.tr', 6,  2),
('Mustafa', 'Aslan', '19191919198' , 'Erkek','2002-05-18',  '5555555557', 'mustafaaslan@ogrenci.ege.edu.tr', 7,  3),
('Murat', 'Ýlhan', '19191919199' , 'Erkek','2005-09-29',  '5555555558', 'muratilhan@ogrenci.ege.edu.tr', 8,  4),
('Ahmet', 'Kara', '19191919120' , 'Erkek','2004-02-10',  '5555555559', 'ahmetkaya@ogrenci.ege.edu.tr', 9,  1),
('Atýl', 'Samancýoðlu', '19191919121' ,'Erkek', '2004-01-28',  '5555555560', 'atýlsamancýoglu@ogrenci.ege.edu.tr', 10,  2),
('Hakký', 'Alkan', '19191919122' ,'Erkek', '2023-12-12',  '5555555561', 'hakkýalkan@ogrenci.ege.edu.tr', 1,  3),
('Zeynep','Kaya', '19191919123' , 'Kadýn', '2003-12-05',  '5555555562', 'zeynepkaya@ogrenci.ege.edu.tr', 2,  4),
('Özlem', 'Soner', '19191919124' ,'Kadýn', '2001-06-24',  '5555555563', 'ozlemsoner@ogrenci.ege.edu.tr', 5,  1),
('Büþra', 'Daþ', '9191919194' ,'Kadýn', '2001-01-20', '5555555553', 'busradas@ogrenci.ege.edu.tr', 5,  3)
;



--select * from ogrenci_tablo;



create table ilce_tablosu (
ilceId	int not null identity(1,1) UNIQUE,
ilceAd nvarchar(50) not null,
primary key (ilceId)
);

insert into ilce_tablosu (ilceAd)
values ('Ödemiþ'), ('Bayýndýr'), ('Bergama'), ('Tire'), ('Çeþme'),('Urla'),('bornova'),('gaziemir'),('karþýyaka'),('aliaða');

--select * from ilce_tablosu;

create table yerleþkeler_tablosu (
yrlskId int not null identity(1,1)UNIQUE,
yrlskAd nvarchar(100) not null,
yrlskÝlçeId int not null,
yrlskAdres nvarchar(100) not null,
primary key (yrlskId),
FOREIGN KEY (yrlskÝlçeId) REFERENCES ilce_tablosu (ilceId)
);

--select * from yerleþkeler_tablosu;

INSERT INTO yerleþkeler_tablosu (yrlskAd, yrlskÝlçeId, yrlskAdres)
VALUES
  ('Üniversite Merkez Kampüs', 7, 'Ege Üniversitesi Kampüsü 35100 Bornova-ÝZMÝR'),
  ('Ege Üniversitesi Havacýlýk Meslek Yüksek Okulu', 8, 'Fatih, 1099. Sk. No:114, 35410 Gaziemir/Ýzmir'),
  ('Ege Üniversitesi Karþýyaka Kampüsü',9 , 'Ýmbatlý, 1595. Sk. No:143, 35575 Karþýyaka/Ýzmir'),
  ('Ege Üniversitesi Aliaða Meslek Yüksekokulu', 10, 'Siteler Mah., Ýnönü Bulvarý No:3, 35800 Aliaða/Ýzmir'),
  ('Ege Üniversitesi Bayýndýr Meslek Yüksekokulu', 2, 'Sadýkpaþa, Atatürk Cd. No:74, 35840 Bayýndýr/Ýzmir'),
  ('Ege Üniversitesi Bergama Meslek Yüksekokulu', 3, 'Bahçelievler, 10. Sk., 35700 Bergama/Ýzmir'),
  ('Ege Üniversitesi Çeþme Turizm Fakültesi', 5, 'Dalyan, Üniversite, 4202. Sk. No:53, 35930 Çeþme/Ýzmir'),
  ('Ege Üniversitesi Ödemiþ Meslek Yüksekokulu', 1, 'Üç Eylül, Fakülte Cd. No:22, 35750 Ödemiþ/Ýzmir'),
  ('Ege Üniversitesi Tire Kutsan Meslek Yüksekokulu', 4, 'Yeni, Adnan Menderes Blv., 35900 Tire/Ýzmir'),
  ('Ege Üniversitesi Urla Denizcilik Meslek Yüksekokulu',6, 'Ýskele, Ýskele Cd. No: 37, 35430 Urla/Ýzmir');

create table binalar_tablosu (
binaId int not null identity(1,1)UNIQUE,
yrlskId int not null,
binaAd nvarchar(100) not null,
binaKatS int not null,
primary key (binaId),
FOREIGN KEY (yrlskId) REFERENCES yerleþkeler_tablosu (yrlskId)
);
--select *from binalar_tablosu;

insert into   binalar_tablosu (yrlskId, binaAd, binaKatS)
values
(2, 'Gaziemir Yerleþkesi 2. Binasý', 5),
(1, 'Bornova Yerleþkesi 2. Binasý', 6),
(6, 'Bergama Yerleþkesi 2. Binasý', 7),
(9, 'Tire Yerleþkesi Binasý', 4),
(1, 'Bornova Yerleþkesi 3. Binasý', 8);



INSERT INTO binalar_tablosu (yrlskId, binaAd, binaKatS)
VALUES
(8, 'Ödemiþ Yerleþkesi Binasý', 5),
(5, 'Bayýndýr Yerleþkesi Binasý', 6),
(6, 'Bergama Yerleþkesi Binasý', 7),
(9, 'Tire Laboratuvar Binasý ', 4),
(7, 'Çeþme Yerleþkesi Binasý', 8),
(10, 'Urla Yerleþkesi Binasý', 5),
(1, 'Bornova Yerleþkesi Binasý', 10),
(2, 'Gaziemir Yerleþkesi Binasý', 6),
(3, 'Karþýyaka Yerleþkesi Binasý', 9),
(4, 'Aliaða Yerleþkesi Binasý', 7);



create table derslikler_tablosu (
derslikId int not null identity(1,1)UNIQUE,
binaId int not null,
derslikNo	int not null,
drslkKpst int not null,
primary key (derslikId),
FOREIGN KEY (binaId) REFERENCES binalar_tablosu (binaId)
);
--select * from derslikler_tablosu;


INSERT INTO derslikler_tablosu (binaId, derslikNo, drslkKpst)
VALUES
(1, 5, 60),
(2, 6, 54),
(3, 7, 66),
(4, 8, 75),
(5, 9, 60),
(6, 10, 72),
(7, 11, 78),
(8, 12, 63),
(9, 13, 69),
(10, 14, 57),
(11, 15, 60);

create table ders_tablo (
dersId int not null identity(100,5)UNIQUE,
dersAd nvarchar(50) not null,
dersKredi tinyint not null,
dersKodu int not null,
dersSaati nvarchar(50) not null,
derslikId int not null,
primary key (dersId),
FOREIGN KEY (derslikId) REFERENCES derslikler_tablosu (derslikId)
);





INSERT INTO ders_tablo (dersAd, dersKredi, dersKodu, dersSaati, derslikId)
VALUES('Algoritmalar', 3, 103, 'Çarþamba 10:00 - 12:00', 1),
('Bilgisayar Aðlarý', 3, 104, 'Perþembe 13:00 - 15:00', 2),
('Veritabaný Yönetimi', 4, 105, 'Cuma 11:00 - 13:00', 3),
('Bilgisayar Güvenliði', 3, 109, 'Perþembe 10:00 - 12:00', 4),
('Web Programlama', 3, 110, 'Cuma 14:00 - 16:00', 5),
('Týbbi Genetik', 4, 201, 'Pazartesi 09:00 - 11:00', 6),
('Anatomi', 3, 202, 'Salý 14:00 - 16:00', 7),
('Farmakoloji', 3, 203, 'Çarþamba 10:00 - 12:00', 8),
('Nöroloji', 3, 205, 'Cuma 11:00 - 13:00', 9),
('Mesleki Ýngilizce', 2, 303, 'Çarþamba 10:00 - 12:00', 10),
('Proje Yönetimi', 3, 305, 'Cuma 11:00 - 13:00', 11);


create table öðrenci_not_tablosu (
ogrNotId	int not null identity(1,1)UNIQUE,
ogrNo int not null,
dersId int not null,
vize int not null,
final int not null,
primary key (ogrNotId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo),
FOREIGN KEY (dersId) REFERENCES ders_tablo (dersId)
);


INSERT INTO öðrenci_not_tablosu (ogrNo, dersId, vize, final)
VALUES
(10001, 100, 70, 85),
(10002, 105, 75, 90),
(10003, 110, 60, 75),
(10004, 115, 85, 80),
(10005, 120, 78, 92),
(10006, 125, 60, 75),
(10007, 130, 85, 80),
(10008, 135, 78, 92),
(10009, 140, 60, 75),
(10010, 145, 85, 80),
(10011, 150, 78, 92);


create table öðretmen_tablosu (
ogrtId	int not null identity(10,1) UNIQUE,
ogrtAd nvarchar(20) not null,
dersId int not null,
ogrtSoyad nvarchar(20) not null,
ogrtTelefon char(11) not null,
ogrtEposta nvarchar(50) not null ,
primary key (ogrtId),
foreign key (dersId) references ders_tablo (dersId),
);


INSERT INTO öðretmen_tablosu (ogrtAd, ogrtSoyad, dersId,ogrtTelefon, ogrtEposta)
VALUES
('Yeþim', 'Aktaþ', 100, '5555555564', 'yeþimaktaþ@gmail.com'),
('Ahmet', 'Yýlmaz',105, '5555555565', 'ahmetyilmaz@gmail.com'),
('Merve', 'Kara',110, '5555555566', 'mervekara@gmail.com'),
('Cem', 'Umut',115, '5555555567', 'cemumut@gmail.com'),
('Ayþe', 'Yýldýrým',120, '5555555568', 'ayseyildirim@gmail.com'),
('Elif', 'Koç',125, '5555555569', 'elifkoc@gmail.com'),
('Hakan', 'Aydýn',130, '5555555570', 'hakanaydin@gmail.com');


--select * from öðretmen_tablosu;

create table bölüm_tablosu (
bolumId int not null,
bolumAd nvarchar(50) not null,
bolumDanýsmanId int not null,
primary key (bolumId),
foreign key (bolumDanýsmanId) references öðretmen_tablosu (ogrtId)
);


INSERT INTO bölüm_tablosu (bolumId,bolumAd, bolumDanýsmanId)
VALUES
(1,'Bilgisayar Mühendisliði', 10),  
(2,'Bilgisayar Programcýlýðý', 11),    
(3,'Týbbi Sekreterlik ve Dökümantasyon', 12), 
(4,'Týp', 13);


create table danýþman_tablosu (
dnsmnId int not null identity(10,1) UNIQUE,
dnsmnAd nvarchar(50) not null,
dnsmnSoyad nvarchar(50) not null,
dnsmnEposta nvarchar(50) ,
bolumId int not null,
primary key (dnsmnId),
FOREIGN KEY (bolumId) REFERENCES bölüm_tablosu (bolumId)
);


INSERT INTO danýþman_tablosu (dnsmnAd, dnsmnSoyad,dnsmnEposta, bolumId)
VALUES
('Ulaþ', 'Yýlmaz', 'ulasyilmaz@gmail.com' , 1),
('Ayþe', 'Kaya', 'aysekaya@gmail.com', 2),
('Mehmet', 'Öztürk', 'mehmetozturk@gmail.com', 3),
('Fatma', 'Demir','fatmademir@gmail.com', 4);



create table yemekhane_tablosu (
ymkhnId int not null identity(1,1)UNIQUE,
aþçýId int not null,
ymkSaatleri	nvarchar(15) not null,
primary key (ymkhnId),
FOREIGN KEY (ymkhnId) REFERENCES binalar_tablosu (binaId)
);


INSERT INTO yemekhane_tablosu ( aþçýId, ymkSaatleri)
VALUES
(1, '08:00 - 14:00'),
(2, '09:00 - 15:00'),
(3, '11:30 - 17:30'),
(4, '07:30 - 13:30'),
(5, '10:00 - 16:00'),
(6, '08:30 - 14:30'),
(7, '12:00 - 18:00'),
(8, '07:00 - 13:00');


create table aþçýlar_tablosu (
aþçýId int not null identity(1,1)UNIQUE,
aþçýAd nvarchar(30) not null,
aþçýSoyad nvarchar(30) not null,
ymkhnId int not null,
primary key (aþçýId),
FOREIGN KEY (ymkhnId) REFERENCES yemekhane_tablosu (ymkhnId)
);


INSERT INTO aþçýlar_tablosu (aþçýAd, aþçýSoyad, ymkhnId)
VALUES
('Hasan', 'Güneþ', 1),
('Nazlý', 'Erdem', 2),
('Cem', 'Taþkýn', 3),
('Derya', 'Kurt', 4),
('Serdar', 'Yaman', 5),
('Ýrem', 'Sarý', 6),
('Burak', 'Demir', 7),
('Ece', 'Koç', 8);


create table kütüphane_tablosu (
ktphnId int not null identity(1,1) UNIQUE,
ktphnAd nvarchar(50) not null,
ktphnTel char(11),
ktphnWebSitesi	nvarchar(50),
ktphnÇalýþmaSaat nvarchar(50) not null,
ktphnGrvlId int not null,
primary key (ktphnId),
FOREIGN KEY (ktphnId) REFERENCES binalar_tablosu (binaId) 
);


INSERT INTO kütüphane_tablosu (ktphnAd, ktphnTel, ktphnWebSitesi, ktphnÇalýþmaSaat, ktphnGrvlId)
VALUES
('Kütüphane 1', '5555555571', 'www.kutuphane1.com', '09:00 - 18:00', 1),
('Kütüphane 2', '5555555572', 'www.kutuphane2.com', '10:00 - 17:00', 2),
('Kütüphane 3', '5555555573', 'www.kutuphane3.com', '08:00 - 20:00', 3),
('Kütüphane 4', '5555555574', 'www.kutuphane4.com', '11:00 - 16:00', 4),
('Kütüphane 5', '5555555575', 'www.kutuphane5.com', '09:30 - 19:00', 5),
('Kütüphane 6', '5555555576', 'www.kutuphane6.com', '10:30 - 18:30', 6),
('Kütüphane 7', '5555555577', 'www.kutuphane7.com', '08:30 - 17:30', 7),
('Kütüphane 8', '5555555578', 'www.kutuphane8.com', '09:00 - 20:00', 8);


create table kütüphane_görevliler_tablosu (
ktpGrvlId int not null identity(1,1) UNIQUE,
ktphnId int not null,
ktphnAd nvarchar(30) not null,
ktphnSoyad nvarchar(30) not null,
primary key (ktpGrvlId),
FOREIGN KEY (ktpGrvlId) REFERENCES kütüphane_tablosu (ktphnId)
);


INSERT INTO kütüphane_görevliler_tablosu (ktphnId, ktphnAd, ktphnSoyad)
VALUES
(1, 'Aslý', 'Ergin'),
(2, 'Eren', 'Aydýn'),
(3, 'Melis', 'Koç'),
(4, 'Cem', 'Gürbüz'),
(5, 'Zara', 'Yýlmaz'),
(6, 'Burak', 'Çelik'),
(7, 'Ceren', 'Þahin'),
(8, 'Mert', 'Demir');


create table öðrenci_yemekhane_bilgileri_tablosu (
ogrNo int not null UNIQUE,
ymkhnNo int not null,
ymkhnMasaNo int not null,
primary key (ogrNo),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo)
);


INSERT INTO öðrenci_yemekhane_bilgileri_tablosu (ogrNo, ymkhnNo, ymkhnMasaNo)
VALUES
(10000, 101, 5),
(10001, 102, 8),
(10002, 103, 12),
(10003, 104, 4),
(10004, 105, 7),
(10005, 106, 9),
(10006, 107, 3),
(10007, 108, 6),
(10008, 109, 11),
(10009, 110, 2),
(10010, 111, 10),
(10011, 112, 1),
(10012, 113, 15),
(10013, 113, 14);


create table menü_tablosu (
ymkhnId int not null,
menuId int not null identity(1,1) UNIQUE,
anaYmk1 nvarchar(50) not null,
tatlý nvarchar(50) not null,
içecek nvarchar(50) not null,
çorba nvarchar(50) not null,
primary key (menuId),
foreign key (ymkhnId) REFERENCES yemekhane_tablosu(ymkhnId)
);


INSERT INTO menü_tablosu (ymkhnId, anaYmk1, tatlý, içecek, çorba)
VALUES
(1,'Tavuklu Pilav', 'Baklava', 'Ayran', 'Mercimek Çorbasý'),
(2,'Sebzeli Makarna', 'Kazandibi', 'Limonata', 'Domates Çorbasý'),
(3,'Izgara Balýk', 'Kadayýf', 'Gazoz', 'Tarator Çorbasý'),
(4,'Karnabahar Kýzartmasý', 'Sütlaç', 'Portakal Suyu', 'Yoðurtlu Çorba'),
(5,'Köfte', 'Revani', 'Þalgam Suyu', 'Yayla Çorbasý'),
(6,'Fýrýn Tavuk', 'Trileçe', 'Þekerpare', 'Mercimek Çorbasý'),
(7,'Zeytinyaðlý Yaprak Sarma', 'Künefe', 'Ayran', 'Ezo Gelin Çorbasý'),
(8,'Kumpir', 'Cevizli Baklava', 'Meyve Suyu', 'Tavuklu Nohut Çorbasý');

create table kitap_tablosu (
kitapId nvarchar(10) not null,
kitapAd nvarchar(50) not  null,
kitapYazarý nvarchar(50) not null,
kitapBasýmTarihi date not null,
kitapSayfasý char(10) not null,
kitapTürü nvarchar(40) not null,
primary key (kitapId) 
);


INSERT INTO kitap_tablosu (kitapId, kitapAd, kitapYazarý, kitapBasýmTarihi, kitapSayfasý, kitapTürü)
VALUES
('K001', 'To Kill a Mockingbird', 'Harper Lee', '19600502', '281', 'Gerilim'),
('K002', '1984', 'George Orwell', '19491217', '328', 'Distopya'),
('K003', 'Crime and Punishment', 'Fyodor Dostoevsky', '18660307', '671', 'Psikoloji'),
('K004', 'Saatleri Ayarlama Enstitüsü', 'Ahmet Hamdi Tanpýnar', '19610929', '423', 'Otobiyografik'),
('K005', 'The Great Gatsby', 'F. Scott Fitzgerald', '19251111', '180', 'Trajedi'),
('K006', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', '19670519', '417', 'Epik Kurgu'),
('K007', 'Dönüþüm', 'Franz Kafka', '19150813', '63', 'Kýsa Hikaye'),
('K008', 'Prens', 'Niccolo Machiavelli', '15321002', '176', 'Felsefi'),
('K009', 'Ýstanbul Hatýrasý', 'Ahmet Ümit', '19960922', '432', 'Polisiye'),
('K010', 'The Hobbit', 'J.R.R. Tolkien', '19370111', '310', 'Fantastik');



create table ödünç_kitaplar_tablosu (
ogrNo int not null,
ktphnId int not null,
kitapId nvarchar(10) not null,
alýnanTarih date not null,
primary key (ogrNo,ktphnId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo),
FOREIGN KEY (ktphnId) REFERENCES kütüphane_tablosu (ktphnId),
FOREIGN KEY (kitapId) REFERENCES kitap_tablosu (kitapId)
);


INSERT INTO ödünç_kitaplar_tablosu (ogrNo, ktphnId, kitapId, alýnanTarih)
VALUES
(10000, 1, 'K001', '20230115'),
(10001, 2, 'K002', '20230201'),
(10002, 3, 'K003', '20230215'),
(10003, 4, 'K004', '20230301'),
(10004, 5, 'K005', '20230315'),
(10005, 6, 'K006', '20230401'),
(10005, 7, 'K007', '20230415');


create table staj_firmalarý_tablosu (
firmaId int not null identity(1,1) UNIQUE,
firmaAd nvarchar(50) not null,
firmaTel char(11) not null,
firmaEposta nvarchar(50) not null,
firmaTürü nvarchar(50),
firmaAdres nvarchar(50),
primary key (firmaId),
);


INSERT INTO staj_firmalarý_tablosu (firmaAd, firmaTel, firmaEposta, firmaTürü, firmaAdres)
VALUES
('Florence Nightingale Hastanesi', '2160001', 'info@florence.com', 'Saðlýk', 'Ýstanbul'),
('Memorial Saðlýk Grubu', '2160002', 'info@memorial.com', 'Saðlýk', 'Ýstanbul'),
('Acýbadem Saðlýk Grubu', '2160003', 'info@acibadem.com', 'Saðlýk', 'Ýstanbul'),
('BilgeAdam Yazýlým', '2160004', 'info@bilgeadam.com', 'Yazýlým', 'Ýstanbul'),
('Türk Telekom Yazýlým', '3120005', 'info@turktelekom.com', 'Yazýlým', 'Ankara');


create table ögrenci_staj_tablosu (
ogrNo int not null,
stajId int not null identity(1,1) UNIQUE,
firmaId int not null,
staj_baþlangýç_tarihi date not null,
staj_bitiþ_tarihi date not null,
primary key (stajId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo) ,
FOREIGN KEY (firmaId) REFERENCES staj_firmalarý_tablosu (firmaId)
);




INSERT INTO ögrenci_staj_tablosu (ogrNo, firmaId, staj_baþlangýç_tarihi, staj_bitiþ_tarihi)
VALUES
(10000, 1, '20230601', '20230630'),
(10001, 2, '20230705', '20230805'),
(10002, 3, '20230810', '20230910'),
(10003, 4, '20230915', '20231015'),
(10004, 5, '20231020', '20231120'),
(10005, 1, '20231125', '20231225'),
(10006, 2, '20240101', '20240131'),
(10007, 3, '20240205', '20240305'),
(10008, 4, '20230310', '20240410'),
(10009, 5, '20240415', '20240515'),
(10010, 1, '20240520', '20240620'),
(10011, 2, '20240625', '20240725'),
(10012, 3, '20240801', '20240831'),
(10013, 4, '20240905', '20241005');


create table akademik_takvim_tablosu (
takvimId  int not null identity(1,1) UNIQUE ,
bolumId int not null,
akademikYýl int not null,
donemAd varchar(20) not null,
dersKayýtTarihi date not null,
dersEkleÇýkarTarih date not null,
donemBaslangic date not null,
vizeTarih date not null,
finalTarih date not null,
donemBitis date not null,
primary key(takvimId),
FOREIGN KEY (bolumId) REFERENCES bölüm_tablosu (bolumId)
);


INSERT INTO akademik_takvim_tablosu (akademikYýl, bolumId, donemAd, dersKayýtTarihi, dersEkleÇýkarTarih, donemBaslangic, vizeTarih, finalTarih, donemBitis)
VALUES
(2023,1,'2023 Güz Dönemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,1,'2023 Bahar Dönemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,2,'2023 Güz Dönemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,2,'2023 Bahar Dönemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,3,'2023 Güz Dönemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,3,'2023 Bahar Dönemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,4,'2023 Güz Dönemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,4,'2023 Bahar Dönemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502');