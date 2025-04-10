USE master
GO
CREATE DATABASE J6Store
GO
USE J6Store
GO
CREATE TABLE Customers (
    username nvarchar(50) NOT NULL,
    password nvarchar(50) NOT NULL,
    fullname nvarchar(50) NOT NULL,
    email nvarchar(50) NOT NULL,
    photo nvarchar(50) NOT NULL,
    token nvarchar(50) NOT NULL,
    CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (username)
)
GO

CREATE TABLE Roles (
    id nvarchar(10) NOT NULL,
    name nvarchar(50) NOT NULL,
    CONSTRAINT PK_Roles PRIMARY KEY CLUSTERED (id)
)
GO

CREATE TABLE Categories (
    id char(4) NOT NULL,
    name nvarchar(50) NOT NULL,
    note nvarchar(255) NOT NULL,
    description nvarchar(255) NOT NULL,
    CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED (id)
)
GO

CREATE TABLE Products (
    id int IDENTITY(1,1) NOT NULL,
    name nvarchar(50) NOT NULL,
    image nvarchar(50) NOT NULL,
    price float NOT NULL,
    quantity int NOT NULL,
    createDate date NOT NULL,
    available bit NOT NULL,
    categoryId char(4) NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (id),
)
GO

CREATE TABLE Orders (
    id bigint IDENTITY(1,1) NOT NULL,
    username nvarchar(50) NOT NULL,
    createDate datetime NOT NULL,
    address nvarchar(100) NOT NULL,
    CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED (id),
)
GO

CREATE TABLE OrderDetails (
    id bigint IDENTITY(1,1) NOT NULL,
    orderId bigint NOT NULL,
    productId int NOT NULL,
    price float NOT NULL,
    quantity int NOT NULL,
    CONSTRAINT PK_OrderDetails PRIMARY KEY CLUSTERED (id),
)
GO

CREATE TABLE Authorities (
    id int IDENTITY(1,1) NOT NULL,
    username nvarchar(50) NOT NULL,
    roleId nvarchar(10) NOT NULL,
    CONSTRAINT PK_UserRoles PRIMARY KEY CLUSTERED (id),
)
GO
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'admin', N'123', N'Nguyễn Hoàng Duy', N'duyplusdz@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'staff', N'123', N'Lê Thị Đậu', N'duyplus1999@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'user', N'123', N'Nguyễn Văn Tèo', N'duyplus0909@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'anatr', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'anton', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'arout', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'bergs', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'blaus', N'blaus', N'Hanna Moos', N'blaus@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'blonp', N'blonp', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'bolid', N'bolid', N'Martín Sommer', N'bolid@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'bonap', N'bonap', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'bottm', N'bottm', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'bsbev', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'cactu', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'centc', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'chops', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'commi', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'consh', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'dracd', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'dumon', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'eastc', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'ernsh', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'famia', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'fissa', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png', N'token')
INSERT Customers (username, password, fullname, email, photo, token) VALUES (N'folig', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png', N'token')
GO
INSERT Roles (id, name) VALUES (N'DIRE', N'Directors')
INSERT Roles (id, name) VALUES (N'STAF', N'Staffs')
INSERT Roles (id, name) VALUES (N'CUST', N'Customers')
GO
SET IDENTITY_INSERT Authorities ON 
INSERT Authorities (id, username, roleId) VALUES (1, N'admin', N'DIRE')
INSERT Authorities (id, username, roleId) VALUES (2, N'admin', N'STAF')
INSERT Authorities (id, username, roleId) VALUES (3, N'admin', N'CUST')
INSERT Authorities (id, username, roleId) VALUES (4, N'staff', N'STAF')
INSERT Authorities (id, username, roleId) VALUES (5, N'staff', N'CUST')
INSERT Authorities (id, username, roleId) VALUES (6, N'user', N'CUST')
SET IDENTITY_INSERT Authorities OFF
GO
INSERT Categories (id, name, note, description) VALUES (N'1000', N'Đồng hồ đeo tay', N'Đồng hồ', N'Đồng hồ đeo tay')
INSERT Categories (id, name, note, description) VALUES (N'1001', N'Máy tính xách tay', N'Máy tính', N'Máy tính xách tay')
INSERT Categories (id, name, note, description) VALUES (N'1002', N'Máy ảnh', N'Máy ảnh', N'Máy ảnh chụp hình')
INSERT Categories (id, name, note, description) VALUES (N'1003', N'Điện thoại', N'Điện thoại', N'Điện thoại di động')
INSERT Categories (id, name, note, description) VALUES (N'1004', N'Nước hoa', N'Nước hoa', N'Nước hoa thơm ngát')
INSERT Categories (id, name, note, description) VALUES (N'1005', N'Nữ trang', N'Nữ trang', N'Nữ trang sang trọng')
INSERT Categories (id, name, note, description) VALUES (N'1006', N'Nón thời trang', N'Nón', N'Nón thời trang')
INSERT Categories (id, name, note, description) VALUES (N'1007', N'Túi xách du lịch', N'Túi xách', N'Túi xách du lịch')
GO
SET IDENTITY_INSERT Products ON 
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1001, N'Aniseed Syrup', N'1001.jpg', 190, 1, CAST(N'1980-03-29' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1002, N'Change', N'1002.jpg', 19, 3, CAST(N'1982-12-18' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1003, N'Aniseed Syrup', N'1003.jpg', 10, 5, CAST(N'1973-06-14' AS Date), 1, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1004, N'Chef Cajun Seasoning', N'1004.jpg', 22, 5, CAST(N'1976-03-10' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1005, N'Chef Antons Gumbo Mix', N'1005.jpg', 21.35, 5, CAST(N'1978-12-06' AS Date), 1, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1006, N'Grandmas Boysenberry', N'1006.jpg', 25, 2, CAST(N'1981-09-03' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1007, N'Uncle Bobs Dried', N'1007.jpg', 30, 2, CAST(N'1983-03-13' AS Date), 0, N'1006')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1008, N'Northwoods Cranberry', N'1008.jpg', 40, 2, CAST(N'1972-02-26' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1009, N'Mishi Kobe Niku', N'1009.jpg', 97, 3, CAST(N'1985-12-10' AS Date), 0, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1010, N'Ikura', N'1010.jpg', 31, 3, CAST(N'1994-03-23' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1011, N'Queso Cabrales', N'1011.jpg', 21, 3, CAST(N'1985-11-28' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1012, N'Queso Manchego La Pastora', N'1012.jpg', 38, 3, CAST(N'1988-08-27' AS Date), 1, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1013, N'Konbu', N'1013.jpg', 6, 6, CAST(N'2002-07-01' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1014, N'Tofu', N'1014.jpg', 23.25, 6, CAST(N'2002-06-24' AS Date), 1, N'1006')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1015, N'Genen Shouyu', N'1015.jpg', 15.5, 6, CAST(N'1991-05-04' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1016, N'Pavlova', N'1016.jpg', 17.45, 6, CAST(N'2024-11-09' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1017, N'Alice Mutton', N'1017.jpg', 39, 6, CAST(N'2007-12-15' AS Date), 1, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1018, N'Carnarvon Tigers', N'1018.jpg', 62.5, 6, CAST(N'2011-04-13' AS Date), 1, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1019, N'Teatime Biscuits', N'1019.jpg', 9.2, 6, CAST(N'2005-02-02' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1020, N'Sir Rodneys Marmalade', N'1020.jpg', 81, 3, CAST(N'2007-11-01' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1021, N'Sir Rodneys Scones', N'1021.jpg', 10, 3, CAST(N'2010-07-29' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1022, N'Gustaf flower', N'1022.jpg', 21, 5, CAST(N'2008-12-01' AS Date), 1, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1023, N'Tunnbr Korea', N'1023.jpg', 9, 5, CAST(N'2011-08-31' AS Date), 1, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1024, N'Guarana Fantastica', N'1024.jpg', 4.5, 5, CAST(N'2008-03-13' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1025, N'NuNuCa Creme', N'1025.jpg', 14, 4, CAST(N'2011-07-20' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1026, N'Gumbar Gummibarchen', N'1026.jpg', 31.23, 4, CAST(N'2009-04-17' AS Date), 1, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1027, N'Schoggi Schokolade', N'1027.jpg', 43.9, 4, CAST(N'2007-01-14' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1028, N'Russle Sauerkraut', N'1028.jpg', 45.6, 4, CAST(N'2011-01-14' AS Date), 1, N'1006')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1029, N'Tharinger Rostbratwurst', N'1029.jpg', 123.79, 4, CAST(N'2010-12-21' AS Date), 0, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1030, N'NordOst Matjeshering', N'1030.jpg', 25.89, 4, CAST(N'2011-05-14' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1031, N'Gorgonzola Telino', N'1031.jpg', 12.5, 4, CAST(N'2010-10-30' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1032, N'Mascarpone Fabioli', N'1032.jpg', 32, 6, CAST(N'2011-07-30' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1033, N'Geitost', N'1033.png', 2.5, 6, CAST(N'2010-04-29' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1034, N'Sasquatch Ale', N'1034.jpg', 14, 6, CAST(N'2010-07-30' AS Date), 1, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1035, N'Steeleye Stout', N'1035.jpg', 18, 6, CAST(N'2011-04-25' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1036, N'Inlagd Sill', N'1036.jpg', 19, 6, CAST(N'1980-11-28' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1037, N'Gravad lax', N'1037.jpg', 26, 6, CAST(N'1983-08-31' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1038, N'Cate de Blaye', N'1038.jpg', 263.5, 6, CAST(N'1981-07-12' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1039, N'Chartreuse verte', N'1039.jpg', 18, 2, CAST(N'1984-04-08' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1040, N'Boston Crab Meat', N'1040.jpg', 18.4, 2, CAST(N'1976-12-08' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1041, N'Jacks New England', N'1041.jpg', 9.65, 2, CAST(N'1979-09-10' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1042, N'Singaporean Hokkien Mee', N'1042.jpg', 14, 2, CAST(N'1973-11-21' AS Date), 0, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1043, N'Ipoh Coffee', N'1043.jpg', 46, 2, CAST(N'1980-03-20' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1044, N'Gula Malacca', N'1044.jpg', 19.45, 2, CAST(N'1970-10-25' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1045, N'Rogede sild', N'1045.jpg', 9.5, 5, CAST(N'1990-09-21' AS Date), 1, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1046, N'Spegesild', N'1046.jpg', 12, 5, CAST(N'1993-06-23' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1047, N'Zaanse koeken', N'1047.jpg', 9.5, 5, CAST(N'1981-11-25' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1048, N'Chocolade', N'1048.jpg', 12.75, 5, CAST(N'1984-08-24' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1049, N'Maxilaku', N'1049.jpg', 20, 5, CAST(N'1987-05-23' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1050, N'Valkoinen Suklaa', N'1050.jpg', 16.25, 7, CAST(N'1990-02-17' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1051, N'Manjimup Dried Apples', N'1051.jpg', 53, 7, CAST(N'2004-05-22' AS Date), 0, N'1006')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1052, N'Filo Mix', N'1052.jpg', 7, 7, CAST(N'2001-05-20' AS Date), 0, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1053, N'Perth Pasties', N'1053.jpg', 32.8, 7, CAST(N'2007-01-06' AS Date), 0, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1054, N'Tourtiare', N'1054.jpg', 7.45, 7, CAST(N'2009-10-07' AS Date), 1, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1055, N'Pacta chinois', N'1055.jpg', 24, 7, CAST(N'2007-07-08' AS Date), 0, N'1005')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1056, N'Gnocchi di Alice', N'1056.jpg', 38, 7, CAST(N'2007-05-18' AS Date), 0, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1057, N'Ravioli Angelo', N'1057.jpg', 19.5, 7, CAST(N'2010-02-16' AS Date), 0, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1058, N'Escargots Bourgogne', N'1058.jpg', 13.25, 7, CAST(N'2011-07-26' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1059, N'Raclette Courdavault', N'1059.jpg', 55, 7, CAST(N'2007-09-22' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1060, N'Camembert Pierrot', N'1060.jpg', 34, 7, CAST(N'2010-06-20' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1061, N'Sirop Orable', N'1061.jpg', 28.5, 7, CAST(N'2007-05-29' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1062, N'Tarte Sucre', N'1062.jpg', 49.3, 7, CAST(N'2008-01-21' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1063, N'Vegie Spread', N'1063.jpg', 43.9, 7, CAST(N'2007-11-21' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1064, N'Wimmers Semmelknadel', N'1064.jpg', 33.25, 7, CAST(N'2009-05-15' AS Date), 0, N'1004')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1065, N'Louisiana Fiery Sauce', N'1065.jpg', 21.05, 7, CAST(N'2008-05-15' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1066, N'Louisiana Spiced Okra', N'1066.jpg', 17, 5, CAST(N'2011-02-10' AS Date), 1, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1067, N'Laughing Lumberjack', N'1067.jpg', 14, 5, CAST(N'2010-12-05' AS Date), 1, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1068, N'Scottish Longbreads', N'1068.jpg', 12.5, 5, CAST(N'2009-07-08' AS Date), 0, N'1002')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1069, N'Gudbrandsdalsost', N'1069.jpg', 36, 5, CAST(N'2011-03-09' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1070, N'Outback Lager', N'1070.jpg', 15, 5, CAST(N'2009-02-21' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1071, N'Flotemysost', N'1071.jpg', 21.5, 5, CAST(N'1980-09-04' AS Date), 1, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1072, N'Mozzarella Giovanni', N'1072.jpg', 34.8, 5, CAST(N'1983-06-03' AS Date), 0, N'1003')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1073, N'Rad Kaviar', N'1073.jpg', 15, 5, CAST(N'1982-12-03' AS Date), 0, N'1007')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1074, N'Longlife Tofu', N'1074.jpg', 10, 5, CAST(N'1982-09-27' AS Date), 0, N'1006')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1075, N'RhanbrAu Klosterbier', N'1075.jpg', 7.75, 5, CAST(N'1982-10-31' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1076, N'Lakkalik Ari', N'1076.jpg', 18, 5, CAST(N'1970-07-28' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1077, N'Original Frankfurter', N'1077.gif', 13, 5, CAST(N'1976-04-04' AS Date), 0, N'1001')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1081, N'Orable Chai', N'1081.jpg', 19, 3, CAST(N'1984-04-04' AS Date), 0, N'1000')
INSERT Products (id, name, image, price, quantity, createDate, available, categoryId) VALUES (1083, N'Mishi Kobe Niku', N'1083.jpg', 97, 2, CAST(N'1989-07-23' AS Date), 0, N'1005')
SET IDENTITY_INSERT Products OFF
GO
SET IDENTITY_INSERT Orders ON;
INSERT Orders (id, username, createDate, address) VALUES (10249, N'anatr', CAST(N'2024-07-05T00:00:00.000' AS DateTime), N'Luisenstr. 48')
INSERT Orders (id, username, createDate, address) VALUES (10250, N'anton', CAST(N'2024-07-08T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT Orders (id, username, createDate, address) VALUES (10251, N'blonp', CAST(N'2024-07-08T00:00:00.000' AS DateTime), N'2, rue du Commerce')
INSERT Orders (id, username, createDate, address) VALUES (10252, N'arout', CAST(N'2024-07-09T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255')
INSERT Orders (id, username, createDate, address) VALUES (10253, N'anton', CAST(N'2024-07-10T00:00:00.000' AS DateTime), N'Rua do Paço, 67')
INSERT Orders (id, username, createDate, address) VALUES (10254, N'chops', CAST(N'2024-07-11T00:00:00.000' AS DateTime), N'Hauptstr. 31')
INSERT Orders (id, username, createDate, address) VALUES (10255, N'bergs', CAST(N'2024-07-12T00:00:00.000' AS DateTime), N'Starenweg 5')
INSERT Orders (id, username, createDate, address) VALUES (10256, N'blonp', CAST(N'2024-07-15T00:00:00.000' AS DateTime), N'Rua do Mercado, 12')
INSERT Orders (id, username, createDate, address) VALUES (10257, N'ernsh', CAST(N'2024-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT Orders (id, username, createDate, address) VALUES (10258, N'centc', CAST(N'2024-07-17T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT Orders (id, username, createDate, address) VALUES (10259, N'centc', CAST(N'2024-07-18T00:00:00.000' AS DateTime), N'Sierras de Granada 9993')
INSERT Orders (id, username, createDate, address) VALUES (10260, N'bonap', CAST(N'2024-07-19T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369')
INSERT Orders (id, username, createDate, address) VALUES (10261, N'bonap', CAST(N'2024-07-19T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12')
INSERT Orders (id, username, createDate, address) VALUES (10262, N'famia', CAST(N'2024-07-22T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT Orders (id, username, createDate, address) VALUES (10263, N'ernsh', CAST(N'2024-07-23T00:00:00.000' AS DateTime), N'Kirchgasse 6')
INSERT Orders (id, username, createDate, address) VALUES (10264, N'folig', CAST(N'2024-07-24T00:00:00.000' AS DateTime), N'Åkergatan 24')
INSERT Orders (id, username, createDate, address) VALUES (10265, N'blonp', CAST(N'2024-07-25T00:00:00.000' AS DateTime), N'24, place Kléber')
INSERT Orders (id, username, createDate, address) VALUES (10266, N'consh', CAST(N'2024-07-26T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT Orders (id, username, createDate, address) VALUES (10267, N'bonap', CAST(N'2024-07-29T00:00:00.000' AS DateTime), N'Berliner Platz 43')
INSERT Orders (id, username, createDate, address) VALUES (10268, N'folig', CAST(N'2024-07-30T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes')
INSERT Orders (id, username, createDate, address) VALUES (10269, N'bsbev', CAST(N'2024-07-31T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.')
INSERT Orders (id, username, createDate, address) VALUES (10270, N'commi', CAST(N'2024-08-01T00:00:00.000' AS DateTime), N'Torikatu 38')
INSERT Orders (id, username, createDate, address) VALUES (10271, N'cactu', CAST(N'2024-08-01T00:00:00.000' AS DateTime), N'P.O. Box 555')
INSERT Orders (id, username, createDate, address) VALUES (10272, N'fissa', CAST(N'2024-08-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.')
INSERT Orders (id, username, createDate, address) VALUES (10273, N'folig', CAST(N'2024-08-05T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT Orders (id, username, createDate, address) VALUES (10274, N'famia', CAST(N'2024-08-06T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye')
INSERT Orders (id, username, createDate, address) VALUES (10275, N'fissa', CAST(N'2024-08-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22')
INSERT Orders (id, username, createDate, address) VALUES (10276, N'bolid', CAST(N'2024-08-08T00:00:00.000' AS DateTime), N'Avda. Azteca 123')
INSERT Orders (id, username, createDate, address) VALUES (10277, N'bergs', CAST(N'2024-08-09T00:00:00.000' AS DateTime), N'Heerstr. 22')
INSERT Orders (id, username, createDate, address) VALUES (10278, N'cactu', CAST(N'2024-08-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT Orders (id, username, createDate, address) VALUES (10279, N'bonap', CAST(N'2024-08-13T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT Orders (id, username, createDate, address) VALUES (10280, N'bergs', CAST(N'2024-08-14T00:00:00.000' AS DateTime), N'Berguvsvägen  8')
INSERT Orders (id, username, createDate, address) VALUES (10281, N'bonap', CAST(N'2024-08-14T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT Orders (id, username, createDate, address) VALUES (10282, N'bonap', CAST(N'2024-08-15T00:00:00.000' AS DateTime), N'Gran Vía, 1')
INSERT Orders (id, username, createDate, address) VALUES (10283, N'fissa', CAST(N'2024-08-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo')
INSERT Orders (id, username, createDate, address) VALUES (10284, N'bonap', CAST(N'2024-08-19T00:00:00.000' AS DateTime), N'Magazinweg 7')
INSERT Orders (id, username, createDate, address) VALUES (10285, N'famia', CAST(N'2024-08-20T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT Orders (id, username, createDate, address) VALUES (10286, N'famia', CAST(N'2024-08-21T00:00:00.000' AS DateTime), N'Taucherstraße 10')
INSERT Orders (id, username, createDate, address) VALUES (10287, N'cactu', CAST(N'2024-08-22T00:00:00.000' AS DateTime), N'Av. Copacabana, 267')
INSERT Orders (id, username, createDate, address) VALUES (10288, N'commi', CAST(N'2024-08-23T00:00:00.000' AS DateTime), N'Strada Provinciale 124')
SET IDENTITY_INSERT Orders OFF;
GO
SET IDENTITY_INSERT OrderDetails ON 
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100005, 10249, 1051, 42.4, 40)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100006, 10250, 1041, 7.7, 10)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100007, 10250, 1051, 42.4, 35)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100008, 10250, 1065, 16.8, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100009, 10251, 1022, 16.8, 6)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100010, 10251, 1057, 15.6, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100011, 10251, 1065, 16.8, 20)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100012, 10252, 1020, 64.8, 40)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100013, 10252, 1033, 2, 25)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100014, 10252, 1060, 27.2, 40)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100015, 10253, 1031, 10, 20)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100016, 10253, 1039, 14.4, 42)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100017, 10253, 1049, 16, 40)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100018, 10254, 1024, 3.6, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100019, 10254, 1055, 19.2, 21)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100020, 10254, 1074, 8, 21)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100021, 10255, 1002, 15.2, 20)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100022, 10255, 1016, 13.9, 35)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100023, 10255, 1036, 15.2, 25)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100024, 10255, 1059, 44, 30)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100025, 10256, 1053, 26.2, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100026, 10256, 1077, 10.4, 12)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100027, 10257, 1027, 35.1, 25)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100028, 10257, 1039, 14.4, 6)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100029, 10257, 1077, 10.4, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100030, 10258, 1002, 15.2, 50)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100032, 10258, 1032, 25.6, 6)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100033, 10259, 1021, 8, 10)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100034, 10259, 1037, 20.8, 1)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100035, 10260, 1041, 7.7, 16)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100036, 10260, 1057, 15.6, 50)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100037, 10260, 1062, 39.4, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100038, 10260, 1070, 12, 21)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100039, 10261, 1021, 8, 20)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100040, 10261, 1035, 14.4, 20)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100042, 10262, 1007, 24, 15)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100043, 10262, 1056, 30.4, 2)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100044, 10263, 1016, 13.9, 60)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100045, 10263, 1024, 3.6, 28)
INSERT OrderDetails (id, orderId, productId, price, quantity) VALUES (100046, 10263, 1030, 20.7, 60)
SET IDENTITY_INSERT OrderDetails OFF
GO
ALTER TABLE Customers ADD  DEFAULT (N'user.png') FOR photo
GO
ALTER TABLE OrderDetails ADD  DEFAULT ((0)) FOR price
GO
ALTER TABLE OrderDetails ADD  DEFAULT ((1)) FOR quantity
GO
ALTER TABLE Orders ADD  DEFAULT (getdate()) FOR createDate
GO
ALTER TABLE Products ADD  DEFAULT (N'cloud-upload.jpg') FOR image
GO
ALTER TABLE Products ADD  DEFAULT ((0)) FOR price
GO
ALTER TABLE Products ADD  DEFAULT (getdate()) FOR createDate
GO
ALTER TABLE Products ADD  DEFAULT ((1)) FOR available
GO
ALTER TABLE Authorities WITH CHECK ADD CONSTRAINT FK_Authorities_Customers FOREIGN KEY (username)
REFERENCES Customers (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Authorities CHECK CONSTRAINT FK_Authorities_Customers
GO
ALTER TABLE Authorities WITH CHECK ADD CONSTRAINT FK_Authorities_Roles FOREIGN KEY (roleid)
REFERENCES Roles (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Authorities CHECK CONSTRAINT FK_Authorities_Roles
GO
ALTER TABLE OrderDetails WITH CHECK ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (orderId)
REFERENCES Orders (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_OrderDetails_Orders
GO
ALTER TABLE OrderDetails WITH CHECK ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (productId)
REFERENCES Products (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_OrderDetails_Products
GO
ALTER TABLE Orders WITH CHECK ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (username)
REFERENCES Customers (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Orders CHECK CONSTRAINT FK_Orders_Customers
GO
ALTER TABLE Products WITH CHECK ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (categoryId)
REFERENCES Categories (id) ON DELETE CASCADE
GO
ALTER TABLE Products CHECK CONSTRAINT FK_Products_Categories
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'orderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
USE master
GO
ALTER DATABASE J6Store SET  READ_WRITE 
GO
