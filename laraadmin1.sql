-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2018 at 05:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraadmin1`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[""]',
  `section_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `appointment_date` date NOT NULL DEFAULT '1970-01-01',
  `problem` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `deleted_at`, `created_at`, `updated_at`, `patient_id`, `section_id`, `doctor_id`, `appointment_date`, `problem`, `status`) VALUES
(1, NULL, '2017-12-06 11:49:30', '2017-12-06 11:49:56', '[\"1\"]', 2, 1, '2017-12-29', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bed_type` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `bed_capacity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `deleted_at`, `created_at`, `updated_at`, `bed_type`, `description`, `bed_capacity`, `charge`, `status`) VALUES
(1, NULL, '2017-12-10 12:44:15', '2017-12-10 12:44:15', 'AC - 2nd Floor', 'This is Test bed ', 23, '18,000', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bed_assigns`
--

CREATE TABLE `bed_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bed_type` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `assign_date` date NOT NULL DEFAULT '1970-01-01',
  `discharge_date` date NOT NULL DEFAULT '1970-01-01',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bed_assigns`
--

INSERT INTO `bed_assigns` (`id`, `deleted_at`, `created_at`, `updated_at`, `patient_id`, `bed_type`, `assign_date`, `discharge_date`, `description`, `status`) VALUES
(1, NULL, '2017-12-10 12:52:48', '2017-12-10 12:52:48', 1, 1, '2017-12-02', '2017-12-28', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `birth_reports`
--

CREATE TABLE `birth_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '1970-01-01',
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `doctor_name` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `death_reports`
--

CREATE TABLE `death_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '1970-01-01',
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `doctor_name` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2017-11-29 08:20:42', '2017-11-29 08:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `section` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_biography` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `picture` int(11) NOT NULL,
  `specialist` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date_ of_birth` date NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `education_degree` text COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `deleted_at`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `password`, `designation`, `section`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_ of_birth`, `sex`, `blood_group`, `status`, `education_degree`, `section_id`) VALUES
(1, NULL, '2017-11-29 14:42:36', '2017-11-29 14:45:03', 'Dr.Huyan', 'Xinan', 'hatem230@yahoo.com', '$2y$10$UW7V4eCKaD2iDkpSsaaovO4BVSCx2qHnYO1Ly5dgXVoemcMe/OYP.', 'Assistant Professor ', 2, '231,East Patalipur,Sonamuri,Nkhali', 432423232, '3434343', '', 1, 'Gynecologist ', '0000-00-00', 'Male', 'O+', 'Active', 'dasdsa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `attach_file` int(11) NOT NULL DEFAULT '0',
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `deleted_at`, `created_at`, `updated_at`, `patient_id`, `attach_file`, `doctor_id`, `description`) VALUES
(1, NULL, '2017-12-06 10:22:11', '2017-12-06 10:22:11', 1, 2, 1, 'asadas');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`, `image`) VALUES
(1, 'admin', 'Super Admin', 'Male', '8888888888', '', 'admin@admin.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-11-29', '2017-11-29', '2017-11-29', '0.000', NULL, '2017-11-29 08:22:13', '2017-12-11 10:09:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `insurance_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investigations`
--

CREATE TABLE `investigations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'H.M.S', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(2, 'sitename_part1', '', 'Hospital Management System', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(3, 'sitename_part2', '', 'H.M.S', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(4, 'sitename_short', '', 'H.', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(5, 'site_description', '', 'LaraAdmin is a open-source Laravel Admin Panel for quick-start Admin based applications and boilerplate for CRM or CMS systems.', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(6, 'sidebar_search', '', '1', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(7, 'show_messages', '', '1', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(8, 'show_notifications', '', '1', '2017-11-29 08:20:45', '2017-12-11 10:14:54'),
(9, 'show_tasks', '', '1', '2017-11-29 08:20:46', '2017-12-11 10:14:54'),
(10, 'show_rightsidebar', '', '1', '2017-11-29 08:20:46', '2017-12-11 10:14:54'),
(11, 'skin', '', 'skin-purple', '2017-11-29 08:20:46', '2017-12-11 10:14:54'),
(12, 'layout', '', 'fixed', '2017-11-29 08:20:46', '2017-12-11 10:14:54'),
(13, 'default_email', '', 'test@example.com', '2017-11-29 08:20:46', '2017-12-11 10:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 17, '2017-11-29 08:20:42', '2017-12-11 07:40:36'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2017-11-29 08:20:42', '2017-12-10 10:50:18'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 9, '2017-11-29 08:20:42', '2017-12-11 07:39:04'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2017-11-29 08:20:42', '2017-12-10 10:50:18'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2017-11-29 08:20:42', '2017-12-10 10:50:18'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 4, '2017-11-29 08:20:42', '2017-12-10 10:50:18'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 5, '2017-11-29 08:20:42', '2017-12-10 10:50:18'),
(11, 'Patients', 'patients', 'fa fa-wheelchair', 'module', 0, 12, '2017-11-29 15:01:03', '2017-12-11 07:39:04'),
(12, 'Documents', 'documents', 'fa fa-file', 'module', 0, 13, '2017-12-06 10:21:30', '2017-12-11 07:39:04'),
(14, 'Schedules', 'schedules', 'fa fa-calendar', 'module', 0, 14, '2017-12-06 10:40:51', '2017-12-11 07:40:36'),
(15, 'Appointments', 'appointments', 'fa fa-pencil-square-o', 'module', 0, 15, '2017-12-06 11:48:42', '2017-12-11 07:40:36'),
(18, 'Insurances', 'insurances', 'fa fa-book', 'module', 0, 4, '2017-12-10 11:31:48', '2017-12-11 07:39:03'),
(19, 'Patient_Case_Studies', 'patient_case_studies', 'fa fa-cube', 'module', 0, 5, '2017-12-10 11:44:43', '2017-12-11 07:39:03'),
(22, 'Beds', 'beds', 'fa fa-cube', 'module', 0, 6, '2017-12-10 12:43:44', '2017-12-11 07:39:03'),
(23, 'Bed_Assigns', 'bed_assigns', 'fa fa-bed', 'module', 0, 7, '2017-12-10 12:52:28', '2017-12-11 07:39:03'),
(25, 'Noticeboards', 'noticeboards', 'fa fa-bell', 'module', 0, 8, '2017-12-10 13:58:44', '2017-12-11 07:39:04'),
(28, 'Hospital activities', 'http://', 'fa-hospital-o', 'custom', 0, 16, '2017-12-10 14:06:13', '2017-12-11 07:40:36'),
(29, 'Birth_Reports', 'birth_reports', 'fa fa-cube', 'module', 28, 1, '2017-12-10 14:11:09', '2017-12-10 14:12:01'),
(32, 'Death_Reports', 'death_reports', 'fa fa-cube', 'module', 0, 2, '2017-12-10 14:33:27', '2017-12-11 07:39:03'),
(33, 'Operation_Reports', 'operation_reports', 'fa fa-bed', 'module', 0, 3, '2017-12-10 14:37:23', '2017-12-11 07:39:03'),
(34, 'Death_Reports', 'death_reports', 'fa-cube', 'module', 28, 2, '2017-12-11 07:40:23', '2017-12-11 07:40:36'),
(35, 'Operation_Reports', 'operation_reports', 'fa-bed', 'module', 28, 3, '2017-12-11 07:41:19', '2017-12-11 07:41:27'),
(36, 'Doctors', 'doctors', 'fa fa-user-md', 'module', 0, 12, '2017-11-29 15:01:03', '2017-12-11 07:39:04'),
(37, 'Sections', 'sections', 'fa fa-user-md', 'module', 0, 12, '2017-11-29 15:01:03', '2017-12-11 07:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-11-29 08:20:07', '2017-11-29 08:20:46'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-11-29 08:20:10', '2017-11-29 08:20:46'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-11-29 08:20:12', '2017-11-29 08:20:46'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-11-29 08:20:13', '2017-11-29 08:20:46'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-11-29 08:20:17', '2017-11-29 08:20:46'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-11-29 08:20:26', '2017-11-29 08:20:46'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-11-29 08:20:27', '2017-11-29 08:20:46'),
(9, 'Sections', 'Sections', 'sections', 'name', 'Section', 'SectionsController', 'fa-sitemap', 1, '2017-11-29 08:24:52', '2017-11-29 14:17:08'),
(10, 'Doctors', 'Doctors', 'doctors', 'first_name', 'Doctor', 'DoctorsController', 'fa-user-md', 1, '2017-11-29 08:29:57', '2017-12-14 11:40:03'),
(11, 'Patients', 'Patients', 'patients', 'first_name', 'Patient', 'PatientsController', 'fa-wheelchair', 1, '2017-11-29 14:53:19', '2017-11-29 15:01:03'),
(12, 'Documents', 'Documents', 'documents', 'doctor_id', 'Document', 'DocumentsController', 'fa-file', 1, '2017-12-06 10:15:25', '2017-12-06 10:23:12'),
(14, 'Schedules', 'Schedules', 'schedules', 'doctor_id', 'Schedule', 'SchedulesController', 'fa-calendar', 1, '2017-12-06 10:34:04', '2017-12-06 10:55:25'),
(15, 'Appointments', 'Appointments', 'appointments', 'patient_id', 'Appointment', 'AppointmentsController', 'fa-pencil-square-o', 1, '2017-12-06 11:25:47', '2017-12-06 11:48:42'),
(16, 'Insurances', 'Insurances', 'insurances', 'insurance_name', 'Insurance', 'InsurancesController', 'fa-book', 1, '2017-12-10 11:29:28', '2017-12-10 11:31:48'),
(17, 'Patient_Case_Studies', 'Patient_Case_Studies', 'patient_case_studies', 'patient_id', 'Patient_Case_Study', 'Patient_Case_StudiesController', 'fa-cube', 1, '2017-12-10 11:32:51', '2017-12-10 11:44:43'),
(20, 'Beds', 'Beds', 'beds', 'bed_type', 'Bed', 'BedsController', 'fa-cube', 1, '2017-12-10 12:40:31', '2017-12-10 12:43:44'),
(21, 'Bed_Assigns', 'Bed_Assigns', 'bed_assigns', 'patient_id', 'Bed_Assign', 'Bed_AssignsController', 'fa-bed', 1, '2017-12-10 12:45:27', '2017-12-10 12:52:28'),
(23, 'Noticeboards', 'Noticeboards', 'noticeboards', 'title', 'Noticeboard', 'NoticeboardsController', 'fa-bell', 1, '2017-12-10 13:57:59', '2017-12-10 13:58:44'),
(24, 'Birth_Reports', 'Birth_Reports', 'birth_reports', 'patient_id', 'Birth_Report', 'Birth_ReportsController', 'fa-cube', 1, '2017-12-10 14:07:29', '2017-12-10 14:11:09'),
(25, 'Death_Reports', 'Death_Reports', 'death_reports', 'doctor_name', 'Death_Report', 'Death_ReportsController', 'fa-cube', 1, '2017-12-10 14:30:21', '2017-12-10 14:33:27'),
(26, 'Operation_Reports', 'Operation_Reports', 'operation_reports', 'patient_id', 'Operation_Report', 'Operation_ReportsController', 'fa-bed', 1, '2017-12-10 14:34:27', '2017-12-10 14:37:23'),
(27, 'Investigation_Reports', 'Investigation_Reports', 'investigation_reports', '', 'Investigation_Report', 'Investigation_ReportsController', 'fa-cube', 0, '2017-12-10 14:47:57', '2017-12-10 14:47:57'),
(28, 'Investigations', 'Investigations', 'investigations', '', 'Investigation', 'InvestigationsController', 'fa-cube', 0, '2017-12-11 07:42:19', '2017-12-11 07:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-11-29 08:20:10', '2017-11-29 08:20:10'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-11-29 08:20:10', '2017-11-29 08:20:10'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-11-29 08:20:10', '2017-11-29 08:20:10'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-11-29 08:20:10', '2017-11-29 08:20:10'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-11-29 08:20:11', '2017-11-29 08:20:11'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-11-29 08:20:11', '2017-11-29 08:20:11'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-11-29 08:20:11', '2017-11-29 08:20:11'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-11-29 08:20:12', '2017-11-29 08:20:12'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-11-29 08:20:12', '2017-11-29 08:20:12'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-11-29 08:20:12', '2017-11-29 08:20:12'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-11-29 08:20:13', '2017-11-29 08:20:13'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-11-29 08:20:14', '2017-11-29 08:20:14'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-11-29 08:20:14', '2017-11-29 08:20:14'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-11-29 08:20:14', '2017-11-29 08:20:14'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-11-29 08:20:14', '2017-11-29 08:20:14'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-11-29 08:20:26', '2017-11-29 08:20:26'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-11-29 08:20:26', '2017-11-29 08:20:26'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-11-29 08:20:26', '2017-11-29 08:20:26'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-11-29 08:20:27', '2017-11-29 08:20:27'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-11-29 08:20:28', '2017-11-29 08:20:28'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-11-29 08:20:28', '2017-11-29 08:20:28'),
(74, 'first_name', 'First Name', 11, 16, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:54:01', '2017-11-29 14:54:01'),
(75, 'last_name', 'Last Name', 11, 16, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:55:37', '2017-11-29 14:55:37'),
(76, 'email', 'Email Address', 11, 8, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:55:55', '2017-11-29 14:55:55'),
(77, 'password', 'Password', 11, 17, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:56:16', '2017-11-29 14:56:16'),
(78, 'phone', 'Phone No', 11, 13, 0, '', 0, 11, 0, '', 0, '2017-11-29 14:56:33', '2017-11-29 14:56:33'),
(79, 'mobile', 'Mobile No', 11, 13, 0, '', 0, 11, 1, '', 0, '2017-11-29 14:56:49', '2017-11-29 14:56:49'),
(80, 'blood_group', 'Blood Group', 11, 7, 0, '', 0, 0, 0, '[\"A+\",\"A-\",\"B+\",\"B-\",\"AB-\",\"O-\",\"O+\",\"AB+\"]', 0, '2017-11-29 14:58:18', '2017-11-29 14:58:18'),
(81, 'sex', 'Sex', 11, 18, 0, '', 0, 0, 0, '[\"Male\",\"Female\"]', 0, '2017-11-29 14:59:03', '2017-11-29 14:59:03'),
(82, 'date_of_birth', 'Date of Birth', 11, 4, 0, '', 0, 0, 1, '', 0, '2017-11-29 14:59:26', '2017-11-29 14:59:26'),
(83, 'picture', 'Picture', 11, 12, 0, '', 0, 0, 0, '', 0, '2017-11-29 14:59:49', '2017-11-29 14:59:49'),
(84, 'address', 'Address', 11, 1, 0, '', 0, 256, 0, '', 0, '2017-11-29 15:00:06', '2017-11-29 15:00:06'),
(85, 'status', 'Status', 11, 7, 0, '', 0, 0, 0, '[\"Active\",\"InActive\"]', 0, '2017-11-29 15:00:43', '2017-11-29 15:00:43'),
(86, 'patient_id', 'Patient ID', 12, 7, 0, '', 0, 0, 1, '@patients', 0, '2017-12-06 10:16:23', '2017-12-06 10:16:23'),
(87, 'attach_file', 'Attach File', 12, 9, 0, '', 0, 0, 1, '', 0, '2017-12-06 10:19:22', '2017-12-06 10:19:22'),
(88, 'doctor_id', 'Doctor Name', 12, 7, 0, '', 0, 0, 1, '@doctors', 0, '2017-12-06 10:20:48', '2017-12-06 10:20:48'),
(89, 'description', 'Description', 12, 21, 0, '', 0, 0, 0, '', 0, '2017-12-06 10:21:14', '2017-12-06 10:21:14'),
(91, 'doctor_id', 'Doctor Name', 14, 7, 0, '', 0, 0, 0, '@doctors', 0, '2017-12-06 10:34:19', '2017-12-06 10:34:19'),
(92, 'available_days', 'Available Days', 14, 15, 0, '', 0, 0, 0, '[\"Friday\",\"Saturday\",\"Sunday\",\"Monday\",\"Tuesday\",\"Wednesday\",\"Thursday\"]', 0, '2017-12-06 10:37:19', '2017-12-06 10:37:19'),
(93, 'available_time', 'Available Time', 14, 5, 0, '', 0, 0, 0, '', 0, '2017-12-06 10:38:20', '2017-12-06 10:38:20'),
(94, 'per_patient_time', 'Per Patient Time', 14, 16, 0, '', 0, 256, 0, '', 0, '2017-12-06 10:39:13', '2017-12-06 10:39:13'),
(95, 'status', 'Status', 14, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-06 10:40:10', '2017-12-06 10:40:10'),
(96, 'patient_id', 'Patient ID', 15, 20, 0, '', 0, 256, 1, '@patients', 0, '2017-12-06 11:26:23', '2017-12-06 11:26:23'),
(97, 'section_id', 'Section Name', 15, 7, 0, '', 0, 0, 1, '@sections', 0, '2017-12-06 11:27:13', '2017-12-06 11:27:13'),
(98, 'doctor_id', 'Doctor Name', 15, 7, 0, '', 0, 0, 1, '@doctors', 0, '2017-12-06 11:28:42', '2017-12-06 11:28:42'),
(99, 'appointment_date', 'Appointment Date', 15, 4, 0, '', 0, 0, 1, '', 0, '2017-12-06 11:30:09', '2017-12-06 11:38:39'),
(100, 'problem', 'Problem', 15, 21, 0, '', 0, 0, 0, '', 0, '2017-12-06 11:47:55', '2017-12-06 11:47:55'),
(101, 'status', 'Status', 15, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-06 11:48:29', '2017-12-06 11:48:29'),
(102, 'insurance_name', 'Insurance Name', 16, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 11:30:36', '2017-12-10 11:30:36'),
(103, 'description', 'Description', 16, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 11:30:56', '2017-12-10 11:30:56'),
(104, 'status', 'Status', 16, 7, 0, '', 0, 0, 0, '[\"Active\",\"InActive\"]', 0, '2017-12-10 11:31:31', '2017-12-10 11:31:31'),
(105, 'patient_id', 'Patient ID', 17, 7, 0, '', 0, 0, 1, '@patients', 0, '2017-12-10 11:33:22', '2017-12-10 11:33:22'),
(106, 'food_allergies', 'Food Allergies', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:33:47', '2017-12-10 11:33:47'),
(107, 'tendency_bleed', 'Tendency Bleed', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:34:08', '2017-12-10 11:34:08'),
(108, 'heart_disease', 'Heart Disease', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:39:35', '2017-12-10 11:39:35'),
(109, 'high_blood_pressure', 'High Blood Pressure', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:39:57', '2017-12-10 11:39:57'),
(110, 'diabetic', 'Diabetic', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:40:17', '2017-12-10 11:40:17'),
(111, 'surgery', 'Surgery', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:40:30', '2017-12-10 11:40:30'),
(112, 'accident', 'Accident', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:40:42', '2017-12-10 11:40:42'),
(113, 'others', 'Others', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:40:56', '2017-12-10 11:40:56'),
(114, 'family_history', 'Family History', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:41:53', '2017-12-10 11:41:53'),
(115, 'currenm_medication', 'Current Medication', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:42:18', '2017-12-10 11:42:18'),
(116, 'female_pregnancy', 'Female Pregnancy', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:42:38', '2017-12-10 11:42:38'),
(117, 'breast_feeding', 'Breast Feeding', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:42:58', '2017-12-10 11:42:58'),
(118, 'health_insurance', 'Health Insurance', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:43:18', '2017-12-10 11:43:18'),
(119, 'low_Income', 'Low Income', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:43:41', '2017-12-10 11:43:41'),
(120, 'reference', 'Reference', 17, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 11:43:54', '2017-12-10 11:43:54'),
(121, 'status', 'Status', 17, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 11:44:28', '2017-12-10 11:44:28'),
(133, 'bed_type', 'Bed Type', 20, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 12:41:33', '2017-12-10 12:41:33'),
(134, 'description', 'Description', 20, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 12:41:57', '2017-12-10 12:41:57'),
(135, 'bed_capacity', 'Bed Capacity', 20, 13, 0, '', 0, 11, 1, '', 0, '2017-12-10 12:42:34', '2017-12-10 12:42:43'),
(136, 'charge', 'Charge', 20, 16, 0, '', 0, 256, 0, '', 0, '2017-12-10 12:42:58', '2017-12-10 12:42:58'),
(137, 'status', 'Status', 20, 18, 0, '', 0, 0, 0, '[\"Active\",\"InActive\"]', 0, '2017-12-10 12:43:24', '2017-12-10 12:43:24'),
(138, 'patient_id', 'Patient ID', 21, 7, 0, '', 0, 0, 0, '@patients', 0, '2017-12-10 12:50:17', '2017-12-10 12:50:17'),
(139, 'bed_type', 'Bed Type', 21, 7, 0, '', 0, 0, 0, '@beds', 0, '2017-12-10 12:50:41', '2017-12-10 12:50:41'),
(140, 'assign_date', 'Assign Date', 21, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 12:51:05', '2017-12-10 12:51:05'),
(141, 'discharge_date', 'Discharge Date', 21, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 12:51:24', '2017-12-10 12:51:24'),
(142, 'description', 'Description', 21, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 12:51:41', '2017-12-10 12:51:41'),
(143, 'status', 'Status', 21, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 12:52:07', '2017-12-10 12:52:07'),
(149, 'title', 'Title', 23, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 13:58:19', '2017-12-10 13:58:19'),
(150, 'description', 'Description ', 23, 21, 0, '', 0, 0, 1, '', 0, '2017-12-10 13:58:34', '2017-12-10 13:58:34'),
(151, 'start_date', 'Start Date', 23, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 13:59:34', '2017-12-10 13:59:34'),
(152, 'end_date', 'End Date', 23, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 13:59:51', '2017-12-10 13:59:51'),
(153, 'status', 'Status', 23, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 14:00:20', '2017-12-10 14:00:20'),
(154, 'patient_id', 'Patient ID', 24, 7, 0, '', 0, 0, 1, '@patients', 0, '2017-12-10 14:08:49', '2017-12-10 14:08:49'),
(155, 'date', 'Date', 24, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 14:09:07', '2017-12-10 14:09:07'),
(156, 'title', 'Title', 24, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 14:09:25', '2017-12-10 14:09:25'),
(157, 'description', 'Description', 24, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 14:09:41', '2017-12-10 14:09:41'),
(158, 'doctor_name', 'Doctor Name', 24, 7, 0, '', 0, 0, 0, '@doctors', 0, '2017-12-10 14:10:12', '2017-12-10 14:10:12'),
(159, 'status', 'Status', 24, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 14:10:54', '2017-12-10 14:10:54'),
(160, 'patient_id', 'Patient ID', 25, 7, 0, '', 0, 0, 0, '@patients', 0, '2017-12-10 14:30:53', '2017-12-10 14:30:53'),
(161, 'date', 'Date', 25, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 14:31:47', '2017-12-10 14:31:47'),
(162, 'title', 'Title', 25, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 14:32:10', '2017-12-10 14:32:10'),
(163, 'description', 'Description', 25, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 14:32:21', '2017-12-10 14:32:21'),
(164, 'doctor_name', 'Doctor Name', 25, 7, 0, '', 0, 0, 0, '@doctors', 0, '2017-12-10 14:32:37', '2017-12-10 14:32:37'),
(165, 'status', 'Status', 25, 18, 0, '', 0, 0, 0, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 14:33:08', '2017-12-10 14:33:08'),
(166, 'patient_id', 'Patient ID', 26, 7, 0, '', 0, 0, 1, '@patients', 0, '2017-12-10 14:35:08', '2017-12-10 14:35:08'),
(167, 'date', 'Date', 26, 4, 0, '', 0, 0, 1, '', 0, '2017-12-10 14:35:28', '2017-12-10 14:35:28'),
(168, 'title', 'Title', 26, 16, 0, '', 0, 256, 1, '', 0, '2017-12-10 14:36:00', '2017-12-10 14:36:00'),
(169, 'description', 'Description', 26, 21, 0, '', 0, 0, 0, '', 0, '2017-12-10 14:36:14', '2017-12-10 14:36:14'),
(170, 'doctor_name', 'Doctor Name', 26, 7, 0, '', 0, 0, 1, '@doctors', 0, '2017-12-10 14:36:31', '2017-12-10 14:36:31'),
(171, 'status', 'Status', 26, 18, 0, '', 0, 0, 1, '[\"Active\",\"Inactive\"]', 0, '2017-12-10 14:37:06', '2017-12-10 14:37:06'),
(172, 'patient_id', 'Patient ID', 28, 7, 0, '', 0, 0, 1, '@patients', 0, '2017-12-11 07:42:43', '2017-12-11 07:42:43'),
(175, 'image', 'Image', 4, 12, 0, '', 0, 0, 0, '', 0, '2017-12-11 10:08:57', '2017-12-11 10:08:57'),
(176, 'first_name', 'First Name', 10, 16, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:54:01', '2017-11-29 14:54:01'),
(177, 'last_name', 'Last Name', 10, 16, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:55:37', '2017-11-29 14:55:37'),
(178, 'email', 'Email Address', 10, 8, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:55:55', '2017-11-29 14:55:55'),
(179, 'password', 'Password', 10, 17, 0, '', 0, 256, 1, '', 0, '2017-11-29 14:56:16', '2017-11-29 14:56:16'),
(180, 'phone', 'Phone No', 10, 13, 0, '', 0, 11, 0, '', 0, '2017-11-29 14:56:33', '2017-11-29 14:56:33'),
(181, 'mobile', 'Mobile No', 10, 13, 0, '', 0, 11, 1, '', 0, '2017-11-29 14:56:49', '2017-11-29 14:56:49'),
(182, 'blood_group', 'Blood Group', 10, 7, 0, '', 0, 0, 0, '[\"A+\",\"A-\",\"B+\",\"B-\",\"AB-\",\"O-\",\"O+\",\"AB+\"]', 0, '2017-11-29 14:58:18', '2017-11-29 14:58:18'),
(183, 'sex', 'Sex', 10, 18, 0, '', 0, 0, 0, '[\"Male\",\"Female\"]', 0, '2017-11-29 14:59:03', '2017-11-29 14:59:03'),
(184, 'date_of_birth', 'Date of Birth', 10, 4, 0, '', 0, 0, 1, '', 0, '2017-11-29 14:59:26', '2017-11-29 14:59:26'),
(185, 'picture', 'Picture', 10, 12, 0, '', 0, 0, 0, '', 0, '2017-11-29 14:59:49', '2017-11-29 14:59:49'),
(186, 'address', 'Address', 10, 1, 0, '', 0, 256, 0, '', 0, '2017-11-29 15:00:06', '2017-11-29 15:00:06'),
(187, 'status', 'Status', 10, 7, 0, '', 0, 0, 0, '[\"Active\",\"InActive\"]', 0, '2017-11-29 15:00:43', '2017-11-29 15:00:43'),
(188, 'section_id', 'Section Name', 10, 7, 0, '', 0, 0, 0, '@sections', 0, '2017-12-14 11:25:20', '2017-12-14 11:25:20'),
(190, 'name', 'Name', 9, 16, 0, '', 5, 250, 1, '', 0, '2017-11-29 08:20:08', '2017-11-29 08:20:08'),
(191, 'description', 'Description', 9, 21, 0, '', 0, 1000, 0, '', 0, '2017-11-29 08:20:17', '2017-11-29 08:20:17'),
(192, 'status', 'Status', 9, 7, 0, '', 0, 0, 0, '[\"Active\",\"InActive\"]', 0, '2017-11-29 15:00:43', '2017-11-29 15:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(2, 'Checkbox', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(3, 'Currency', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(4, 'Date', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(5, 'Datetime', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(6, 'Decimal', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(7, 'Dropdown', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(8, 'Email', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(9, 'File', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(10, 'Float', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(11, 'HTML', '2017-11-29 08:20:04', '2017-11-29 08:20:04'),
(12, 'Image', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(13, 'Integer', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(14, 'Mobile', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(15, 'Multiselect', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(16, 'Name', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(17, 'Password', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(18, 'Radio', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(19, 'String', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(20, 'Taginput', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(21, 'Textarea', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(22, 'TextField', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(23, 'URL', '2017-11-29 08:20:05', '2017-11-29 08:20:05'),
(24, 'Files', '2017-11-29 08:20:05', '2017-11-29 08:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL DEFAULT '1970-01-01',
  `end_date` date NOT NULL DEFAULT '1970-01-01',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `description`, `start_date`, `end_date`, `status`) VALUES
(1, '2017-12-10 13:58:57', '2017-12-10 13:58:53', '2017-12-10 13:58:57', 'sdfds', 'sdf', '1970-01-01', '1970-01-01', ''),
(2, NULL, '2017-12-10 14:00:46', '2017-12-10 14:00:46', 'aas', 'asdas', '2017-12-14', '2017-12-30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `operation_reports`
--

CREATE TABLE `operation_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '1970-01-01',
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `doctor_name` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` int(10) UNSIGNED NOT NULL,
  `mobile` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL DEFAULT '1970-01-01',
  `picture` int(11) NOT NULL,
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `deleted_at`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `password`, `phone`, `mobile`, `blood_group`, `sex`, `date_of_birth`, `picture`, `address`, `status`) VALUES
(1, NULL, '2017-12-06 10:12:25', '2017-12-06 10:12:25', 'kamal', 'uddin', 'kamal@demo.com', '$2y$10$A1D8Y48Ejfiu0745KJASkeXGg5wpxXrk3CBxj9DGyG5NI7RQacO7m', 32322324, 534343, 'B+', 'Male', '2017-12-28', 1, 'sdfds', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient_case_studies`
--

CREATE TABLE `patient_case_studies` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `food_allergies` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `tendency_bleed` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `heart_disease` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `high_blood_pressure` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `diabetic` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `surgery` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `accident` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `others` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `family_history` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `currenm_medication` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `female_pregnancy` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `breast_feeding` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `health_insurance` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `low_Income` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-11-29 08:20:45', '2017-11-29 08:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-11-29 08:20:42', '2017-11-29 08:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(2, 1, 2, 1, 1, 1, 1, '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(3, 1, 3, 1, 1, 1, 1, '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(4, 1, 4, 1, 1, 1, 1, '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(5, 1, 5, 1, 1, 1, 1, '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(7, 1, 7, 1, 1, 1, 1, '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(8, 1, 8, 1, 1, 1, 1, '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(9, 1, 9, 1, 1, 1, 1, '2017-11-29 08:27:26', '2017-11-29 08:27:26'),
(11, 1, 11, 1, 1, 1, 1, '2017-11-29 15:01:03', '2017-11-29 15:01:03'),
(12, 1, 12, 1, 1, 1, 1, '2017-12-06 10:21:30', '2017-12-06 10:21:30'),
(14, 1, 14, 1, 1, 1, 1, '2017-12-06 10:40:51', '2017-12-06 10:40:51'),
(15, 1, 15, 1, 1, 1, 1, '2017-12-06 11:48:43', '2017-12-06 11:48:43'),
(16, 1, 16, 1, 1, 1, 1, '2017-12-10 11:31:48', '2017-12-10 11:31:48'),
(17, 1, 17, 1, 1, 1, 1, '2017-12-10 11:44:43', '2017-12-10 11:44:43'),
(20, 1, 20, 1, 1, 1, 1, '2017-12-10 12:43:44', '2017-12-10 12:43:44'),
(21, 1, 21, 1, 1, 1, 1, '2017-12-10 12:52:28', '2017-12-10 12:52:28'),
(23, 1, 23, 1, 1, 1, 1, '2017-12-10 13:58:44', '2017-12-10 13:58:44'),
(24, 1, 24, 1, 1, 1, 1, '2017-12-10 14:11:09', '2017-12-10 14:11:09'),
(25, 1, 25, 1, 1, 1, 1, '2017-12-10 14:33:27', '2017-12-10 14:33:27'),
(26, 1, 26, 1, 1, 1, 1, '2017-12-10 14:37:23', '2017-12-10 14:37:23'),
(27, 1, 10, 1, 1, 1, 1, '2017-11-29 08:27:26', '2017-11-29 08:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(2, 1, 2, 'write', '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(3, 1, 3, 'write', '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(4, 1, 4, 'write', '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(5, 1, 5, 'write', '2017-11-29 08:20:42', '2017-11-29 08:20:42'),
(6, 1, 6, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(7, 1, 7, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(8, 1, 8, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(9, 1, 9, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(10, 1, 10, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(11, 1, 11, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(12, 1, 12, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(13, 1, 13, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(14, 1, 14, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(15, 1, 15, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(16, 1, 16, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(17, 1, 17, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(18, 1, 18, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(19, 1, 19, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(20, 1, 20, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(21, 1, 21, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(22, 1, 22, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(23, 1, 23, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(24, 1, 24, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(25, 1, 25, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(26, 1, 26, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(27, 1, 27, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(28, 1, 28, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(29, 1, 29, 'write', '2017-11-29 08:20:43', '2017-11-29 08:20:43'),
(30, 1, 30, 'write', '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(31, 1, 31, 'write', '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(32, 1, 32, 'write', '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(33, 1, 33, 'write', '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(34, 1, 34, 'write', '2017-11-29 08:20:44', '2017-11-29 08:20:44'),
(46, 1, 46, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(47, 1, 47, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(48, 1, 48, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(49, 1, 49, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(50, 1, 50, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(51, 1, 51, 'write', '2017-11-29 08:20:45', '2017-11-29 08:20:45'),
(74, 1, 74, 'write', '2017-11-29 14:54:02', '2017-11-29 14:54:02'),
(75, 1, 75, 'write', '2017-11-29 14:55:38', '2017-11-29 14:55:38'),
(76, 1, 76, 'write', '2017-11-29 14:55:55', '2017-11-29 14:55:55'),
(77, 1, 77, 'write', '2017-11-29 14:56:16', '2017-11-29 14:56:16'),
(78, 1, 78, 'write', '2017-11-29 14:56:33', '2017-11-29 14:56:33'),
(79, 1, 79, 'write', '2017-11-29 14:56:50', '2017-11-29 14:56:50'),
(80, 1, 80, 'write', '2017-11-29 14:58:19', '2017-11-29 14:58:19'),
(81, 1, 81, 'write', '2017-11-29 14:59:03', '2017-11-29 14:59:03'),
(82, 1, 82, 'write', '2017-11-29 14:59:28', '2017-11-29 14:59:28'),
(83, 1, 83, 'write', '2017-11-29 14:59:50', '2017-11-29 14:59:50'),
(84, 1, 84, 'write', '2017-11-29 15:00:07', '2017-11-29 15:00:07'),
(85, 1, 85, 'write', '2017-11-29 15:00:44', '2017-11-29 15:00:44'),
(86, 1, 86, 'write', '2017-12-06 10:16:26', '2017-12-06 10:16:26'),
(87, 1, 87, 'write', '2017-12-06 10:19:22', '2017-12-06 10:19:22'),
(88, 1, 88, 'write', '2017-12-06 10:20:50', '2017-12-06 10:20:50'),
(89, 1, 89, 'write', '2017-12-06 10:21:15', '2017-12-06 10:21:15'),
(91, 1, 91, 'write', '2017-12-06 10:34:21', '2017-12-06 10:34:21'),
(92, 1, 92, 'write', '2017-12-06 10:37:20', '2017-12-06 10:37:20'),
(93, 1, 93, 'write', '2017-12-06 10:38:20', '2017-12-06 10:38:20'),
(94, 1, 94, 'write', '2017-12-06 10:39:14', '2017-12-06 10:39:14'),
(95, 1, 95, 'write', '2017-12-06 10:40:10', '2017-12-06 10:40:10'),
(96, 1, 96, 'write', '2017-12-06 11:26:24', '2017-12-06 11:26:24'),
(97, 1, 97, 'write', '2017-12-06 11:27:15', '2017-12-06 11:27:15'),
(98, 1, 98, 'write', '2017-12-06 11:28:44', '2017-12-06 11:28:44'),
(99, 1, 99, 'write', '2017-12-06 11:30:11', '2017-12-06 11:30:11'),
(100, 1, 100, 'write', '2017-12-06 11:47:56', '2017-12-06 11:47:56'),
(101, 1, 101, 'write', '2017-12-06 11:48:29', '2017-12-06 11:48:29'),
(102, 1, 102, 'write', '2017-12-10 11:30:38', '2017-12-10 11:30:38'),
(103, 1, 103, 'write', '2017-12-10 11:30:58', '2017-12-10 11:30:58'),
(104, 1, 104, 'write', '2017-12-10 11:31:33', '2017-12-10 11:31:33'),
(105, 1, 105, 'write', '2017-12-10 11:33:24', '2017-12-10 11:33:24'),
(106, 1, 106, 'write', '2017-12-10 11:33:48', '2017-12-10 11:33:48'),
(107, 1, 107, 'write', '2017-12-10 11:34:08', '2017-12-10 11:34:08'),
(108, 1, 108, 'write', '2017-12-10 11:39:36', '2017-12-10 11:39:36'),
(109, 1, 109, 'write', '2017-12-10 11:39:58', '2017-12-10 11:39:58'),
(110, 1, 110, 'write', '2017-12-10 11:40:18', '2017-12-10 11:40:18'),
(111, 1, 111, 'write', '2017-12-10 11:40:30', '2017-12-10 11:40:30'),
(112, 1, 112, 'write', '2017-12-10 11:40:43', '2017-12-10 11:40:43'),
(113, 1, 113, 'write', '2017-12-10 11:40:57', '2017-12-10 11:40:57'),
(114, 1, 114, 'write', '2017-12-10 11:41:54', '2017-12-10 11:41:54'),
(115, 1, 115, 'write', '2017-12-10 11:42:19', '2017-12-10 11:42:19'),
(116, 1, 116, 'write', '2017-12-10 11:42:38', '2017-12-10 11:42:38'),
(117, 1, 117, 'write', '2017-12-10 11:42:58', '2017-12-10 11:42:58'),
(118, 1, 118, 'write', '2017-12-10 11:43:19', '2017-12-10 11:43:19'),
(119, 1, 119, 'write', '2017-12-10 11:43:42', '2017-12-10 11:43:42'),
(120, 1, 120, 'write', '2017-12-10 11:43:55', '2017-12-10 11:43:55'),
(121, 1, 121, 'write', '2017-12-10 11:44:28', '2017-12-10 11:44:28'),
(133, 1, 133, 'write', '2017-12-10 12:41:34', '2017-12-10 12:41:34'),
(134, 1, 134, 'write', '2017-12-10 12:41:58', '2017-12-10 12:41:58'),
(135, 1, 135, 'write', '2017-12-10 12:42:35', '2017-12-10 12:42:35'),
(136, 1, 136, 'write', '2017-12-10 12:42:59', '2017-12-10 12:42:59'),
(137, 1, 137, 'write', '2017-12-10 12:43:25', '2017-12-10 12:43:25'),
(138, 1, 138, 'write', '2017-12-10 12:50:20', '2017-12-10 12:50:20'),
(139, 1, 139, 'write', '2017-12-10 12:50:42', '2017-12-10 12:50:42'),
(140, 1, 140, 'write', '2017-12-10 12:51:06', '2017-12-10 12:51:06'),
(141, 1, 141, 'write', '2017-12-10 12:51:25', '2017-12-10 12:51:25'),
(142, 1, 142, 'write', '2017-12-10 12:51:42', '2017-12-10 12:51:42'),
(143, 1, 143, 'write', '2017-12-10 12:52:08', '2017-12-10 12:52:08'),
(149, 1, 149, 'write', '2017-12-10 13:58:20', '2017-12-10 13:58:20'),
(150, 1, 150, 'write', '2017-12-10 13:58:35', '2017-12-10 13:58:35'),
(151, 1, 151, 'write', '2017-12-10 13:59:34', '2017-12-10 13:59:34'),
(152, 1, 152, 'write', '2017-12-10 13:59:52', '2017-12-10 13:59:52'),
(153, 1, 153, 'write', '2017-12-10 14:00:21', '2017-12-10 14:00:21'),
(154, 1, 154, 'write', '2017-12-10 14:08:51', '2017-12-10 14:08:51'),
(155, 1, 155, 'write', '2017-12-10 14:09:08', '2017-12-10 14:09:08'),
(156, 1, 156, 'write', '2017-12-10 14:09:26', '2017-12-10 14:09:26'),
(157, 1, 157, 'write', '2017-12-10 14:09:41', '2017-12-10 14:09:41'),
(158, 1, 158, 'write', '2017-12-10 14:10:14', '2017-12-10 14:10:14'),
(159, 1, 159, 'write', '2017-12-10 14:10:55', '2017-12-10 14:10:55'),
(160, 1, 160, 'write', '2017-12-10 14:30:56', '2017-12-10 14:30:56'),
(161, 1, 161, 'write', '2017-12-10 14:31:47', '2017-12-10 14:31:47'),
(162, 1, 162, 'write', '2017-12-10 14:32:11', '2017-12-10 14:32:11'),
(163, 1, 163, 'write', '2017-12-10 14:32:22', '2017-12-10 14:32:22'),
(164, 1, 164, 'write', '2017-12-10 14:32:38', '2017-12-10 14:32:38'),
(165, 1, 165, 'write', '2017-12-10 14:33:08', '2017-12-10 14:33:08'),
(166, 1, 166, 'write', '2017-12-10 14:35:12', '2017-12-10 14:35:12'),
(167, 1, 167, 'write', '2017-12-10 14:35:30', '2017-12-10 14:35:30'),
(168, 1, 168, 'write', '2017-12-10 14:36:02', '2017-12-10 14:36:02'),
(169, 1, 169, 'write', '2017-12-10 14:36:17', '2017-12-10 14:36:17'),
(170, 1, 170, 'write', '2017-12-10 14:36:35', '2017-12-10 14:36:35'),
(171, 1, 171, 'write', '2017-12-10 14:37:07', '2017-12-10 14:37:07'),
(172, 1, 172, 'write', '2017-12-11 07:42:46', '2017-12-11 07:42:46'),
(173, 1, 175, 'write', '2017-12-11 10:08:58', '2017-12-11 10:08:58'),
(174, 1, 188, 'write', '2017-12-14 11:25:22', '2017-12-14 11:25:22'),
(175, 1, 176, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(176, 1, 177, 'readonly', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(177, 1, 178, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(178, 1, 179, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(179, 1, 180, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(180, 1, 181, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(181, 1, 182, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(182, 1, 183, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(183, 1, 184, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(184, 1, 185, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(185, 1, 186, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(186, 1, 187, 'write', '2017-12-14 12:24:59', '2017-12-14 12:24:59'),
(188, 1, 190, 'write', '2017-12-14 13:31:05', '2017-12-14 13:31:05'),
(189, 1, 191, 'write', '2017-12-14 13:31:05', '2017-12-14 13:31:05'),
(190, 1, 192, 'write', '2017-12-14 13:31:05', '2017-12-14 13:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `available_days` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `available_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `per_patient_time` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `deleted_at`, `created_at`, `updated_at`, `doctor_id`, `available_days`, `available_time`, `per_patient_time`, `status`) VALUES
(1, NULL, '2017-12-06 10:41:54', '2017-12-06 10:41:54', 1, '[\"Saturday\",\"Tuesday\",\"Wednesday\"]', '2017-12-05 22:00:00', '.5', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `description`, `status`) VALUES
(1, NULL, '2017-11-29 08:28:06', '2017-11-29 08:28:06', 'General Surgery', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula.', 'Active'),
(2, NULL, '2017-11-29 08:28:35', '2017-11-29 08:28:35', 'Obstetrics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ea60c46563bc616914857d619d357837.png', 'D:\\xampp1\\htdocs\\la1\\storage\\uploads\\2017-11-29-162044-ea60c46563bc616914857d619d357837.png', 'png', '', 1, 'nepodgjfgirommh6zbtw', 0, NULL, '2017-11-29 14:20:44', '2017-11-29 14:20:45'),
(2, 'env.png', 'D:\\xampp1\\htdocs\\la1\\storage\\uploads\\2017-12-06-122158-env.png', 'png', '', 1, 'uyfkd3kufwtjc5xeo5m5', 0, NULL, '2017-12-06 10:21:58', '2017-12-06 10:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@admin.com', '$2y$10$bnBmF5caKTNqVY.8Xt8Rd.VSjNKLDUS2S/Z4A9DphL.GOv1rpPUoe', 'Employee', '8TVUiPirQgC2t9b7Zef5CUZEfs1cBXQxMyGmvjWJCBrTKM4c6X0sANkGob8P', NULL, '2017-11-29 08:22:12', '2017-12-11 07:36:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointments_appointment_date_unique` (`appointment_date`),
  ADD KEY `appointments_section_id_foreign` (`section_id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_assigns`
--
ALTER TABLE `bed_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bed_assigns_patient_id_foreign` (`patient_id`),
  ADD KEY `bed_assigns_bed_type_foreign` (`bed_type`);

--
-- Indexes for table `birth_reports`
--
ALTER TABLE `birth_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `birth_reports_patient_id_foreign` (`patient_id`),
  ADD KEY `birth_reports_doctor_name_foreign` (`doctor_name`);

--
-- Indexes for table `death_reports`
--
ALTER TABLE `death_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `death_reports_patient_id_foreign` (`patient_id`),
  ADD KEY `death_reports_doctor_name_foreign` (`doctor_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_section_foreign` (`section`),
  ADD KEY `doctors_section_id_foreign` (`section_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_patient_id_foreign` (`patient_id`),
  ADD KEY `documents_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investigations`
--
ALTER TABLE `investigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investigations_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_reports`
--
ALTER TABLE `operation_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_reports_patient_id_foreign` (`patient_id`),
  ADD KEY `operation_reports_doctor_name_foreign` (`doctor_name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_case_studies_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bed_assigns`
--
ALTER TABLE `bed_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `birth_reports`
--
ALTER TABLE `birth_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `death_reports`
--
ALTER TABLE `death_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investigations`
--
ALTER TABLE `investigations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `operation_reports`
--
ALTER TABLE `operation_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `appointments_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `bed_assigns`
--
ALTER TABLE `bed_assigns`
  ADD CONSTRAINT `bed_assigns_bed_type_foreign` FOREIGN KEY (`bed_type`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `bed_assigns_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `birth_reports`
--
ALTER TABLE `birth_reports`
  ADD CONSTRAINT `birth_reports_doctor_name_foreign` FOREIGN KEY (`doctor_name`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `birth_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `death_reports`
--
ALTER TABLE `death_reports`
  ADD CONSTRAINT `death_reports_doctor_name_foreign` FOREIGN KEY (`doctor_name`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `death_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_section_foreign` FOREIGN KEY (`section`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `doctors_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `documents_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `investigations`
--
ALTER TABLE `investigations`
  ADD CONSTRAINT `investigations_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operation_reports`
--
ALTER TABLE `operation_reports`
  ADD CONSTRAINT `operation_reports_doctor_name_foreign` FOREIGN KEY (`doctor_name`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `operation_reports_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  ADD CONSTRAINT `patient_case_studies_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
