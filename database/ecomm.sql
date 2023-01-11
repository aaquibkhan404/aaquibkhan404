-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2021 at 09:03 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(11, 9, 31, 1),
(14, 16, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Living Room', 'living'),
(6, 'Sofas', 'sofas'),
(7, 'Chairs', 'chairs'),
(8, 'Bedroom', 'bedroom'),
(9, 'Dining', 'dining'),
(10, 'Storage', 'storage'),
(11, 'Applications', 'applications');

-- --------------------------------------------------------

--
-- Table structure for table `contact_enqueries`
--

DROP TABLE IF EXISTS `contact_enqueries`;
CREATE TABLE IF NOT EXISTS `contact_enqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `msg` text NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_enqueries`
--

INSERT INTO `contact_enqueries` (`id`, `name`, `email`, `phone`, `msg`, `created_on`) VALUES
(1, 'Pratibha Sharma', 'er.pratibha05@gmail.com', '8952895206', 'test', '2021-03-30 01:32:15'),
(2, 'Pratibha Sharma', 'er.pratibha05@gmail.com', '8952895206', 'message 2\r\n\r\n', '2021-03-30 01:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 1, 43, 1),
(2, 1, 36, 1),
(3, 2, 30, 1),
(4, 2, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` text NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'Evok Regal 3 Seater Sofa In Grey And Yellow', '<p>The Evok Regal 3 Seater Sofa is a contemporary piece of furniture designed to accentuate the beauty of your living room and provide you with a luxurious space to sit and relax. It is a spacious sofa that can accommodate three people at a time. This sofa comes in a dual colour combination of grey and yellow, which makes for an attractive sight. It is fully upholstered with high-quality fabric and leatherette. The classy design and matt finish of this sofa can fit in with your modern interior d&eacute;cor themes with ease. It has a one-year warranty against manufacturing defects.</p>\r\n', 'evok-regal-3-seater-sofa-grey-and-yellow', 11490, 'evok-regal-3-seater-sofa-grey-and-yellow.jpg', '2021-03-29', 11),
(31, 5, 'Caprice Fabric 3 Seater Sofa In Steel/Denim', '<p>Perfect for a modern home, the Caprice Fabric 3 Seater Sofa is all about clean lines and a contemporary feel. Available in two shades, this three-seater comes with either &lsquo;steel&rsquo; or &lsquo;denim&rsquo; upholstery. With a robust and sturdy frame constructed from kiln-dried hardwood and plywood, this piece has been designed to accentuate your living room for the years to come. You&rsquo;ll love the texture and feel of the seat, due to the presence of 28 high-density foam. S-springs and pocket springs have also been used to provide extra bounce and resilience. You can choose to buy this piece from our online furniture site, or visit any of our 25 furniture stores across India for the best deals in home furniture.</p>\r\n', 'caprice-fabric-3-seater-sofa-steel-denim', 22985, 'caprice-fabric-3-seater-sofa-steel-denim.jpg', '2021-03-29', 8),
(32, 7, 'Steven Solidwood Living Room Arm Chair - Walnut', '<p>1. Made Up Of Kiln Dried And Chemically Treated Thick Sheesham Wood.</p>\r\n\r\n<p>2. Thickness of leg is 25 mm and the wooden strip is 16 mm . We have given the cushion 100 mm of thickness where seating make very comfirtable.</p>\r\n', 'steven-solidwood-living-room-arm-chair-walnut', 11990, 'steven-solidwood-living-room-arm-chair-walnut.jpg', NULL, 0),
(33, 7, 'Hamilton Living Room Wing Chair In Brown', '<p>An eye catching design that fits and fully endorses the quality of you room. It does not skimp on style or comfort. The Hamilton Wing has a refined appearance with detailing like rolled arms. This chair brings out a perfect and outstanding blend of the ancient and modern designs. Beautiful ornate shaped front wood legs enhance the appeal. Quality and diverse workmanship at a bargain price is what makes this chair one of the best values on the market.</p>\r\n', 'hamilton-living-room-wing-chair-brown', 11558, 'hamilton-living-room-wing-chair-brown.jpg', NULL, 0),
(34, 9, 'Logan Solidwood Dining Set 1+4-Walnut', '<p>Solid wood, often used for furniture, construction, cabinetry and flooring, is lumber that has been milled directly from trees, whereas, other types of wood, such as plywood, medium-density fiberboard or veneers are manufactured from wood composites.</p>\r\n\r\n<p><strong>Advantages of Solid Wood Furniture:</strong></p>\r\n\r\n<p><strong>Durability</strong>&nbsp;- Contrary to the many other cheaper materials, solid wood lasts years.</p>\r\n\r\n<p><strong>Easy Maintenance</strong>&nbsp;- Cleaning and maintaining solid wood furniture is very easy, usually as simple as regularly dusting.</p>\r\n\r\n<p><strong>Versatility</strong>&nbsp;- Every piece of solid wood has slight variations which really pop when seen together and can make it fit into any home aesthetic.</p>\r\n\r\n<p><strong>Superiority</strong>&nbsp;- A solid wood furniture will last for generations to come and its value will only go up and so it is worth the investment.</p>\r\n\r\n<p><strong>How to Preserve a Bonded-Leather Sofa:</strong></p>\r\n\r\n<p>1.<strong>Spills and White Rings&nbsp;</strong>- To avoid this, keep coasters nearby. Try blowing a hair dryer on the affected area. If that doesn&rsquo;t work, rub car wax, petroleum jelly or toothpaste on the area, and then wipe away with a damp cloth. Do it immediately as moisture can travel far below the surface, and the longer it seeps in, the harder it is to remove.</p>\r\n', 'logan-solidwood-dining-set-1-4-walnut', 22985, 'logan-solidwood-dining-set-1-4-walnut.jpg', NULL, 0),
(35, 9, 'Silvia Solid Wood 4 Seater Dining With Bench', '<p>The elegantly designed Silvia Dining Set 1T+4C with Bench is sure to capture the curiosity of your guest while serving them food by some visual delight.. This dining set will surely increase the beauty of your dining room. Further, our product is very easy to maintain and highly durable as it is made from super quality Sheesham wood. Dining Table Top is made up of Thick Ply Wood with Sheesham Veneer, rest body, frames and legs are mode up of Thick Sheesham Wood.</p>\r\n', 'silvia-solid-wood-4-seater-dining-bench', 43990, 'silvia-solid-wood-4-seater-dining-bench.jpg', NULL, 0),
(36, 8, 'Alexander Solidwood King Bed With Hyd Storage-Dark Walnut', '<p>1. Made Up Of Kiln Dried Chemically Treated Thick 25Mm Sheesham Wood.</p>\r\n\r\n<p>2. High Quality Thick Sheesham Wood Is Used.</p>\r\n\r\n<p>3. Head Board Is 80M Thich And Foot Board Is 70Mm Thick.</p>\r\n\r\n<p>4. Side Panels Are 40Mm Thick With Frame Design.</p>\r\n\r\n<p>5. Designer Tall Head Board With Curved Edges &amp; Frame Design On Whole Body Looks Rich &amp; Elegant.</p>\r\n\r\n<p>6. Mattress Ply Is 18Mm Thick Ply For Extra Durability With 1 Metal Mattress Support Near Footboard And 1 Metal Handle Near Head Board To Lift.</p>\r\n\r\n<p>7. Base Ply Is 9Mm Thick Ply Which Is 2 Inch Elevated From The Ground For Easy Cleaning.</p>\r\n\r\n<p>8. Thick Round 3 Layer Turner Legs.</p>\r\n\r\n<p>9. Full Hydraulic Liftable Storage Bed With Metal Handle To Open &amp; Close The Bed.</p>\r\n\r\n<p>10. Recommended Mattress Size :180X200Cm</p>\r\n', 'alexander-solidwood-king-bed-hyd-storage-dark-walnut', 72990, 'alexander-solidwood-king-bed-hyd-storage-dark-walnut.jpg', '2021-03-29', 1),
(37, 8, 'Franco Engineerwood Bunk Bed-Light Walnut', '<p>Bunk in style with the Franco Engineerwood Bunk Bed. Available in a classic shade of light brown, this bunk bed meets the ISO 9001 Certification For International Quality Standards. Crafted with the finest MDP (Medium Density Particle Board) and fitted with accessories from American Hardware, this bunk bed has been made to truly last. Other than the adding an element of fun to your children&rsquo;s bedroom, the Franco Engineerwood also provides the additional advantage of saving on space. Completely insect and termite proof, you can be assured that your children will get a good night&rsquo;s rest. You can buy this piece exclusively at Evok.in</p>\r\n', 'franco-engineerwood-bunk-bed-light-walnut', 82000, 'franco-engineerwood-bunk-bed-light-walnut.jpg', NULL, 0),
(38, 10, 'Emma Tv Stand', '<p>Refined elegance and modern practicality come together in the Emma TV Stand. This Latin-American inspired television stand is perfect platform to showcase your 40-inch television set, and proudly display your collectibles or memorabilia. The shelves can accommodate a weight load of up to 10 kg, and a television weighing up to 20 kg. Crafted with MDP (Medium Density Particle Board) and finished with American Hardware, this piece provides both stylish looks and long-lasting durability. With an *ISO 9001 Certification For International Quality Standards, you can be assured that your television stand is among the finest in home decor. You can choose to buy this piece from our online furniture site, or visit any of our 25 furniture stores across India for the best deals in home furniture.</p>\r\n', 'emma-tv-stand', 4999, 'emma-tv-stand.jpg', NULL, 0),
(39, 10, 'Bruno 2 Doors Extensible Tv Stand', '<p>Refined elegance and modern practicality come together in the Emma TV Stand. This Latin-American inspired television stand is perfect platform to showcase your 40-inch television set, and proudly display your collectibles or memorabilia. The shelves can accommodate a weight load of up to 10 kg, and a television weighing up to 20 kg. Crafted with MDP (Medium Density Particle Board) and finished with American Hardware, this piece provides both stylish looks and long-lasting durability. With an *ISO 9001 Certification For International Quality Standards, you can be assured that your television stand is among the finest in home decor. You can choose to buy this piece from our online furniture site, or visit any of our 25 furniture stores across India for the best deals in home furniture.</p>\r\n', 'bruno-2-doors-extensible-tv-stand', 5999, 'bruno-2-doors-extensible-tv-stand.jpg', NULL, 0),
(40, 11, 'Hindware Snowcrest 36L Personal Air Cooler - Purple', '<p>Changeable Colour Panel*</p>\r\n\r\n<p>Mosquito/ Dust Filter</p>\r\n\r\n<p>Powerful Air Delivery- 1450 m&sup3;/hr**</p>\r\n\r\n<p>4-Way Air Deflection</p>\r\n\r\n<p>Motorised Louver for Even Air Distribution</p>\r\n\r\n<p>Works on Inverter</p>\r\n', 'hindware-snowcrest-36l-personal-air-cooler-purple', 6999, 'hindware-snowcrest-36l-personal-air-cooler-purple.jpg', NULL, 0),
(41, 11, 'Hindware Atlantic Compacto 1L, 3kw Instant Water Heater - White', '<p>Hindware Atlantic Compacto 1L, 3kw Instant Water Heater - White</p>\r\n\r\n<h3>Key Features</h3>\r\n\r\n<ul>\r\n	<li>SPECIFICATIONS</li>\r\n	<li>\r\n	<p>Color</p>\r\n\r\n	<ul>\r\n		<li>White</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>SKU</p>\r\n\r\n	<ul>\r\n		<li>512086</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Warranty</p>\r\n\r\n	<ul>\r\n		<li>1 Year on Product 2 Years on Heating Element 5 Years on Tank</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Image</p>\r\n\r\n	<ul>\r\n		<li>Yes</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Line diagram</p>\r\n\r\n	<ul>\r\n		<li>No</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Mount Type</p>\r\n\r\n	<ul>\r\n		<li>Above Sink</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Dimensions (LxWxH) in mm</p>\r\n\r\n	<ul>\r\n		<li>302x190x170</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Voltage</p>\r\n\r\n	<ul>\r\n		<li>220-240V/50Hz</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Package Inclusions</p>\r\n\r\n	<ul>\r\n		<li>1 Compacto 1L 1 User Manual 1 Installation kit</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 'hindware-atlantic-compacto-1l-3kw-instant-water-heater-white', 12999, 'hindware-atlantic-compacto-1l-3kw-instant-water-heater-white.jpg', '2021-03-29', 2),
(42, 6, 'Adolph Leatherette 3 Seater Sofa In Beige', '<p>Home City is the leading manufacturer in sofa creating a timelessly beautiful shapes and long-lasting products that will help you to create an inspiring home. Modern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details &amp; compact proportions. These sofas can be with or without arms.</p>\r\n', 'adolph-leatherette-3-seater-sofa-beige', 29999, 'adolph-leatherette-3-seater-sofa-beige.jpg', NULL, 0),
(43, 6, 'Adolph Leatherette 3 Seater Sofa In Olive', '<p>Home City is the leading manufacturer in sofa creating a timelessly beautiful shapes and long-lasting products that will help you to create an inspiring home. Modern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details &amp; compact proportions. These sofas can be with or without arms.</p>\r\n', 'adolph-leatherette-3-seater-sofa-olive', 28999, 'adolph-leatherette-3-seater-sofa-olive.jpg', '2021-03-29', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(1, 9, 'PAYID-MBQSTFI0SG85155A4381790G', '2021-03-29'),
(2, 16, 'PAYID-MBRD2II2EP77382EJ150233C', '2021-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text,
  `contact_info` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) DEFAULT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(16, 'er.pratibha05@gmail.com', '$2y$10$I1w/tfsLhqkEryXnvdGY0udXeFxpowauX6y.4GvwuAX0xiIYKxoeK', 0, 'Pratibha', 'Sharma', 'test', '8952895206', NULL, 1, 'UWcvs82CepSK', NULL, '2021-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `created_on`) VALUES
(1, 16, 30, '2021-03-30 02:08:23'),
(2, 16, 31, '2021-03-30 02:09:09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
