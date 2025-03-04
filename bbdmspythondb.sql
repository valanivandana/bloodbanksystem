-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 04, 2025 at 11:01 AM
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
-- Database: `bbdmspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add bloodgroup', 7, 'add_bloodgroup'),
(26, 'Can change bloodgroup', 7, 'change_bloodgroup'),
(27, 'Can delete bloodgroup', 7, 'delete_bloodgroup'),
(28, 'Can view bloodgroup', 7, 'view_bloodgroup'),
(29, 'Can add donor reg', 8, 'add_donorreg'),
(30, 'Can change donor reg', 8, 'change_donorreg'),
(31, 'Can delete donor reg', 8, 'delete_donorreg'),
(32, 'Can view donor reg', 8, 'view_donorreg'),
(33, 'Can add blood request', 9, 'add_bloodrequest'),
(34, 'Can change blood request', 9, 'change_bloodrequest'),
(35, 'Can delete blood request', 9, 'delete_bloodrequest'),
(36, 'Can view blood request', 9, 'view_bloodrequest'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_bloodgroup`
--

CREATE TABLE `bbdmsapp_bloodgroup` (
  `id` bigint(20) NOT NULL,
  `bloodgroup` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bbdmsapp_bloodgroup`
--

INSERT INTO `bbdmsapp_bloodgroup` (`id`, `bloodgroup`, `created_at`, `updated_at`) VALUES
(15, 'A', '2025-02-22 05:57:49.309269', '2025-02-22 05:57:49.309269'),
(16, 'A+', '2025-02-22 05:57:54.952259', '2025-02-22 05:57:54.953260'),
(17, 'A-', '2025-02-22 05:58:00.980498', '2025-02-22 05:58:00.980498'),
(18, 'B', '2025-02-22 05:58:09.671035', '2025-02-22 05:58:09.671035'),
(19, 'B+', '2025-02-22 05:58:18.931492', '2025-02-22 05:58:18.931492'),
(20, 'B-', '2025-02-22 05:58:29.087219', '2025-02-22 05:58:29.087219'),
(21, 'AB+', '2025-02-22 05:58:52.347096', '2025-02-22 05:58:52.347096'),
(22, 'AB-', '2025-02-22 05:58:58.791968', '2025-02-22 05:58:58.791968'),
(23, 'O', '2025-02-22 06:00:00.762721', '2025-02-22 06:00:00.762721'),
(24, 'O+', '2025-02-22 06:00:27.462532', '2025-02-22 06:00:27.462532'),
(25, 'O-', '2025-02-22 06:00:38.489221', '2025-02-22 06:00:38.489221');

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_bloodrequest`
--

CREATE TABLE `bbdmsapp_bloodrequest` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `mobno` varchar(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `requirer` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `donid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_contact`
--

CREATE TABLE `bbdmsapp_contact` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `mobno` varchar(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_customuser`
--

CREATE TABLE `bbdmsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bbdmsapp_customuser`
--

INSERT INTO `bbdmsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$600000$k7OKmpt5ZGYJ202ycfzXQ7$DU6s0rhhCXYXM6TwjDU8iahKgZ0iewdjy/zfITO8Arw=', '2025-03-04 09:50:55.485615', 1, 'admin', 'vandana', 'valani', 'admin@gmail.com', 1, 1, '2024-07-12 06:48:39.434307', '1', 'media/profile_pic/IMG_20230331_143104_794.jpg'),
(20, 'pbkdf2_sha256$600000$iWWVp4ijqqi8kZ69OBBslw$U9S93K2BgIkK5o9e8lkti69jLrga1Ia+NCvr89BJG/Y=', NULL, 0, 'vandana', 'vandana', 'valani', 'valanivandana6797@gmail.com', 0, 1, '2025-02-22 10:04:19.274117', '2', 'media/profile_pic/IMG_20230331_143104_794_aUiHMW7.jpg'),
(21, 'pbkdf2_sha256$600000$z0FYIjMR0ZLvuEEF2fjWsV$2poOdhGNUtwBhJXCHIzV6yoWwv5XTQkDs4D4hzbS59g=', NULL, 0, 'darshan', 'darshan', 'valani', 'darshan@gmail.com', 0, 1, '2025-02-22 10:05:47.533753', '2', 'media/profile_pic/WhatsApp_Image_2025-02-22_at_11.11.33_d02e7209.jpg'),
(22, 'pbkdf2_sha256$600000$kmjPDoHnpfkpYy2q0gIhTt$ixb1shly/+FvyNQHL9wXmfF5iqk87Y7s/mVY3dWeGIU=', NULL, 0, 'ranjit', 'ranjit', 'vaja', 'vajaranjit5541@gmail.com', 0, 1, '2025-02-22 10:08:00.012431', '2', 'media/profile_pic/WhatsApp_Image_2025-02-22_at_11.11.32_94277ef4.jpg'),
(23, 'pbkdf2_sha256$600000$oTxuGnLJcLkcviqwg98szj$FYPcoUV3ZbTyu1Sp00+if/pJXWLMwWNUuPKFgR7RrH4=', NULL, 0, 'hiral', 'hiral', 'bakotra', 'hir@gmail.com', 0, 1, '2025-02-22 10:12:23.978079', '2', 'media/profile_pic/WhatsApp_Image_2025-02-22_at_15.40.17_05a8681f.jpg'),
(24, 'pbkdf2_sha256$600000$vF3X7nlA7fUYfSnU72ltrK$iHi48BlVsv2PhKT5MVKDId6LuuVIbZYznQV37cNOHuU=', NULL, 0, 'krushi', 'krushi', 'rakholiya', 'krushi@gmail.com', 0, 1, '2025-02-22 10:13:58.200862', '2', 'media/profile_pic/WhatsApp_Image_2025-02-22_at_15.40.18_c2bd0a2e.jpg'),
(25, 'pbkdf2_sha256$600000$MHtjUz3A50eAg01cwQHlLb$3xCUECAC4UdnPps5xruoOM9coCdK8/UZW2R1SZlSxxc=', NULL, 0, 'vashali', 'vashali', 'modha', 'vashali@gmail.com', 0, 1, '2025-02-22 10:18:50.484248', '2', 'media/profile_pic/WhatsApp_Image_2025-02-22_at_15.46.50_6b5a841c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_customuser_groups`
--

CREATE TABLE `bbdmsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_customuser_user_permissions`
--

CREATE TABLE `bbdmsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bbdmsapp_donorreg`
--

CREATE TABLE `bbdmsapp_donorreg` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `bloodgroup_id` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bbdmsapp_donorreg`
--

INSERT INTO `bbdmsapp_donorreg` (`id`, `age`, `mobilenumber`, `gender`, `address`, `regdate_at`, `updated_at`, `admin_id`, `bloodgroup_id`, `status`) VALUES
(18, 22, '9104688599', 'Female', 'Ahemdabad', '2025-02-22 10:04:20.204473', '2025-02-22 10:04:20.204473', 20, 19, '0'),
(19, 20, '9054759654', 'Male', 'surat', '2025-02-22 10:05:48.475597', '2025-02-22 10:05:48.475597', 21, 16, '0'),
(20, 23, '9023430655', 'Male', 'madhavpur', '2025-02-22 10:08:00.957943', '2025-02-22 10:08:00.957943', 22, 19, '0'),
(21, 22, '1234567892', 'Female', 'Rajkot', '2025-02-22 10:12:24.875473', '2025-02-22 10:12:24.875473', 23, 19, '0'),
(22, 23, '9913564890', 'Female', 'Surat', '2025-02-22 10:13:59.062726', '2025-02-22 10:13:59.062726', 24, 16, '0'),
(23, 24, '1259399685', 'Female', 'Gandhinagar', '2025-02-22 10:18:51.394073', '2025-02-22 10:18:51.394073', 25, 21, '0');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(7, 'bbdmsapp', 'bloodgroup'),
(9, 'bbdmsapp', 'bloodrequest'),
(10, 'bbdmsapp', 'contact'),
(6, 'bbdmsapp', 'customuser'),
(8, 'bbdmsapp', 'donorreg'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-12 06:47:14.126703'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-07-12 06:47:14.198992'),
(3, 'auth', '0001_initial', '2024-07-12 06:47:14.462476'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-07-12 06:47:14.513112'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-07-12 06:47:14.526079'),
(6, 'auth', '0004_alter_user_username_opts', '2024-07-12 06:47:14.533058'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-07-12 06:47:14.540312'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-07-12 06:47:14.551045'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-07-12 06:47:14.571142'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-07-12 06:47:14.584678'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-07-12 06:47:14.593685'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-07-12 06:47:14.616442'),
(13, 'auth', '0011_update_proxy_permissions', '2024-07-12 06:47:14.624417'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-07-12 06:47:14.645651'),
(15, 'bbdmsapp', '0001_initial', '2024-07-12 06:47:14.899976'),
(16, 'admin', '0001_initial', '2024-07-12 06:47:14.995710'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-07-12 06:47:15.007680'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-12 06:47:15.018947'),
(19, 'bbdmsapp', '0002_alter_customuser_user_type', '2024-07-12 06:47:15.031902'),
(20, 'sessions', '0001_initial', '2024-07-12 06:47:15.067361'),
(21, 'bbdmsapp', '0003_bloodgroup_alter_customuser_user_type', '2024-07-12 13:29:01.051537'),
(22, 'bbdmsapp', '0004_alter_customuser_user_type_donorreg', '2024-07-18 06:09:10.691475'),
(23, 'bbdmsapp', '0005_bloodrequest', '2024-07-19 06:12:29.806453'),
(24, 'bbdmsapp', '0006_contact_alter_customuser_user_type', '2024-07-19 11:39:31.030484'),
(25, 'bbdmsapp', '0007_donorreg_status_alter_customuser_user_type', '2024-07-22 12:54:28.387708');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bk7i1wfo3jwmkf364spez6n5zli7gjmp', '.eJxVjEEOwiAQRe_C2hBggBaX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLLU6_W8L84LYDumO7zTLPbV2mJHdFHrTL60z8vBzu30HFXr-1DeRHw5jIgrMECgyHkLRDT7mA15CJfHFoRvQcWBtQ5LDQUIpWYRDvD-knODU:1tpOvP:czhvWySJzismI8VmGYR2xuBM0EfGyHJoMCAKt9bj4r0', '2025-03-18 09:50:55.494575');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `bbdmsapp_bloodgroup`
--
ALTER TABLE `bbdmsapp_bloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbdmsapp_bloodrequest`
--
ALTER TABLE `bbdmsapp_bloodrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bbdmsapp_bloodrequest_donid_id_0bb1a046_fk_bbdmsapp_donorreg_id` (`donid_id`);

--
-- Indexes for table `bbdmsapp_contact`
--
ALTER TABLE `bbdmsapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbdmsapp_customuser`
--
ALTER TABLE `bbdmsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bbdmsapp_customuser_groups`
--
ALTER TABLE `bbdmsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bbdmsapp_customuser_groups_customuser_id_group_id_e9442ea2_uniq` (`customuser_id`,`group_id`),
  ADD KEY `bbdmsapp_customuser_groups_group_id_e05eab4f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `bbdmsapp_customuser_user_permissions`
--
ALTER TABLE `bbdmsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bbdmsapp_customuser_user_customuser_id_permission_6e312c2f_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `bbdmsapp_customuser__permission_id_7d2e242c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bbdmsapp_donorreg`
--
ALTER TABLE `bbdmsapp_donorreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `bbdmsapp_donorreg_bloodgroup_id_161d9e3b_fk_bbdmsapp_` (`bloodgroup_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_bbdmsapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bbdmsapp_bloodgroup`
--
ALTER TABLE `bbdmsapp_bloodgroup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bbdmsapp_bloodrequest`
--
ALTER TABLE `bbdmsapp_bloodrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bbdmsapp_contact`
--
ALTER TABLE `bbdmsapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bbdmsapp_customuser`
--
ALTER TABLE `bbdmsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bbdmsapp_customuser_groups`
--
ALTER TABLE `bbdmsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bbdmsapp_customuser_user_permissions`
--
ALTER TABLE `bbdmsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bbdmsapp_donorreg`
--
ALTER TABLE `bbdmsapp_donorreg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `bbdmsapp_bloodrequest`
--
ALTER TABLE `bbdmsapp_bloodrequest`
  ADD CONSTRAINT `bbdmsapp_bloodrequest_donid_id_0bb1a046_fk_bbdmsapp_donorreg_id` FOREIGN KEY (`donid_id`) REFERENCES `bbdmsapp_donorreg` (`id`);

--
-- Constraints for table `bbdmsapp_customuser_groups`
--
ALTER TABLE `bbdmsapp_customuser_groups`
  ADD CONSTRAINT `bbdmsapp_customuser__customuser_id_b669c5dc_fk_bbdmsapp_` FOREIGN KEY (`customuser_id`) REFERENCES `bbdmsapp_customuser` (`id`),
  ADD CONSTRAINT `bbdmsapp_customuser_groups_group_id_e05eab4f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `bbdmsapp_customuser_user_permissions`
--
ALTER TABLE `bbdmsapp_customuser_user_permissions`
  ADD CONSTRAINT `bbdmsapp_customuser__customuser_id_d1454c39_fk_bbdmsapp_` FOREIGN KEY (`customuser_id`) REFERENCES `bbdmsapp_customuser` (`id`),
  ADD CONSTRAINT `bbdmsapp_customuser__permission_id_7d2e242c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `bbdmsapp_donorreg`
--
ALTER TABLE `bbdmsapp_donorreg`
  ADD CONSTRAINT `bbdmsapp_donorreg_admin_id_2a2036e0_fk_bbdmsapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `bbdmsapp_customuser` (`id`),
  ADD CONSTRAINT `bbdmsapp_donorreg_bloodgroup_id_161d9e3b_fk_bbdmsapp_` FOREIGN KEY (`bloodgroup_id`) REFERENCES `bbdmsapp_bloodgroup` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bbdmsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `bbdmsapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
