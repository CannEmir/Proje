create table ogrenci_tablo (
ogrNo int not null identity(10000,1) UNIQUE,
ogrAd nvarchar(50) not null,
ogrTc char(11) not null,
ogrCinsiyet nvarchar(50) not null,
do�umtarihi date not null,
ogrSoyad nvarchar(50) not null,
ogrTel char(11) not null,
ogrEposta nvarchar(100) not null,
ogr�lceId int not null,
dnsmnId int not null,
primary key (ogrNo),
);

INSERT INTO ogrenci_tablo (ogrAd, ogrSoyad, ogrTc, ogrCinsiyet, do�umTarihi,  ogrTel, ogrEposta, ogr�lceId, dnsmnId)
VALUES
('Uzay', '�etin', '19191919191' ,'Erkek', '2000-08-16',  '5555555550', 'uzaycetin@ogrenci.ege.edu.tr', 1, 1),
('Bulut', '�im�ek', '19191919192' ,'Erkek', '2023-06-09',  '5555555551', 'bulutsimsek@ogrenci.ege.edu.tr', 2, 2),
('G�ne�', 'Alma', '19191919193' , 'Erkek','2000-07-13' ,  '5555555552', 'gunesalma@ogrenci.ege.edu.tr', 3, 3),
('Emircan', 'Ak�i�ek', '19191919195' ,'Erkek', '2001-03-22',  '5555555554', 'emircanakcicek@ogrenci.ege.edu.tr', 4,  4),
('Fatih', 'Demir', '19191919196' , 'Erkek','2000-01-06',  '5555555555', 'fatihdemir@ogrenci.ege.edu.tr', 5,  1),
('Muhammed Taha', 'Kele�', '19191919197' ,'Erkek', '2002-06-02',  '5555555556', 'muhammedtahakeles@ogrenci.ege.edu.tr', 6,  2),
('Mustafa', 'Aslan', '19191919198' , 'Erkek','2002-05-18',  '5555555557', 'mustafaaslan@ogrenci.ege.edu.tr', 7,  3),
('Murat', '�lhan', '19191919199' , 'Erkek','2005-09-29',  '5555555558', 'muratilhan@ogrenci.ege.edu.tr', 8,  4),
('Ahmet', 'Kara', '19191919120' , 'Erkek','2004-02-10',  '5555555559', 'ahmetkaya@ogrenci.ege.edu.tr', 9,  1),
('At�l', 'Samanc�o�lu', '19191919121' ,'Erkek', '2004-01-28',  '5555555560', 'at�lsamanc�oglu@ogrenci.ege.edu.tr', 10,  2),
('Hakk�', 'Alkan', '19191919122' ,'Erkek', '2023-12-12',  '5555555561', 'hakk�alkan@ogrenci.ege.edu.tr', 1,  3),
('Zeynep','Kaya', '19191919123' , 'Kad�n', '2003-12-05',  '5555555562', 'zeynepkaya@ogrenci.ege.edu.tr', 2,  4),
('�zlem', 'Soner', '19191919124' ,'Kad�n', '2001-06-24',  '5555555563', 'ozlemsoner@ogrenci.ege.edu.tr', 5,  1),
('B��ra', 'Da�', '9191919194' ,'Kad�n', '2001-01-20', '5555555553', 'busradas@ogrenci.ege.edu.tr', 5,  3)
;



--select * from ogrenci_tablo;



create table ilce_tablosu (
ilceId	int not null identity(1,1) UNIQUE,
ilceAd nvarchar(50) not null,
primary key (ilceId)
);

insert into ilce_tablosu (ilceAd)
values ('�demi�'), ('Bay�nd�r'), ('Bergama'), ('Tire'), ('�e�me'),('Urla'),('bornova'),('gaziemir'),('kar��yaka'),('alia�a');

--select * from ilce_tablosu;

create table yerle�keler_tablosu (
yrlskId int not null identity(1,1)UNIQUE,
yrlskAd nvarchar(100) not null,
yrlsk�l�eId int not null,
yrlskAdres nvarchar(100) not null,
primary key (yrlskId),
FOREIGN KEY (yrlsk�l�eId) REFERENCES ilce_tablosu (ilceId)
);

--select * from yerle�keler_tablosu;

INSERT INTO yerle�keler_tablosu (yrlskAd, yrlsk�l�eId, yrlskAdres)
VALUES
  ('�niversite Merkez Kamp�s', 7, 'Ege �niversitesi Kamp�s� 35100 Bornova-�ZM�R'),
  ('Ege �niversitesi Havac�l�k Meslek Y�ksek Okulu', 8, 'Fatih, 1099. Sk. No:114, 35410 Gaziemir/�zmir'),
  ('Ege �niversitesi Kar��yaka Kamp�s�',9 , '�mbatl�, 1595. Sk. No:143, 35575 Kar��yaka/�zmir'),
  ('Ege �niversitesi Alia�a Meslek Y�ksekokulu', 10, 'Siteler Mah., �n�n� Bulvar� No:3, 35800 Alia�a/�zmir'),
  ('Ege �niversitesi Bay�nd�r Meslek Y�ksekokulu', 2, 'Sad�kpa�a, Atat�rk Cd. No:74, 35840 Bay�nd�r/�zmir'),
  ('Ege �niversitesi Bergama Meslek Y�ksekokulu', 3, 'Bah�elievler, 10. Sk., 35700 Bergama/�zmir'),
  ('Ege �niversitesi �e�me Turizm Fak�ltesi', 5, 'Dalyan, �niversite, 4202. Sk. No:53, 35930 �e�me/�zmir'),
  ('Ege �niversitesi �demi� Meslek Y�ksekokulu', 1, '�� Eyl�l, Fak�lte Cd. No:22, 35750 �demi�/�zmir'),
  ('Ege �niversitesi Tire Kutsan Meslek Y�ksekokulu', 4, 'Yeni, Adnan Menderes Blv., 35900 Tire/�zmir'),
  ('Ege �niversitesi Urla Denizcilik Meslek Y�ksekokulu',6, '�skele, �skele Cd. No: 37, 35430 Urla/�zmir');

create table binalar_tablosu (
binaId int not null identity(1,1)UNIQUE,
yrlskId int not null,
binaAd nvarchar(100) not null,
binaKatS int not null,
primary key (binaId),
FOREIGN KEY (yrlskId) REFERENCES yerle�keler_tablosu (yrlskId)
);
--select *from binalar_tablosu;

insert into   binalar_tablosu (yrlskId, binaAd, binaKatS)
values
(2, 'Gaziemir Yerle�kesi 2. Binas�', 5),
(1, 'Bornova Yerle�kesi 2. Binas�', 6),
(6, 'Bergama Yerle�kesi 2. Binas�', 7),
(9, 'Tire Yerle�kesi Binas�', 4),
(1, 'Bornova Yerle�kesi 3. Binas�', 8);



INSERT INTO binalar_tablosu (yrlskId, binaAd, binaKatS)
VALUES
(8, '�demi� Yerle�kesi Binas�', 5),
(5, 'Bay�nd�r Yerle�kesi Binas�', 6),
(6, 'Bergama Yerle�kesi Binas�', 7),
(9, 'Tire Laboratuvar Binas� ', 4),
(7, '�e�me Yerle�kesi Binas�', 8),
(10, 'Urla Yerle�kesi Binas�', 5),
(1, 'Bornova Yerle�kesi Binas�', 10),
(2, 'Gaziemir Yerle�kesi Binas�', 6),
(3, 'Kar��yaka Yerle�kesi Binas�', 9),
(4, 'Alia�a Yerle�kesi Binas�', 7);



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
VALUES('Algoritmalar', 3, 103, '�ar�amba 10:00 - 12:00', 1),
('Bilgisayar A�lar�', 3, 104, 'Per�embe 13:00 - 15:00', 2),
('Veritaban� Y�netimi', 4, 105, 'Cuma 11:00 - 13:00', 3),
('Bilgisayar G�venli�i', 3, 109, 'Per�embe 10:00 - 12:00', 4),
('Web Programlama', 3, 110, 'Cuma 14:00 - 16:00', 5),
('T�bbi Genetik', 4, 201, 'Pazartesi 09:00 - 11:00', 6),
('Anatomi', 3, 202, 'Sal� 14:00 - 16:00', 7),
('Farmakoloji', 3, 203, '�ar�amba 10:00 - 12:00', 8),
('N�roloji', 3, 205, 'Cuma 11:00 - 13:00', 9),
('Mesleki �ngilizce', 2, 303, '�ar�amba 10:00 - 12:00', 10),
('Proje Y�netimi', 3, 305, 'Cuma 11:00 - 13:00', 11);


create table ��renci_not_tablosu (
ogrNotId	int not null identity(1,1)UNIQUE,
ogrNo int not null,
dersId int not null,
vize int not null,
final int not null,
primary key (ogrNotId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo),
FOREIGN KEY (dersId) REFERENCES ders_tablo (dersId)
);


INSERT INTO ��renci_not_tablosu (ogrNo, dersId, vize, final)
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


create table ��retmen_tablosu (
ogrtId	int not null identity(10,1) UNIQUE,
ogrtAd nvarchar(20) not null,
dersId int not null,
ogrtSoyad nvarchar(20) not null,
ogrtTelefon char(11) not null,
ogrtEposta nvarchar(50) not null ,
primary key (ogrtId),
foreign key (dersId) references ders_tablo (dersId),
);


INSERT INTO ��retmen_tablosu (ogrtAd, ogrtSoyad, dersId,ogrtTelefon, ogrtEposta)
VALUES
('Ye�im', 'Akta�', 100, '5555555564', 'ye�imakta�@gmail.com'),
('Ahmet', 'Y�lmaz',105, '5555555565', 'ahmetyilmaz@gmail.com'),
('Merve', 'Kara',110, '5555555566', 'mervekara@gmail.com'),
('Cem', 'Umut',115, '5555555567', 'cemumut@gmail.com'),
('Ay�e', 'Y�ld�r�m',120, '5555555568', 'ayseyildirim@gmail.com'),
('Elif', 'Ko�',125, '5555555569', 'elifkoc@gmail.com'),
('Hakan', 'Ayd�n',130, '5555555570', 'hakanaydin@gmail.com');


--select * from ��retmen_tablosu;

create table b�l�m_tablosu (
bolumId int not null,
bolumAd nvarchar(50) not null,
bolumDan�smanId int not null,
primary key (bolumId),
foreign key (bolumDan�smanId) references ��retmen_tablosu (ogrtId)
);


INSERT INTO b�l�m_tablosu (bolumId,bolumAd, bolumDan�smanId)
VALUES
(1,'Bilgisayar M�hendisli�i', 10),  
(2,'Bilgisayar Programc�l���', 11),    
(3,'T�bbi Sekreterlik ve D�k�mantasyon', 12), 
(4,'T�p', 13);


create table dan��man_tablosu (
dnsmnId int not null identity(10,1) UNIQUE,
dnsmnAd nvarchar(50) not null,
dnsmnSoyad nvarchar(50) not null,
dnsmnEposta nvarchar(50) ,
bolumId int not null,
primary key (dnsmnId),
FOREIGN KEY (bolumId) REFERENCES b�l�m_tablosu (bolumId)
);


INSERT INTO dan��man_tablosu (dnsmnAd, dnsmnSoyad,dnsmnEposta, bolumId)
VALUES
('Ula�', 'Y�lmaz', 'ulasyilmaz@gmail.com' , 1),
('Ay�e', 'Kaya', 'aysekaya@gmail.com', 2),
('Mehmet', '�zt�rk', 'mehmetozturk@gmail.com', 3),
('Fatma', 'Demir','fatmademir@gmail.com', 4);



create table yemekhane_tablosu (
ymkhnId int not null identity(1,1)UNIQUE,
a���Id int not null,
ymkSaatleri	nvarchar(15) not null,
primary key (ymkhnId),
FOREIGN KEY (ymkhnId) REFERENCES binalar_tablosu (binaId)
);


INSERT INTO yemekhane_tablosu ( a���Id, ymkSaatleri)
VALUES
(1, '08:00 - 14:00'),
(2, '09:00 - 15:00'),
(3, '11:30 - 17:30'),
(4, '07:30 - 13:30'),
(5, '10:00 - 16:00'),
(6, '08:30 - 14:30'),
(7, '12:00 - 18:00'),
(8, '07:00 - 13:00');


create table a���lar_tablosu (
a���Id int not null identity(1,1)UNIQUE,
a���Ad nvarchar(30) not null,
a���Soyad nvarchar(30) not null,
ymkhnId int not null,
primary key (a���Id),
FOREIGN KEY (ymkhnId) REFERENCES yemekhane_tablosu (ymkhnId)
);


INSERT INTO a���lar_tablosu (a���Ad, a���Soyad, ymkhnId)
VALUES
('Hasan', 'G�ne�', 1),
('Nazl�', 'Erdem', 2),
('Cem', 'Ta�k�n', 3),
('Derya', 'Kurt', 4),
('Serdar', 'Yaman', 5),
('�rem', 'Sar�', 6),
('Burak', 'Demir', 7),
('Ece', 'Ko�', 8);


create table k�t�phane_tablosu (
ktphnId int not null identity(1,1) UNIQUE,
ktphnAd nvarchar(50) not null,
ktphnTel char(11),
ktphnWebSitesi	nvarchar(50),
ktphn�al��maSaat nvarchar(50) not null,
ktphnGrvlId int not null,
primary key (ktphnId),
FOREIGN KEY (ktphnId) REFERENCES binalar_tablosu (binaId) 
);


INSERT INTO k�t�phane_tablosu (ktphnAd, ktphnTel, ktphnWebSitesi, ktphn�al��maSaat, ktphnGrvlId)
VALUES
('K�t�phane 1', '5555555571', 'www.kutuphane1.com', '09:00 - 18:00', 1),
('K�t�phane 2', '5555555572', 'www.kutuphane2.com', '10:00 - 17:00', 2),
('K�t�phane 3', '5555555573', 'www.kutuphane3.com', '08:00 - 20:00', 3),
('K�t�phane 4', '5555555574', 'www.kutuphane4.com', '11:00 - 16:00', 4),
('K�t�phane 5', '5555555575', 'www.kutuphane5.com', '09:30 - 19:00', 5),
('K�t�phane 6', '5555555576', 'www.kutuphane6.com', '10:30 - 18:30', 6),
('K�t�phane 7', '5555555577', 'www.kutuphane7.com', '08:30 - 17:30', 7),
('K�t�phane 8', '5555555578', 'www.kutuphane8.com', '09:00 - 20:00', 8);


create table k�t�phane_g�revliler_tablosu (
ktpGrvlId int not null identity(1,1) UNIQUE,
ktphnId int not null,
ktphnAd nvarchar(30) not null,
ktphnSoyad nvarchar(30) not null,
primary key (ktpGrvlId),
FOREIGN KEY (ktpGrvlId) REFERENCES k�t�phane_tablosu (ktphnId)
);


INSERT INTO k�t�phane_g�revliler_tablosu (ktphnId, ktphnAd, ktphnSoyad)
VALUES
(1, 'Asl�', 'Ergin'),
(2, 'Eren', 'Ayd�n'),
(3, 'Melis', 'Ko�'),
(4, 'Cem', 'G�rb�z'),
(5, 'Zara', 'Y�lmaz'),
(6, 'Burak', '�elik'),
(7, 'Ceren', '�ahin'),
(8, 'Mert', 'Demir');


create table ��renci_yemekhane_bilgileri_tablosu (
ogrNo int not null UNIQUE,
ymkhnNo int not null,
ymkhnMasaNo int not null,
primary key (ogrNo),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo)
);


INSERT INTO ��renci_yemekhane_bilgileri_tablosu (ogrNo, ymkhnNo, ymkhnMasaNo)
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


create table men�_tablosu (
ymkhnId int not null,
menuId int not null identity(1,1) UNIQUE,
anaYmk1 nvarchar(50) not null,
tatl� nvarchar(50) not null,
i�ecek nvarchar(50) not null,
�orba nvarchar(50) not null,
primary key (menuId),
foreign key (ymkhnId) REFERENCES yemekhane_tablosu(ymkhnId)
);


INSERT INTO men�_tablosu (ymkhnId, anaYmk1, tatl�, i�ecek, �orba)
VALUES
(1,'Tavuklu Pilav', 'Baklava', 'Ayran', 'Mercimek �orbas�'),
(2,'Sebzeli Makarna', 'Kazandibi', 'Limonata', 'Domates �orbas�'),
(3,'Izgara Bal�k', 'Kaday�f', 'Gazoz', 'Tarator �orbas�'),
(4,'Karnabahar K�zartmas�', 'S�tla�', 'Portakal Suyu', 'Yo�urtlu �orba'),
(5,'K�fte', 'Revani', '�algam Suyu', 'Yayla �orbas�'),
(6,'F�r�n Tavuk', 'Trile�e', '�ekerpare', 'Mercimek �orbas�'),
(7,'Zeytinya�l� Yaprak Sarma', 'K�nefe', 'Ayran', 'Ezo Gelin �orbas�'),
(8,'Kumpir', 'Cevizli Baklava', 'Meyve Suyu', 'Tavuklu Nohut �orbas�');

create table kitap_tablosu (
kitapId nvarchar(10) not null,
kitapAd nvarchar(50) not  null,
kitapYazar� nvarchar(50) not null,
kitapBas�mTarihi date not null,
kitapSayfas� char(10) not null,
kitapT�r� nvarchar(40) not null,
primary key (kitapId) 
);


INSERT INTO kitap_tablosu (kitapId, kitapAd, kitapYazar�, kitapBas�mTarihi, kitapSayfas�, kitapT�r�)
VALUES
('K001', 'To Kill a Mockingbird', 'Harper Lee', '19600502', '281', 'Gerilim'),
('K002', '1984', 'George Orwell', '19491217', '328', 'Distopya'),
('K003', 'Crime and Punishment', 'Fyodor Dostoevsky', '18660307', '671', 'Psikoloji'),
('K004', 'Saatleri Ayarlama Enstit�s�', 'Ahmet Hamdi Tanp�nar', '19610929', '423', 'Otobiyografik'),
('K005', 'The Great Gatsby', 'F. Scott Fitzgerald', '19251111', '180', 'Trajedi'),
('K006', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', '19670519', '417', 'Epik Kurgu'),
('K007', 'D�n���m', 'Franz Kafka', '19150813', '63', 'K�sa Hikaye'),
('K008', 'Prens', 'Niccolo Machiavelli', '15321002', '176', 'Felsefi'),
('K009', '�stanbul Hat�ras�', 'Ahmet �mit', '19960922', '432', 'Polisiye'),
('K010', 'The Hobbit', 'J.R.R. Tolkien', '19370111', '310', 'Fantastik');



create table �d�n�_kitaplar_tablosu (
ogrNo int not null,
ktphnId int not null,
kitapId nvarchar(10) not null,
al�nanTarih date not null,
primary key (ogrNo,ktphnId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo),
FOREIGN KEY (ktphnId) REFERENCES k�t�phane_tablosu (ktphnId),
FOREIGN KEY (kitapId) REFERENCES kitap_tablosu (kitapId)
);


INSERT INTO �d�n�_kitaplar_tablosu (ogrNo, ktphnId, kitapId, al�nanTarih)
VALUES
(10000, 1, 'K001', '20230115'),
(10001, 2, 'K002', '20230201'),
(10002, 3, 'K003', '20230215'),
(10003, 4, 'K004', '20230301'),
(10004, 5, 'K005', '20230315'),
(10005, 6, 'K006', '20230401'),
(10005, 7, 'K007', '20230415');


create table staj_firmalar�_tablosu (
firmaId int not null identity(1,1) UNIQUE,
firmaAd nvarchar(50) not null,
firmaTel char(11) not null,
firmaEposta nvarchar(50) not null,
firmaT�r� nvarchar(50),
firmaAdres nvarchar(50),
primary key (firmaId),
);


INSERT INTO staj_firmalar�_tablosu (firmaAd, firmaTel, firmaEposta, firmaT�r�, firmaAdres)
VALUES
('Florence Nightingale Hastanesi', '2160001', 'info@florence.com', 'Sa�l�k', '�stanbul'),
('Memorial Sa�l�k Grubu', '2160002', 'info@memorial.com', 'Sa�l�k', '�stanbul'),
('Ac�badem Sa�l�k Grubu', '2160003', 'info@acibadem.com', 'Sa�l�k', '�stanbul'),
('BilgeAdam Yaz�l�m', '2160004', 'info@bilgeadam.com', 'Yaz�l�m', '�stanbul'),
('T�rk Telekom Yaz�l�m', '3120005', 'info@turktelekom.com', 'Yaz�l�m', 'Ankara');


create table �grenci_staj_tablosu (
ogrNo int not null,
stajId int not null identity(1,1) UNIQUE,
firmaId int not null,
staj_ba�lang��_tarihi date not null,
staj_biti�_tarihi date not null,
primary key (stajId),
FOREIGN KEY (ogrNo) REFERENCES ogrenci_tablo (ogrNo) ,
FOREIGN KEY (firmaId) REFERENCES staj_firmalar�_tablosu (firmaId)
);




INSERT INTO �grenci_staj_tablosu (ogrNo, firmaId, staj_ba�lang��_tarihi, staj_biti�_tarihi)
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
akademikY�l int not null,
donemAd varchar(20) not null,
dersKay�tTarihi date not null,
dersEkle��karTarih date not null,
donemBaslangic date not null,
vizeTarih date not null,
finalTarih date not null,
donemBitis date not null,
primary key(takvimId),
FOREIGN KEY (bolumId) REFERENCES b�l�m_tablosu (bolumId)
);


INSERT INTO akademik_takvim_tablosu (akademikY�l, bolumId, donemAd, dersKay�tTarihi, dersEkle��karTarih, donemBaslangic, vizeTarih, finalTarih, donemBitis)
VALUES
(2023,1,'2023 G�z D�nemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,1,'2023 Bahar D�nemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,2,'2023 G�z D�nemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,2,'2023 Bahar D�nemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,3,'2023 G�z D�nemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,3,'2023 Bahar D�nemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502'),
(2023,4,'2023 G�z D�nemi', '20230915', '20231001', '20231003', '20231114', '20231215', '20231230'),
(2023,4,'2023 Bahar D�nemi', '20240108', '20240203', '20240205', '20240316', '20240417', '20240502');