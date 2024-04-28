-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 06:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(50) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
('kNFSO5MpSknTqzY0PRS2', 'GreSoXcvmhOFQItsWDRq', 'brXxbFYaI900OYg3htQJ', 100, '1'),
('NsGMtcDf6bXtruWvTeik', 'GreSoXcvmhOFQItsWDRq', 'TjIuvwPCEkzfoKRK33eW', 50, '1'),
('DDUMnqEwYKneYTnFi8kY', 'GreSoXcvmhOFQItsWDRq', 'rZxKc0hpiglU1Dr2RxOP', 70, '1'),
('isw0MApOKjfGkfIunWZd', 'GreSoXcvmhOFQItsWDRq', 'mP7pxgC03fiD4TonvzPL', 90, '1'),
('WyYOhrkRAqbBnpJHehYs', 'GreSoXcvmhOFQItsWDRq', 'pIgPAhlnTVxDJgAQ9JOG', 89, '1');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('02', '02', 'me', 'me@gmail.com', 'seller purpose', 'how r you'),
('GKi6OaAWwyT5KsAhQ5RS', 'GreSoXcvmhOFQItsWDRq', 'john doe', 'john@gmail.com', 'seller purpose', 'john@gmail.com'),
('YaiBbIdjXFMI2KL67f5i', 'GreSoXcvmhOFQItsWDRq', 'me', 'me11@gmail.com', 'seller purpose', 'me11@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress',
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('01', 'hrfbyjkkli,m987', 'gjnyrfh,mlklp', 'hallow', '76377644', 'hallow@gmail.com', 'hgbrfdh', 'kk', 'nrfuyk', '657', 89, 2, '2024-01-01', 'in progress', 'pending'),
('01', 'hrfbyjkkli,m987', 'gjnyrfh,mlklp', 'hallow', '76377644', 'hallow@gmail.com', '', 'kk', 'nrfuyk', '657', 89, 2, '2024-01-01', 'in progress', 'pending'),
('65c226c8b6fb9', 'GreSoXcvmhOFQItsWDRq', 'QJEzFPxkgiUyXwtvh86N', 'vaishali jadhav', '4463583449', 'vaishalijadhav@gmail.com', '768,krishana house,palus,india,416310', 'home', 'cash on delivery', 'Doxei1dr3P1d1HuCeQx1', 99, 2, '2024-02-06', 'canceled', 'pending'),
('65c228d92f33a', 'GreSoXcvmhOFQItsWDRq', '7HewMylZJUy23KSA6XQY', 'me', '2135487908', 'me11@gmail.com', '769,bgnf,pune,india,416311', 'home', 'cash on delivery', 'mP7pxgC03fiD4TonvzPL', 90, 1, '2024-02-06', 'in progress', 'pending'),
('65c228d94599d', 'GreSoXcvmhOFQItsWDRq', '1A019givhbxN7wYuY8pH', 'me', '2135487908', 'me11@gmail.com', '769,bgnf,pune,india,416311', 'home', 'cash on delivery', 'FwKpm1wrYlktt2afJ9Cf', 66, 1, '2024-02-06', 'in progress', 'pending'),
('65c228d948d9c', 'GreSoXcvmhOFQItsWDRq', 'QJEzFPxkgiUyXwtvh86N', 'me', '2135487908', 'me11@gmail.com', '769,bgnf,pune,india,416311', 'home', 'cash on delivery', 'Doxei1dr3P1d1HuCeQx1', 99, 1, '2024-02-06', 'in progress', 'pending'),
('65c22afd9afbd', 'GreSoXcvmhOFQItsWDRq', 'QJEzFPxkgiUyXwtvh86N', 'vaishali jadhav', '478454568', 'hallow@gmail.com', '768,krishana house,palus,india,416308', 'home', 'cash on delivery', 'pIgPAhlnTVxDJgAQ9JOG', 89, 1, '2024-02-06', 'in progress', 'pending'),
('65c3582cb5b0b', 'GreSoXcvmhOFQItsWDRq', 'QJEzFPxkgiUyXwtvh86N', 'vaishali jadhav', '3254577579', 'vaishalijadhav1119@gmail.com', '768,krishana house,pune,india,23589', 'home', 'cash on delivery', 'Doxei1dr3P1d1HuCeQx1', 99, 1, '2024-02-07', 'canceled', 'pending'),
('65c35b9ecdb2f', 'GreSoXcvmhOFQItsWDRq', 'QJEzFPxkgiUyXwtvh86N', 'gauri', '5647679780', 'gauri@gmail.com', '769,krishana house,pune,india,456789', 'home', 'cash on delivery', 'pIgPAhlnTVxDJgAQ9JOG', 89, 1, '2024-02-07', 'canceled', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `status`) VALUES
('uRa0qGheig9MzJLEM0fb', 'YooRtLWGM9sqkTKC2okw', 'strawberry icecream bar', 78, 'product3.jpg', 10, 'Churning your own homemade ice cream is a fun and delicious activity for the summer months. Strawberry ice cream is a great choice when sweet, red strawberries are in peak season. With a little bit of planning and an ice cream maker, you can create a rich and creamy treat that tastes better than anything you can find in a grocery store.', 'deactive'),
('pIgPAhlnTVxDJgAQ9JOG', 'QJEzFPxkgiUyXwtvh86N', 'Butterscotch ice-cream', 89, '21bg.jpg', 10, 'testiee and sweet !', 'active'),
('Doxei1dr3P1d1HuCeQx1', 'QJEzFPxkgiUyXwtvh86N', ' dark chocolate ice-cream', 99, 'product15.jpg', 2, 'Dark and fudgey. Chocolate ice cream from the grocery store really doesn’t interest me. It’s this barely brown stuff that (I suppose) tastes a bit like chocolate. When I eat ice cream, I want something dark and rich and creamy and amazing. So a few years ago I went on a hunt for a really rich homemade dark chocolate ice cream recipe, and I’ve finally found it.', 'active'),
('sjaOOcKhm3lifHAaBHqc', 'QJEzFPxkgiUyXwtvh86N', 'mix flavour ice-cream ', 50, 'product14.jpg', 15, 'sweet', 'deactive'),
('pqau8b2r1p4drLhg44Vm', 'QJEzFPxkgiUyXwtvh86N', 'kivi flavoured ice cream', 88, 'product16.jpg', 3, 'Dark and fudgey. Chocolate ice cream from the grocery store really doesn’t interest me. It’s this barely brown stuff that (I suppose) tastes a bit like chocolate. When I eat ice cream, I want something dark and rich and creamy and amazing. So a few years ago I went on a hunt for a really rich homemade dark chocolate ice cream recipe, and I’ve finally found it.', 'deactive'),
('TjIuvwPCEkzfoKRK33eW', 'g6I2Q0wpX6yhvNVpr1to', 'strawberry icecream bar', 50, 'product12.jpg', 20, 'abcd', 'active'),
('v9qtNDw9ngroEkrxja9F', 'g6I2Q0wpX6yhvNVpr1to', 'Butterscotch ice-cream', 67, 'product2.jpg', 5, 'ghkk', 'deactive'),
('n5GbCeShffsBKeDibznM', 'g6I2Q0wpX6yhvNVpr1to', 'smoothie ice-cream', 100, 'product 9.jpg', 11, 'jkr5', 'active'),
('ZZb2QyL04b3okWuxmQDl', 'g6I2Q0wpX6yhvNVpr1to', 'blue berry icecream', 77, 'product1.jpg', 4, 'oplhytgf', 'deactive'),
('U2L2NJrUcQW9mkofxgOQ', '7HewMylZJUy23KSA6XQY', 'strawberry icecream bar', 67, 'product3.jpg', 10, 'xyz', 'active'),
('mP7pxgC03fiD4TonvzPL', '7HewMylZJUy23KSA6XQY', 'smoothie ice-cream', 90, 'product 9.jpg', 3, 'abc', 'active'),
('Ws09KPrdZFNXXa5F6sRi', '7HewMylZJUy23KSA6XQY', 'mix flavour ice-cream ', 70, 'product14.jpg', 15, 'dcynhu', 'deactive'),
('EyJswjGI870kHL15MAPN', '7HewMylZJUy23KSA6XQY', 'family pack', 100, 'product11.jpg', 7, 'klhygmn', 'deactive'),
('rZxKc0hpiglU1Dr2RxOP', '1A019givhbxN7wYuY8pH', 'mix flavour ice-cream ', 70, '3aZXJeMfBkoF0UEcJg36.jpg', 7, 'gearhtjnyhkm', 'active'),
('brXxbFYaI900OYg3htQJ', '1A019givhbxN7wYuY8pH', 'family pack', 100, 'product11.jpg', 9, 'jkrfzyj,', 'active'),
('pqVFvyvIhijjJ9Kqrdt2', '1A019givhbxN7wYuY8pH', 'kivi flavoured ice cream', 88, 'product16.jpg', 7, 'dyknm nzx', 'deactive'),
('FwKpm1wrYlktt2afJ9Cf', '1A019givhbxN7wYuY8pH', 'dark chocolate icecram', 66, 'product6.jpg', 6, 'jjjfhhn ', 'active'),
('gEHlI8RtGZQoSz47Qdvk', '1A019givhbxN7wYuY8pH', 'blue berry icecream', 77, 'product1.jpg', 3, 'numgf', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`, `image`) VALUES
('RqbniWi9p6V3kdztjPYk', 'sam', 'sam18@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '4Xe4Nt9niskFzksyJrw4.jpg'),
('CmFzIrSTcjyGFBepsEgo', 'radha', 'radhajadhav1111@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '5r86AB7jg2cLAJGBDLr9.jpg'),
('Oe3eha5FwQiGa1mOLV7C', 'vaishali', 'vaishalijadhav1119@gmail.com', '96327d5521a52aff95ad8066420f715fdd0d2561', '6muehmAFlK58FPVCzrSZ.jpg'),
('dF65Vhk0k2B5fFyhQQd6', 'me', 'radha@gmail.com', '9140597735dd558d85b9760f93d28d8fa5ba7e9d', 'DToYkxHx9vurSML3LdMW.jpg'),
('RkHEfiNj1K1eBB2OlCKO', 'shruti ', 'shruti@gmail.com', '0f2941ce57253d145212215be57dae5d58d29f81', 'K98x8JVd6CHnhUuCKCw3.jpg'),
('Rlsv346WaicmvhuVehMk', 'me', 'me11@gmail.com', '17ba0791499db908433b80f37c5fbc89b870084b', 'iREfvSGMjfHkhxGBrUkn.jpg'),
('H3Ee1fNyzzpIQBzPeuI1', 'prafull', 'prafull@gmail.com', 'ff33a8f10515011cba0d191ae58f7f9a4dd7a3e1', '2xpgYtONQxhvBeIZcyxU.jpg'),
('vaPoUV9cZ1vH9YRsItRj', 'sanika', 'sanika@gmail.com', '143ad82c245be0610f3b3dc3b0bc94b2db721a3b', '7O2DTD4Crh7Ue5Pir7ru.jpg'),
('6AnDzZLdULymUWyX53PR', 'vaishali jadhav', 'vaishalijadhav@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', '6A39PAE2RX8Z2ENX6D1O.jpg'),
('YooRtLWGM9sqkTKC2okw', 'krishana', 'radhakrishana1119@gmail.com', '9140597735dd558d85b9760f93d28d8fa5ba7e9d', 'RfCadWB2LKgczgP4hA5v.jpg'),
('QJEzFPxkgiUyXwtvh86N', 'krishana', 'radha@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'bXXbBuxYagZDP1iltxbZ.jpg'),
('hM0V3RfjjaLxxMxnli0R', 'prafull', 'radhajadhav1111@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'keiesz5JBC1Ihzb0oQS7.jpg'),
('g6I2Q0wpX6yhvNVpr1to', 'hallow ', 'hallow11@gmail.com', 'c55c508614dd2a3e2ca2a00250dc33fb924a7244', 'VM4NT8Shv2COXVaTpgJQ.jpg'),
('4VAwzi23nQoFpH3nuUXa', 'hallow ', 'hallow12@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'DxarTM2W0OSYryNpjOVr.jpg'),
('5fqsWJj6O8MnbUdFbr4h', 'nerisa ', 'nerisa30@gmail.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 'yKA8IKG7sp90iiA3ucxy.jpg'),
('7HewMylZJUy23KSA6XQY', 'hallow ', 'hallow@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'Jdw6DjVzPxtPFNbIMjH1.jpg'),
('1A019givhbxN7wYuY8pH', 'hellow', 'hellow@gmail.com', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 'evlZGuClqnGeb4CQ6wyW.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('ixxQBrxla3vLDJEZ2V2f', 'vaishali jadhav', 'vaishalijadhav1119@gmail.com', 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f', 'u9hxYFUD68oEmXGCOXCh.jpg'),
('hfJWiPgqtRagQU7QFawG', 'prafull', 'prafull@gmail.com', 'ff33a8f10515011cba0d191ae58f7f9a4dd7a3e1', 'yhjU3olZhqOz3Z1R1wKg.jpg'),
('MLIVOB1GhynyNDkgShlf', 'hey', 'hey@gmail.com', '17ba0791499db908433b80f37c5fbc89b870084b', 'mEcp7EGm96XXDyM67yCH.jpg'),
('GreSoXcvmhOFQItsWDRq', 'me', 'me@gmail.com', 'b6692ea5df920cad691c20319a6fffd7a4a766b8', 'cCkYj2oIs0XLwWOld2K0.jpg'),
('klhWEXyaGL2hGwJ2ywpc', 'krishana', 'radhakrishana1119@gmail.com', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 'vw8gRQzurWjF3v48sggw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `price`) VALUES
('xhA9aaUodB35Izpop5E0', 'GreSoXcvmhOFQItsWDRq', 'brXxbFYaI900OYg3htQJ', '100'),
('lcYr6CCiml5KWvsjpxts', 'GreSoXcvmhOFQItsWDRq', 'FwKpm1wrYlktt2afJ9Cf', '66'),
('i3LiSGxzh8r2yJedxDM9', 'GreSoXcvmhOFQItsWDRq', 'mP7pxgC03fiD4TonvzPL', '90'),
('1sAhs8gRjiX6ry1wleSS', 'GreSoXcvmhOFQItsWDRq', 'pIgPAhlnTVxDJgAQ9JOG', '89'),
('j7kuIbmjbX2kEdHN0VXI', 'GreSoXcvmhOFQItsWDRq', 'Doxei1dr3P1d1HuCeQx1', '99'),
('AxVBnyzE4LU1ndyCfNdL', 'GreSoXcvmhOFQItsWDRq', 'U2L2NJrUcQW9mkofxgOQ', '67');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
