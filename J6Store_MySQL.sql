CREATE TABLE `Customers` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `fullname` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `photo` VARCHAR(50) NOT NULL,
  `token` VARCHAR(50) NOT NULL,
  PRIMARY KEY (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Roles (
  `id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Categories (
  `id` CHAR(4) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `note` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Products (
  `id` INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `image` VARCHAR(50) NOT NULL,
  `price` FLOAT NOT NULL,
  `quantity` INT NOT NULL,
  `createDate` DATE NOT NULL,
  `available` BOOLEAN NOT NULL,
  `categoryId` CHAR(4) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `Orders` (
  `id` BIGINT AUTO_INCREMENT NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `createDate` DATETIME NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE OrderDetails (
  `id` BIGINT AUTO_INCREMENT NOT NULL,
  `orderId` BIGINT NOT NULL,
  `productId` INT NOT NULL,
  `price` FLOAT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE Authorities (
  `id` INT AUTO_INCREMENT NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `roleId` VARCHAR(10) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `Customers` (username, password, fullname, email, photo, token) VALUES 
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

INSERT INTO `Roles` (id, name) VALUES
('DIRE', 'Directors'),
('STAF', 'Staffs'),
('CUST', 'Customers');

INSERT INTO Authorities (username, roleId) VALUES
('admin', 'DIRE'),
('admin', 'STAF'),
('admin', 'CUST'),
('staff', 'STAF'),
('staff', 'CUST'),
('user', 'CUST');

INSERT INTO `Categories` (id, name, note, description) VALUES
('1000', 'Đồng hồ đeo tay', 'Đồng hồ', 'Đồng hồ đeo tay'),
('1001', 'Máy tính xách tay', 'Máy tính', 'Máy tính xách tay'),
('1002', 'Máy ảnh', 'Máy ảnh', 'Máy ảnh chụp hình'),
('1003', 'Điện thoại', 'Điện thoại', 'Điện thoại di động'),
('1004', 'Nước hoa', 'Nước hoa', 'Nước hoa thơm ngát'),
('1005', 'Nữ trang', 'Nữ trang', 'Nữ trang sang trọng'),
('1006', 'Nón thời trang', 'Nón', 'Nón thời trang'),
('1007', 'Túi xách du lịch', 'Túi xách', 'Túi xách du lịch');

INSERT INTO `Products` (name, image, price, quantity, createDate, available, categoryId) VALUES
(N'Aniseed Syrup', N'1001.jpg', 190, 1, CAST(N'1980-03-29' AS Date), 0, N'1000'),
(N'Change', N'1002.jpg', 19, 3, CAST(N'1982-12-18' AS Date), 0, N'1000'),
(N'Aniseed Syrup', N'1003.jpg', 10, 5, CAST(N'1973-06-14' AS Date), 1, N'1001'),
(N'Chef Cajun Seasoning', N'1004.jpg', 22, 5, CAST(N'1976-03-10' AS Date), 0, N'1001'),
(N'Chef Antons Gumbo Mix', N'1005.jpg', 21.35, 5, CAST(N'1978-12-06' AS Date), 1, N'1002'),
(N'Grandmas Boysenberry', N'1006.jpg', 25, 2, CAST(N'1981-09-03' AS Date), 0, N'1001'),
(N'Uncle Bobs Dried', N'1007.jpg', 30, 2, CAST(N'1983-03-13' AS Date), 0, N'1006'),
(N'Northwoods Cranberry', N'1008.jpg', 40, 2, CAST(N'1972-02-26' AS Date), 0, N'1001'),
(N'Mishi Kobe Niku', N'1009.jpg', 97, 3, CAST(N'1985-12-10' AS Date), 0, N'1005'),
(N'Ikura', N'1010.jpg', 31, 3, CAST(N'1994-03-23' AS Date), 0, N'1007'),
(N'Queso Cabrales', N'1011.jpg', 21, 3, CAST(N'1985-11-28' AS Date), 0, N'1003'),
(N'Queso Manchego La Pastora', N'1012.jpg', 38, 3, CAST(N'1988-08-27' AS Date), 1, N'1003'),
(N'Konbu', N'1013.jpg', 6, 6, CAST(N'2002-07-01' AS Date), 0, N'1007'),
(N'Tofu', N'1014.jpg', 23.25, 6, CAST(N'2002-06-24' AS Date), 1, N'1006'),
(N'Genen Shouyu', N'1015.jpg', 15.5, 6, CAST(N'1991-05-04' AS Date), 0, N'1001'),
(N'Pavlova', N'1016.jpg', 17.45, 6, CAST(N'2024-11-09' AS Date), 0, N'1002'),
(N'Alice Mutton', N'1017.jpg', 39, 6, CAST(N'2007-12-15' AS Date), 1, N'1005'),
(N'Carnarvon Tigers', N'1018.jpg', 62.5, 6, CAST(N'2011-04-13' AS Date), 1, N'1007'),
(N'Teatime Biscuits', N'1019.jpg', 9.2, 6, CAST(N'2005-02-02' AS Date), 0, N'1002'),
(N'Sir Rodneys Marmalade', N'1020.jpg', 81, 3, CAST(N'2007-11-01' AS Date), 0, N'1002'),
(N'Sir Rodneys Scones', N'1021.jpg', 10, 3, CAST(N'2010-07-29' AS Date), 0, N'1002'),
(N'Gustaf flower', N'1022.jpg', 21, 5, CAST(N'2008-12-01' AS Date), 1, N'1004'),
(N'Tunnbr Korea', N'1023.jpg', 9, 5, CAST(N'2011-08-31' AS Date), 1, N'1004'),
(N'Guarana Fantastica', N'1024.jpg', 4.5, 5, CAST(N'2008-03-13' AS Date), 0, N'1000'),
(N'NuNuCa Creme', N'1025.jpg', 14, 4, CAST(N'2011-07-20' AS Date), 0, N'1002'),
(N'Gumbar Gummibarchen', N'1026.jpg', 31.23, 4, CAST(N'2009-04-17' AS Date), 1, N'1002'),
(N'Schoggi Schokolade', N'1027.jpg', 43.9, 4, CAST(N'2007-01-14' AS Date), 0, N'1002'),
(N'Russle Sauerkraut', N'1028.jpg', 45.6, 4, CAST(N'2011-01-14' AS Date), 1, N'1006'),
(N'Tharinger Rostbratwurst', N'1029.jpg', 123.79, 4, CAST(N'2010-12-21' AS Date), 0, N'1005'),
(N'NordOst Matjeshering', N'1030.jpg', 25.89, 4, CAST(N'2011-05-14' AS Date), 0, N'1007'),
(N'Gorgonzola Telino', N'1031.jpg', 12.5, 4, CAST(N'2010-10-30' AS Date), 0, N'1003'),
(N'Mascarpone Fabioli', N'1032.jpg', 32, 6, CAST(N'2011-07-30' AS Date), 0, N'1003'),
(N'Geitost', N'1033.png', 2.5, 6, CAST(N'2010-04-29' AS Date), 0, N'1003'),
(N'Sasquatch Ale', N'1034.jpg', 14, 6, CAST(N'2010-07-30' AS Date), 1, N'1000'),
(N'Steeleye Stout', N'1035.jpg', 18, 6, CAST(N'2011-04-25' AS Date), 0, N'1000'),
(N'Inlagd Sill', N'1036.jpg', 19, 6, CAST(N'1980-11-28' AS Date), 0, N'1007'),
(N'Gravad lax', N'1037.jpg', 26, 6, CAST(N'1983-08-31' AS Date), 0, N'1007'),
(N'Cate de Blaye', N'1038.jpg', 263.5, 6, CAST(N'1981-07-12' AS Date), 0, N'1000'),
(N'Chartreuse verte', N'1039.jpg', 18, 2, CAST(N'1984-04-08' AS Date), 0, N'1000'),
(N'Mishi Kobe Niku', N'1083.jpg', 97, 2, CAST(N'1989-07-23' AS Date), 0, N'1005');

INSERT INTO `Orders` (username, createDate, address) VALUES 
(N'anatr', CAST(N'2024-07-05T00:00:00.000' AS DateTime), N'Luisenstr. 48'),
(N'anton', CAST(N'2024-07-08T00:00:00.000' AS DateTime), N'Rua do Paço, 67'),
(N'blonp', CAST(N'2024-07-08T00:00:00.000' AS DateTime), N'2, rue du Commerce'),
(N'arout', CAST(N'2024-07-09T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255'),
(N'anton', CAST(N'2024-07-10T00:00:00.000' AS DateTime), N'Rua do Paço, 67'),
(N'chops', CAST(N'2024-07-11T00:00:00.000' AS DateTime), N'Hauptstr. 31'),
(N'bergs', CAST(N'2024-07-12T00:00:00.000' AS DateTime), N'Starenweg 5'),
(N'blonp', CAST(N'2024-07-15T00:00:00.000' AS DateTime), N'Rua do Mercado, 12'),
(N'ernsh', CAST(N'2024-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35'),
(N'centc', CAST(N'2024-07-17T00:00:00.000' AS DateTime), N'Kirchgasse 6'),
(N'centc', CAST(N'2024-07-18T00:00:00.000' AS DateTime), N'Sierras de Granada 9993'),
(N'bonap', CAST(N'2024-07-19T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369'),
(N'bonap', CAST(N'2024-07-19T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12'),
(N'famia', CAST(N'2024-07-22T00:00:00.000' AS DateTime), N'2817 Milton Dr.'),
(N'ernsh', CAST(N'2024-07-23T00:00:00.000' AS DateTime), N'Kirchgasse 6'),
(N'folig', CAST(N'2024-07-24T00:00:00.000' AS DateTime), N'Åkergatan 24'),
(N'blonp', CAST(N'2024-07-25T00:00:00.000' AS DateTime), N'24, place Kléber'),
(N'consh', CAST(N'2024-07-26T00:00:00.000' AS DateTime), N'Torikatu 38'),
(N'bonap', CAST(N'2024-07-29T00:00:00.000' AS DateTime), N'Berliner Platz 43'),
(N'folig', CAST(N'2024-07-30T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes'),
(N'bsbev', CAST(N'2024-07-31T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.'),
(N'commi', CAST(N'2024-08-01T00:00:00.000' AS DateTime), N'Torikatu 38'),
(N'cactu', CAST(N'2024-08-01T00:00:00.000' AS DateTime), N'P.O. Box 555'),
(N'fissa', CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.'),
(N'folig', CAST(N'2024-08-05T00:00:00.000' AS DateTime), N'Taucherstraße 10'),
(N'famia', CAST(N'2024-08-06T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye'),
(N'fissa', CAST(N'2024-08-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22'),
(N'bolid', CAST(N'2024-08-08T00:00:00.000' AS DateTime), N'Avda. Azteca 123'),
(N'bergs', CAST(N'2024-08-09T00:00:00.000' AS DateTime), N'Heerstr. 22'),
(N'cactu', CAST(N'2024-08-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8'),
(N'bonap', CAST(N'2024-08-13T00:00:00.000' AS DateTime), N'Magazinweg 7'),
(N'bergs', CAST(N'2024-08-14T00:00:00.000' AS DateTime), N'Berguvsvägen  8'),
(N'bonap', CAST(N'2024-08-14T00:00:00.000' AS DateTime), N'Gran Vía, 1'),
(N'bonap', CAST(N'2024-08-15T00:00:00.000' AS DateTime), N'Gran Vía, 1'),
(N'fissa', CAST(N'2024-08-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo'),
(N'bonap', CAST(N'2024-08-19T00:00:00.000' AS DateTime), N'Magazinweg 7'),
(N'famia', CAST(N'2024-08-20T00:00:00.000' AS DateTime), N'Taucherstraße 10'),
(N'famia', CAST(N'2024-08-21T00:00:00.000' AS DateTime), N'Taucherstraße 10'),
(N'cactu', CAST(N'2024-08-22T00:00:00.000' AS DateTime), N'Av. Copacabana, 267'),
(N'commi', CAST(N'2024-08-23T00:00:00.000' AS DateTime), N'Strada Provinciale 124');

INSERT `OrderDetails` (orderId, productId, price, quantity) VALUES
(1, 2, 42.4, 40),
(2, 5, 7.7, 10),
(2, 4, 42.4, 35),
(2, 7, 16.8, 15),
(3, 1, 16.8, 6),
(3, 3, 15.6, 15),
(3, 8, 16.8, 20),
(4, 10, 64.8, 40),
(4, 12, 2, 25),
(4, 5, 27.2, 40),
(5, 4, 10, 20),
(5, 7, 14.4, 42),
(5, 20, 16, 40),
(6, 3, 3.6, 15),
(6, 1, 19.2, 21),
(6, 24, 8, 21),
(7, 32, 15.2, 20),
(7, 17, 13.9, 35),
(7, 12, 15.2, 25),
(7, 11, 44, 30),
(8, 2, 26.2, 15),
(8, 8, 10.4, 12),
(9, 7, 35.1, 25),
(9, 6, 14.4, 6),
(9, 22, 10.4, 15),
(10, 27, 15.2, 50),
(10, 31, 25.6, 6),
(11, 5, 8, 10),
(11, 9, 20.8, 1),
(12, 2, 7.7, 16),
(12, 7, 15.6, 50),
(12, 14, 39.4, 15),
(12, 33, 12, 21),
(13, 23, 8, 20),
(13, 18, 14.4, 20),
(14, 9, 24, 15),
(14, 12, 30.4, 2),
(15, 1, 13.9, 60),
(15, 24, 3.6, 28),
(15, 36, 20.7, 60);

ALTER TABLE Authorities ADD CONSTRAINT FK_Authorities_Customers FOREIGN KEY (username) REFERENCES Customers(username) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Authorities ADD CONSTRAINT FK_Authorities_Roles FOREIGN KEY (roleId) REFERENCES Roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (orderId) REFERENCES Orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (productId) REFERENCES Products(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (username) REFERENCES Customers(username) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (categoryId) REFERENCES Categories(id) ON DELETE CASCADE;

SELECT * FROM Customers;
SELECT * FROM Roles;
SELECT * FROM Authorities;
SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;