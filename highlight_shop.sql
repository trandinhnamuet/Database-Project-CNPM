

create database [Highlight_Shop]
go

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `highlight_shop`
--



-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE [Highlight_Shop].[dbo].[Customers] (
  CustomerCode int NOT NULL,
  Name text NOT NULL,
  DateOfBirth date NOT NULL,
  PhoneNumber int NOT NULL,
  Address text NOT NULL,
  PurchaseNumber int NOT NULL
) ;

--
-- Dumping data for table `customers`
--

INSERT INTO [Highlight_Shop].[dbo].[Customers](CustomerCode, Name, DateOfBirth, PhoneNumber, Address, PurchaseNumber) VALUES
(1, 'Can Van Cat', '1987-12-07', 900009900, '12 Dich Vong Hau, Cau Giay, Ha Noi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE [Highlight_Shop].[dbo].[Orders] (
  OrderCode int NOT NULL,
  CustomerCode int NOT NULL,
  ProductCode int NOT NULL,
  QuantityOrdered int NOT NULL,
  OrderDate date NOT NULL,
  RequiredDate date NOT NULL,
  ShippedDate date NOT NULL,
  Status text NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE [Highlight_Shop].dbo.Payments (
  PaymentCode int NOT NULL,
  OrderCode int NOT NULL,
  CustomerCode int NOT NULL,
  PaymentDate date NOT NULL,
  Amount int NOT NULL,
  PaymentType text NOT NULL
) 

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE [Highlight_Shop].dbo.Products (
  ProductCode int NOT NULL,
  Name text NOT NULL,
  Price int NOT NULL,
  EntryDay date NOT NULL,
  ProductType text  NOT NULL,
  Size text  NOT NULL,
  Brand text  NOT NULL,
  ImageLink text NOT NULL,
  QuantityInStock int NOT NULL
)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE [Highlight_Shop].[dbo].[Customers]
  ADD PRIMARY KEY (CustomerCode);

--
-- Indexes for table `orders`
--
ALTER TABLE [Highlight_Shop].[dbo].[Orders]
  ADD PRIMARY KEY (OrderCode);

--
-- Indexes for table `payments`
--
ALTER TABLE [Highlight_Shop].dbo.Payments
  ADD PRIMARY KEY (PaymentCode);

--
-- Indexes for table `products`
--
ALTER TABLE [Highlight_Shop].dbo.Products
  ADD PRIMARY KEY (ProductCode);
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;