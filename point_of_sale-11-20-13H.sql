-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 07:56 AM
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
-- Database: `point_of_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Breads', 'breads', '2024-11-19 04:44:25', '2024-11-19 06:00:49'),
(2, 'Frozens', 'frozens', '2024-11-19 04:44:25', '2024-11-19 06:01:01'),
(3, 'Milks', 'milks', '2024-11-19 04:44:25', '2024-11-19 06:01:08'),
(4, 'Sauces', 'sauces', '2024-11-19 04:44:25', '2024-11-19 06:00:21'),
(5, 'Grains', 'grains', '2024-11-19 04:44:25', '2024-11-19 06:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Lempi Kuhlman', 'gweissnat@example.com', '+1.909.882.9668', '103 Talon Manors Suite 623\nSkilesburgh, ND 42458', 'Fisher PLC', NULL, 'Marquise Steuber', '89569826', 'BSI', 'Dannyshire', 'Farrellchester', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(2, 'Ms. Mariana Franecki III', 'ykilback@example.com', '650-815-2564', '374 Chaya View Suite 213\nSouth Piperside, OK 44910', 'Auer-Parker', NULL, 'Lysanne Doyle', '19205396', 'BCA', 'Port Nico', 'Grahamton', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(3, 'Mrs. Lela Goodwin', 'iwehner@example.com', '+19367036604', '8540 Cole Mount Suite 458\nKrajcikchester, SC 40422', 'Parisian PLC', NULL, 'Lori Fay', '32754433', 'MANDIRI', 'Marquardtville', 'Wuckertport', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(4, 'Prof. Oran Gusikowski I', 'lucas59@example.com', '+1 (380) 868-0634', '78702 Bartell Views\nWest Ronnyland, NV 33755-6780', 'Padberg Group', NULL, 'Ted Langosh', '64018974', 'BSI', 'Larkinfort', 'Robelhaven', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(5, 'Kirstin Moore', 'steuber.peter@example.com', '254.455.2592', '959 Guido Junctions Suite 361\nCruickshankmouth, WA 34252-1976', 'Rice, Brakus and Miller', NULL, 'Stanford Swaniawski', '58558849', 'BRI', 'Lake Brianview', 'Schmidtview', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(6, 'Daisy Schultz II', 'gutmann.paolo@example.net', '1-628-214-4244', '25215 Miller Road\nReynoldland, SC 18598-3156', 'Nienow-Glover', NULL, 'Kayley Kemmer', '93012649', 'BRI', 'Schinnerberg', 'Quigleyland', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(7, 'Ignatius Bruen', 'lheidenreich@example.com', '+15207067654', '1364 Langosh Road\nMuellershire, AZ 19872-9304', 'Hyatt, Berge and Robel', NULL, 'Mr. Mason Wiza', '93192077', 'MANDIRI', 'Frederiquehaven', 'Jakubowskiport', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(8, 'Alejandrin Zieme Sr.', 'bfisher@example.com', '1-904-279-6876', '4651 Rafaela Coves\nFritschville, TX 18738', 'Gaylord-Lemke', NULL, 'Naomi Williamson', '46896464', 'BCA', 'East Johan', 'Eliseburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(9, 'Randall Koepp', 'skiles.javon@example.net', '+1-754-637-8677', '7510 Hackett Orchard\nEast Mason, MO 91147', 'Kirlin, Marvin and Hoppe', NULL, 'Tyshawn Aufderhar', '98824402', 'BNI', 'Carmelafurt', 'Davinfurt', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(10, 'Cullen Ortiz', 'tstoltenberg@example.com', '+1.760.501.3966', '820 Thompson Stream Suite 801\nFramiburgh, NC 98738', 'Schuster, Friesen and Brekke', NULL, 'Torrance Leannon', '54515903', 'BNI', 'East Dale', 'Rylanton', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(11, 'Gerhard Miller Jr.', 'owolff@example.net', '1-949-615-4259', '94137 Mosciski Isle Apt. 978\nNew Breannafort, VT 18072-0097', 'Corkery Group', NULL, 'Molly Bins', '23064560', 'BCA', 'Janeshire', 'Hodkiewiczton', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(12, 'Jaunita Kohler', 'rudolph.schulist@example.net', '(878) 820-6770', '374 Jonathon Crossing Suite 802\nSouth Aurelia, WI 69190-3097', 'Gleason-Bode', NULL, 'Tyrel Becker', '48323044', 'MANDIRI', 'North Delpha', 'Bashirianton', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(13, 'Dr. Niko Baumbach', 'rokuneva@example.com', '757-678-5909', '2508 Zemlak Burg Suite 055\nClaudieland, SC 21566', 'Dickens, Wiegand and Bruen', NULL, 'Prof. Jeanette Mann', '77736134', 'BSI', 'Ardithfort', 'East Herminio', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(14, 'Eliezer Sawayn', 'nikolas.morissette@example.com', '520-949-9982', '232 Annabel Creek\nWillburgh, CT 71697', 'Pagac, Crooks and Stroman', NULL, 'Mr. Nigel Bradtke', '51972184', 'BNI', 'Rennershire', 'East Imogeneburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(15, 'Wilhelm Brekke', 'russel.vella@example.com', '+1-346-484-1130', '80799 Dawn Fall Apt. 477\nFriesenburgh, MI 89433', 'Rogahn, Dietrich and Bartell', NULL, 'Bryana Jakubowski', '11057950', 'BSI', 'South Urban', 'Huelhaven', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(16, 'Abby West III', 'vklocko@example.com', '(341) 569-2973', '599 Carissa Ports Suite 337\nAufderharburgh, CT 73264-0114', 'Johns Ltd', NULL, 'Raven Morissette', '39419928', 'BRI', 'West Johnpaul', 'Reynoldsburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(17, 'Kaylin Rosenbaum', 'cmclaughlin@example.net', '(980) 325-9652', '9889 Pablo Harbors\nKossville, NH 16084', 'Upton, Thompson and Balistreri', NULL, 'Prof. Berneice Moen', '69218476', 'BSI', 'Lyrichaven', 'Donnieburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(18, 'Graciela Witting', 'maria05@example.org', '434.582.6567', '8142 Nettie Lock\nSmithamshire, KY 32172-4654', 'Leannon-Mueller', NULL, 'Ms. Idell Hauck', '19468695', 'BNI', 'Christinaside', 'North Jarrettfurt', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(19, 'Mrs. Athena Treutel Sr.', 'antwon27@example.org', '+15705173595', '5893 Obie Center Apt. 394\nWest Camryn, OK 44773-3128', 'Lebsack PLC', NULL, 'Christine Lockman', '53851957', 'BJB', 'Morarview', 'Dietrichchester', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(20, 'Demario Pollich II', 'coby.stanton@example.org', '385.316.7505', '648 Annamarie Springs Suite 040\nNew Maggie, AK 99677-0114', 'Nikolaus Ltd', NULL, 'Prof. Joannie Pouros', '45517140', 'BCA', 'Orntown', 'North Claraside', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(21, 'Jerome Prohaska', 'jessie43@example.org', '(860) 804-1287', '729 Nyasia Loaf Suite 699\nMonroeburgh, TN 74163', 'Adams, Kirlin and Anderson', NULL, 'Brittany Volkman', '48074217', 'MANDIRI', 'East Willow', 'New Ines', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(22, 'Carlotta Hilpert', 'marty.kirlin@example.com', '+19085638032', '601 Schuppe Junctions\nHyattview, CT 12352', 'Watsica and Sons', NULL, 'Alfredo Rodriguez', '44233683', 'BNI', 'North Dellatown', 'Millermouth', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(23, 'Mrs. Lizeth Blick PhD', 'marcelle.streich@example.com', '520.377.8596', '11048 Jacklyn Drive Suite 865\nSporerport, KS 17146', 'Rau, Moore and Russel', NULL, 'Dr. Destany Schuppe PhD', '91718267', 'BRI', 'Sawaynshire', 'North Carli', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(24, 'Marcel Ritchie', 'daisha51@example.org', '+13524074150', '8644 Blanda Shoal\nSouth Imeldamouth, VT 05762-5329', 'Blick-Durgan', NULL, 'Miss Betty Tillman', '90452450', 'BJB', 'Madieborough', 'Port Rahsaan', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(25, 'Dr. Holly Pouros III', 'hconsidine@example.org', '971-489-7315', '3614 Bins Locks\nLeschview, VT 08711', 'Pouros-Kshlerin', NULL, 'Avery Daugherty', '82759017', 'BRI', 'West Marcmouth', 'West Olga', '2024-11-19 04:44:25', '2024-11-19 04:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Delmer Ruecker', 'ressie.zemlak@example.org', '(608) 646-8349', '5965 Lowe Freeway Suite 789\nLake Retta, TN 10139-0882', '0 Year', NULL, 824, NULL, 'Sengerstad', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(2, 'Prof. Demarco Huel IV', 'addie.feil@example.com', '+1.219.449.8998', '12103 Denesik Glen\nSchoenton, MI 72013', '3 Year', NULL, 656, NULL, 'Ullrichfurt', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(3, 'Demarco Gleason V', 'ardella.runte@example.com', '773-549-5609', '687 Brekke Parkway\nEast Summerside, NY 83183', '0 Year', NULL, 562, NULL, 'Port Loraburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(4, 'Miss Wilhelmine Harris', 'jtromp@example.net', '1-585-706-8134', '9536 Cronin Vista\nEast Harold, KS 05480-6984', '5 Year', NULL, 810, NULL, 'East Naomiberg', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(5, 'Felton Schiller', 'gislason.maggie@example.org', '+1.618.880.1929', '242 Maggie Landing Suite 424\nSouth Herminialand, OH 52150-1550', '1 Year', NULL, 708, NULL, 'Hintzmouth', '2024-11-19 04:44:25', '2024-11-19 04:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044621_add_username_and_photo_to_users', 1),
(6, '2023_03_24_080143_create_employees_table', 1),
(7, '2023_03_29_025458_create_customers_table', 1),
(8, '2023_03_30_020042_create_suppliers_table', 1),
(9, '2023_03_30_083652_create_advance_salaries_table', 1),
(10, '2023_04_01_142106_create_pay_salaries_table', 1),
(11, '2023_04_02_141037_create_attendences_table', 1),
(12, '2023_04_04_041700_create_categories_table', 1),
(13, '2023_04_04_052256_create_products_table', 1),
(14, '2023_04_10_043156_create_orders_table', 1),
(15, '2023_04_10_044212_create_order_details_table', 1),
(16, '2023_04_13_222344_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitcost` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_salaries`
--

CREATE TABLE `pay_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `due_salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(2, 'employee.menu', 'web', 'employee', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(3, 'customer.menu', 'web', 'customer', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(4, 'supplier.menu', 'web', 'supplier', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(5, 'salary.menu', 'web', 'salary', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(6, 'attendence.menu', 'web', 'attendence', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(7, 'category.menu', 'web', 'category', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(8, 'product.menu', 'web', 'product', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(9, 'orders.menu', 'web', 'orders', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(10, 'stock.menu', 'web', 'stock', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(11, 'roles.menu', 'web', 'roles', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(12, 'user.menu', 'web', 'user', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(13, 'database.menu', 'web', 'database', '2024-11-19 04:44:26', '2024-11-19 04:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_garage` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_store` int(11) DEFAULT NULL,
  `buying_date` date DEFAULT NULL,
  `expire_date` varchar(255) DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `supplier_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'Gardenia Classic Loaf 600g', 1, 1, 'PC01', 'A', '1816160719351515.jpg', 988, '2024-11-19', '2026-11-19', 65, 82, '2024-11-19 04:44:25', '2024-11-19 06:17:12'),
(2, 'Bear Brand Adult Milk 33g', 3, 1, 'PC02', 'A', '1816161176484720.jpg', 148, '2024-11-19', '2026-11-19', 14, 16, '2024-11-19 04:44:25', '2024-11-19 06:24:28'),
(3, 'Tender Juicy Hotdog 1000g', 2, 1, 'PC03', 'A', '1816162042915475.jpg', 103, '2024-11-19', '2024-12-15', 169, 200, '2024-11-19 04:44:25', '2024-11-19 06:38:14'),
(4, 'Bear Brand Adult Milk 300g', 3, 1, 'PC04', 'C', '1816161281357588.jpg', 730, '2024-11-19', '2026-11-19', 116, 150, '2024-11-19 04:44:25', '2024-11-19 12:42:13'),
(5, 'Del Monte Tomato Paste 150g', 4, 1, 'PC05', 'D', '1816162389453328.jpg', 890, '2024-11-19', '2026-11-19', 25, 29, '2024-11-19 04:44:25', '2024-11-19 06:43:45'),
(6, 'Marby Super Loaf 600g', 1, 1, 'PC06', 'B', '1816160842712622.jpg', 541, '2024-11-19', '2026-11-19', 68, 77, '2024-11-19 04:44:25', '2024-11-19 06:19:10'),
(7, 'Bear Brand Powdered Milk Swak 33g', 3, 1, 'PC07', 'A', '1816161406555182.jpg', 252, '2024-11-19', '2026-11-19', 9, 11, '2024-11-19 04:44:25', '2024-11-19 06:28:07'),
(8, 'Bear Brand Powdered Milk 840g', 3, 1, 'PC08', 'D', '1816161768697303.jpg', 115, '2024-11-19', '2026-11-19', 254, 296, '2024-11-19 04:44:25', '2024-11-19 06:34:07'),
(9, 'Alaska Fortified Powdered Milk 300g', 3, 1, 'PC09', 'D', '1816161892219052.jpg', 250, '2024-11-19', '2026-11-19', 77, 95, '2024-11-19 04:44:25', '2024-11-19 06:35:51'),
(10, 'Marby Pinoy Loaf 450g', 1, 1, 'PC10', 'D', '1816160954995536.jpg', 612, '2024-11-19', '2026-11-19', 40, 44, '2024-11-19 04:44:25', '2024-11-19 06:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(2, 'Admin', 'web', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(3, 'Account', 'web', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(4, 'Manager', 'web', '2024-11-19 04:44:26', '2024-11-19 04:44:26'),
(5, 'Cashier', 'web', '2024-11-19 19:59:42', '2024-11-19 19:59:42'),
(6, 'Store Manager', 'web', '2024-11-19 20:00:20', '2024-11-19 20:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(7, 1),
(7, 6),
(8, 1),
(8, 4),
(8, 6),
(9, 1),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 4),
(10, 6),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `type`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Dorcas Crona', 'london.sanford@example.net', '1-423-468-2516', '92476 Dach Plains Apt. 392\nCassintown, MN 87544', 'O\'Hara PLC', NULL, 'Whole Seller', 'Mr. Lonzo Terry', '38105551', 'BSI', 'North Doyleville', 'Christopmouth', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(2, 'Gladyce Orn DVM', 'ollie.lebsack@example.net', '541-603-8744', '649 Asia Garden\nYasmineborough, VA 04620-7972', 'Harvey-Moen', NULL, 'Whole Seller', 'Shea Rippin', '18882766', 'BNI', 'Labadiefort', 'Milanview', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(3, 'Dr. Glenda Pacocha Jr.', 'elissa74@example.org', '+1 (915) 944-9352', '636 Adelia Neck Suite 670\nWarrenhaven, NC 83971', 'Skiles Group', NULL, 'Whole Seller', 'Lamont Greenfelder', '92390543', 'MANDIRI', 'Port Rhett', 'North Davon', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(4, 'Eloy McKenzie', 'qgorczany@example.net', '+1-272-597-9182', '34309 Leannon Spurs Apt. 796\nSouth Ike, NJ 82356', 'Price Inc', NULL, 'Whole Seller', 'Prof. Tate Wisozk Jr.', '86186810', 'MANDIRI', 'West Cathrine', 'Audramouth', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(5, 'Percy Stehr Jr.', 'schumm.amely@example.com', '+1-707-310-8494', '33266 Zachariah Alley Apt. 338\nKrajcikhaven, OK 99595', 'Mills-Wuckert', NULL, 'Whole Seller', 'Dr. Trystan Bergstrom MD', '57580631', 'BCA', 'Citlalliburgh', 'Port Kaitlynburgh', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(6, 'Mikayla Luettgen', 'adrain.waelchi@example.net', '+1-208-881-2713', '666 Maritza Rest Suite 342\nDeltamouth, NY 35233-7956', 'Ruecker-Franecki', NULL, 'Distributor', 'Candice Carter', '53622720', 'BJB', 'Angiehaven', 'Enriquetown', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(7, 'Jedidiah Gerhold', 'kdibbert@example.com', '1-256-845-7224', '62863 Wolf Islands\nRogahnville, VA 93571', 'Hahn PLC', NULL, 'Whole Seller', 'Nina Crona', '36064423', 'BRI', 'Stiedemannstad', 'New Marty', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(8, 'Meggie Connelly', 'lorena.hyatt@example.org', '+12349014275', '867 Ankunding Vista\nPort Ceasarview, OK 29103-0468', 'Haag-Wilkinson', NULL, 'Whole Seller', 'Julio Boyer', '26674275', 'BRI', 'Oliverport', 'South Salvadortown', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(9, 'Miss Jakayla Gerhold I', 'hamill.bud@example.org', '878.639.0260', '712 Pink Harbors Suite 140\nWest Khalidstad, SD 87432-2274', 'Wintheiser Group', NULL, 'Whole Seller', 'Nella Leuschke', '25298571', 'BSI', 'Cassinburgh', 'Hodkiewiczborough', '2024-11-19 04:44:25', '2024-11-19 04:44:25'),
(10, 'Roselyn Padberg', 'veum.waldo@example.net', '(804) 329-6205', '3703 Loyal Shore\nJamelstad, SC 77625-3806', 'Lowe, Windler and Volkman', NULL, 'Distributor', 'Flossie Kreiger', '82051353', 'MANDIRI', 'South Kelly', 'Hicklehaven', '2024-11-19 04:44:25', '2024-11-19 04:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-11-19 04:44:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EwQ9M2xUnsXvF7fw0FZvqK6SLNfOfPH77ipS9d1JqySgZq4ERWD6oi62JVXI', '2024-11-19 04:44:25', '2024-11-19 04:44:25', 'admin', NULL),
(2, 'User', 'user@gmail.com', '2024-11-19 04:44:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zvMGGdtg3k', '2024-11-19 04:44:25', '2024-11-19 04:44:25', 'user', NULL),
(3, 'Store Manager', 'store-manager@gmail.com', NULL, '$2y$10$j4mGfuQg7vpLx/RgrZxcsuVoZxlpKi1QHn/d7WRxSglrXd80EZr6.', NULL, '2024-11-19 20:07:55', '2024-11-19 20:07:55', 'store-manager', NULL),
(4, 'Retail Cashier', 'cashier@gmail.com', NULL, '$2y$10$PVsC9XOOhMl2OcGClIvjieXvsZws524SFMCcgKF4zQmn3fClHA7pC', NULL, '2024-11-19 20:08:47', '2024-11-19 20:08:47', 'cashier', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
