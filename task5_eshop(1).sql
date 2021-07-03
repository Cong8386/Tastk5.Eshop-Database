-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 03, 2021 lúc 06:35 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `task5.eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Picture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`, `Description`, `Picture`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', NULL),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads', NULL),
(3, 'Confections', 'Desserts, candies, and sweet breads', NULL),
(4, 'Dairy Products', 'Cheeses', NULL),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', NULL),
(6, 'Meat/Poultry', 'Prepared meats', NULL),
(7, 'Produce', 'Dried fruit and bean curd', NULL),
(8, 'Seafood', 'Seaweed and fish', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Customers`
--

CREATE TABLE `Customers` (
  `customerID` varchar(100) NOT NULL,
  `Companyname` varchar(100) NOT NULL,
  `ContactName` varchar(100) NOT NULL,
  `ContactTitle` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `Image` blob DEFAULT NULL,
  `ImageThumbnail` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Customers`
--

INSERT INTO `Customers` (`customerID`, `Companyname`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `Image`, `ImageThumbnail`) VALUES
('BLONP', 'Blondel père et\r\nfils', 'Frédérique\r\nCiteaux', 'Marketing\r\nManager', '24, place\r\nKléber', 'Strasbourg', NULL, '67000', 'France', '88.60.15.31', '88.60.15.32', NULL, NULL),
('CHOPS', 'Chop-suey\r\nChinese', '\r\nYang Wang', 'Owner', 'Hauptstr. 29', 'Bern', NULL, '05022', 'Switzerland', '0452-076545', NULL, NULL, NULL),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', '7675-3425', '7675-3426', NULL, NULL),
('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing\r\nManager ', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany', '089-0877310', '0890877451', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Employess`
--

CREATE TABLE `Employess` (
  `EmployeeID` int(11) UNSIGNED NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `TitleOfCourtesy` varchar(100) NOT NULL,
  `BirthDate` varchar(100) NOT NULL,
  `HireDate` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `HomePhone` varchar(100) NOT NULL,
  `Extension` varchar(100) NOT NULL,
  `Photo` blob DEFAULT NULL,
  `Notes` varchar(100) NOT NULL,
  `ReportsTo` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Employess`
--

INSERT INTO `Employess` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Photo`, `Notes`, `ReportsTo`) VALUES
(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms', '1948-12-08 00:00:00', '1992-05-01 00:00:00', ' 507-20th Ave. E.Apt.2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-\r\n9857', '5467', NULL, 'Education includes a Ba in psychology from colorad', 2),
(2, 'Fuller', 'Andrew', 'Vice President,Sales ', 'Dr.', '1952-02-19 00:00:00', '1992-08-14 00:00:00', '908W.CAPITAL WAY', 'Tacoma', 'WA', '98401', 'USA', '(206)555-9842', '3457', NULL, 'Andrew received his BTS commercial in 1974...', NULL),
(3, 'Leverling', 'Janet', 'Sales\r\nRepresentative', 'Ms.', '1963-08-30 00:00:00', '1992-04-01 00:00:00', '722 Moss\r\nBay Blvd', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-\r\n3412', '3355', NULL, 'Janet has a BS degree in\r\nchemistry\r\nfrom\r\nBOston CoL...', 2),
(4, 'Peacock', 'Margaret', 'Sales\r\nRepresentative', 'MS.', '1937-09-19 00:00:00', '1993-05-03 00:00:00', ' 4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-\r\n8122', '5176', NULL, 'Margaret holds a Ba\r\nin English literature\r\nfrom con...', 2),
(5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04 00:00:00', '1994-01-02 00:00:00', '14 Garrett\r\nHill', 'LonDon', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', NULL, 'Steven buchanan graduated from \r\nSt.Andrews Univers...', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderDetails`
--

CREATE TABLE `orderDetails` (
  `OrderID` int(100) UNSIGNED NOT NULL,
  `ProductID` int(100) NOT NULL,
  `UnitPrice` varchar(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Discount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderDetails`
--

INSERT INTO `orderDetails` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
(2, 10255, '15.2000', 20, 0),
(11, 10248, '14.0000', 12, 0),
(14, 10249, '18.6000', 9, 0),
(16, 10255, '13.9000', 35, 0),
(22, 10251, '16.8000', 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int(100) UNSIGNED NOT NULL,
  `CustomerID` varchar(100) NOT NULL,
  `EmployeeID` int(100) NOT NULL,
  `OrderDate` varchar(100) NOT NULL,
  `RequireDate` varchar(100) NOT NULL,
  `ShippedDate` varchar(100) NOT NULL,
  `ShipViva` varchar(100) NOT NULL,
  `Freight` int(100) NOT NULL,
  `ShipName` varchar(100) NOT NULL,
  `ShipAddress` varchar(100) NOT NULL,
  `ShipCity` varchar(100) NOT NULL,
  `ShipRegion` varchar(100) DEFAULT NULL,
  `ShippostalCode` varchar(100) DEFAULT NULL,
  `ShipCountry` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Orders`
--

INSERT INTO `Orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequireDate`, `ShippedDate`, `ShipViva`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShippostalCode`, `ShipCountry`) VALUES
(10254, 'CHOPS', 5, '1994-08-11 00:00:00', '1994-09-08 00:00:00', '1994-08-23 00:00:00', '2', 23, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
(10258, 'ERNSH', 1, '1994-08-17 00:00:00', '1994-09-14 00:00:00', '1994-08-23 00:00:00', '1', 141, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10265, 'BLONP', 2, '1994-08-25 00:00:00', '1994-09-22 00:00:00', '1994-09-12 00:00:00', '1', 55, 'Blondel père et fils', '24, place\r\nKléber', 'Strasbourg', NULL, '67000', 'France'),
(10267, 'FRANK', 4, '1994-08-29 00:00:00', '1994-09-26 00:00:00', '1994-09-06 00:00:00', '1', 209, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Products`
--

CREATE TABLE `Products` (
  `ProductID` int(20) UNSIGNED NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `SupplierID` int(20) NOT NULL,
  `CategoryID` int(20) NOT NULL,
  `QuantityPerUnit` varchar(100) NOT NULL,
  `UnitPrice` int(20) NOT NULL,
  `UnitsInStock` int(20) NOT NULL,
  `UnitsOnOrder` int(20) NOT NULL,
  `ReorderLevel` int(20) NOT NULL,
  `Discontinued` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Products`
--

INSERT INTO `Products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
(2, 'chang', 1, 1, '24 - 12 oz bottles', 19, 17, 40, 25, 0),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21, 22, 30, 30, 0),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23, 35, 0, 0, 0),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17, 29, 0, 10, 0),
(22, 'Gustaf\'s\r\nKnäckebröd', 9, 5, '24 - 500 g pkgs.', 10, 3, 40, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Shippers`
--

CREATE TABLE `Shippers` (
  `ShipperID` int(11) UNSIGNED NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Shippers`
--

INSERT INTO `Shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
(1, 'Speedy Express', '(503)555-9831'),
(2, 'United Package', '(503)555-3199'),
(3, 'Federal Shipping', '(503)555-9931');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Suppliers`
--

CREATE TABLE `Suppliers` (
  `SupplierID` int(100) UNSIGNED NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `ContactName` varchar(100) NOT NULL,
  `ContactTitle` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Fax` varchar(100) DEFAULT NULL,
  `Homepage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Suppliers`
--

INSERT INTO `Suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `Homepage`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilber St', 'LonDon', NULL, 'EC1 4SD', 'UK', '(171)555-2222', NULL, NULL),
(5, 'Cooperativa de Quesos \r\n\'Las Cabras\'', ' Antonio del\r\n Valle Saavedra', 'Export\r\nAdministrator', 'Calle del Rosal\r\n4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 7654', NULL, NULL),
(6, 'Mayumi\'s', 'Mayumi Ohno', 'Marketing\r\nRepresentative', '92 Setsuko Chuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi\'s (on the World\r\nWide\r\nWeb)#http://www.micros...'),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing\r\nManager', '74 Rose St.Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
(9, 'PB Knäckebröd AB', 'LarsPeterson', 'SalesAgent', 'Kaloadagatan13', 'Göteborg', NULL, 'S34567', 'Sweden', '031-987 6543', '031-987 6591', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Chỉ mục cho bảng `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Chỉ mục cho bảng `Employess`
--
ALTER TABLE `Employess`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Chỉ mục cho bảng `orderDetails`
--
ALTER TABLE `orderDetails`
  ADD PRIMARY KEY (`OrderID`);

--
-- Chỉ mục cho bảng `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Chỉ mục cho bảng `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Chỉ mục cho bảng `Shippers`
--
ALTER TABLE `Shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Chỉ mục cho bảng `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `Employess`
--
ALTER TABLE `Employess`
  MODIFY `EmployeeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Orders`
--
ALTER TABLE `Orders`
  MODIFY `OrderID` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10268;

--
-- AUTO_INCREMENT cho bảng `Products`
--
ALTER TABLE `Products`
  MODIFY `ProductID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `Shippers`
--
ALTER TABLE `Shippers`
  MODIFY `ShipperID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `Suppliers`
--
ALTER TABLE `Suppliers`
  MODIFY `SupplierID` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
