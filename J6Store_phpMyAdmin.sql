-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: h1.host.filess.io:3306
-- Thời gian đã tạo: Th8 08, 2022 lúc 05:50 PM
-- Phiên bản máy phục vụ: 5.7.38
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `j6store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `Fullname` varchar(50) COLLATE utf8_bin NOT NULL,
  `Email` varchar(50) COLLATE utf8_bin NOT NULL,
  `Photo` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'user.png',
  `Token` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`Username`, `Password`, `Fullname`, `Email`, `Photo`, `Token`) VALUES
('admin', '123', 'Nguyễn Hoàng Duy', 'duyplusdz@gmail.com', 'user.png', 'token'),
('staff', '123', 'Lê Thị Đậu', 'duyplus1999@gmail.com', 'user.png', 'token'),
('user', '123', 'Nguyễn Văn Tèo', 'duyplus0909@gmail.com', 'user.png', 'token'),
('anatr', 'anatr', 'Ana Trujillo', 'anatr@gmail.com', 'user.png', 'token'),
('anton', 'anton', 'Antonio Moreno', 'anton@gmail.com', 'user.png', 'token'),
('arout', 'arout', 'Thomas Hardy', 'arout@gmail.com', 'user.png', 'token'),
('bergs', 'bergs', 'Christina Berglund', 'bergs@gmail.com', 'user.png', 'token'),
('blaus', 'blaus', 'Hanna Moos', 'blaus@gmail.com', 'user.png', 'token'),
('blonp', 'blonp', 'Frédérique Citeaux', 'blonp@gmail.com', 'user.png', 'token'),
('bolid', 'bolid', 'Martín Sommer', 'bolid@gmail.com', 'user.png', 'token'),
('bonap', 'bonap', 'Laurence Lebihan', 'bonap@gmail.com', 'user.png', 'token'),
('bottm', 'bottm', 'Elizabeth Lincoln', 'bottm@gmail.com', 'user.png', 'token'),
('bsbev', 'bsbev', 'Victoria Ashworth', 'bsbev@gmail.com', 'user.png', 'token'),
('cactu', 'cactu', 'Patricio Simpson', 'cactu@gmail.com', 'user.png', 'token'),
('centc', 'centc', 'Francisco Chang', 'centc@gmail.com', 'user.png', 'token'),
('chops', 'chops', 'Yang Wang', 'chops@gmail.com', 'user.png', 'token'),
('commi', 'commi', 'Pedro Afonso', 'commi@gmail.com', 'user.png', 'token'),
('consh', 'consh', 'Elizabeth Brown', 'consh@gmail.com', 'user.png', 'token'),
('dracd', 'dracd', 'Sven Ottlieb', 'dracd@gmail.com', 'user.png', 'token'),
('dumon', 'dumon', 'Janine Labrune', 'dumon@gmail.com', 'user.png', 'token'),
('eastc', 'eastc', 'Ann Devon', 'eastc@gmail.com', 'user.png', 'token'),
('ernsh', 'ernsh', 'Roland Mendel', 'ernsh@gmail.com', 'user.png', 'token'),
('famia', 'famia', 'Aria Cruz', 'famia@gmail.com', 'user.png', 'token'),
('fissa', 'fissa', 'Diego Roel', 'fissa@gmail.com', 'user.png', 'token'),
('folig', 'folig', 'Martine Rancé', 'folig@gmail.com', 'user.png', 'token');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authorities`
--

CREATE TABLE `authorities` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `RoleId` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `authorities`
--

INSERT INTO `authorities` (`Id`, `Username`, `RoleId`) VALUES
(1, 'admin', 'DIRE'),
(2, 'admin', 'STAF'),
(3, 'admin', 'CUST'),
(4, 'staff', 'STAF'),
(5, 'staff', 'CUST'),
(6, 'user', 'CUST');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Id` char(4) COLLATE utf8_bin NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
('1000', 'Đồng hồ đeo tay'),
('1001', 'Máy tính xách tay'),
('1002', 'Máy ảnh'),
('1003', 'Điện thoại'),
('1004', 'Nước hoa'),
('1005', 'Nữ trang'),
('1006', 'Nón thời trang'),
('1007', 'Túi xách du lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Id` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Price` double NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`Id`, `OrderId`, `ProductId`, `Price`, `Quantity`) VALUES
INSERT OrderDetails (id, orderId, productId, price, quality) VALUES 
(1, 10249, 1051, 42.4, 40),
(2, 10250, 1041, 7.7, 10),
(3, 10250, 1051, 42.4, 35),
(4, 10250, 1065, 16.8, 15),
(5, 10251, 1022, 16.8, 6),
(6, 10251, 1057, 15.6, 15),
(7, 10251, 1065, 16.8, 20),
(8, 10252, 1020, 64.8, 40),
(9, 10252, 1033, 2, 25),
(10, 10252, 1060, 27.2, 40),
(11, 10253, 1031, 10, 20),
(12, 10253, 1039, 14.4, 42),
(13, 10253, 1049, 16, 40),
(14, 10254, 1024, 3.6, 15),
(15, 10254, 1055, 19.2, 21),
(16, 10254, 1074, 8, 21),
(17, 10255, 1002, 15.2, 20),
(18, 10255, 1016, 13.9, 35),
(19, 10255, 1036, 15.2, 25),
(20, 10255, 1059, 44, 30),
(21, 10256, 1053, 26.2, 15),
(22, 10256, 1077, 10.4, 12),
(23, 10257, 1027, 35.1, 25),
(24, 10257, 1039, 14.4, 6),
(25, 10257, 1077, 10.4, 15),
(26, 10258, 1002, 15.2, 50),
(27, 10258, 1032, 25.6, 6),
(28, 10259, 1021, 8, 10),
(29, 10259, 1037, 20.8, 1),
(30, 10260, 1041, 7.7, 16),
(31, 10260, 1057, 15.6, 50),
(32, 10260, 1062, 39.4, 15),
(33, 10260, 1070, 12, 21),
(34, 10261, 1021, 8, 20),
(35, 10261, 1035, 14.4, 20),
(36, 10262, 1007, 24, 15),
(37, 10262, 1056, 30.4, 2),
(38, 10263, 1016, 13.9, 60),
(39, 10263, 1024, 3.6, 28),
(40, 10263, 1030, 20.7, 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` bigint(20) NOT NULL,
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Address` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `Username`, `CreateDate`, `Address`) VALUES
(10249,'TOMSP','1996-07-05-00-00-00','Luisenstr. 48'),
(10250,'HANAR','1996-07-08-00-00-00','Rua do Paço, 67'),
(10251,'VICTE','1996-07-08-00-00-00','2, rue du Commerce'),
(10252,'SUPRD','1996-07-09-00-00-00','Boulevard Tirou, 255'),
(10253,'HANAR','1996-07-10-00-00-00','Rua do Paço, 67'),
(10254,'CHOPS','1996-07-11-00-00-00','Hauptstr. 31'),
(10255,'RICSU','1996-07-12-00-00-00','Starenweg 5'),
(10256,'WELLI','1996-07-15-00-00-00','Rua do Mercado, 12'),
(10257,'HILAA','1996-07-16-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10258,'ERNSH','1996-07-17-00-00-00','Kirchgasse 6'),
(10259,'CENTC','1996-07-18-00-00-00','Sierras de Granada 9993'),
(10260,'OTTIK','1996-07-19-00-00-00','Mehrheimerstr. 369'),
(10261,'QUEDE','1996-07-19-00-00-00','Rua da Panificadora, 12'),
(10262,'RATTC','1996-07-22-00-00-00','2817 Milton Dr.'),
(10263,'ERNSH','1996-07-23-00-00-00','Kirchgasse 6'),
(10264,'FOLKO','1996-07-24-00-00-00','Åkergatan 24'),
(10265,'BLONP','1996-07-25-00-00-00','24, place Kléber'),
(10266,'WARTH','1996-07-26-00-00-00','Torikatu 38'),
(10267,'FRANK','1996-07-29-00-00-00','Berliner Platz 43'),
(10268,'GROSR','1996-07-30-00-00-00','5ª Ave. Los Palos Grandes'),
(10269,'WHITC','1996-07-31-00-00-00','1029 - 12th Ave. S.'),
(10270,'WARTH','1996-08-01-00-00-00','Torikatu 38'),
(10271,'SPLIR','1996-08-01-00-00-00','P.O. Box 555'),
(10272,'RATTC','1996-08-02-00-00-00','2817 Milton Dr.'),
(10273,'QUICK','1996-08-05-00-00-00','Taucherstraße 10'),
(10274,'VINET','1996-08-06-00-00-00','59 rue de l''Abbaye'),
(10275,'MAGAA','1996-08-07-00-00-00','Via Ludovico il Moro 22'),
(10276,'TORTU','1996-08-08-00-00-00','Avda. Azteca 123'),
(10277,'MORGK','1996-08-09-00-00-00','Heerstr. 22'),
(10278,'BERGS','1996-08-12-00-00-00','Berguvsvägen  8'),
(10279,'LEHMS','1996-08-13-00-00-00','Magazinweg 7'),
(10280,'BERGS','1996-08-14-00-00-00','Berguvsvägen  8'),
(10281,'ROMEY','1996-08-14-00-00-00','Gran Vía, 1'),
(10282,'ROMEY','1996-08-15-00-00-00','Gran Vía, 1'),
(10283,'LILAS','1996-08-16-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10284,'LEHMS','1996-08-19-00-00-00','Magazinweg 7'),
(10285,'QUICK','1996-08-20-00-00-00','Taucherstraße 10'),
(10286,'QUICK','1996-08-21-00-00-00','Taucherstraße 10'),
(10287,'RICAR','1996-08-22-00-00-00','Av. Copacabana, 267'),
(10288,'REGGC','1996-08-23-00-00-00','Strada Provinciale 124'),
(10289,'BSBEV','1996-08-26-00-00-00','Fauntleroy Circus'),
(10290,'COMMI','1996-08-27-00-00-00','Av. dos Lusíadas, 23'),
(10291,'QUEDE','1996-08-27-00-00-00','Rua da Panificadora, 12'),
(10292,'TRADH','1996-08-28-00-00-00','Av. Inês de Castro, 414'),
(10293,'TORTU','1996-08-29-00-00-00','Avda. Azteca 123'),
(10294,'RATTC','1996-08-30-00-00-00','2817 Milton Dr.'),
(10295,'VINET','1996-09-02-00-00-00','59 rue de l''Abbaye'),
(10296,'LILAS','1996-09-03-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10297,'BLONP','1996-09-04-00-00-00','24, place Kléber'),
(10298,'HUNGO','1996-09-05-00-00-00','8 Johnstown Road'),
(10299,'RICAR','1996-09-06-00-00-00','Av. Copacabana, 267'),
(10300,'MAGAA','1996-09-09-00-00-00','Via Ludovico il Moro 22'),
(10301,'WANDK','1996-09-09-00-00-00','Adenauerallee 900'),
(10302,'SUPRD','1996-09-10-00-00-00','Boulevard Tirou, 255'),
(10303,'GODOS','1996-09-11-00-00-00','C/ Romero, 33'),
(10304,'TORTU','1996-09-12-00-00-00','Avda. Azteca 123'),
(10305,'OLDWO','1996-09-13-00-00-00','2743 Bering St.'),
(10306,'ROMEY','1996-09-16-00-00-00','Gran Vía, 1'),
(10307,'LONEP','1996-09-17-00-00-00','89 Chiaroscuro Rd.'),
(10308,'ANATR','1996-09-18-00-00-00','Avda. de la Constitución 2222'),
(10309,'HUNGO','1996-09-19-00-00-00','8 Johnstown Road'),
(10310,'THEBI','1996-09-20-00-00-00','89 Jefferson Way Suite 2'),
(10311,'DUMON','1996-09-20-00-00-00','67, rue des Cinquante Otages'),
(10312,'WANDK','1996-09-23-00-00-00','Adenauerallee 900'),
(10313,'QUICK','1996-09-24-00-00-00','Taucherstraße 10'),
(10314,'RATTC','1996-09-25-00-00-00','2817 Milton Dr.'),
(10315,'ISLAT','1996-09-26-00-00-00','Garden House Crowther Way'),
(10316,'RATTC','1996-09-27-00-00-00','2817 Milton Dr.'),
(10317,'LONEP','1996-09-30-00-00-00','89 Chiaroscuro Rd.'),
(10318,'ISLAT','1996-10-01-00-00-00','Garden House Crowther Way'),
(10319,'TORTU','1996-10-02-00-00-00','Avda. Azteca 123'),
(10320,'WARTH','1996-10-03-00-00-00','Torikatu 38'),
(10321,'ISLAT','1996-10-03-00-00-00','Garden House Crowther Way'),
(10322,'PERIC','1996-10-04-00-00-00','Calle Dr. Jorge Cash 321'),
(10323,'KOENE','1996-10-07-00-00-00','Maubelstr. 90'),
(10324,'SAVEA','1996-10-08-00-00-00','187 Suffolk Ln.'),
(10325,'KOENE','1996-10-09-00-00-00','Maubelstr. 90'),
(10326,'BOLID','1996-10-10-00-00-00','C/ Araquil, 67'),
(10327,'FOLKO','1996-10-11-00-00-00','Åkergatan 24'),
(10328,'FURIB','1996-10-14-00-00-00','Jardim das rosas n. 32'),
(10329,'SPLIR','1996-10-15-00-00-00','P.O. Box 555'),
(10330,'LILAS','1996-10-16-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10331,'BONAP','1996-10-16-00-00-00','12, rue des Bouchers'),
(10332,'MEREP','1996-10-17-00-00-00','43 rue St. Laurent'),
(10333,'WARTH','1996-10-18-00-00-00','Torikatu 38'),
(10334,'VICTE','1996-10-21-00-00-00','2, rue du Commerce'),
(10335,'HUNGO','1996-10-22-00-00-00','8 Johnstown Road'),
(10336,'PRINI','1996-10-23-00-00-00','Estrada da saúde n. 58'),
(10337,'FRANK','1996-10-24-00-00-00','Berliner Platz 43'),
(10338,'OLDWO','1996-10-25-00-00-00','2743 Bering St.'),
(10339,'MEREP','1996-10-28-00-00-00','43 rue St. Laurent'),
(10340,'BONAP','1996-10-29-00-00-00','12, rue des Bouchers'),
(10341,'SIMOB','1996-10-29-00-00-00','Vinbæltet 34'),
(10342,'FRANK','1996-10-30-00-00-00','Berliner Platz 43'),
(10343,'LEHMS','1996-10-31-00-00-00','Magazinweg 7'),
(10344,'WHITC','1996-11-01-00-00-00','1029 - 12th Ave. S.'),
(10345,'QUICK','1996-11-04-00-00-00','Taucherstraße 10'),
(10346,'RATTC','1996-11-05-00-00-00','2817 Milton Dr.'),
(10347,'FAMIA','1996-11-06-00-00-00','Rua Orós, 92'),
(10348,'WANDK','1996-11-07-00-00-00','Adenauerallee 900');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10349,'SPLIR','1996-11-08-00-00-00','P.O. Box 555'),
(10350,'LAMAI','1996-11-11-00-00-00','1 rue Alsace-Lorraine'),
(10351,'ERNSH','1996-11-11-00-00-00','Kirchgasse 6'),
(10352,'FURIB','1996-11-12-00-00-00','Jardim das rosas n. 32'),
(10353,'PICCO','1996-11-13-00-00-00','Geislweg 14'),
(10354,'PERIC','1996-11-14-00-00-00','Calle Dr. Jorge Cash 321'),
(10355,'AROUT','1996-11-15-00-00-00','Brook Farm Stratford St. Mary'),
(10356,'WANDK','1996-11-18-00-00-00','Adenauerallee 900'),
(10357,'LILAS','1996-11-19-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10358,'LAMAI','1996-11-20-00-00-00','1 rue Alsace-Lorraine'),
(10359,'SEVES','1996-11-21-00-00-00','90 Wadhurst Rd.'),
(10360,'BLONP','1996-11-22-00-00-00','24, place Kléber'),
(10361,'QUICK','1996-11-22-00-00-00','Taucherstraße 10'),
(10362,'BONAP','1996-11-25-00-00-00','12, rue des Bouchers'),
(10363,'DRACD','1996-11-26-00-00-00','Walserweg 21'),
(10364,'EASTC','1996-11-26-00-00-00','35 King George'),
(10365,'ANTON','1996-11-27-00-00-00','Mataderos  2312'),
(10366,'GALED','1996-11-28-00-00-00','Rambla de Cataluña, 23'),
(10367,'VAFFE','1996-11-28-00-00-00','Smagsloget 45'),
(10368,'ERNSH','1996-11-29-00-00-00','Kirchgasse 6'),
(10369,'SPLIR','1996-12-02-00-00-00','P.O. Box 555'),
(10370,'CHOPS','1996-12-03-00-00-00','Hauptstr. 31'),
(10371,'LAMAI','1996-12-03-00-00-00','1 rue Alsace-Lorraine'),
(10372,'QUEEN','1996-12-04-00-00-00','Alameda dos Canàrios, 891'),
(10373,'HUNGO','1996-12-05-00-00-00','8 Johnstown Road'),
(10374,'WOLZA','1996-12-05-00-00-00','ul. Filtrowa 68'),
(10375,'HUNGC','1996-12-06-00-00-00','City Center Plaza 516 Main St.'),
(10376,'MEREP','1996-12-09-00-00-00','43 rue St. Laurent'),
(10377,'SEVES','1996-12-09-00-00-00','90 Wadhurst Rd.'),
(10378,'FOLKO','1996-12-10-00-00-00','Åkergatan 24'),
(10379,'QUEDE','1996-12-11-00-00-00','Rua da Panificadora, 12'),
(10380,'HUNGO','1996-12-12-00-00-00','8 Johnstown Road'),
(10381,'LILAS','1996-12-12-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10382,'ERNSH','1996-12-13-00-00-00','Kirchgasse 6'),
(10383,'AROUT','1996-12-16-00-00-00','Brook Farm Stratford St. Mary'),
(10384,'BERGS','1996-12-16-00-00-00','Berguvsvägen  8'),
(10385,'SPLIR','1996-12-17-00-00-00','P.O. Box 555'),
(10386,'FAMIA','1996-12-18-00-00-00','Rua Orós, 92'),
(10387,'SANTG','1996-12-18-00-00-00','Erling Skakkes gate 78'),
(10388,'SEVES','1996-12-19-00-00-00','90 Wadhurst Rd.'),
(10389,'BOTTM','1996-12-20-00-00-00','23 Tsawassen Blvd.'),
(10390,'ERNSH','1996-12-23-00-00-00','Kirchgasse 6'),
(10391,'DRACD','1996-12-23-00-00-00','Walserweg 21'),
(10392,'PICCO','1996-12-24-00-00-00','Geislweg 14'),
(10393,'SAVEA','1996-12-25-00-00-00','187 Suffolk Ln.'),
(10394,'HUNGC','1996-12-25-00-00-00','City Center Plaza 516 Main St.'),
(10395,'HILAA','1996-12-26-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10396,'FRANK','1996-12-27-00-00-00','Berliner Platz 43'),
(10397,'PRINI','1996-12-27-00-00-00','Estrada da saúde n. 58'),
(10398,'SAVEA','1996-12-30-00-00-00','187 Suffolk Ln.'),
(10399,'VAFFE','1996-12-31-00-00-00','Smagsloget 45'),
(10400,'EASTC','1997-01-01-00-00-00','35 King George'),
(10401,'RATTC','1997-01-01-00-00-00','2817 Milton Dr.'),
(10402,'ERNSH','1997-01-02-00-00-00','Kirchgasse 6'),
(10403,'ERNSH','1997-01-03-00-00-00','Kirchgasse 6'),
(10404,'MAGAA','1997-01-03-00-00-00','Via Ludovico il Moro 22'),
(10405,'LINOD','1997-01-06-00-00-00','Ave. 5 de Mayo Porlamar'),
(10406,'QUEEN','1997-01-07-00-00-00','Alameda dos Canàrios, 891'),
(10407,'OTTIK','1997-01-07-00-00-00','Mehrheimerstr. 369'),
(10408,'FOLIG','1997-01-08-00-00-00','184, chaussée de Tournai'),
(10409,'OCEAN','1997-01-09-00-00-00','Ing. Gustavo Moncada 8585 Piso 20-A'),
(10410,'BOTTM','1997-01-10-00-00-00','23 Tsawassen Blvd.'),
(10411,'BOTTM','1997-01-10-00-00-00','23 Tsawassen Blvd.'),
(10412,'WARTH','1997-01-13-00-00-00','Torikatu 38'),
(10413,'LAMAI','1997-01-14-00-00-00','1 rue Alsace-Lorraine'),
(10414,'FAMIA','1997-01-14-00-00-00','Rua Orós, 92'),
(10415,'HUNGC','1997-01-15-00-00-00','City Center Plaza 516 Main St.'),
(10416,'WARTH','1997-01-16-00-00-00','Torikatu 38'),
(10417,'SIMOB','1997-01-16-00-00-00','Vinbæltet 34'),
(10418,'QUICK','1997-01-17-00-00-00','Taucherstraße 10'),
(10419,'RICSU','1997-01-20-00-00-00','Starenweg 5'),
(10420,'WELLI','1997-01-21-00-00-00','Rua do Mercado, 12'),
(10421,'QUEDE','1997-01-21-00-00-00','Rua da Panificadora, 12'),
(10422,'FRANS','1997-01-22-00-00-00','Via Monte Bianco 34'),
(10423,'GOURL','1997-01-23-00-00-00','Av. Brasil, 442'),
(10424,'MEREP','1997-01-23-00-00-00','43 rue St. Laurent'),
(10425,'LAMAI','1997-01-24-00-00-00','1 rue Alsace-Lorraine'),
(10426,'GALED','1997-01-27-00-00-00','Rambla de Cataluña, 23'),
(10427,'PICCO','1997-01-27-00-00-00','Geislweg 14'),
(10428,'REGGC','1997-01-28-00-00-00','Strada Provinciale 124'),
(10429,'HUNGO','1997-01-29-00-00-00','8 Johnstown Road'),
(10430,'ERNSH','1997-01-30-00-00-00','Kirchgasse 6'),
(10431,'BOTTM','1997-01-30-00-00-00','23 Tsawassen Blvd.'),
(10432,'SPLIR','1997-01-31-00-00-00','P.O. Box 555'),
(10433,'PRINI','1997-02-03-00-00-00','Estrada da saúde n. 58'),
(10434,'FOLKO','1997-02-03-00-00-00','Åkergatan 24'),
(10435,'CONSH','1997-02-04-00-00-00','Berkeley Gardens 12  Brewery'),
(10436,'BLONP','1997-02-05-00-00-00','24, place Kléber'),
(10437,'WARTH','1997-02-05-00-00-00','Torikatu 38'),
(10438,'TOMSP','1997-02-06-00-00-00','Luisenstr. 48'),
(10439,'MEREP','1997-02-07-00-00-00','43 rue St. Laurent'),
(10440,'SAVEA','1997-02-10-00-00-00','187 Suffolk Ln.'),
(10441,'OLDWO','1997-02-10-00-00-00','2743 Bering St.'),
(10442,'ERNSH','1997-02-11-00-00-00','Kirchgasse 6'),
(10443,'REGGC','1997-02-12-00-00-00','Strada Provinciale 124'),
(10444,'BERGS','1997-02-12-00-00-00','Berguvsvägen  8'),
(10445,'BERGS','1997-02-13-00-00-00','Berguvsvägen  8'),
(10446,'TOMSP','1997-02-14-00-00-00','Luisenstr. 48'),
(10447,'RICAR','1997-02-14-00-00-00','Av. Copacabana, 267'),
(10448,'RANCH','1997-02-17-00-00-00','Av. del Libertador 900');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10449,'BLONP','1997-02-18-00-00-00','24, place Kléber'),
(10450,'VICTE','1997-02-19-00-00-00','2, rue du Commerce'),
(10451,'QUICK','1997-02-19-00-00-00','Taucherstraße 10'),
(10452,'SAVEA','1997-02-20-00-00-00','187 Suffolk Ln.'),
(10453,'AROUT','1997-02-21-00-00-00','Brook Farm Stratford St. Mary'),
(10454,'LAMAI','1997-02-21-00-00-00','1 rue Alsace-Lorraine'),
(10455,'WARTH','1997-02-24-00-00-00','Torikatu 38'),
(10456,'KOENE','1997-02-25-00-00-00','Maubelstr. 90'),
(10457,'KOENE','1997-02-25-00-00-00','Maubelstr. 90'),
(10458,'SUPRD','1997-02-26-00-00-00','Boulevard Tirou, 255'),
(10459,'VICTE','1997-02-27-00-00-00','2, rue du Commerce'),
(10460,'FOLKO','1997-02-28-00-00-00','Åkergatan 24'),
(10461,'LILAS','1997-02-28-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10462,'CONSH','1997-03-03-00-00-00','Berkeley Gardens 12  Brewery'),
(10463,'SUPRD','1997-03-04-00-00-00','Boulevard Tirou, 255'),
(10464,'FURIB','1997-03-04-00-00-00','Jardim das rosas n. 32'),
(10465,'VAFFE','1997-03-05-00-00-00','Smagsloget 45'),
(10466,'COMMI','1997-03-06-00-00-00','Av. dos Lusíadas, 23'),
(10467,'MAGAA','1997-03-06-00-00-00','Via Ludovico il Moro 22'),
(10468,'KOENE','1997-03-07-00-00-00','Maubelstr. 90'),
(10469,'WHITC','1997-03-10-00-00-00','1029 - 12th Ave. S.'),
(10470,'BONAP','1997-03-11-00-00-00','12, rue des Bouchers'),
(10471,'BSBEV','1997-03-11-00-00-00','Fauntleroy Circus'),
(10472,'SEVES','1997-03-12-00-00-00','90 Wadhurst Rd.'),
(10473,'ISLAT','1997-03-13-00-00-00','Garden House Crowther Way'),
(10474,'PERIC','1997-03-13-00-00-00','Calle Dr. Jorge Cash 321'),
(10475,'SUPRD','1997-03-14-00-00-00','Boulevard Tirou, 255'),
(10476,'HILAA','1997-03-17-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10477,'PRINI','1997-03-17-00-00-00','Estrada da saúde n. 58'),
(10478,'VICTE','1997-03-18-00-00-00','2, rue du Commerce'),
(10479,'RATTC','1997-03-19-00-00-00','2817 Milton Dr.'),
(10480,'FOLIG','1997-03-20-00-00-00','184, chaussée de Tournai'),
(10481,'RICAR','1997-03-20-00-00-00','Av. Copacabana, 267'),
(10482,'LAZYK','1997-03-21-00-00-00','12 Orchestra Terrace'),
(10483,'WHITC','1997-03-24-00-00-00','1029 - 12th Ave. S.'),
(10484,'BSBEV','1997-03-24-00-00-00','Fauntleroy Circus'),
(10485,'LINOD','1997-03-25-00-00-00','Ave. 5 de Mayo Porlamar'),
(10486,'HILAA','1997-03-26-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10487,'QUEEN','1997-03-26-00-00-00','Alameda dos Canàrios, 891'),
(10488,'FRANK','1997-03-27-00-00-00','Berliner Platz 43'),
(10489,'PICCO','1997-03-28-00-00-00','Geislweg 14'),
(10490,'HILAA','1997-03-31-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10491,'FURIB','1997-03-31-00-00-00','Jardim das rosas n. 32'),
(10492,'BOTTM','1997-04-01-00-00-00','23 Tsawassen Blvd.'),
(10493,'LAMAI','1997-04-02-00-00-00','1 rue Alsace-Lorraine'),
(10494,'COMMI','1997-04-02-00-00-00','Av. dos Lusíadas, 23'),
(10495,'LAUGB','1997-04-03-00-00-00','2319 Elm St.'),
(10496,'TRADH','1997-04-04-00-00-00','Av. Inês de Castro, 414'),
(10497,'LEHMS','1997-04-04-00-00-00','Magazinweg 7'),
(10498,'HILAA','1997-04-07-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10499,'LILAS','1997-04-08-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10500,'LAMAI','1997-04-09-00-00-00','1 rue Alsace-Lorraine'),
(10501,'BLAUS','1997-04-09-00-00-00','Forsterstr. 57'),
(10502,'PERIC','1997-04-10-00-00-00','Calle Dr. Jorge Cash 321'),
(10503,'HUNGO','1997-04-11-00-00-00','8 Johnstown Road'),
(10504,'WHITC','1997-04-11-00-00-00','1029 - 12th Ave. S.'),
(10505,'MEREP','1997-04-14-00-00-00','43 rue St. Laurent'),
(10506,'KOENE','1997-04-15-00-00-00','Maubelstr. 90'),
(10507,'ANTON','1997-04-15-00-00-00','Mataderos  2312'),
(10508,'OTTIK','1997-04-16-00-00-00','Mehrheimerstr. 369'),
(10509,'BLAUS','1997-04-17-00-00-00','Forsterstr. 57'),
(10510,'SAVEA','1997-04-18-00-00-00','187 Suffolk Ln.'),
(10511,'BONAP','1997-04-18-00-00-00','12, rue des Bouchers'),
(10512,'FAMIA','1997-04-21-00-00-00','Rua Orós, 92'),
(10513,'WANDK','1997-04-22-00-00-00','Adenauerallee 900'),
(10514,'ERNSH','1997-04-22-00-00-00','Kirchgasse 6'),
(10515,'QUICK','1997-04-23-00-00-00','Taucherstraße 10'),
(10516,'HUNGO','1997-04-24-00-00-00','8 Johnstown Road'),
(10517,'NORTS','1997-04-24-00-00-00','South House 300 Queensbridge'),
(10518,'TORTU','1997-04-25-00-00-00','Avda. Azteca 123'),
(10519,'CHOPS','1997-04-28-00-00-00','Hauptstr. 31'),
(10520,'SANTG','1997-04-29-00-00-00','Erling Skakkes gate 78'),
(10521,'CACTU','1997-04-29-00-00-00','Cerrito 333'),
(10522,'LEHMS','1997-04-30-00-00-00','Magazinweg 7'),
(10523,'SEVES','1997-05-01-00-00-00','90 Wadhurst Rd.'),
(10524,'BERGS','1997-05-01-00-00-00','Berguvsvägen  8'),
(10525,'BONAP','1997-05-02-00-00-00','12, rue des Bouchers'),
(10526,'WARTH','1997-05-05-00-00-00','Torikatu 38'),
(10527,'QUICK','1997-05-05-00-00-00','Taucherstraße 10'),
(10528,'GREAL','1997-05-06-00-00-00','2732 Baker Blvd.'),
(10529,'MAISD','1997-05-07-00-00-00','Rue Joseph-Bens 532'),
(10530,'PICCO','1997-05-08-00-00-00','Geislweg 14'),
(10531,'OCEAN','1997-05-08-00-00-00','Ing. Gustavo Moncada 8585 Piso 20-A'),
(10532,'EASTC','1997-05-09-00-00-00','35 King George'),
(10533,'FOLKO','1997-05-12-00-00-00','Åkergatan 24'),
(10534,'LEHMS','1997-05-12-00-00-00','Magazinweg 7'),
(10535,'ANTON','1997-05-13-00-00-00','Mataderos  2312'),
(10536,'LEHMS','1997-05-14-00-00-00','Magazinweg 7'),
(10537,'RICSU','1997-05-14-00-00-00','Starenweg 5'),
(10538,'BSBEV','1997-05-15-00-00-00','Fauntleroy Circus'),
(10539,'BSBEV','1997-05-16-00-00-00','Fauntleroy Circus'),
(10540,'QUICK','1997-05-19-00-00-00','Taucherstraße 10'),
(10541,'HANAR','1997-05-19-00-00-00','Rua do Paço, 67'),
(10542,'KOENE','1997-05-20-00-00-00','Maubelstr. 90'),
(10543,'LILAS','1997-05-21-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10544,'LONEP','1997-05-21-00-00-00','89 Chiaroscuro Rd.'),
(10545,'LAZYK','1997-05-22-00-00-00','12 Orchestra Terrace'),
(10546,'VICTE','1997-05-23-00-00-00','2, rue du Commerce'),
(10547,'SEVES','1997-05-23-00-00-00','90 Wadhurst Rd.'),
(10548,'TOMSP','1997-05-26-00-00-00','Luisenstr. 48');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10549,'QUICK','1997-05-27-00-00-00','Taucherstraße 10'),
(10550,'GODOS','1997-05-28-00-00-00','C/ Romero, 33'),
(10551,'FURIB','1997-05-28-00-00-00','Jardim das rosas n. 32'),
(10552,'HILAA','1997-05-29-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10553,'WARTH','1997-05-30-00-00-00','Torikatu 38'),
(10554,'OTTIK','1997-05-30-00-00-00','Mehrheimerstr. 369'),
(10555,'SAVEA','1997-06-02-00-00-00','187 Suffolk Ln.'),
(10556,'SIMOB','1997-06-03-00-00-00','Vinbæltet 34'),
(10557,'LEHMS','1997-06-03-00-00-00','Magazinweg 7'),
(10558,'AROUT','1997-06-04-00-00-00','Brook Farm Stratford St. Mary'),
(10559,'BLONP','1997-06-05-00-00-00','24, place Kléber'),
(10560,'FRANK','1997-06-06-00-00-00','Berliner Platz 43'),
(10561,'FOLKO','1997-06-06-00-00-00','Åkergatan 24'),
(10562,'REGGC','1997-06-09-00-00-00','Strada Provinciale 124'),
(10563,'RICAR','1997-06-10-00-00-00','Av. Copacabana, 267'),
(10564,'RATTC','1997-06-10-00-00-00','2817 Milton Dr.'),
(10565,'MEREP','1997-06-11-00-00-00','43 rue St. Laurent'),
(10566,'BLONP','1997-06-12-00-00-00','24, place Kléber'),
(10567,'HUNGO','1997-06-12-00-00-00','8 Johnstown Road'),
(10568,'GALED','1997-06-13-00-00-00','Rambla de Cataluña, 23'),
(10569,'RATTC','1997-06-16-00-00-00','2817 Milton Dr.'),
(10570,'MEREP','1997-06-17-00-00-00','43 rue St. Laurent'),
(10571,'ERNSH','1997-06-17-00-00-00','Kirchgasse 6'),
(10572,'BERGS','1997-06-18-00-00-00','Berguvsvägen  8'),
(10573,'ANTON','1997-06-19-00-00-00','Mataderos  2312'),
(10574,'TRAIH','1997-06-19-00-00-00','722 DaVinci Blvd.'),
(10575,'MORGK','1997-06-20-00-00-00','Heerstr. 22'),
(10576,'TORTU','1997-06-23-00-00-00','Avda. Azteca 123'),
(10577,'TRAIH','1997-06-23-00-00-00','722 DaVinci Blvd.'),
(10578,'BSBEV','1997-06-24-00-00-00','Fauntleroy Circus'),
(10579,'LETSS','1997-06-25-00-00-00','87 Polk St. Suite 5'),
(10580,'OTTIK','1997-06-26-00-00-00','Mehrheimerstr. 369'),
(10581,'FAMIA','1997-06-26-00-00-00','Rua Orós, 92'),
(10582,'BLAUS','1997-06-27-00-00-00','Forsterstr. 57'),
(10583,'WARTH','1997-06-30-00-00-00','Torikatu 38'),
(10584,'BLONP','1997-06-30-00-00-00','24, place Kléber'),
(10585,'WELLI','1997-07-01-00-00-00','Rua do Mercado, 12'),
(10586,'REGGC','1997-07-02-00-00-00','Strada Provinciale 124'),
(10587,'QUEDE','1997-07-02-00-00-00','Rua da Panificadora, 12'),
(10588,'QUICK','1997-07-03-00-00-00','Taucherstraße 10'),
(10589,'GREAL','1997-07-04-00-00-00','2732 Baker Blvd.'),
(10590,'MEREP','1997-07-07-00-00-00','43 rue St. Laurent'),
(10591,'VAFFE','1997-07-07-00-00-00','Smagsloget 45'),
(10592,'LEHMS','1997-07-08-00-00-00','Magazinweg 7'),
(10593,'LEHMS','1997-07-09-00-00-00','Magazinweg 7'),
(10594,'OLDWO','1997-07-09-00-00-00','2743 Bering St.'),
(10595,'ERNSH','1997-07-10-00-00-00','Kirchgasse 6'),
(10596,'WHITC','1997-07-11-00-00-00','1029 - 12th Ave. S.'),
(10597,'PICCO','1997-07-11-00-00-00','Geislweg 14'),
(10598,'RATTC','1997-07-14-00-00-00','2817 Milton Dr.'),
(10599,'BSBEV','1997-07-15-00-00-00','Fauntleroy Circus'),
(10600,'HUNGC','1997-07-16-00-00-00','City Center Plaza 516 Main St.'),
(10601,'HILAA','1997-07-16-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10602,'VAFFE','1997-07-17-00-00-00','Smagsloget 45'),
(10603,'SAVEA','1997-07-18-00-00-00','187 Suffolk Ln.'),
(10604,'FURIB','1997-07-18-00-00-00','Jardim das rosas n. 32'),
(10605,'MEREP','1997-07-21-00-00-00','43 rue St. Laurent'),
(10606,'TRADH','1997-07-22-00-00-00','Av. Inês de Castro, 414'),
(10607,'SAVEA','1997-07-22-00-00-00','187 Suffolk Ln.'),
(10608,'TOMSP','1997-07-23-00-00-00','Luisenstr. 48'),
(10609,'DUMON','1997-07-24-00-00-00','67, rue des Cinquante Otages'),
(10610,'LAMAI','1997-07-25-00-00-00','1 rue Alsace-Lorraine'),
(10611,'WOLZA','1997-07-25-00-00-00','ul. Filtrowa 68'),
(10612,'SAVEA','1997-07-28-00-00-00','187 Suffolk Ln.'),
(10613,'HILAA','1997-07-29-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10614,'BLAUS','1997-07-29-00-00-00','Forsterstr. 57'),
(10615,'WILMK','1997-07-30-00-00-00','Keskuskatu 45'),
(10616,'GREAL','1997-07-31-00-00-00','2732 Baker Blvd.'),
(10617,'GREAL','1997-07-31-00-00-00','2732 Baker Blvd.'),
(10618,'MEREP','1997-08-01-00-00-00','43 rue St. Laurent'),
(10619,'MEREP','1997-08-04-00-00-00','43 rue St. Laurent'),
(10620,'LAUGB','1997-08-05-00-00-00','2319 Elm St.'),
(10621,'ISLAT','1997-08-05-00-00-00','Garden House Crowther Way'),
(10622,'RICAR','1997-08-06-00-00-00','Av. Copacabana, 267'),
(10623,'FRANK','1997-08-07-00-00-00','Berliner Platz 43'),
(10624,'THECR','1997-08-07-00-00-00','55 Grizzly Peak Rd.'),
(10625,'ANATR','1997-08-08-00-00-00','Avda. de la Constitución 2222'),
(10626,'BERGS','1997-08-11-00-00-00','Berguvsvägen  8'),
(10627,'SAVEA','1997-08-11-00-00-00','187 Suffolk Ln.'),
(10628,'BLONP','1997-08-12-00-00-00','24, place Kléber'),
(10629,'GODOS','1997-08-12-00-00-00','C/ Romero, 33'),
(10630,'KOENE','1997-08-13-00-00-00','Maubelstr. 90'),
(10631,'LAMAI','1997-08-14-00-00-00','1 rue Alsace-Lorraine'),
(10632,'WANDK','1997-08-14-00-00-00','Adenauerallee 900'),
(10633,'ERNSH','1997-08-15-00-00-00','Kirchgasse 6'),
(10634,'FOLIG','1997-08-15-00-00-00','184, chaussée de Tournai'),
(10635,'MAGAA','1997-08-18-00-00-00','Via Ludovico il Moro 22'),
(10636,'WARTH','1997-08-19-00-00-00','Torikatu 38'),
(10637,'QUEEN','1997-08-19-00-00-00','Alameda dos Canàrios, 891'),
(10638,'LINOD','1997-08-20-00-00-00','Ave. 5 de Mayo Porlamar'),
(10639,'SANTG','1997-08-20-00-00-00','Erling Skakkes gate 78'),
(10640,'WANDK','1997-08-21-00-00-00','Adenauerallee 900'),
(10641,'HILAA','1997-08-22-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10642,'SIMOB','1997-08-22-00-00-00','Vinbæltet 34'),
(10643,'ALFKI','1997-08-25-00-00-00','Obere Str. 57'),
(10644,'WELLI','1997-08-25-00-00-00','Rua do Mercado, 12'),
(10645,'HANAR','1997-08-26-00-00-00','Rua do Paço, 67'),
(10646,'HUNGO','1997-08-27-00-00-00','8 Johnstown Road'),
(10647,'QUEDE','1997-08-27-00-00-00','Rua da Panificadora, 12'),
(10648,'RICAR','1997-08-28-00-00-00','Av. Copacabana, 267');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10649,'MAISD','1997-08-28-00-00-00','Rue Joseph-Bens 532'),
(10650,'FAMIA','1997-08-29-00-00-00','Rua Orós, 92'),
(10651,'WANDK','1997-09-01-00-00-00','Adenauerallee 900'),
(10652,'GOURL','1997-09-01-00-00-00','Av. Brasil, 442'),
(10653,'FRANK','1997-09-02-00-00-00','Berliner Platz 43'),
(10654,'BERGS','1997-09-02-00-00-00','Berguvsvägen  8'),
(10655,'REGGC','1997-09-03-00-00-00','Strada Provinciale 124'),
(10656,'GREAL','1997-09-04-00-00-00','2732 Baker Blvd.'),
(10657,'SAVEA','1997-09-04-00-00-00','187 Suffolk Ln.'),
(10658,'QUICK','1997-09-05-00-00-00','Taucherstraße 10'),
(10659,'QUEEN','1997-09-05-00-00-00','Alameda dos Canàrios, 891'),
(10660,'HUNGC','1997-09-08-00-00-00','City Center Plaza 516 Main St.'),
(10661,'HUNGO','1997-09-09-00-00-00','8 Johnstown Road'),
(10662,'LONEP','1997-09-09-00-00-00','89 Chiaroscuro Rd.'),
(10663,'BONAP','1997-09-10-00-00-00','12, rue des Bouchers'),
(10664,'FURIB','1997-09-10-00-00-00','Jardim das rosas n. 32'),
(10665,'LONEP','1997-09-11-00-00-00','89 Chiaroscuro Rd.'),
(10666,'RICSU','1997-09-12-00-00-00','Starenweg 5'),
(10667,'ERNSH','1997-09-12-00-00-00','Kirchgasse 6'),
(10668,'WANDK','1997-09-15-00-00-00','Adenauerallee 900'),
(10669,'SIMOB','1997-09-15-00-00-00','Vinbæltet 34'),
(10670,'FRANK','1997-09-16-00-00-00','Berliner Platz 43'),
(10671,'FRANR','1997-09-17-00-00-00','54, rue Royale'),
(10672,'BERGS','1997-09-17-00-00-00','Berguvsvägen  8'),
(10673,'WILMK','1997-09-18-00-00-00','Keskuskatu 45'),
(10674,'ISLAT','1997-09-18-00-00-00','Garden House Crowther Way'),
(10675,'FRANK','1997-09-19-00-00-00','Berliner Platz 43'),
(10676,'TORTU','1997-09-22-00-00-00','Avda. Azteca 123'),
(10677,'ANTON','1997-09-22-00-00-00','Mataderos  2312'),
(10678,'SAVEA','1997-09-23-00-00-00','187 Suffolk Ln.'),
(10679,'BLONP','1997-09-23-00-00-00','24, place Kléber'),
(10680,'OLDWO','1997-09-24-00-00-00','2743 Bering St.'),
(10681,'GREAL','1997-09-25-00-00-00','2732 Baker Blvd.'),
(10682,'ANTON','1997-09-25-00-00-00','Mataderos  2312'),
(10683,'DUMON','1997-09-26-00-00-00','67, rue des Cinquante Otages'),
(10684,'OTTIK','1997-09-26-00-00-00','Mehrheimerstr. 369'),
(10685,'GOURL','1997-09-29-00-00-00','Av. Brasil, 442'),
(10686,'PICCO','1997-09-30-00-00-00','Geislweg 14'),
(10687,'HUNGO','1997-09-30-00-00-00','8 Johnstown Road'),
(10688,'VAFFE','1997-10-01-00-00-00','Smagsloget 45'),
(10689,'BERGS','1997-10-01-00-00-00','Berguvsvägen  8'),
(10690,'HANAR','1997-10-02-00-00-00','Rua do Paço, 67'),
(10691,'QUICK','1997-10-03-00-00-00','Taucherstraße 10'),
(10692,'ALFKI','1997-10-03-00-00-00','Obere Str. 57'),
(10693,'WHITC','1997-10-06-00-00-00','1029 - 12th Ave. S.'),
(10694,'QUICK','1997-10-06-00-00-00','Taucherstraße 10'),
(10695,'WILMK','1997-10-07-00-00-00','Keskuskatu 45'),
(10696,'WHITC','1997-10-08-00-00-00','1029 - 12th Ave. S.'),
(10697,'LINOD','1997-10-08-00-00-00','Ave. 5 de Mayo Porlamar'),
(10698,'ERNSH','1997-10-09-00-00-00','Kirchgasse 6'),
(10699,'MORGK','1997-10-09-00-00-00','Heerstr. 22'),
(10700,'SAVEA','1997-10-10-00-00-00','187 Suffolk Ln.'),
(10701,'HUNGO','1997-10-13-00-00-00','8 Johnstown Road'),
(10702,'ALFKI','1997-10-13-00-00-00','Obere Str. 57'),
(10703,'FOLKO','1997-10-14-00-00-00','Åkergatan 24'),
(10704,'QUEEN','1997-10-14-00-00-00','Alameda dos Canàrios, 891'),
(10705,'HILAA','1997-10-15-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10706,'OLDWO','1997-10-16-00-00-00','2743 Bering St.'),
(10707,'AROUT','1997-10-16-00-00-00','Brook Farm Stratford St. Mary'),
(10708,'THEBI','1997-10-17-00-00-00','89 Jefferson Way Suite 2'),
(10709,'GOURL','1997-10-17-00-00-00','Av. Brasil, 442'),
(10710,'FRANS','1997-10-20-00-00-00','Via Monte Bianco 34'),
(10711,'SAVEA','1997-10-21-00-00-00','187 Suffolk Ln.'),
(10712,'HUNGO','1997-10-21-00-00-00','8 Johnstown Road'),
(10713,'SAVEA','1997-10-22-00-00-00','187 Suffolk Ln.'),
(10714,'SAVEA','1997-10-22-00-00-00','187 Suffolk Ln.'),
(10715,'BONAP','1997-10-23-00-00-00','12, rue des Bouchers'),
(10716,'RANCH','1997-10-24-00-00-00','Av. del Libertador 900'),
(10717,'FRANK','1997-10-24-00-00-00','Berliner Platz 43'),
(10718,'KOENE','1997-10-27-00-00-00','Maubelstr. 90'),
(10719,'LETSS','1997-10-27-00-00-00','87 Polk St. Suite 5'),
(10720,'QUEDE','1997-10-28-00-00-00','Rua da Panificadora, 12'),
(10721,'QUICK','1997-10-29-00-00-00','Taucherstraße 10'),
(10722,'SAVEA','1997-10-29-00-00-00','187 Suffolk Ln.'),
(10723,'WHITC','1997-10-30-00-00-00','1029 - 12th Ave. S.'),
(10724,'MEREP','1997-10-30-00-00-00','43 rue St. Laurent'),
(10725,'FAMIA','1997-10-31-00-00-00','Rua Orós, 92'),
(10726,'EASTC','1997-11-03-00-00-00','35 King George'),
(10727,'REGGC','1997-11-03-00-00-00','Strada Provinciale 124'),
(10728,'QUEEN','1997-11-04-00-00-00','Alameda dos Canàrios, 891'),
(10729,'LINOD','1997-11-04-00-00-00','Ave. 5 de Mayo Porlamar'),
(10730,'BONAP','1997-11-05-00-00-00','12, rue des Bouchers'),
(10731,'CHOPS','1997-11-06-00-00-00','Hauptstr. 31'),
(10732,'BONAP','1997-11-06-00-00-00','12, rue des Bouchers'),
(10733,'BERGS','1997-11-07-00-00-00','Berguvsvägen  8'),
(10734,'GOURL','1997-11-07-00-00-00','Av. Brasil, 442'),
(10735,'LETSS','1997-11-10-00-00-00','87 Polk St. Suite 5'),
(10736,'HUNGO','1997-11-11-00-00-00','8 Johnstown Road'),
(10737,'VINET','1997-11-11-00-00-00','59 rue de l''Abbaye'),
(10738,'SPECD','1997-11-12-00-00-00','25, rue Lauriston'),
(10739,'VINET','1997-11-12-00-00-00','59 rue de l''Abbaye'),
(10740,'WHITC','1997-11-13-00-00-00','1029 - 12th Ave. S.'),
(10741,'AROUT','1997-11-14-00-00-00','Brook Farm Stratford St. Mary'),
(10742,'BOTTM','1997-11-14-00-00-00','23 Tsawassen Blvd.'),
(10743,'AROUT','1997-11-17-00-00-00','Brook Farm Stratford St. Mary'),
(10744,'VAFFE','1997-11-17-00-00-00','Smagsloget 45'),
(10745,'QUICK','1997-11-18-00-00-00','Taucherstraße 10'),
(10746,'CHOPS','1997-11-19-00-00-00','Hauptstr. 31'),
(10747,'PICCO','1997-11-19-00-00-00','Geislweg 14'),
(10748,'SAVEA','1997-11-20-00-00-00','187 Suffolk Ln.');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10749,'ISLAT','1997-11-20-00-00-00','Garden House Crowther Way'),
(10750,'WARTH','1997-11-21-00-00-00','Torikatu 38'),
(10751,'RICSU','1997-11-24-00-00-00','Starenweg 5'),
(10752,'NORTS','1997-11-24-00-00-00','South House 300 Queensbridge'),
(10753,'FRANS','1997-11-25-00-00-00','Via Monte Bianco 34'),
(10754,'MAGAA','1997-11-25-00-00-00','Via Ludovico il Moro 22'),
(10755,'BONAP','1997-11-26-00-00-00','12, rue des Bouchers'),
(10756,'SPLIR','1997-11-27-00-00-00','P.O. Box 555'),
(10757,'SAVEA','1997-11-27-00-00-00','187 Suffolk Ln.'),
(10758,'RICSU','1997-11-28-00-00-00','Starenweg 5'),
(10759,'ANATR','1997-11-28-00-00-00','Avda. de la Constitución 2222'),
(10760,'MAISD','1997-12-01-00-00-00','Rue Joseph-Bens 532'),
(10761,'RATTC','1997-12-02-00-00-00','2817 Milton Dr.'),
(10762,'FOLKO','1997-12-02-00-00-00','Åkergatan 24'),
(10763,'FOLIG','1997-12-03-00-00-00','184, chaussée de Tournai'),
(10764,'ERNSH','1997-12-03-00-00-00','Kirchgasse 6'),
(10765,'QUICK','1997-12-04-00-00-00','Taucherstraße 10'),
(10766,'OTTIK','1997-12-05-00-00-00','Mehrheimerstr. 369'),
(10767,'SUPRD','1997-12-05-00-00-00','Boulevard Tirou, 255'),
(10768,'AROUT','1997-12-08-00-00-00','Brook Farm Stratford St. Mary'),
(10769,'VAFFE','1997-12-08-00-00-00','Smagsloget 45'),
(10770,'HANAR','1997-12-09-00-00-00','Rua do Paço, 67'),
(10771,'ERNSH','1997-12-10-00-00-00','Kirchgasse 6'),
(10772,'LEHMS','1997-12-10-00-00-00','Magazinweg 7'),
(10773,'ERNSH','1997-12-11-00-00-00','Kirchgasse 6'),
(10774,'FOLKO','1997-12-11-00-00-00','Åkergatan 24'),
(10775,'THECR','1997-12-12-00-00-00','55 Grizzly Peak Rd.'),
(10776,'ERNSH','1997-12-15-00-00-00','Kirchgasse 6'),
(10777,'GOURL','1997-12-15-00-00-00','Av. Brasil, 442'),
(10778,'BERGS','1997-12-16-00-00-00','Berguvsvägen  8'),
(10779,'MORGK','1997-12-16-00-00-00','Heerstr. 22'),
(10780,'LILAS','1997-12-16-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10781,'WARTH','1997-12-17-00-00-00','Torikatu 38'),
(10782,'CACTU','1997-12-17-00-00-00','Cerrito 333'),
(10783,'HANAR','1997-12-18-00-00-00','Rua do Paço, 67'),
(10784,'MAGAA','1997-12-18-00-00-00','Via Ludovico il Moro 22'),
(10785,'GROSR','1997-12-18-00-00-00','5ª Ave. Los Palos Grandes'),
(10786,'QUEEN','1997-12-19-00-00-00','Alameda dos Canàrios, 891'),
(10787,'LAMAI','1997-12-19-00-00-00','1 rue Alsace-Lorraine'),
(10788,'QUICK','1997-12-22-00-00-00','Taucherstraße 10'),
(10789,'FOLIG','1997-12-22-00-00-00','184, chaussée de Tournai'),
(10790,'GOURL','1997-12-22-00-00-00','Av. Brasil, 442'),
(10791,'FRANK','1997-12-23-00-00-00','Berliner Platz 43'),
(10792,'WOLZA','1997-12-23-00-00-00','ul. Filtrowa 68'),
(10793,'AROUT','1997-12-24-00-00-00','Brook Farm Stratford St. Mary'),
(10794,'QUEDE','1997-12-24-00-00-00','Rua da Panificadora, 12'),
(10795,'ERNSH','1997-12-24-00-00-00','Kirchgasse 6'),
(10796,'HILAA','1997-12-25-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10797,'DRACD','1997-12-25-00-00-00','Walserweg 21'),
(10798,'ISLAT','1997-12-26-00-00-00','Garden House Crowther Way'),
(10799,'KOENE','1997-12-26-00-00-00','Maubelstr. 90'),
(10800,'SEVES','1997-12-26-00-00-00','90 Wadhurst Rd.'),
(10801,'BOLID','1997-12-29-00-00-00','C/ Araquil, 67'),
(10802,'SIMOB','1997-12-29-00-00-00','Vinbæltet 34'),
(10803,'WELLI','1997-12-30-00-00-00','Rua do Mercado, 12'),
(10804,'SEVES','1997-12-30-00-00-00','90 Wadhurst Rd.'),
(10805,'THEBI','1997-12-30-00-00-00','89 Jefferson Way Suite 2'),
(10806,'VICTE','1997-12-31-00-00-00','2, rue du Commerce'),
(10807,'FRANS','1997-12-31-00-00-00','Via Monte Bianco 34'),
(10808,'OLDWO','1998-01-01-00-00-00','2743 Bering St.'),
(10809,'WELLI','1998-01-01-00-00-00','Rua do Mercado, 12'),
(10810,'LAUGB','1998-01-01-00-00-00','2319 Elm St.'),
(10811,'LINOD','1998-01-02-00-00-00','Ave. 5 de Mayo Porlamar'),
(10812,'REGGC','1998-01-02-00-00-00','Strada Provinciale 124'),
(10813,'RICAR','1998-01-05-00-00-00','Av. Copacabana, 267'),
(10814,'VICTE','1998-01-05-00-00-00','2, rue du Commerce'),
(10815,'SAVEA','1998-01-05-00-00-00','187 Suffolk Ln.'),
(10816,'GREAL','1998-01-06-00-00-00','2732 Baker Blvd.'),
(10817,'KOENE','1998-01-06-00-00-00','Maubelstr. 90'),
(10818,'MAGAA','1998-01-07-00-00-00','Via Ludovico il Moro 22'),
(10819,'CACTU','1998-01-07-00-00-00','Cerrito 333'),
(10820,'RATTC','1998-01-07-00-00-00','2817 Milton Dr.'),
(10821,'SPLIR','1998-01-08-00-00-00','P.O. Box 555'),
(10822,'TRAIH','1998-01-08-00-00-00','722 DaVinci Blvd.'),
(10823,'LILAS','1998-01-09-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10824,'FOLKO','1998-01-09-00-00-00','Åkergatan 24'),
(10825,'DRACD','1998-01-09-00-00-00','Walserweg 21'),
(10826,'BLONP','1998-01-12-00-00-00','24, place Kléber'),
(10827,'BONAP','1998-01-12-00-00-00','12, rue des Bouchers'),
(10828,'RANCH','1998-01-13-00-00-00','Av. del Libertador 900'),
(10829,'ISLAT','1998-01-13-00-00-00','Garden House Crowther Way'),
(10830,'TRADH','1998-01-13-00-00-00','Av. Inês de Castro, 414'),
(10831,'SANTG','1998-01-14-00-00-00','Erling Skakkes gate 78'),
(10832,'LAMAI','1998-01-14-00-00-00','1 rue Alsace-Lorraine'),
(10833,'OTTIK','1998-01-15-00-00-00','Mehrheimerstr. 369'),
(10834,'TRADH','1998-01-15-00-00-00','Av. Inês de Castro, 414'),
(10835,'ALFKI','1998-01-15-00-00-00','Obere Str. 57'),
(10836,'ERNSH','1998-01-16-00-00-00','Kirchgasse 6'),
(10837,'BERGS','1998-01-16-00-00-00','Berguvsvägen  8'),
(10838,'LINOD','1998-01-19-00-00-00','Ave. 5 de Mayo Porlamar'),
(10839,'TRADH','1998-01-19-00-00-00','Av. Inês de Castro, 414'),
(10840,'LINOD','1998-01-19-00-00-00','Ave. 5 de Mayo Porlamar'),
(10841,'SUPRD','1998-01-20-00-00-00','Boulevard Tirou, 255'),
(10842,'TORTU','1998-01-20-00-00-00','Avda. Azteca 123'),
(10843,'VICTE','1998-01-21-00-00-00','2, rue du Commerce'),
(10844,'PICCO','1998-01-21-00-00-00','Geislweg 14'),
(10845,'QUICK','1998-01-21-00-00-00','Taucherstraße 10'),
(10846,'SUPRD','1998-01-22-00-00-00','Boulevard Tirou, 255'),
(10847,'SAVEA','1998-01-22-00-00-00','187 Suffolk Ln.'),
(10848,'CONSH','1998-01-23-00-00-00','Berkeley Gardens 12  Brewery');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10849,'KOENE','1998-01-23-00-00-00','Maubelstr. 90'),
(10850,'VICTE','1998-01-23-00-00-00','2, rue du Commerce'),
(10851,'RICAR','1998-01-26-00-00-00','Av. Copacabana, 267'),
(10852,'RATTC','1998-01-26-00-00-00','2817 Milton Dr.'),
(10853,'BLAUS','1998-01-27-00-00-00','Forsterstr. 57'),
(10854,'ERNSH','1998-01-27-00-00-00','Kirchgasse 6'),
(10855,'OLDWO','1998-01-27-00-00-00','2743 Bering St.'),
(10856,'ANTON','1998-01-28-00-00-00','Mataderos  2312'),
(10857,'BERGS','1998-01-28-00-00-00','Berguvsvägen  8'),
(10858,'LACOR','1998-01-29-00-00-00','67, avenue de l''Europe'),
(10859,'FRANK','1998-01-29-00-00-00','Berliner Platz 43'),
(10860,'FRANR','1998-01-29-00-00-00','54, rue Royale'),
(10861,'WHITC','1998-01-30-00-00-00','1029 - 12th Ave. S.'),
(10862,'LEHMS','1998-01-30-00-00-00','Magazinweg 7'),
(10863,'HILAA','1998-02-02-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10864,'AROUT','1998-02-02-00-00-00','Brook Farm Stratford St. Mary'),
(10865,'QUICK','1998-02-02-00-00-00','Taucherstraße 10'),
(10866,'BERGS','1998-02-03-00-00-00','Berguvsvägen  8'),
(10867,'LONEP','1998-02-03-00-00-00','89 Chiaroscuro Rd.'),
(10868,'QUEEN','1998-02-04-00-00-00','Alameda dos Canàrios, 891'),
(10869,'SEVES','1998-02-04-00-00-00','90 Wadhurst Rd.'),
(10870,'WOLZA','1998-02-04-00-00-00','ul. Filtrowa 68'),
(10871,'BONAP','1998-02-05-00-00-00','12, rue des Bouchers'),
(10872,'GODOS','1998-02-05-00-00-00','C/ Romero, 33'),
(10873,'WILMK','1998-02-06-00-00-00','Keskuskatu 45'),
(10874,'GODOS','1998-02-06-00-00-00','C/ Romero, 33'),
(10875,'BERGS','1998-02-06-00-00-00','Berguvsvägen  8'),
(10876,'BONAP','1998-02-09-00-00-00','12, rue des Bouchers'),
(10877,'RICAR','1998-02-09-00-00-00','Av. Copacabana, 267'),
(10878,'QUICK','1998-02-10-00-00-00','Taucherstraße 10'),
(10879,'WILMK','1998-02-10-00-00-00','Keskuskatu 45'),
(10880,'FOLKO','1998-02-10-00-00-00','Åkergatan 24'),
(10881,'CACTU','1998-02-11-00-00-00','Cerrito 333'),
(10882,'SAVEA','1998-02-11-00-00-00','187 Suffolk Ln.'),
(10883,'LONEP','1998-02-12-00-00-00','89 Chiaroscuro Rd.'),
(10884,'LETSS','1998-02-12-00-00-00','87 Polk St. Suite 5'),
(10885,'SUPRD','1998-02-12-00-00-00','Boulevard Tirou, 255'),
(10886,'HANAR','1998-02-13-00-00-00','Rua do Paço, 67'),
(10887,'GALED','1998-02-13-00-00-00','Rambla de Cataluña, 23'),
(10888,'GODOS','1998-02-16-00-00-00','C/ Romero, 33'),
(10889,'RATTC','1998-02-16-00-00-00','2817 Milton Dr.'),
(10890,'DUMON','1998-02-16-00-00-00','67, rue des Cinquante Otages'),
(10891,'LEHMS','1998-02-17-00-00-00','Magazinweg 7'),
(10892,'MAISD','1998-02-17-00-00-00','Rue Joseph-Bens 532'),
(10893,'KOENE','1998-02-18-00-00-00','Maubelstr. 90'),
(10894,'SAVEA','1998-02-18-00-00-00','187 Suffolk Ln.'),
(10895,'ERNSH','1998-02-18-00-00-00','Kirchgasse 6'),
(10896,'MAISD','1998-02-19-00-00-00','Rue Joseph-Bens 532'),
(10897,'HUNGO','1998-02-19-00-00-00','8 Johnstown Road'),
(10898,'OCEAN','1998-02-20-00-00-00','Ing. Gustavo Moncada 8585 Piso 20-A'),
(10899,'LILAS','1998-02-20-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10900,'WELLI','1998-02-20-00-00-00','Rua do Mercado, 12'),
(10901,'HILAA','1998-02-23-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10902,'FOLKO','1998-02-23-00-00-00','Åkergatan 24'),
(10903,'HANAR','1998-02-24-00-00-00','Rua do Paço, 67'),
(10904,'WHITC','1998-02-24-00-00-00','1029 - 12th Ave. S.'),
(10905,'WELLI','1998-02-24-00-00-00','Rua do Mercado, 12'),
(10906,'WOLZA','1998-02-25-00-00-00','ul. Filtrowa 68'),
(10907,'SPECD','1998-02-25-00-00-00','25, rue Lauriston'),
(10908,'REGGC','1998-02-26-00-00-00','Strada Provinciale 124'),
(10909,'SANTG','1998-02-26-00-00-00','Erling Skakkes gate 78'),
(10910,'WILMK','1998-02-26-00-00-00','Keskuskatu 45'),
(10911,'GODOS','1998-02-26-00-00-00','C/ Romero, 33'),
(10912,'HUNGO','1998-02-26-00-00-00','8 Johnstown Road'),
(10913,'QUEEN','1998-02-26-00-00-00','Alameda dos Canàrios, 891'),
(10914,'QUEEN','1998-02-27-00-00-00','Alameda dos Canàrios, 891'),
(10915,'TORTU','1998-02-27-00-00-00','Avda. Azteca 123'),
(10916,'RANCH','1998-02-27-00-00-00','Av. del Libertador 900'),
(10917,'ROMEY','1998-03-02-00-00-00','Gran Vía, 1'),
(10918,'BOTTM','1998-03-02-00-00-00','23 Tsawassen Blvd.'),
(10919,'LINOD','1998-03-02-00-00-00','Ave. 5 de Mayo Porlamar'),
(10920,'AROUT','1998-03-03-00-00-00','Brook Farm Stratford St. Mary'),
(10921,'VAFFE','1998-03-03-00-00-00','Smagsloget 45'),
(10922,'HANAR','1998-03-03-00-00-00','Rua do Paço, 67'),
(10923,'LAMAI','1998-03-03-00-00-00','1 rue Alsace-Lorraine'),
(10924,'BERGS','1998-03-04-00-00-00','Berguvsvägen  8'),
(10925,'HANAR','1998-03-04-00-00-00','Rua do Paço, 67'),
(10926,'ANATR','1998-03-04-00-00-00','Avda. de la Constitución 2222'),
(10927,'LACOR','1998-03-05-00-00-00','67, avenue de l''Europe'),
(10928,'GALED','1998-03-05-00-00-00','Rambla de Cataluña, 23'),
(10929,'FRANK','1998-03-05-00-00-00','Berliner Platz 43'),
(10930,'SUPRD','1998-03-06-00-00-00','Boulevard Tirou, 255'),
(10931,'RICSU','1998-03-06-00-00-00','Starenweg 5'),
(10932,'BONAP','1998-03-06-00-00-00','12, rue des Bouchers'),
(10933,'ISLAT','1998-03-06-00-00-00','Garden House Crowther Way'),
(10934,'LEHMS','1998-03-09-00-00-00','Magazinweg 7'),
(10935,'WELLI','1998-03-09-00-00-00','Rua do Mercado, 12'),
(10936,'GREAL','1998-03-09-00-00-00','2732 Baker Blvd.'),
(10937,'CACTU','1998-03-10-00-00-00','Cerrito 333'),
(10938,'QUICK','1998-03-10-00-00-00','Taucherstraße 10'),
(10939,'MAGAA','1998-03-10-00-00-00','Via Ludovico il Moro 22'),
(10940,'BONAP','1998-03-11-00-00-00','12, rue des Bouchers'),
(10941,'SAVEA','1998-03-11-00-00-00','187 Suffolk Ln.'),
(10942,'REGGC','1998-03-11-00-00-00','Strada Provinciale 124'),
(10943,'BSBEV','1998-03-11-00-00-00','Fauntleroy Circus'),
(10944,'BOTTM','1998-03-12-00-00-00','23 Tsawassen Blvd.'),
(10945,'MORGK','1998-03-12-00-00-00','Heerstr. 22'),
(10946,'VAFFE','1998-03-12-00-00-00','Smagsloget 45'),
(10947,'BSBEV','1998-03-13-00-00-00','Fauntleroy Circus'),
(10948,'GODOS','1998-03-13-00-00-00','C/ Romero, 33');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(10949,'BOTTM','1998-03-13-00-00-00','23 Tsawassen Blvd.'),
(10950,'MAGAA','1998-03-16-00-00-00','Via Ludovico il Moro 22'),
(10951,'RICSU','1998-03-16-00-00-00','Starenweg 5'),
(10952,'ALFKI','1998-03-16-00-00-00','Obere Str. 57'),
(10953,'AROUT','1998-03-16-00-00-00','Brook Farm Stratford St. Mary'),
(10954,'LINOD','1998-03-17-00-00-00','Ave. 5 de Mayo Porlamar'),
(10955,'FOLKO','1998-03-17-00-00-00','Åkergatan 24'),
(10956,'BLAUS','1998-03-17-00-00-00','Forsterstr. 57'),
(10957,'HILAA','1998-03-18-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10958,'OCEAN','1998-03-18-00-00-00','Ing. Gustavo Moncada 8585 Piso 20-A'),
(10959,'GOURL','1998-03-18-00-00-00','Av. Brasil, 442'),
(10960,'HILAA','1998-03-19-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10961,'QUEEN','1998-03-19-00-00-00','Alameda dos Canàrios, 891'),
(10962,'QUICK','1998-03-19-00-00-00','Taucherstraße 10'),
(10963,'FURIB','1998-03-19-00-00-00','Jardim das rosas n. 32'),
(10964,'SPECD','1998-03-20-00-00-00','25, rue Lauriston'),
(10965,'OLDWO','1998-03-20-00-00-00','2743 Bering St.'),
(10966,'CHOPS','1998-03-20-00-00-00','Hauptstr. 31'),
(10967,'TOMSP','1998-03-23-00-00-00','Luisenstr. 48'),
(10968,'ERNSH','1998-03-23-00-00-00','Kirchgasse 6'),
(10969,'COMMI','1998-03-23-00-00-00','Av. dos Lusíadas, 23'),
(10970,'BOLID','1998-03-24-00-00-00','C/ Araquil, 67'),
(10971,'FRANR','1998-03-24-00-00-00','54, rue Royale'),
(10972,'LACOR','1998-03-24-00-00-00','67, avenue de l''Europe'),
(10973,'LACOR','1998-03-24-00-00-00','67, avenue de l''Europe'),
(10974,'SPLIR','1998-03-25-00-00-00','P.O. Box 555'),
(10975,'BOTTM','1998-03-25-00-00-00','23 Tsawassen Blvd.'),
(10976,'HILAA','1998-03-25-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(10977,'FOLKO','1998-03-26-00-00-00','Åkergatan 24'),
(10978,'MAISD','1998-03-26-00-00-00','Rue Joseph-Bens 532'),
(10979,'ERNSH','1998-03-26-00-00-00','Kirchgasse 6'),
(10980,'FOLKO','1998-03-27-00-00-00','Åkergatan 24'),
(10981,'HANAR','1998-03-27-00-00-00','Rua do Paço, 67'),
(10982,'BOTTM','1998-03-27-00-00-00','23 Tsawassen Blvd.'),
(10983,'SAVEA','1998-03-27-00-00-00','187 Suffolk Ln.'),
(10984,'SAVEA','1998-03-30-00-00-00','187 Suffolk Ln.'),
(10985,'HUNGO','1998-03-30-00-00-00','8 Johnstown Road'),
(10986,'OCEAN','1998-03-30-00-00-00','Ing. Gustavo Moncada 8585 Piso 20-A'),
(10987,'EASTC','1998-03-31-00-00-00','35 King George'),
(10988,'RATTC','1998-03-31-00-00-00','2817 Milton Dr.'),
(10989,'QUEDE','1998-03-31-00-00-00','Rua da Panificadora, 12'),
(10990,'ERNSH','1998-04-01-00-00-00','Kirchgasse 6'),
(10991,'QUICK','1998-04-01-00-00-00','Taucherstraße 10'),
(10992,'THEBI','1998-04-01-00-00-00','89 Jefferson Way Suite 2'),
(10993,'FOLKO','1998-04-01-00-00-00','Åkergatan 24'),
(10994,'VAFFE','1998-04-02-00-00-00','Smagsloget 45'),
(10995,'PERIC','1998-04-02-00-00-00','Calle Dr. Jorge Cash 321'),
(10996,'QUICK','1998-04-02-00-00-00','Taucherstraße 10'),
(10997,'LILAS','1998-04-03-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(10998,'WOLZA','1998-04-03-00-00-00','ul. Filtrowa 68'),
(10999,'OTTIK','1998-04-03-00-00-00','Mehrheimerstr. 369'),
(11000,'RATTC','1998-04-06-00-00-00','2817 Milton Dr.'),
(11001,'FOLKO','1998-04-06-00-00-00','Åkergatan 24'),
(11002,'SAVEA','1998-04-06-00-00-00','187 Suffolk Ln.'),
(11003,'THECR','1998-04-06-00-00-00','55 Grizzly Peak Rd.'),
(11004,'MAISD','1998-04-07-00-00-00','Rue Joseph-Bens 532'),
(11005,'WILMK','1998-04-07-00-00-00','Keskuskatu 45'),
(11006,'GREAL','1998-04-07-00-00-00','2732 Baker Blvd.'),
(11007,'PRINI','1998-04-08-00-00-00','Estrada da saúde n. 58'),
(11008,'ERNSH','1998-04-08-00-00-00','Kirchgasse 6'),
(11009,'GODOS','1998-04-08-00-00-00','C/ Romero, 33'),
(11010,'REGGC','1998-04-09-00-00-00','Strada Provinciale 124'),
(11011,'ALFKI','1998-04-09-00-00-00','Obere Str. 57'),
(11012,'FRANK','1998-04-09-00-00-00','Berliner Platz 43'),
(11013,'ROMEY','1998-04-09-00-00-00','Gran Vía, 1'),
(11014,'LINOD','1998-04-10-00-00-00','Ave. 5 de Mayo Porlamar'),
(11015,'SANTG','1998-04-10-00-00-00','Erling Skakkes gate 78'),
(11016,'AROUT','1998-04-10-00-00-00','Brook Farm Stratford St. Mary'),
(11017,'ERNSH','1998-04-13-00-00-00','Kirchgasse 6'),
(11018,'LONEP','1998-04-13-00-00-00','89 Chiaroscuro Rd.'),
(11019,'RANCH','1998-04-13-00-00-00','Av. del Libertador 900'),
(11020,'OTTIK','1998-04-14-00-00-00','Mehrheimerstr. 369'),
(11021,'QUICK','1998-04-14-00-00-00','Taucherstraße 10'),
(11022,'HANAR','1998-04-14-00-00-00','Rua do Paço, 67'),
(11023,'BSBEV','1998-04-14-00-00-00','Fauntleroy Circus'),
(11024,'EASTC','1998-04-15-00-00-00','35 King George'),
(11025,'WARTH','1998-04-15-00-00-00','Torikatu 38'),
(11026,'FRANS','1998-04-15-00-00-00','Via Monte Bianco 34'),
(11027,'BOTTM','1998-04-16-00-00-00','23 Tsawassen Blvd.'),
(11028,'KOENE','1998-04-16-00-00-00','Maubelstr. 90'),
(11029,'CHOPS','1998-04-16-00-00-00','Hauptstr. 31'),
(11030,'SAVEA','1998-04-17-00-00-00','187 Suffolk Ln.'),
(11031,'SAVEA','1998-04-17-00-00-00','187 Suffolk Ln.'),
(11032,'WHITC','1998-04-17-00-00-00','1029 - 12th Ave. S.'),
(11033,'RICSU','1998-04-17-00-00-00','Starenweg 5'),
(11034,'OLDWO','1998-04-20-00-00-00','2743 Bering St.'),
(11035,'SUPRD','1998-04-20-00-00-00','Boulevard Tirou, 255'),
(11036,'DRACD','1998-04-20-00-00-00','Walserweg 21'),
(11037,'GODOS','1998-04-21-00-00-00','C/ Romero, 33'),
(11038,'SUPRD','1998-04-21-00-00-00','Boulevard Tirou, 255'),
(11039,'LINOD','1998-04-21-00-00-00','Ave. 5 de Mayo Porlamar'),
(11040,'GREAL','1998-04-22-00-00-00','2732 Baker Blvd.'),
(11041,'CHOPS','1998-04-22-00-00-00','Hauptstr. 31'),
(11042,'COMMI','1998-04-22-00-00-00','Av. dos Lusíadas, 23'),
(11043,'SPECD','1998-04-22-00-00-00','25, rue Lauriston'),
(11044,'WOLZA','1998-04-23-00-00-00','ul. Filtrowa 68'),
(11045,'BOTTM','1998-04-23-00-00-00','23 Tsawassen Blvd.'),
(11046,'WANDK','1998-04-23-00-00-00','Adenauerallee 900'),
(11047,'EASTC','1998-04-24-00-00-00','35 King George'),
(11048,'BOTTM','1998-04-24-00-00-00','23 Tsawassen Blvd.');
INSERT INTO `orders` ( `Id`, `Username`, `CreateDate`, `Address`) VALUES 
(11049,'GOURL','1998-04-24-00-00-00','Av. Brasil, 442'),
(11050,'FOLKO','1998-04-27-00-00-00','Åkergatan 24'),
(11051,'LAMAI','1998-04-27-00-00-00','1 rue Alsace-Lorraine'),
(11052,'HANAR','1998-04-27-00-00-00','Rua do Paço, 67'),
(11053,'PICCO','1998-04-27-00-00-00','Geislweg 14'),
(11054,'CACTU','1998-04-28-00-00-00','Cerrito 333'),
(11055,'HILAA','1998-04-28-00-00-00','Carrera 22 con Ave. Carlos Soublette --8-35'),
(11056,'EASTC','1998-04-28-00-00-00','35 King George'),
(11057,'NORTS','1998-04-29-00-00-00','South House 300 Queensbridge'),
(11058,'BLAUS','1998-04-29-00-00-00','Forsterstr. 57'),
(11059,'RICAR','1998-04-29-00-00-00','Av. Copacabana, 267'),
(11060,'FRANS','1998-04-30-00-00-00','Via Monte Bianco 34'),
(11061,'GREAL','1998-04-30-00-00-00','2732 Baker Blvd.'),
(11062,'REGGC','1998-04-30-00-00-00','Strada Provinciale 124'),
(11063,'HUNGO','1998-04-30-00-00-00','8 Johnstown Road'),
(11064,'SAVEA','1998-05-01-00-00-00','187 Suffolk Ln.'),
(11065,'LILAS','1998-05-01-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(11066,'WHITC','1998-05-01-00-00-00','1029 - 12th Ave. S.'),
(11067,'DRACD','1998-05-04-00-00-00','Walserweg 21'),
(11068,'QUEEN','1998-05-04-00-00-00','Alameda dos Canàrios, 891'),
(11069,'TORTU','1998-05-04-00-00-00','Avda. Azteca 123'),
(11070,'LEHMS','1998-05-05-00-00-00','Magazinweg 7'),
(11071,'LILAS','1998-05-05-00-00-00','Carrera 52 con Ave. Bolívar --65-98 Llano Largo'),
(11072,'ERNSH','1998-05-05-00-00-00','Kirchgasse 6'),
(11073,'PERIC','1998-05-05-00-00-00','Calle Dr. Jorge Cash 321'),
(11074,'SIMOB','1998-05-06-00-00-00','Vinbæltet 34'),
(11075,'RICSU','1998-05-06-00-00-00','Starenweg 5'),
(11076,'BONAP','1998-05-06-00-00-00','12, rue des Bouchers'),
(11077,'RATTC','1998-05-06-00-00-00','2817 Milton Dr.'),
(11200,'admin','2020-08-25-00-00-00','Công cha như núi Thái sơn'),
(11205,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11206,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11207,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11208,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11209,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11210,'staff','2021-03-11-00-00-00','ORDER PURCHASING'),
(11211,'staff','2021-03-11-00-00-00','ORDER PURCHASING'),
(11212,'staff','2021-03-11-00-00-00','Shipping Address:'),
(11213,'staff','2021-03-11-00-00-00','Shipping Address: 123'),
(21205,'staff','2021-03-12-00-00-00','Shipping Address:'),
(21206,'admin','2021-03-12-00-00-00','Shipping Address:'),
(21207,'admin','2021-03-12-00-00-00','ORDER PURCHASING'),
(21208,'admin','2021-03-12-00-00-00','Công cha như núi thái sơn Nghĩa mẹ như nước trong nguồn chảy ra'),
(21209,'admin','2021-03-12-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(31205,'staff','2021-03-13-00-00-00','Shipping Address:'),
(31206,'staff','2021-03-13-00-00-00','Mishi Kobe Niku'),
(31207,'admin','2021-03-13-00-00-00','Shipping Address:'),
(41205,'staff','2021-03-15-00-00-00','Shipping Address:'),
(41206,'staff','2021-03-15-00-00-00','Shipping Address:'),
(41208,'staff','2021-03-15-00-00-00','Shipping Address:'),
(51205,'admin','2021-03-16-00-00-00','Shipping Address:'),
(61205,'user','2021-03-16-00-00-00','Shipping Address:'),
(71205,'user','2021-03-16-00-00-00','778/B1 Nguyễn Kiệm, F.4 Q.Tân Phú, HCM'),
(71206,'admin','2021-03-17-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(81206,'user','2021-03-17-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(81207,'user','2021-03-17-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(81208,'admin','2021-03-17-00-00-00','Shipping Address'),
(81209,'admin','2021-03-17-00-00-00','Shipping Address:'),
(81210,'staff','2021-03-17-00-00-00','Shipping Address:'),
(81211,'staff','2021-03-17-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(81212,'staff','2021-03-17-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(91205,'user','2021-03-22-00-00-00','Shipping Address:'),
(101205,'user','2021-03-22-00-00-00','2021 by FPT Polytechnic. All rights reserved.'),
(111205,'user','2021-03-23-00-00-00','FPT Polytechnic © 2021. All rights reserved.'),
(111206,'user','2021-03-23-00-00-00','FPT Polytechnic © 2021. All rights reserved.'),
(121205,'staff','2021-04-05-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.'),
(121206,'staff','2021-04-05-00-00-00','© 2021 by FPT Polytechnic. All rights reserved.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Image` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'N''Product.gif''',
  `Price` double NOT NULL DEFAULT '0',
  `CreateDate` date NOT NULL,
  `Available` tinyint(1) NOT NULL DEFAULT '1',
  `CategoryId` char(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`Id`, `Name`, `Image`, `Price`, `CreateDate`, `Available`, `CategoryId`) VALUES
(1001,'Aniseed Syrup','1001.jpg',190,'1980-03-29',False,'1000'),
(1002,'Change','1002.jpg',19,'1982-12-18',False,'1000'),
(1003,'Aniseed Syrup','1003.jpg',10,'1973-06-14',True,'1001'),
(1004,'Chef Anton''s Cajun Seasoning','1004.jpg',22,'1976-03-10',False,'1001'),
(1005,'Chef Anton''s Gumbo Mix','1005.jpg',21.35,'1978-12-06',True,'1002'),
(1006,'Grandma''s Boysenberry Spread','1006.jpg',25,'1981-09-03',False,'1001'),
(1007,'Uncle Bob''s Organic Dried Pears','1007.jpg',30,'1983-03-13',False,'1006'),
(1008,'Northwoods Cranberry Sauce','1008.jpg',40,'1972-02-26',False,'1001'),
(1009,'Mishi Kobe Niku','1009.jpg',97,'1985-12-10',False,'1005'),
(1010,'Ikura','1010.jpg',31,'1994-03-23',False,'1007'),
(1011,'Queso Cabrales','1011.jpg',21,'1985-11-28',False,'1003'),
(1012,'Queso Manchego La Pastora','1012.jpg',38,'1988-08-27',True,'1003'),
(1013,'Konbu','1013.jpg',6,'2002-07-01',False,'1007'),
(1014,'Tofu','1014.jpg',23.25,'2002-06-24',True,'1006'),
(1015,'Genen Shouyu','1015.jpg',15.5,'1991-05-04',False,'1001'),
(1016,'Pavlova','1016.jpg',17.45,'1996-11-09',False,'1002'),
(1017,'Alice Mutton','1017.jpg',39,'2007-12-15',True,'1005'),
(1018,'Carnarvon Tigers','1018.jpg',62.5,'2011-04-13',True,'1007'),
(1019,'Teatime Chocolate Biscuits','1019.jpg',9.2,'2005-02-02',False,'1002'),
(1020,'Sir Rodney''s Marmalade','1020.jpg',81,'2007-11-01',False,'1002'),
(1021,'Sir Rodney''s Scones','1021.jpg',10,'2010-07-29',False,'1002'),
(1022,'Gustaf flower','1022.jpg',21,'2008-12-01',True,'1004'),
(1023,'Tunnbr Korea','1023.jpg',9,'2011-08-31',True,'1004'),
(1024,'Guarana¡ Fanta¡stica','1024.jpg',4.5,'2008-03-13',False,'1000'),
(1025,'NuNuCa Nuaa-Nougat-Creme','1025.jpg',14,'2011-07-20',False,'1002'),
(1026,'Gumbar Gummibarchen','1026.jpg',31.23,'2009-04-17',True,'1002'),
(1027,'Schoggi Schokolade','1027.jpg',43.9,'2007-01-14',False,'1002'),
(1028,'Russle Sauerkraut','1028.jpg',45.6,'2011-01-14',True,'1006'),
(1029,'Tharinger Rostbratwurst','1029.jpg',123.79,'2010-12-21',False,'1005'),
(1030,'Nord-Ost Matjeshering','1030.jpg',25.89,'2011-05-14',False,'1007'),
(1031,'Gorgonzola Telino','1031.jpg',12.5,'2010-10-30',False,'1003'),
(1032,'Mascarpone Fabioli','1032.jpg',32,'2011-07-30',False,'1003'),
(1033,'Geitost','1033.png',2.5,'2010-04-29',False,'1003'),
(1034,'Sasquatch Ale','1034.jpg',14,'2010-07-30',True,'1000'),
(1035,'Steeleye Stout','1035.jpg',18,'2011-04-25',False,'1000'),
(1036,'Inlagd Sill','1036.jpg',19,'1980-11-28',False,'1007'),
(1037,'Gravad lax','1037.jpg',26,'1983-08-31',False,'1007'),
(1038,'Cate de Blaye','1038.jpg',263.5,'1981-07-12',False,'1000'),
(1039,'Chartreuse verte','1039.jpg',18,'1984-04-08',False,'1000'),
(1040,'Boston Crab Meat','1040.jpg',18.4,'1976-12-08',False,'1007'),
(1041,'Jack''s New England Clam Chowder','1041.jpg',9.65,'1979-09-10',False,'1007'),
(1042,'Singaporean Hokkien Fried Mee','1042.jpg',14,'1973-11-21',False,'1004'),
(1043,'Ipoh Coffee','1043.jpg',46,'1980-03-20',False,'1000'),
(1044,'Gula Malacca','1044.jpg',19.45,'1970-10-25',False,'1001'),
(1045,'Rogede sild','1045.jpg',9.5,'1990-09-21',True,'1007'),
(1046,'Spegesild','1046.jpg',12,'1993-06-23',False,'1007'),
(1047,'Zaanse koeken','1047.jpg',9.5,'1981-11-25',False,'1002'),
(1048,'Chocolade','1048.jpg',12.75,'1984-08-24',False,'1002'),
(1049,'Maxilaku','1049.jpg',20,'1987-05-23',False,'1002'),
(1050,'Valkoinen suklaa','1050.jpg',16.25,'1990-02-17',False,'1002'),
(1051,'Manjimup Dried Apples','1051.jpg',53,'2004-05-22',False,'1006'),
(1052,'Filo Mix','1052.jpg',7,'2001-05-20',False,'1004'),
(1053,'Perth Pasties','1053.jpg',32.8,'2007-01-06',False,'1005'),
(1054,'Tourtiare','1054.jpg',7.45,'2009-10-07',True,'1005'),
(1055,'Pacta chinois','1055.jpg',24,'2007-07-08',False,'1005'),
(1056,'Gnocchi di nonna Alice','1056.jpg',38,'2007-05-18',False,'1004'),
(1057,'Ravioli Angelo','1057.jpg',19.5,'2010-02-16',False,'1004'),
(1058,'Escargots de Bourgogne','1058.jpg',13.25,'2011-07-26',False,'1001'),
(1059,'Raclette Courdavault','1059.jpg',55,'2007-09-22',False,'1003'),
(1060,'Camembert Pierrot','1060.jpg',34,'2010-06-20',False,'1003'),
(1061,'Sirop d''aOrable','1061.jpg',28.5,'2007-05-29',False,'1001'),
(1062,'Tarte au sucre','1062.jpg',49.3,'2008-01-21',False,'1002'),
(1063,'Vegie-spread','1063.jpg',43.9,'2007-11-21',False,'1001'),
(1064,'Wimmers gute Semmelknadel','1064.jpg',33.25,'2009-05-15',False,'1004'),
(1065,'Louisiana Fiery Hot Pepper Sauce','1065.jpg',21.05,'2008-05-15',False,'1001'),
(1066,'Louisiana Hot Spiced Okra','1066.jpg',17,'2011-02-10',True,'1001'),
(1067,'Laughing Lumberjack Lager','1067.jpg',14,'2010-12-05',True,'1000'),
(1068,'Scottish Longbreads','1068.jpg',12.5,'2009-07-08',False,'1002'),
(1069,'Gudbrandsdalsost','1069.jpg',36,'2011-03-09',False,'1003'),
(1070,'Outback Lager','1070.jpg',15,'2009-02-21',False,'1000'),
(1071,'Flotemysost','1071.jpg',21.5,'1980-09-04',True,'1003'),
(1072,'Mozzarella di Giovanni','1072.jpg',34.8,'1983-06-03',False,'1003'),
(1073,'Rad Kaviar','1073.jpg',15,'1982-12-03',False,'1007'),
(1074,'Longlife Tofu','1074.jpg',10,'1982-09-27',False,'1006'),
(1075,'RhanbrAu Klosterbier','1075.jpg',7.75,'1982-10-31',False,'1000'),
(1076,'Lakkalik AAri','1076.jpg',18,'1970-07-28',False,'1000'),
(1077,'Original Frankfurter grane Soae','1077.gif',13,'1976-04-04',False,'1001'),
(1081,'Chai','1081.jpg',19,'1984-04-04',False,'1000'),
(1083,'Mishi Kobe Niku','1083.jpg',97,'1989-07-23',False,'1005');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`Id`, `Name`) VALUES
('CUST', 'Customers'),
('DIRE', 'Directors'),
('STAF', 'Staffs');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(50) COLLATE utf8_bin NOT NULL,
  `marks` double NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `country` varchar(2) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`email`, `fullname`, `marks`, `gender`, `country`) VALUES
('chaulnnps10835@fpt.edu.vn', 'Lê Nguyễn Ngọc Châu', 7, 0, 'VN'),
('cuonglcps10817@fpt.edu.vn', 'Lý Chí Cường', 6, 1, 'VN'),
('datnvps10930@fpt.edu.vn', 'Nguyễn Vũ Đạt', 6, 1, 'VN'),
('dobps10723@fpt.edu.vn', 'Bùi Đỏ', 10, 1, 'VN'),
('ducnpps10800@fpt.edu.vn', 'Nguyễn Phúc Đức', 7, 1, 'VN'),
('duynhps18293@fpt.edu.vn', 'Nguyễn Hoàng Duy', 10, 1, 'VN'),
('duytkps10303@fpt.edu.vn', 'Trần Khánh Duy', 6, 1, 'US'),
('huyntps10808@fpt.edu.vn', 'Nguyễn Thanh Huy', 4, 1, 'VN'),
('khaihcps10763@fpt.edu.vn', 'Hoàng Cao Khải', 5, 1, 'VN'),
('luudpps10344@fpt.edu.vn', 'Đào Phong Lưu', 8, 1, 'VN'),
('manhbdps09585@fpt.edu.vn', 'Bùi Đức Mạnh', 5, 1, 'VN'),
('phatltps10691@fpt.edu.vn', 'Lê Tấn Phát', 9, 1, 'US'),
('phucpbps10710@fpt.edu.vn', 'Phạm Bá Phúc', 6, 1, 'VN'),
('phuongntdps09013@fpt.edu.vn', 'Nguyễn Thị Diễm Phương', 8, 0, 'VN'),
('quangnmps10741@fpt.edu.vn', 'Nguyễn Minh Quang', 6, 1, 'US'),
('quangvvtps09851@fpt.edu.vn', 'Võ Văn Thanh Quang', 5, 1, 'VN'),
('sangntps10356@fpt.edu.vn', 'Nguyễn Tống Sang', 5, 1, 'VN'),
('sonntps10858@fpt.edu.vn', 'Nguyễn Thanh Sơn', 9, 1, 'US'),
('suotlvmps10970@fpt.edu.vn', 'Lê Vương Minh Suốt', 7, 1, 'VN'),
('thachnhps10818@fpt.edu.vn', 'Nguyễn Hữu Thạch', 8, 1, 'VN'),
('thangtvps10394@fpt.edu.vn', 'Trằn Văn Thắng', 9, 1, 'VN'),
('trangntpps10956@fpt.edu.vn', 'Nguyễn Thị Phương Trang', 4, 0, 'VN'),
('trungdvps10716@fpt.edu.vn', 'Đặng Văn Trung', 6, 1, 'VN'),
('tuanncqps10850@fpt.edu.vn', 'Nguyễn Cửu Quang Tuấn', 6, 1, 'VN'),
('tuannnps10819@fpt.edu.vn', 'Nguyễn Ngọc Tuấn', 10, 1, 'VN'),
('vinhptps09842@fpt.edu.vn', 'Phạm Thế Vinh', 10, 1, 'VN');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `authorities_UKhtk0tjw6uf67w0vkhy5n3j1oq` (`Username`,`RoleId`),
  ADD KEY `FKlw0sapcjvuxfa1kvyjw7jml88` (`Username`),
  ADD KEY `FKevi9708lm1k06pa4dugc91k7v` (`RoleId`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FKj4gc2ja2otvwemf4rho2lp3s8` (`OrderId`),
  ADD KEY `FKaltatpxipsjtcih4d1h6bn0xr` (`ProductId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FKk3cjfcgb621qhahps1tre43e4` (`Username`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK1krrsjgcawsfg8k8u4hm5gi8q` (`CategoryId`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authorities`
--
ALTER TABLE `authorities`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212512;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121207;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FK_authorities_accounts` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_authorities_roles` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKevi9708lm1k06pa4dugc91k7v` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FKlw0sapcjvuxfa1kvyjw7jml88` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_orderdetails_orders` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orderdetails_products` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FKaltatpxipsjtcih4d1h6bn0xr` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FKj4gc2ja2otvwemf4rho2lp3s8` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_accounts` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKk3cjfcgb621qhahps1tre43e4` FOREIGN KEY (`Username`) REFERENCES `accounts` (`Username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK1krrsjgcawsfg8k8u4hm5gi8q` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_products_categories` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
