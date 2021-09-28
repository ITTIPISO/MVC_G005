-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 11:37 AM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db21_005`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdditionalOrders`
--

CREATE TABLE `AdditionalOrders` (
  `AddOrder_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Date` varchar(255) COLLATE tis620_bin NOT NULL,
  `Status` varchar(255) COLLATE tis620_bin NOT NULL,
  `EMP_ID` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `AdditionalOrders`
--

INSERT INTO `AdditionalOrders` (`AddOrder_ID`, `Date`, `Status`, `EMP_ID`) VALUES
('AD01', '08/07/2021', '-', 'S21'),
('AD02', '09/07/2021', '-', 'S21'),
('AD03', '10/07/2021', '-', 'S21');

-- --------------------------------------------------------

--
-- Table structure for table `AdditionalOrdersDetail`
--

CREATE TABLE `AdditionalOrdersDetail` (
  `AddOrder_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Product_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `AdditionalOrdersDetail`
--

INSERT INTO `AdditionalOrdersDetail` (`AddOrder_ID`, `Quantity`, `Product_ID`, `Color_ID`) VALUES
('AD01', 500, 'PR001', 'CO01'),
('AD01', 1000, 'PR001', 'CO02'),
('AD01', 700, 'PR003', 'CO04'),
('AD01', 300, 'PR004', 'CO06'),
('AD01', 1000, 'PR005', 'CO08'),
('AD02', 600, 'PR001', 'CO02'),
('AD02', 300, 'PR003', 'CO04'),
('AD02', 1000, 'PR004', 'CO05'),
('AD03', 400, 'PR001', 'CO02'),
('AD03', 500, 'PR002', 'CO03'),
('AD03', 500, 'PR005', 'CO08'),
('AD03', 1000, 'PR005', 'CO05');

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `Bill_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Date` varchar(255) COLLATE tis620_bin NOT NULL,
  `PaymentCondition` varchar(255) COLLATE tis620_bin NOT NULL,
  `EMP_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Customer_ID` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`Bill_ID`, `Date`, `PaymentCondition`, `EMP_ID`, `Customer_ID`) VALUES
('11001', '11-07-2021', 'P03', 'S11', 'C01'),
('11002', '12-07-2021', 'P01', 'S12', 'C02'),
('11003', '13-07-2021', 'P02', 'S13', 'C03'),
('11004', '14-07-2021', 'P01', 'S11', 'C04'),
('11005', '15-07-2021', 'P01', 'S12', 'C01'),
('11006', '16-07-2021', 'P03', 'S13', 'C02'),
('11007', '17-07-2021', 'P02', 'S11', 'C03'),
('11008', '18-07-2021', 'P03', 'S12', 'C04'),
('11009', '19-07-2021', 'P01', 'S13', 'C01'),
('11010', '20-07-2021', 'P04', 'S11', 'C02');

-- --------------------------------------------------------

--
-- Table structure for table `BillDetail`
--

CREATE TABLE `BillDetail` (
  `Bill_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Product_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Quantity` int(255) NOT NULL,
  `numcolor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `BillDetail`
--

INSERT INTO `BillDetail` (`Bill_ID`, `Product_ID`, `Color_ID`, `Quantity`, `numcolor`) VALUES
('11005', 'PR004', 'CO05', 500, 2),
('11005', 'PR004', 'CO08', 800, 2),
('11005', 'PR005', 'CO08', 200, 2),
('11005', 'PR006', 'CO07', 1500, 1),
('11006', 'PR004', 'CO05', 180, 2),
('11006', 'PR004', 'CO06', 400, 2),
('11006', 'PR005', 'CO08', 600, 2),
('11001', 'PR004', 'CO05', 450, 2),
('11002', 'PR004', 'CO06', 580, 1),
('11003', 'PR005', 'CO08', 1200, 2),
('11004', 'PR006', 'CO08', 1500, 1),
('11007', 'PR002', 'CO03', 200, 3),
('11008', 'PR003', 'CO04', 600, 1),
('11009', 'PR004', 'CO07', 440, 1),
('11009', 'PR005', 'CO08', 850, 1),
('11010', 'PR004', 'CO06', 200, 2),
('11010', 'PR004', 'CO05', 670, 1),
('11010', 'PR006', 'CO08', 900, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BillTracking`
--

CREATE TABLE `BillTracking` (
  `Bill_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(255) COLLATE tis620_bin NOT NULL,
  `otherevents` varchar(255) COLLATE tis620_bin NOT NULL,
  `Status_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `T_ID` int(11) NOT NULL,
  `PayStatus` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `BillTracking`
--

INSERT INTO `BillTracking` (`Bill_ID`, `Date`, `Status`, `otherevents`, `Status_ID`, `T_ID`, `PayStatus`) VALUES
('11001', '2021-07-27', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 1, ''),
('11002', '2021-07-27', 'ยกเลิก(ใช้เวลาผลิตนาน)', '', 'ยกเลิก', 2, ''),
('11003', '2021-07-27', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 3, ''),
('11004', '2021-07-27', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 4, ''),
('11005', '2021-07-27', 'ตกลงตามที่เสนอราคา', 'หัวหน้าอนุมัติแล้ว( S41 - 3 ส.ค. 64) ผลิต + 1 % ทุกรายการ', 'อนุมัติแล้ว', 5, ''),
('11006', '2021-07-27', 'ตกลงตามที่เสนอราคา', 'ชำระเงินมัดจำแล้ว (2 ส.ค. 64) \r\nหัวหน้าอนุมัติแล้ว (S42 - 3 ส.ค. 64) ผลิต + 1 % ทุกรายการ\r\n', 'อนุมัติแล้ว', 6, 'ชำระเงินมัดจำแล้ว'),
('11007', '2021-07-27', 'ตกลงตามที่เสนอราคา', 'ชำระเงินมัดจำแล้ว (5 ส.ค. 64) รออนุมัติ', 'อนุมัติแล้ว', 7, 'ชำระเงินมัดจำแล้ว'),
('11008', '2021-07-27', 'ตกลงตามที่เสนอราคา', 'รอชำระเงินมัดจำ', 'อนุมัติแล้ว', 8, ''),
('11009', '2021-07-27', 'ตกลงตามที่เสนอราคา', 'หัวหน้าอนุมัติแล้ว (S41 - 3 ส.ค. 64)ผลิต + 2 % ทุกรายการ', 'อนุมัติแล้ว', 9, ''),
('11010', '2021-07-27', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 10, ''),
('11001', '2021-07-30', 'ยกเลิก(ราคาสูง)', '', 'ยกเลิก', 11, ''),
('11003', '2021-07-30', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 12, ''),
('11004', '2021-07-30', 'ตกลงตามที่เสนอราคา', 'เครดิต 30 วันรอหัวหน้าอนุมัติ', 'อนุมัติแล้ว', 13, ''),
('11010', '2021-07-30', 'ลูกค้ายังไม่ตัดสินใจ', '', 'ยังไม่ตัดสินใจ', 14, ''),
('11010', '2021-07-30', 'ตกลงตามที่เสนอราคา', 'ชำระเงินมัดจำแล้ว (2 ส.ค. 64) \r\nหัวหน้าอนุมัติแล้ว(S41 - 3 ส.ค. 64) ผลิต + 2 % ทุกรายการ\r\n', 'อนุมัติแล้ว', 15, 'ชำระเงินมัดจำแล้ว');

-- --------------------------------------------------------

--
-- Table structure for table `Colors`
--

CREATE TABLE `Colors` (
  `Color_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Name` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Colors`
--

INSERT INTO `Colors` (`Color_ID`, `Name`) VALUES
('CO01', 'เทา-น้ำตาล'),
('CO02', 'น้ำตาล-น้ำตาล'),
('CO03', 'น้ำตาล'),
('CO04', 'เทา'),
('CO05', 'แดง'),
('CO06', 'ส้ม'),
('CO07', 'เขียว'),
('CO08', 'ฟ้า');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `Customer_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Name` varchar(255) COLLATE tis620_bin NOT NULL,
  `Address` varchar(255) COLLATE tis620_bin NOT NULL,
  `PhoneNumber` varchar(10) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`Customer_ID`, `Name`, `Address`, `PhoneNumber`) VALUES
('C01', 'คุณแก้ว', 'กำแพงแสน', '081321654'),
('C02', 'คุณอุดร', 'บางเลน', '0825689865'),
('C03', 'คุณพิพัฒน์', 'ดอนตูม', '087996554'),
('C04', 'คุณน้ำใส', 'สามพราน', '0855888855');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `EMP_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Name` varchar(255) COLLATE tis620_bin NOT NULL,
  `PositionName` varchar(255) COLLATE tis620_bin NOT NULL,
  `Username` varchar(255) COLLATE tis620_bin NOT NULL,
  `Password` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`EMP_ID`, `Name`, `PositionName`, `Username`, `Password`) VALUES
('S11', 'นายสมชาย', 'ฝ่ายขาย', 'S11', 'S111111'),
('S12', 'นายสมศักดิ์', 'ฝ่ายขาย', 'S12', 'S121111'),
('S13', 'นางสมสมร', 'ฝ่ายขาย', 'S13', 'S131111'),
('S21', ' นางสาวพรศรี', 'ฝ่ายจัดซื้อ', 'S21', 'S211111'),
('S22', 'นางพรพรรณ', 'ฝ่ายจัดซื้อ', 'S22', 'S221111'),
('S31', 'นายยิ่งยง', 'ฝ่ายผลิต', 'S31', 'S311111'),
('S32', 'นายบัวขาว', 'ฝ่ายผลิต', 'S32', 'S321111'),
('S41', 'นายนิมิต', 'ผู้จัดการ', 'S41', 'S411111'),
('S42', 'นางประนอม', 'ผู้จัดการ', 'S42', 'S421111');

-- --------------------------------------------------------

--
-- Table structure for table `PaymentCondition`
--

CREATE TABLE `PaymentCondition` (
  `Pay_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Pay_Name` varchar(255) COLLATE tis620_bin NOT NULL,
  `percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `PaymentCondition`
--

INSERT INTO `PaymentCondition` (`Pay_ID`, `Pay_Name`, `percent`) VALUES
('P01', 'เครดิต 30 วัน', 0),
('P02', 'มัดจำ 30%', 0.3),
('P03', 'มัดจำ 40%', 0.4),
('P04', 'มัดจำ 50%', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `PaymentRecord`
--

CREATE TABLE `PaymentRecord` (
  `Price` int(11) NOT NULL,
  `Date` varchar(255) COLLATE tis620_bin NOT NULL,
  `Bill_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `EMP_ID` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

-- --------------------------------------------------------

--
-- Table structure for table `PPPOrders`
--

CREATE TABLE `PPPOrders` (
  `Product_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `PriceAddPerColor` float NOT NULL,
  `PPP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `PPPOrders`
--

INSERT INTO `PPPOrders` (`Product_ID`, `Quantity`, `Price`, `PriceAddPerColor`, `PPP_ID`) VALUES
('PR005', 50, 80, 20, 1),
('PR005', 100, 75, 18, 2),
('PR001', 50, 150, 18, 3),
('PR001', 100, 120, 15, 4),
('PR005', 200, 68, 14, 5),
('PR005', 500, 64, 12, 6),
('PR001', 200, 98, 12, 7),
('PR001', 400, 90, 10, 8),
('PR005', 800, 60, 10, 9),
('PR005', 801, 58, 9, 10),
('PR001', 600, 86, 9, 11),
('PR001', 800, 83, 8, 12),
('PR003', 100, 57, 9, 13),
('PR003', 200, 50, 8, 14),
('PR001', 801, 81, 7, 15),
('PR006', 100, 75, 25, 16),
('PR003', 300, 45, 7.5, 17),
('PR003', 500, 39, 6, 18),
('PR006', 300, 70, 22, 19),
('PR006', 500, 64, 20, 20),
('PR003', 800, 37, 5, 21),
('PR003', 801, 34, 4.5, 22),
('PR006', 700, 62, 16, 23),
('PR006', 800, 55, 15, 24),
('PR006', 801, 52, 12, 25),
('PR002', 100, 69, 9, 26),
('PR002', 200, 63, 7, 27),
('PR002', 300, 56, 6, 28),
('PR002', 500, 50, 5.5, 29),
('PR002', 800, 49, 5, 30),
('PR002', 801, 48, 4.5, 31),
('PR004', 50, 30, 9, 32),
('PR004', 100, 20, 8, 33),
('PR004', 200, 18, 7, 34),
('PR004', 300, 15, 7.5, 35),
('PR004', 500, 12, 6, 36),
('PR004', 800, 10, 5, 37),
('PR004', 801, 8, 4, 38);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `Product_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Name` varchar(255) COLLATE tis620_bin NOT NULL,
  `ProductDetail` varchar(255) COLLATE tis620_bin NOT NULL,
  `ProductType_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Min` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`Product_ID`, `Name`, `ProductDetail`, `ProductType_ID`, `Min`) VALUES
('PR001', 'ชุดเครื่องเขียน "Back to Nature"', 'ดินสอ ปากกา กระดาษ ยางลบ ไม้บรรทัดไม้ ไผ่ ไฮไลท์ กบเหลาไม้ Eco Bag', 'T01', 800),
('PR002', '"Leaf Message" memo box', 'กระดาษโน้ต 150 แผ่น ดินสอ 3.5 นิ้ว', 'T01', 600),
('PR003', 'Natural Post it', 'Post it 3x3 และ 1x3 อย่างน้อย 50 แผ่น', 'T01', 400),
('PR004', '"recycle pen" ปากการีไซเคิล', 'ปากกาแบบกด ด้ามทำจากกระดาษรีไซเคิลม้วนเป็นโรล หมึกสีน้ำเงิน', 'T01', 300),
('PR005', 'พัดลมมือถือเด็กอ้วน', 'พัดผมมือถือรูปเด็กอ้วน ขนาดกะทัดรัด', 'T02', 200),
('PR006', 'พัดลมมือถือcool', 'พัดลมมือถือสีใส ปุ่มเปิดด้านข้าง', 'T02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ProductColors`
--

CREATE TABLE `ProductColors` (
  `Product_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Color_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `OnHand` int(11) NOT NULL,
  `pc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `ProductColors`
--

INSERT INTO `ProductColors` (`Product_ID`, `Color_ID`, `OnHand`, `pc_id`) VALUES
('PR001', 'CO01', 500, 1),
('PR001', 'CO02', 2000, 2),
('PR002', 'CO03', 500, 3),
('PR003', 'CO04', 1000, 4),
('PR004', 'CO05', 1000, 5),
('PR004', 'CO06', 300, 6),
('PR004', 'CO07', 0, 7),
('PR005', 'CO08', 1500, 8),
('PR005', 'CO05', 500, 9),
('PR006', 'CO08', 0, 10),
('PR006', 'CO07', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ProductRecord`
--

CREATE TABLE `ProductRecord` (
  `PRecord_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `ProductStatus` varchar(255) COLLATE tis620_bin NOT NULL,
  `DeliverStatus` varchar(255) COLLATE tis620_bin NOT NULL,
  `Bill_ID` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ProductType`
--

CREATE TABLE `ProductType` (
  `ProductType_ID` varchar(255) COLLATE tis620_bin NOT NULL,
  `Name` varchar(255) COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `ProductType`
--

INSERT INTO `ProductType` (`ProductType_ID`, `Name`) VALUES
('T01', 'เครื่องเขียน'),
('T02', 'พัดลมมือถือ');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q01`
--
CREATE TABLE `Q01` (
`EMP_ID` varchar(255)
,`Name` varchar(255)
,`Username` varchar(255)
,`password` varchar(255)
,`PositionName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q02`
--
CREATE TABLE `Q02` (
`PositionName` varchar(255)
,`Pcount` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q03`
--
CREATE TABLE `Q03` (
`Customer_ID` varchar(255)
,`Name` varchar(255)
,`Address` varchar(255)
,`PhoneNumber` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q04`
--
CREATE TABLE `Q04` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` double
,`total` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_1`
--
CREATE TABLE `Q05_1` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` int(11)
,`totals` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_2`
--
CREATE TABLE `Q05_2` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` int(11)
,`totals` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_3`
--
CREATE TABLE `Q05_3` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` int(11)
,`totals` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_4`
--
CREATE TABLE `Q05_4` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` int(11)
,`totals` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_5`
--
CREATE TABLE `Q05_5` (
`Product_ID` varchar(255)
,`Name` varchar(255)
,`Price` int(11)
,`totals` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q06`
--
CREATE TABLE `Q06` (
`รหัส` varchar(255)
,`ชื่อ` varchar(255)
,`หมวด` varchar(255)
,`สี` varchar(255)
,`ขั้นต่ำ` int(11)
,`จำนวนครั้งที่ซื้อ` bigint(21)
,`จำนวนที่มีรวม` decimal(32,0)
,`จจำนวนที่ต้องสั่งเพิ่ม` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q07`
--
CREATE TABLE `Q07` (
`รหัสสินค้า` varchar(255)
,`ชื่อสินค้า` varchar(255)
,`หมวด` varchar(255)
,`จำนวนสี` bigint(21)
,`จำนวนที่มีรวม` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q08`
--
CREATE TABLE `Q08` (
`รหัส` varchar(255)
,`ชื่อสินค้า` varchar(255)
,`สี` varchar(255)
,`จำนวนขั้นต่ำ` int(11)
,`จำนวนที่มีรวม` decimal(32,0)
,`จำนวนที่ต้องสั่งเพิ่ม` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q09`
--
CREATE TABLE `Q09` (
`รหัส` varchar(255)
,`รหัสสินค้า` varchar(255)
,`สี` varchar(255)
,`Quantity` int(255)
,`ราคาต่อชิ้น` double
,`ราคารวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
--
CREATE TABLE `Q10` (
`รหัสสินค้า` varchar(255)
,`ชื่อ` varchar(255)
,`สี` varchar(255)
,`จำนวนสินค้าที่ออกใบเสนอราคา` decimal(65,0)
,`สินค้าที่มีในstock` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q11`
--
CREATE TABLE `Q11` (
`รหัสใบ` varchar(255)
,`วันที่` varchar(255)
,`ชื่อ` varchar(255)
,`totals` double
,`totalsVAT` double
,`PaymentCondition` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q12`
--
CREATE TABLE `Q12` (
`ชื่อพนักงาน` varchar(255)
,`จำนวนใบเสนอราคา` bigint(21)
,`ยอดรวม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q13`
--
CREATE TABLE `Q13` (
`สถานะ` varchar(255)
,`จำนวน` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q14`
--
CREATE TABLE `Q14` (
`หมายเลขใบเสนอราคา` varchar(255)
,`วันที่ติดตาม` date
,`ผลการติดตามการเสนอราคา` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q15`
--
CREATE TABLE `Q15` (
`หมายเลขใบเสนอราคา` varchar(255)
,`วันที่ติดตาม` date
,`ผลการติดตามการเสนอราคา` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q16`
--
CREATE TABLE `Q16` (
`รหัสใบ` varchar(255)
,`ยอดชำระ` double
,`ยอดค้างชำระ` double
);

-- --------------------------------------------------------

--
-- Structure for view `Q01`
--
DROP TABLE IF EXISTS `Q01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q01`  AS  select `Employees`.`EMP_ID` AS `EMP_ID`,`Employees`.`Name` AS `Name`,`Employees`.`Username` AS `Username`,`Employees`.`Password` AS `password`,`Employees`.`PositionName` AS `PositionName` from `Employees` ;

-- --------------------------------------------------------

--
-- Structure for view `Q02`
--
DROP TABLE IF EXISTS `Q02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q02`  AS  select `Employees`.`PositionName` AS `PositionName`,count(`Employees`.`Name`) AS `Pcount` from `Employees` group by `Employees`.`PositionName` ;

-- --------------------------------------------------------

--
-- Structure for view `Q03`
--
DROP TABLE IF EXISTS `Q03`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q03`  AS  select `Customer`.`Customer_ID` AS `Customer_ID`,`Customer`.`Name` AS `Name`,`Customer`.`Address` AS `Address`,`Customer`.`PhoneNumber` AS `PhoneNumber` from `Customer` ;

-- --------------------------------------------------------

--
-- Structure for view `Q04`
--
DROP TABLE IF EXISTS `Q04`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q04`  AS  select `Product`.`Product_ID` AS `Product_ID`,`Product`.`Name` AS `Name`,(`PPPOrders`.`PriceAddPerColor` + `PPPOrders`.`Price`) AS `Price`,((`PPPOrders`.`PriceAddPerColor` + `PPPOrders`.`Price`) * 150) AS `total` from (`Product` join `PPPOrders` on((`Product`.`Product_ID` = `PPPOrders`.`Product_ID`))) where ((`PPPOrders`.`Quantity` = 200) and (`PPPOrders`.`Product_ID` = 'PR001')) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_1`
--
DROP TABLE IF EXISTS `Q05_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q05_1`  AS  select `p`.`Product_ID` AS `Product_ID`,`p`.`Name` AS `Name`,max(`pp`.`Price`) AS `Price`,max((50 * (`pp`.`Price` + (`pp`.`PriceAddPerColor` * (1 - 1))))) AS `totals` from (`Product` `p` join `PPPOrders` `pp` on((`p`.`Product_ID` = `pp`.`Product_ID`))) where (`pp`.`Quantity` >= 50) group by `p`.`Product_ID`,`p`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_2`
--
DROP TABLE IF EXISTS `Q05_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q05_2`  AS  select `p`.`Product_ID` AS `Product_ID`,`p`.`Name` AS `Name`,max(`pp`.`Price`) AS `Price`,max((50 * (`pp`.`Price` + (`pp`.`PriceAddPerColor` * (3 - 1))))) AS `totals` from (`Product` `p` join `PPPOrders` `pp` on((`p`.`Product_ID` = `pp`.`Product_ID`))) where (`pp`.`Quantity` >= 50) group by `p`.`Product_ID`,`p`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_3`
--
DROP TABLE IF EXISTS `Q05_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q05_3`  AS  select `p`.`Product_ID` AS `Product_ID`,`p`.`Name` AS `Name`,max(`pp`.`Price`) AS `Price`,max((400 * (`pp`.`Price` + (`pp`.`PriceAddPerColor` * (4 - 1))))) AS `totals` from (`Product` `p` join `PPPOrders` `pp` on((`p`.`Product_ID` = `pp`.`Product_ID`))) where (`pp`.`Quantity` >= 50) group by `p`.`Product_ID`,`p`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_4`
--
DROP TABLE IF EXISTS `Q05_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q05_4`  AS  select `p`.`Product_ID` AS `Product_ID`,`p`.`Name` AS `Name`,max(`pp`.`Price`) AS `Price`,max((1000 * (`pp`.`Price` + (`pp`.`PriceAddPerColor` * (1 - 1))))) AS `totals` from (`Product` `p` join `PPPOrders` `pp` on((`p`.`Product_ID` = `pp`.`Product_ID`))) where (`pp`.`Quantity` >= 50) group by `p`.`Product_ID`,`p`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_5`
--
DROP TABLE IF EXISTS `Q05_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q05_5`  AS  select `p`.`Product_ID` AS `Product_ID`,`p`.`Name` AS `Name`,max(`pp`.`Price`) AS `Price`,max((1000 * (`pp`.`Price` + (`pp`.`PriceAddPerColor` * (3 - 1))))) AS `totals` from (`Product` `p` join `PPPOrders` `pp` on((`p`.`Product_ID` = `pp`.`Product_ID`))) where (`pp`.`Quantity` >= 50) group by `p`.`Product_ID`,`p`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q06`
--
DROP TABLE IF EXISTS `Q06`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q06`  AS  select `p`.`Product_ID` AS `รหัส`,`p`.`Name` AS `ชื่อ`,`pt`.`Name` AS `หมวด`,`c`.`Name` AS `สี`,`p`.`Min` AS `ขั้นต่ำ`,if((count(`aod`.`Product_ID`) > 0),count(`aod`.`Product_ID`),0) AS `จำนวนครั้งที่ซื้อ`,if((sum(`aod`.`Quantity`) > 0),sum(`aod`.`Quantity`),0) AS `จำนวนที่มีรวม`,if((isnull(sum(`aod`.`Quantity`)) or (sum(`aod`.`Quantity`) = 0)),`p`.`Min`,if((sum(`aod`.`Quantity`) > `p`.`Min`),0,(`p`.`Min` - sum(`aod`.`Quantity`)))) AS `จจำนวนที่ต้องสั่งเพิ่ม` from ((((`Product` `p` join `ProductType` `pt` on((`p`.`ProductType_ID` = `pt`.`ProductType_ID`))) join `ProductColors` `pc` on((`p`.`Product_ID` = `pc`.`Product_ID`))) join `Colors` `c` on((`pc`.`Color_ID` = `c`.`Color_ID`))) left join `AdditionalOrdersDetail` `aod` on(((`pc`.`Product_ID` = `aod`.`Product_ID`) and (`pc`.`Color_ID` = `aod`.`Color_ID`)))) group by `p`.`Product_ID`,`c`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q07`
--
DROP TABLE IF EXISTS `Q07`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q07`  AS  select `p`.`Product_ID` AS `รหัสสินค้า`,`p`.`Name` AS `ชื่อสินค้า`,`pt`.`Name` AS `หมวด`,count(distinct `pc`.`Color_ID`) AS `จำนวนสี`,if((sum(`ad`.`Quantity`) is not null),sum(`ad`.`Quantity`),0) AS `จำนวนที่มีรวม` from (((`Product` `p` join `ProductType` `pt` on((`pt`.`ProductType_ID` = `p`.`ProductType_ID`))) join `ProductColors` `pc` on((`pc`.`Product_ID` = `p`.`Product_ID`))) left join `AdditionalOrdersDetail` `ad` on(((`ad`.`Product_ID` = `p`.`Product_ID`) and (`ad`.`Color_ID` = `pc`.`Color_ID`)))) group by `p`.`Product_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q08`
--
DROP TABLE IF EXISTS `Q08`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q08`  AS  select `p`.`Product_ID` AS `รหัส`,`p`.`Name` AS `ชื่อสินค้า`,`Colors`.`Name` AS `สี`,`p`.`Min` AS `จำนวนขั้นต่ำ`,if(sum(`AdditionalOrdersDetail`.`Quantity`),sum(`AdditionalOrdersDetail`.`Quantity`),0) AS `จำนวนที่มีรวม`,if((isnull(sum(`AdditionalOrdersDetail`.`Quantity`)) or (sum(`AdditionalOrdersDetail`.`Quantity`) = 0)),`p`.`Min`,if((sum(`AdditionalOrdersDetail`.`Quantity`) > `p`.`Min`),0,(`p`.`Min` - sum(`AdditionalOrdersDetail`.`Quantity`)))) AS `จำนวนที่ต้องสั่งเพิ่ม` from (((`Product` `p` join `ProductColors` on((`p`.`Product_ID` = `ProductColors`.`Product_ID`))) join `Colors` on((`ProductColors`.`Color_ID` = `Colors`.`Color_ID`))) left join `AdditionalOrdersDetail` on(((`ProductColors`.`Product_ID` = `AdditionalOrdersDetail`.`Product_ID`) and (`AdditionalOrdersDetail`.`Color_ID` = `ProductColors`.`Color_ID`)))) group by `p`.`Product_ID`,`Colors`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q09`
--
DROP TABLE IF EXISTS `Q09`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q09`  AS  select `BillDetail`.`Bill_ID` AS `รหัส`,`Product`.`Product_ID` AS `รหัสสินค้า`,`Colors`.`Name` AS `สี`,`BillDetail`.`Quantity` AS `Quantity`,max((`PPPOrders`.`Price` + (`PPPOrders`.`PriceAddPerColor` * (`BillDetail`.`numcolor` - 1)))) AS `ราคาต่อชิ้น`,max((`BillDetail`.`Quantity` * (`PPPOrders`.`Price` + (`PPPOrders`.`PriceAddPerColor` * (`BillDetail`.`numcolor` - 1))))) AS `ราคารวม` from (((`BillDetail` join `Product` on((`BillDetail`.`Product_ID` = `Product`.`Product_ID`))) join `Colors` on((`BillDetail`.`Color_ID` = `Colors`.`Color_ID`))) join `PPPOrders` on((`Product`.`Product_ID` = `PPPOrders`.`Product_ID`))) where if((`BillDetail`.`Quantity` > 800),(`PPPOrders`.`Quantity` = 801),(`PPPOrders`.`Quantity` > `BillDetail`.`Quantity`)) group by `BillDetail`.`Bill_ID`,`Product`.`Product_ID`,`Colors`.`Name`,`BillDetail`.`Quantity` ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q10`  AS  select `p`.`Product_ID` AS `รหัสสินค้า`,`p`.`Name` AS `ชื่อ`,`c`.`Name` AS `สี`,if((sum(`b`.`Quantity`) > 0),sum(`b`.`Quantity`),0) AS `จำนวนสินค้าที่ออกใบเสนอราคา`,`pc`.`OnHand` AS `สินค้าที่มีในstock` from (((`Product` `p` join `ProductColors` `pc` on((`p`.`Product_ID` = `pc`.`Product_ID`))) join `Colors` `c` on((`pc`.`Color_ID` = `c`.`Color_ID`))) left join `BillDetail` `b` on(((`pc`.`Product_ID` = `b`.`Product_ID`) and (`pc`.`Color_ID` = `b`.`Color_ID`)))) group by `p`.`Product_ID`,`c`.`Color_ID`,`pc`.`OnHand` ;

-- --------------------------------------------------------

--
-- Structure for view `Q11`
--
DROP TABLE IF EXISTS `Q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q11`  AS  select `b`.`Bill_ID` AS `รหัสใบ`,`b`.`Date` AS `วันที่`,`cus`.`Name` AS `ชื่อ`,max((`bd`.`Quantity` * (`ppo`.`Price` + (`ppo`.`PriceAddPerColor` * (`bd`.`numcolor` - 1))))) AS `totals`,max(((`bd`.`Quantity` * (`ppo`.`Price` + (`ppo`.`PriceAddPerColor` * (`bd`.`numcolor` - 1)))) * 1.07)) AS `totalsVAT`,round(max((((`bd`.`Quantity` * (`ppo`.`Price` + (`ppo`.`PriceAddPerColor` * (`bd`.`numcolor` - 1)))) * 1.07) * `pmc`.`percent`)),2) AS `PaymentCondition` from ((((((`Bill` `b` join `BillDetail` `bd` on((`b`.`Bill_ID` = `bd`.`Bill_ID`))) join `Customer` `cus` on((`b`.`Customer_ID` = `cus`.`Customer_ID`))) join `ProductColors` `pc` on(((`bd`.`Product_ID` = `pc`.`Product_ID`) and (`bd`.`Color_ID` = `pc`.`Color_ID`)))) join `PPPOrders` `ppo` on((`bd`.`Product_ID` = `ppo`.`Product_ID`))) join `Colors` `c` on((`bd`.`Color_ID` = `c`.`Color_ID`))) join `PaymentCondition` `pmc` on((`b`.`PaymentCondition` = `pmc`.`Pay_ID`))) where if((`bd`.`Quantity` > 801),(`ppo`.`Quantity` = 801),(`ppo`.`Quantity` >= `bd`.`Quantity`)) group by `b`.`Bill_ID`,`b`.`Date`,`cus`.`Name` ;

-- --------------------------------------------------------

--
-- Structure for view `Q12`
--
DROP TABLE IF EXISTS `Q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q12`  AS  select `e`.`Name` AS `ชื่อพนักงาน`,count(`Q11`.`รหัสใบ`) AS `จำนวนใบเสนอราคา`,sum(`Q11`.`totals`) AS `ยอดรวม` from ((`Employees` `e` join `Bill` `b` on((`e`.`EMP_ID` = `b`.`EMP_ID`))) join `Q11` on((`Q11`.`รหัสใบ` = `b`.`Bill_ID`))) group by `e`.`EMP_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q13`
--
DROP TABLE IF EXISTS `Q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q13`  AS  select `b`.`Status_ID` AS `สถานะ`,count(`b`.`Status_ID`) AS `จำนวน` from (`BillTracking` `b` join (select max(`bt`.`T_ID`) AS `bts`,`bt`.`Bill_ID` AS `Bill_ID` from `BillTracking` `bt` group by `bt`.`Bill_ID`) `bbt` on((`bbt`.`bts` = `b`.`T_ID`))) group by `b`.`Status_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q14`
--
DROP TABLE IF EXISTS `Q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q14`  AS  select `b`.`Bill_ID` AS `หมายเลขใบเสนอราคา`,`b`.`Date` AS `วันที่ติดตาม`,`b`.`Status_ID` AS `ผลการติดตามการเสนอราคา` from `BillTracking` `b` order by `b`.`Bill_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q15`
--
DROP TABLE IF EXISTS `Q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q15`  AS  select `b`.`Bill_ID` AS `หมายเลขใบเสนอราคา`,`b`.`Date` AS `วันที่ติดตาม`,`b`.`Status_ID` AS `ผลการติดตามการเสนอราคา` from (`BillTracking` `b` join (select max(`bt`.`T_ID`) AS `bts`,`bt`.`Bill_ID` AS `Bill_ID` from `BillTracking` `bt` group by `bt`.`Bill_ID`) `bbt` on((`bbt`.`bts` = `b`.`T_ID`))) group by `b`.`Bill_ID`,`b`.`Date`,`b`.`Status_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q16`
--
DROP TABLE IF EXISTS `Q16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_005`@`%` SQL SECURITY DEFINER VIEW `Q16`  AS  select `Q11`.`รหัสใบ` AS `รหัสใบ`,`Q11`.`totalsVAT` AS `ยอดชำระ`,(`Q11`.`totalsVAT` - `Q11`.`PaymentCondition`) AS `ยอดค้างชำระ` from (`Q11` join `BillTracking` `bt` on((`bt`.`Bill_ID` = `Q11`.`รหัสใบ`))) where (`bt`.`PayStatus` = 'ชำระเงินมัดจำแล้ว') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdditionalOrders`
--
ALTER TABLE `AdditionalOrders`
  ADD PRIMARY KEY (`AddOrder_ID`),
  ADD KEY `Additionalorders_fk0` (`EMP_ID`);

--
-- Indexes for table `AdditionalOrdersDetail`
--
ALTER TABLE `AdditionalOrdersDetail`
  ADD KEY `AdditionalOrdersDetail_fk0` (`AddOrder_ID`),
  ADD KEY `AdditionalOrdersDetail_fk1` (`Product_ID`),
  ADD KEY `Color` (`Color_ID`);

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`Bill_ID`),
  ADD KEY `Staff_ID` (`EMP_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `PaymentCondition` (`PaymentCondition`);

--
-- Indexes for table `BillDetail`
--
ALTER TABLE `BillDetail`
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `Bill_ID` (`Bill_ID`),
  ADD KEY `Color_ID` (`Color_ID`);

--
-- Indexes for table `BillTracking`
--
ALTER TABLE `BillTracking`
  ADD PRIMARY KEY (`T_ID`),
  ADD KEY `Bill_ID` (`Bill_ID`);

--
-- Indexes for table `Colors`
--
ALTER TABLE `Colors`
  ADD PRIMARY KEY (`Color_ID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `PaymentCondition`
--
ALTER TABLE `PaymentCondition`
  ADD PRIMARY KEY (`Pay_ID`);

--
-- Indexes for table `PaymentRecord`
--
ALTER TABLE `PaymentRecord`
  ADD KEY `PaymentRecord_fk0` (`Bill_ID`),
  ADD KEY `PaymentRecord_fk1` (`EMP_ID`);

--
-- Indexes for table `PPPOrders`
--
ALTER TABLE `PPPOrders`
  ADD PRIMARY KEY (`PPP_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `ProductType_ID` (`ProductType_ID`);

--
-- Indexes for table `ProductColors`
--
ALTER TABLE `ProductColors`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `Color_ID` (`Color_ID`);

--
-- Indexes for table `ProductRecord`
--
ALTER TABLE `ProductRecord`
  ADD PRIMARY KEY (`PRecord_ID`),
  ADD KEY `ProductRecord_fk0` (`Bill_ID`);

--
-- Indexes for table `ProductType`
--
ALTER TABLE `ProductType`
  ADD PRIMARY KEY (`ProductType_ID`),
  ADD KEY `ProductType_ID` (`ProductType_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BillTracking`
--
ALTER TABLE `BillTracking`
  MODIFY `T_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `PPPOrders`
--
ALTER TABLE `PPPOrders`
  MODIFY `PPP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `ProductColors`
--
ALTER TABLE `ProductColors`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AdditionalOrders`
--
ALTER TABLE `AdditionalOrders`
  ADD CONSTRAINT `Additionalorders_fk0` FOREIGN KEY (`EMP_ID`) REFERENCES `Employees` (`EMP_ID`);

--
-- Constraints for table `AdditionalOrdersDetail`
--
ALTER TABLE `AdditionalOrdersDetail`
  ADD CONSTRAINT `AdditionalOrdersDetail_fk0` FOREIGN KEY (`AddOrder_ID`) REFERENCES `AdditionalOrders` (`AddOrder_ID`),
  ADD CONSTRAINT `AdditionalOrdersDetail_fk1` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`),
  ADD CONSTRAINT `AdditionalOrdersDetail_ibfk_1` FOREIGN KEY (`Color_ID`) REFERENCES `Colors` (`Color_ID`);

--
-- Constraints for table `Bill`
--
ALTER TABLE `Bill`
  ADD CONSTRAINT `Bill_fk0` FOREIGN KEY (`EMP_ID`) REFERENCES `Employees` (`EMP_ID`),
  ADD CONSTRAINT `Bill_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  ADD CONSTRAINT `Bill_ibfk_2` FOREIGN KEY (`PaymentCondition`) REFERENCES `PaymentCondition` (`Pay_ID`);

--
-- Constraints for table `BillDetail`
--
ALTER TABLE `BillDetail`
  ADD CONSTRAINT `BillDetail_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `Bill` (`Bill_ID`),
  ADD CONSTRAINT `BillDetail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`),
  ADD CONSTRAINT `BillDetail_ibfk_3` FOREIGN KEY (`Color_ID`) REFERENCES `Colors` (`Color_ID`);

--
-- Constraints for table `BillTracking`
--
ALTER TABLE `BillTracking`
  ADD CONSTRAINT `BillTracking_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `Bill` (`Bill_ID`);

--
-- Constraints for table `PaymentRecord`
--
ALTER TABLE `PaymentRecord`
  ADD CONSTRAINT `PaymentRecord_fk0` FOREIGN KEY (`Bill_ID`) REFERENCES `Bill` (`Bill_ID`),
  ADD CONSTRAINT `PaymentRecord_fk1` FOREIGN KEY (`EMP_ID`) REFERENCES `Employees` (`EMP_ID`);

--
-- Constraints for table `PPPOrders`
--
ALTER TABLE `PPPOrders`
  ADD CONSTRAINT `PPPOrders_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`);

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`ProductType_ID`) REFERENCES `ProductType` (`ProductType_ID`);

--
-- Constraints for table `ProductColors`
--
ALTER TABLE `ProductColors`
  ADD CONSTRAINT `ProductColors_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`),
  ADD CONSTRAINT `ProductColors_ibfk_2` FOREIGN KEY (`Color_ID`) REFERENCES `Colors` (`Color_ID`);

--
-- Constraints for table `ProductRecord`
--
ALTER TABLE `ProductRecord`
  ADD CONSTRAINT `ProductRecord_fk0` FOREIGN KEY (`Bill_ID`) REFERENCES `Bill` (`Bill_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
