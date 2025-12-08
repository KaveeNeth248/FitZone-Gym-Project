-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 08:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '$2y$10$e3vfj3mBvM89e/F0jk44dWfOvmsG42ZjKJlG5xEG2nIU5.DJK90I6', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `trainer` varchar(100) NOT NULL,
  `session_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `phone`, `trainer`, `session_date`, `created_at`) VALUES
(1, 'Asanka', 'asanka@gmail.com', '0912244402', 'Olive Stein', '2024-11-19', '2024-11-09 16:22:01'),
(2, 'Praveena', 'praveena@gmail.com', '0789675432', 'Olive Stein', '2024-11-28', '2024-11-12 14:15:13'),
(3, 'Praveena', 'praveena@gmail.com', '0789675432', 'John Doe', '2024-11-29', '2024-11-12 14:42:46'),
(4, 'Rubeca', 'rubeca@gmail.com', '0986754322', 'Olive Stein', '2024-11-21', '2024-11-14 01:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `class_signups`
--

CREATE TABLE `class_signups` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_signups`
--

INSERT INTO `class_signups` (`id`, `class_name`, `user_name`, `email`, `created_at`) VALUES
(1, 'Yoga', 'kaveesha', 'kaveesha@gmail.com', '2024-11-09 07:26:14'),
(2, 'Zumba', 'sadaruwan Fernando', 'sadaruwan123@gmail.com', '2024-11-09 07:26:42'),
(3, 'Kickboxing', 'Maleesha', 'maleesha@gmail.com', '2024-11-09 07:27:17'),
(4, 'Strength Training', 'Wasana', 'wasana@gmail.com', '2024-11-09 07:28:06'),
(5, 'Yoga', 'Ajith', 'ajith@gmail.com', '2024-11-09 13:26:46'),
(6, 'Zumba', 'Anna', 'annaferenando@gmail.com', '2024-11-09 13:27:55'),
(7, 'Kickboxing', 'Deffny', 'deffny@gmail.com', '2024-11-09 13:28:34'),
(8, 'Strength Training', 'Sampath', 'sampath@gmail.com', '2024-11-09 13:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `response`, `created_at`, `updated_at`) VALUES
(1, 'Asanka', 'asanka@gmail.com', 'What is the most suitable exercise for workout?', '1. For overall fitness:\r\n\r\nCompound exercises (e.g., squats, deadlifts, push-ups, pull-ups) that work multiple muscle groups at once.\r\n\r\nCardio (e.g., running, cycling, swimming) for cardiovascular health.\r\n\r\n\r\n\r\n2. For strength building:\r\n\r\nWeightlifting (e.g., bench press, squats, deadlifts, overhead press) targeting major muscle groups.\r\n\r\nBodyweight exercises (e.g., push-ups, pull-ups, dips, lunges).', '2024-11-09 10:50:17', '2024-11-09 10:52:48'),
(2, 'Rubeca', 'rubeca@gmail.com', 'What is the most suitable plan for registering?', '1. If you\'re just starting out or have a limited budget:\r\n\r\nMost Suitable: Basic Plan\r\n\r\nWhy: You don’t need extra features or personalized training yet. The basic gym equipment and access are enough to help you establish a workout routine.\r\n\r\n\r\n\r\n2. If you\'re already familiar with gym workouts and want to step up your routine:\r\n\r\nMost Suitable: Platinum Plan\r\n\r\nWhy: You get access to more advanced equipment, group classes, and possibly some personal training sessions. This plan gives you a balanced approach for improving your fitness without the full cost of Premium.\r\n\r\n\r\n\r\n3. If you\'re highly committed to fitness, have specific goals, or need constant support:\r\n\r\nMost Suitable: Premium Plan\r\n\r\nWhy: If you\'re serious about your fitness journey, Premium offers comprehensive benefits like unlimited classes, personal training, nutrition advice, and priority booking, making it perfect for those who want a personalized, high-end experience.', '2024-11-13 17:12:28', '2024-11-14 12:22:03'),
(3, 'Aloka', 'aloka@gmail.com', 'What are some effective exercises for building upper body strength?', '1. Push-ups – Strengthen chest, shoulders, and triceps.\r\n\r\n\r\n2. Pull-ups/Chin-ups – Target back and biceps.\r\n\r\n\r\n3. Bench Press – Focuses on chest, shoulders, and triceps.\r\n\r\n\r\n4. Overhead Shoulder Press – Works the shoulders.\r\n\r\n\r\n5. Rows – Strengthen the back and biceps.\r\n\r\n\r\n6. Dips – Target chest, triceps, and shoulders.', '2024-11-14 12:12:02', '2024-11-14 12:36:43'),
(4, 'Rashmi', 'RashmiSansala@gmail.com', 'What should I eat before a workout for energy?', '1. Complex Carbohydrates – They provide long-lasting energy. Examples include:\r\n\r\nOats or whole-grain toast\r\n\r\nSweet potatoes\r\n\r\nBrown rice or quinoa\r\n\r\nWhole-grain cereal\r\n\r\n\r\n\r\n2. Protein – Helps with muscle repair and growth. Include lean protein sources like:\r\n\r\nChicken or turkey breast\r\n\r\nGreek yogurt\r\n\r\nEggs or egg whites\r\n\r\nProtein shake or smoothie\r\n\r\n\r\n\r\n3. Healthy Fats – Provide sustained energy without causing a crash. Some options include:\r\n\r\nAvocado\r\n\r\nNuts and seeds (like almonds or chia seeds)\r\n\r\nNut butter (e.g., peanut or almond butter)\r\n\r\n\r\n\r\n4. Fruits – A source of natural sugars for a quick energy boost, and they are rich in vitamins and minerals. Examples include:\r\n\r\nBananas (rich in potassium)\r\n\r\nApples\r\n\r\nBerries', '2024-11-14 12:13:29', '2024-11-14 12:41:49'),
(5, 'Wasana', 'wasana@gmail.com', 'How can I improve my flexibility with a gym-based workout?', '1. Dynamic Warm-Up: Start with leg swings, arm circles, walking lunges with a twist, and torso rotations. These loosen up major joints and muscles.\r\n\r\n\r\n2. Full Range of Motion Exercises: Perform squats, lunges, overhead presses, pull-ups, and Romanian deadlifts. Focus on controlled, full range movements to stretch and strengthen simultaneously.\r\n\r\n\r\n3. Mobility Drills: Include hip mobility work with resistance bands and foam rolling for the hips, shoulders, and back to increase flexibility and release muscle tightness.\r\n\r\n\r\n4. Stretching Post-Workout: End with static stretches, such as hamstring stretches, hip flexor stretches, and shoulder stretches, holding each for 20-30 seconds to maintain flexibility.', '2024-11-14 12:15:32', '2024-11-14 12:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Chamudika', 'chamudikaa@gmail.com', '$2y$10$0KYSZ4ujdt5yDvmjwt23We4XD91nEnpuF0GvCnriWOWOo2NdxgVLi', '2024-11-09 07:55:59'),
(2, 'Rehana', 'rehana@gmail.com', '', '2024-11-09 10:11:33'),
(3, 'Harshi', 'harshithakshi@gmail.com', '$2y$10$xUxiv6Xn5xcVgABt4Ifxs.e5Zo1/CwzOYP0oiOjRne7D8LrojHwMC', '2024-11-12 09:58:13'),
(4, 'Luvy', 'luvy@gmail.com', '', '2024-11-12 14:44:46'),
(5, 'Harshi', 'harshi@gmail.com', '$2y$10$vHduu1MQkL62eBZpO6UH7.c.OT3iLAKbfblXi6LylRaICQS39xG2m', '2024-11-12 14:48:14'),
(9, 'Krishantha', 'krishantha@gmail.com', '$2y$10$caX3DAvkwfjMb326sdpZquLbjFSUPZpgRE5QKRJqycdpmpuxYLciC', '2024-11-13 09:49:37'),
(10, 'Roshan', 'roshan@gmail.com', '$2y$10$BYvP1ojEKkgQiDeNaUWR6emBAEnF5GYD80LlucyrLtKy.4SUHNq..', '2024-11-13 09:53:59'),
(11, 'Lakshan', 'lakshan@gmail.com', '$2y$10$wWG0QaRTuU/lK3p4pjGz1u.We9Aq33wNcbOMrTRIMHJmD0mcadMGG', '2024-11-13 10:24:12'),
(12, 'Pradeep', 'pradeep@gmail.com', '$2y$10$TQqY2CUI1ER4F5wX7NnQf.j8ninCTSQ7uDS79LZxx3hiL4Xu4Zcqu', '2024-11-13 17:19:21'),
(14, 'Chamudika', 'chamudika@gmail.com', '$2y$10$P5ybTK6PA2ndYmevjQHCJu00Mc2YR7OgbimtfYi713sAPXMng7FBe', '2024-11-13 18:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `equipment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`equipment_id`, `name`, `price`, `quantity`) VALUES
(1, 'Treadmills', 1200.00, 94),
(2, 'Dumbbells Set', 150.00, 15),
(3, 'Yoga Mat', 300.00, 42),
(4, 'Resistance Bands', 200.00, 83),
(5, 'Exercise Bike', 350.00, 85);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriptions`
--

CREATE TABLE `newsletter_subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_subscriptions`
--

INSERT INTO `newsletter_subscriptions` (`id`, `email`, `created_at`) VALUES
(1, 'lesandhu@gmail.com', '2024-11-09 13:31:32'),
(2, 'sampath@gmail.com', '2024-11-09 13:31:53'),
(3, 'annaferenando@gmail.com', '2024-11-09 13:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `equipment_id`, `quantity`, `total_cost`, `order_date`) VALUES
(1, 1, 1, 3, 3600.00, '2024-11-13 11:02:55'),
(2, 1, 3, 1, 300.00, '2024-11-13 20:21:26'),
(3, 3, 5, 2, 700.00, '2024-11-13 20:21:58'),
(4, 9, 1, 3, 3600.00, '2024-11-13 20:23:05'),
(5, 4, 1, 3, 3600.00, '2024-11-13 20:25:58'),
(6, 3, 5, 4, 1400.00, '2024-11-14 02:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `report_name`, `created_at`) VALUES
(1, 'Annual Report', '2024-11-09 08:58:05'),
(2, 'Growth Report', '2024-11-09 14:39:35'),
(3, 'Economy Report', '2024-11-09 14:40:15'),
(4, 'KickBoxing Tournament', '2024-11-09 14:40:40'),
(5, 'Investment Report', '2024-11-09 14:41:34'),
(6, 'Health Associations', '2024-11-09 14:42:11'),
(7, 'Sponsers Annual Report', '2024-11-09 14:42:34'),
(8, 'Collaboration Companies', '2024-11-09 14:43:29'),
(9, 'Gym Equipment Details Report', '2024-11-09 14:43:51'),
(10, 'Global Growth Report', '2024-11-09 14:46:04'),
(11, 'Cloud Communications', '2024-11-09 14:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `password_hash`, `specialty`, `created_at`) VALUES
(1, 'Chamara', 'chamara12@gmail.com', '$2y$10$Yrpg/UM4mYo24bIGbIaBb.1vrB3mSKkBKFF7dcwoJOLGQZeQRi09y', 'counselor', '2024-11-09 08:36:16'),
(2, 'Ruzain', 'ruzain@gmail.com', '', '', '2024-11-09 11:32:02'),
(3, 'Akalanka', 'akalanka@gmail.com', '', '', '2024-11-09 11:32:36'),
(4, 'Wathmi', 'wathmi@gmail.com', '', '', '2024-11-09 11:33:02'),
(5, 'Hansana', 'hansana@gmail.com', '', '', '2024-11-09 11:33:50'),
(6, 'Ashan', 'Asshan@gmail.com', '', '', '2024-11-09 11:34:15'),
(7, 'Nuzla', 'nuzlaHassim@gmail.com', '$2y$10$ZD23IXRmtqLDEmNQQcqMdOgtLRtrqvyKZwNLvyXoFpJSv9wAp.5uK', 'counselor', '2024-11-09 11:36:27'),
(8, 'Rashmi', 'RashmiSansala@gmail.com', '$2y$10$cG0MLTSHvMzlkkvo8NBQ.OWooMeaGYxfbRGOW.wJ5JjFLlbJ0alhK', 'counselor', '2024-11-09 11:37:40'),
(9, 'Piyumi', 'piyumi@gmail.com', '$2y$10$mLKZtXqMCHNQDElXXxj5Z.k4KQVKf7QF8V1.mttViCe.k4zCZOgV6', 'counselor', '2024-11-09 13:36:46'),
(10, 'Vihanga', 'vihanga@gmail.com', '$2y$10$fd.LmjudBjY8SvuT2JsMHOiDEqezDW210ShTCZsEGaPJPf49D1xPO', 'counselor', '2024-11-09 13:37:33'),
(11, 'Pavithra', 'pavithra@gmail.com', '$2y$10$BO6wAc1Sj6puUyS3YXl.DecRaeiW9ZfokjoHov42AGpugmGjjqfTC', 'counselor', '2024-11-09 13:38:30'),
(12, 'Aliya', 'aliya@gmail.com', '$2y$10$HmJ0QwrkA73O2oIoUacmkeFO9d4MizIOGWLtP2Jh3wF48q4HBLKj2', 'counselor', '2024-11-11 20:02:04'),
(13, 'Chamara', 'chamara@gmail.com', '$2y$10$VEZKXwQJRSEiRXeSvBKe8.C12NY9LBAFTiAFu0xjetzilK14T2s0y', 'counselor', '2024-11-14 02:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `email`, `password`, `specialty`, `created_at`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', '$2y$10$567viY2U6X8wYf.e7f6H2eYpVqHQKsbQUWp7OjEJAlIleFmBTKvMu', 'Trainer', '2024-11-09 11:15:34'),
(2, 'Harvey Karols', 'harveykarol@gmail.com', '$2y$10$lVVOJ0GfQXgsp8ZElQUJTuwBwV4KE0oGzA2hxUYnPX.pbl02eQFzu', 'International Trainer', '2024-11-09 11:20:21'),
(3, 'Olive Stein', 'olivestein@gmail.com', '$2y$10$Y89doeC3sGJSK/AI5Kv4VujxWn/0yJ3Cy3XI/LeSJmi5IBuQDkg4i', 'International Trainer', '2024-11-09 11:21:58'),
(4, 'Pamitha', 'pamitha@gmail.com', '$2y$10$93GwAe51VEWZ4OI/mfIbGeFVZ962Ws..njBsvo6BAPpnziZKY0vLW', 'International Trainer', '2024-11-13 23:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `membership_plan` enum('basic','standard','premium') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `membership_plan`, `created_at`) VALUES
(2, 'Asanka', 'asanka12@gmail.com', 'basic', '2024-11-09 13:20:37'),
(3, 'sumedh', 'sumedh@gmail.com', 'standard', '2024-11-09 13:21:02'),
(4, 'Hiru', 'hiru@gmail.com', 'premium', '2024-11-09 13:21:42'),
(5, 'Rasanjala', 'rasanjala@gmail.com', 'standard', '2024-11-09 13:22:35'),
(6, 'Geethma', 'geethma@gmail.com', 'premium', '2024-11-09 13:22:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_signups`
--
ALTER TABLE `class_signups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `equipment_id` (`equipment_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_signups`
--
ALTER TABLE `class_signups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`equipment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
