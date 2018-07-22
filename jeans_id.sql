-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 06:18 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeans_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(11) NOT NULL,
  `address1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedmodel` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedmodel_id` int(11) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `address1`, `address2`, `city`, `state`, `country`, `postal_code`, `relatedmodel`, `relatedmodel_id`, `type`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, '302', '9A/1, W.E.A, Karol Bagh', 'New Delhi', 'Delhi', 'IN', '110005', 'Person', 1, 1, 1, 1, 1, '2018-04-09 13:24:13', '2018-04-09 13:24:13'),
(2, '302', '9A/1, W.E.A, Karol Bagh', 'New Delhi', 'Delhi', 'IN', '110005', 'Person', 2, 1, 1, 1, 1, '2018-04-09 13:24:22', '2018-04-09 13:24:22'),
(3, 'Billing address', 'billing address2', 'Delhi', '', 'IN', '110005', 'Store', 1, 3, 1, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(4, 'Shipping address', 'shipping address2', 'Delhi', '', 'IN', '110005', 'Store', 1, 2, 1, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(5, 'address', 'address2', 'Delhi', '', 'IN', '110005', 'Person', 3, 1, 1, 1, 1, '2018-04-09 13:24:32', '2018-04-09 13:24:32'),
(6, 'address', 'address2', 'Delhi', '', 'IN', '110005', 'Person', 4, 1, 1, 1, 1, '2018-04-09 13:24:36', '2018-04-09 13:24:36'),
(7, 'address', 'address2', 'Delhi', '', 'IN', '110005', 'Person', 5, 1, 1, 1, 1, '2018-04-09 13:24:38', '2018-04-09 13:24:38'),
(8, 'Lupakansajalah', 'Mana ya', 'Sini saja', 'Masak sih', 'ID', '54352', 'Person', 6, 1, 1, 0, 0, '2018-04-10 08:47:09', '2018-04-10 08:47:09'),
(9, 'Rumahku di sini', 'ia toh', 'Masa sih', 'Beneran', 'ID', '54352', 'Person', 7, 1, 1, 0, 0, '2018-04-10 08:50:51', '2018-04-10 08:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_assignment`
--

CREATE TABLE `tbl_auth_assignment` (
  `identity_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `identity_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `resource` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_permission`
--

CREATE TABLE `tbl_auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `resource` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_permission`
--

INSERT INTO `tbl_auth_permission` (`id`, `name`, `alias`, `resource`, `module`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'access.auth', 'Access Tab', 'AuthModule', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(2, 'auth.managepermissions', 'Manage Permissions', 'AuthModule', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(3, 'group.create', 'Create Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(4, 'group.view', 'View Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(5, 'group.viewother', 'View Others Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(6, 'group.update', 'Update Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(7, 'group.updateother', 'Update Others Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(8, 'group.delete', 'Delete Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(9, 'group.deleteother', 'Delete Others Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(10, 'group.manage', 'Manage Groups', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(11, 'group.bulk-edit', 'Bulk Edit Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(12, 'group.bulk-delete', 'Bulk Delete Group', 'Group', 'auth', 1, 0, '2018-04-09 13:24:14', NULL),
(13, 'access.home', 'Access Tab', 'HomeModule', 'home', 1, 0, '2018-04-09 13:24:14', NULL),
(14, 'access.language', 'Access Tab', 'LanguageModule', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(15, 'language.create', 'Create Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(16, 'language.view', 'View Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(17, 'language.viewother', 'View Others Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(18, 'language.update', 'Update Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(19, 'language.updateother', 'Update Others Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(20, 'language.delete', 'Delete Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(21, 'language.deleteother', 'Delete Others Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(22, 'language.manage', 'Manage Languages', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(23, 'language.bulk-edit', 'Bulk Edit Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(24, 'language.bulk-delete', 'Bulk Delete Language', 'Language', 'language', 1, 0, '2018-04-09 13:24:14', NULL),
(25, 'access.notification', 'Access Tab', 'NotificationModule', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(26, 'notification.delete', 'Delete Notification', 'Notification', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(27, 'notification.manage', 'Manage Notifications', 'Notification', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(28, 'notificationtemplate.create', 'Create Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(29, 'notificationtemplate.view', 'View Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(30, 'notificationtemplate.viewother', 'View Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(31, 'notificationtemplate.update', 'Update Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(32, 'notificationtemplate.updateother', 'Update Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(33, 'notificationtemplate.delete', 'Delete Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(34, 'notificationtemplate.deleteother', 'Delete Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(35, 'notificationtemplate.manage', 'Manage Templates', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(36, 'notificationtemplate.bulk-edit', 'Bulk Edit Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(37, 'notificationtemplate.bulk-delete', 'Bulk Delete Template', 'NotificationTemplate', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(38, 'notificationlayout.create', 'Create Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(39, 'notificationlayout.view', 'View Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(40, 'notificationlayout.viewother', 'View Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(41, 'notificationlayout.update', 'Update Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(42, 'notificationlayout.updateother', 'Update Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(43, 'notificationlayout.delete', 'Delete Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(44, 'notificationlayout.deleteother', 'Delete Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(45, 'notificationlayout.manage', 'Manage Layouts', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(46, 'notificationlayout.bulk-edit', 'Bulk Edit Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(47, 'notificationlayout.bulk-delete', 'Bulk Delete Layout', 'NotificationLayout', 'notification', 1, 0, '2018-04-09 13:24:14', NULL),
(48, 'access.service', 'Access Tab', 'ServiceModule', 'service', 1, 0, '2018-04-09 13:24:14', NULL),
(49, 'service.checksystem', 'System Configuration', 'ServiceModule', 'service', 1, 0, '2018-04-09 13:24:14', NULL),
(50, 'service.rebuildpermissions', 'Rebuild Permissions', 'ServiceModule', 'service', 1, 0, '2018-04-09 13:24:14', NULL),
(51, 'service.rebuildmodulemetadata', 'Rebuild module metadata', 'ServiceModule', 'service', 1, 0, '2018-04-09 13:24:14', NULL),
(52, 'access.settings', 'Access Tab', 'SettingsModule', 'settings', 1, 0, '2018-04-09 13:24:14', NULL),
(53, 'settings.email', 'Email Settings', 'SettingsModule', 'settings', 1, 0, '2018-04-09 13:24:14', NULL),
(54, 'settings.site', 'Site Settings', 'SettingsModule', 'settings', 1, 0, '2018-04-09 13:24:14', NULL),
(55, 'settings.database', 'Database Settings', 'SettingsModule', 'settings', 1, 0, '2018-04-09 13:24:14', NULL),
(56, 'access.users', 'Access Tab', 'UsersModule', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(57, 'user.create', 'Create User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(58, 'user.view', 'View User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(59, 'user.viewother', 'View Others User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(60, 'user.update', 'Update User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(61, 'user.updateother', 'Update Others User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(62, 'user.delete', 'Delete User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(63, 'user.deleteother', 'Delete Others User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(64, 'user.manage', 'Manage Users', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(65, 'user.bulk-edit', 'Bulk Edit User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(66, 'user.bulk-delete', 'Bulk Delete User', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(67, 'user.change-password', 'Change Password', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(68, 'user.change-status', 'Change Status', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(69, 'user.settings', 'Settings', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(70, 'user.change-passwordother', 'Change Others Password', 'User', 'users', 1, 0, '2018-04-09 13:24:14', NULL),
(71, 'access.catalog', 'Access Tab', 'CatalogModule', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(72, 'productcategory.create', 'Create Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(73, 'productcategory.view', 'View Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(74, 'productcategory.viewother', 'View Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(75, 'productcategory.update', 'Update Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(76, 'productcategory.updateother', 'Update Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(77, 'productcategory.delete', 'Delete Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(78, 'productcategory.deleteother', 'Delete Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(79, 'productcategory.manage', 'Manage Product Categories', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(80, 'productcategory.bulk-edit', 'Bulk Edit Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(81, 'productcategory.bulk-delete', 'Bulk Delete Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(82, 'product.create', 'Create Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(83, 'product.view', 'View Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(84, 'product.viewother', 'View Others Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(85, 'product.update', 'Update Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(86, 'product.updateother', 'Update Others Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(87, 'product.delete', 'Delete Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(88, 'product.deleteother', 'Delete Others Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(89, 'product.manage', 'Manage Products', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(90, 'product.bulk-edit', 'Bulk Edit Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(91, 'product.bulk-delete', 'Bulk Delete Product', 'Product', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(92, 'productreview.delete', 'Delete Review', 'ProductReview', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(93, 'productreview.manage', 'Manage Reviews', 'ProductReview', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(94, 'productreview.approve', 'Approve', 'ProductReview', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(95, 'productreview.spam', 'Spam', 'ProductReview', 'catalog', 1, 0, '2018-04-09 13:24:14', NULL),
(96, 'access.cms', 'Access Tab', 'CmsModule', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(97, 'page.create', 'Create Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(98, 'page.view', 'View Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(99, 'page.viewother', 'View Others Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(100, 'page.update', 'Update Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(101, 'page.updateother', 'Update Others Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(102, 'page.delete', 'Delete Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(103, 'page.deleteother', 'Delete Others Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(104, 'page.manage', 'Manage Pages', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(105, 'page.bulk-edit', 'Bulk Edit Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(106, 'page.bulk-delete', 'Bulk Delete Page', 'Page', 'cms', 1, 0, '2018-04-09 13:24:14', NULL),
(107, 'access.customer', 'Access Tab', 'CustomerModule', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(108, 'customer.create', 'Create Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(109, 'customer.view', 'View Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(110, 'customer.viewother', 'View Others Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(111, 'customer.update', 'Update Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(112, 'customer.delete', 'Delete Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(113, 'customer.deleteother', 'Delete Others Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(114, 'customer.manage', 'Manage Customers', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(115, 'customer.bulk-edit', 'Bulk Edit Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(116, 'customer.bulk-delete', 'Bulk Delete Customer', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(117, 'customer.change-password', 'Change Password', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(118, 'customer.change-status', 'Change Status', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(119, 'customer.change-passwordother', 'Change Others Password', 'Customer', 'customer', 1, 0, '2018-04-09 13:24:14', NULL),
(120, 'access.dataCategories', 'Access Tab', 'DataCategoriesModule', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(121, 'datacategory.create', 'Create Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(122, 'datacategory.view', 'View Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(123, 'datacategory.viewother', 'View Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(124, 'datacategory.update', 'Update Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(125, 'datacategory.updateother', 'Update Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(126, 'datacategory.delete', 'Delete Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(127, 'datacategory.deleteother', 'Delete Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(128, 'datacategory.manage', 'Manage Data Categories', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(129, 'datacategory.bulk-edit', 'Bulk Edit Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(130, 'datacategory.bulk-delete', 'Bulk Delete Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-04-09 13:24:14', NULL),
(131, 'access.enhancement', 'Access Tab', 'EnhancementModule', 'enhancement', 1, 0, '2018-04-09 13:24:14', NULL),
(132, 'access.extension', 'Access Tab', 'ExtensionModule', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(133, 'extension.update', 'Update Extension', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(134, 'extension.updateother', 'Update Others Extension', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(135, 'extension.delete', 'Delete Extension', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(136, 'extension.deleteother', 'Delete Others Extension', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(137, 'extension.manage', 'Manage Extensions', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(138, 'extension.manageother', 'Manager Others Extension', 'Extension', 'extension', 1, 0, '2018-04-09 13:24:14', NULL),
(139, 'access.localization', 'Access Tab', 'LocalizationModule', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(140, 'city.create', 'Create City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(141, 'city.view', 'View City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(142, 'city.viewother', 'View Others City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(143, 'city.update', 'Update City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(144, 'city.updateother', 'Update Others City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(145, 'city.delete', 'Delete City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(146, 'city.deleteother', 'Delete Others City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(147, 'city.manage', 'Manage Cities', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(148, 'city.bulk-edit', 'Bulk Edit City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(149, 'city.bulk-delete', 'Bulk Delete City', 'City', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(150, 'country.create', 'Create Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(151, 'country.view', 'View Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(152, 'country.viewother', 'View Others Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(153, 'country.update', 'Update Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(154, 'country.updateother', 'Update Others Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(155, 'country.delete', 'Delete Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(156, 'country.deleteother', 'Delete Others Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(157, 'country.manage', 'Manage Countries', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(158, 'country.bulk-edit', 'Bulk Edit Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(159, 'country.bulk-delete', 'Bulk Delete Country', 'Country', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(160, 'currency.create', 'Create Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(161, 'currency.view', 'View Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(162, 'currency.viewother', 'View Others Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(163, 'currency.update', 'Update Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(164, 'currency.updateother', 'Update Others Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(165, 'currency.delete', 'Delete Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(166, 'currency.deleteother', 'Delete Others Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(167, 'currency.manage', 'Manage Currencies', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(168, 'currency.bulk-edit', 'Bulk Edit Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(169, 'currency.bulk-delete', 'Bulk Delete Currency', 'Currency', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(170, 'state.create', 'Create State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(171, 'state.view', 'View State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(172, 'state.viewother', 'View Others State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(173, 'state.update', 'Update State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(174, 'state.updateother', 'Update Others State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(175, 'state.delete', 'Delete State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(176, 'state.deleteother', 'Delete Others State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(177, 'state.manage', 'Manage States', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(178, 'state.bulk-edit', 'Bulk Edit State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(179, 'state.bulk-delete', 'Bulk Delete State', 'State', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(180, 'lengthclass.create', 'Create Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(181, 'lengthclass.view', 'View Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(182, 'lengthclass.viewother', 'View Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(183, 'lengthclass.update', 'Update Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(184, 'lengthclass.updateother', 'Update Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(185, 'lengthclass.delete', 'Delete Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(186, 'lengthclass.deleteother', 'Delete Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(187, 'lengthclass.manage', 'Manage Length Classes', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(188, 'lengthclass.bulk-edit', 'Bulk Edit Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(189, 'lengthclass.bulk-delete', 'Bulk Delete Length Class', 'LengthClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(190, 'weightclass.create', 'Create Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(191, 'weightclass.view', 'View Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(192, 'weightclass.viewother', 'View Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(193, 'weightclass.update', 'Update Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(194, 'weightclass.updateother', 'Update Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(195, 'weightclass.delete', 'Delete Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(196, 'weightclass.deleteother', 'Delete Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(197, 'weightclass.manage', 'Manage Weight Classes', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(198, 'weightclass.bulk-edit', 'Bulk Edit Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(199, 'weightclass.bulk-delete', 'Bulk Delete Weight Class', 'WeightClass', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(200, 'stockstatus.create', 'Create Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(201, 'stockstatus.view', 'View Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(202, 'stockstatus.viewother', 'View Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(203, 'stockstatus.update', 'Update Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(204, 'stockstatus.updateother', 'Update Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(205, 'stockstatus.delete', 'Delete Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(206, 'stockstatus.deleteother', 'Delete Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(207, 'stockstatus.manage', 'Manage Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(208, 'stockstatus.bulk-edit', 'Bulk Edit Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(209, 'stockstatus.bulk-delete', 'Bulk Delete Stock Status', 'StockStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(210, 'orderstatus.create', 'Create Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(211, 'orderstatus.view', 'View Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(212, 'orderstatus.viewother', 'View Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(213, 'orderstatus.update', 'Update Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(214, 'orderstatus.updateother', 'Update Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(215, 'orderstatus.delete', 'Delete Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(216, 'orderstatus.deleteother', 'Delete Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(217, 'orderstatus.manage', 'Manage Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(218, 'orderstatus.bulk-edit', 'Bulk Edit Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(219, 'orderstatus.bulk-delete', 'Bulk Delete Order Status', 'OrderStatus', 'localization', 1, 0, '2018-04-09 13:24:15', NULL),
(220, 'producttaxclass.create', 'Create Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(221, 'producttaxclass.view', 'View Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(222, 'producttaxclass.viewother', 'View Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(223, 'producttaxclass.update', 'Update Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(224, 'producttaxclass.updateother', 'Update Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(225, 'producttaxclass.delete', 'Delete Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(226, 'producttaxclass.deleteother', 'Delete Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(227, 'producttaxclass.manage', 'Manage Product Tax Classes', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(228, 'producttaxclass.bulk-edit', 'Bulk Edit Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(229, 'producttaxclass.bulk-delete', 'Bulk Delete Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(230, 'taxrule.create', 'Create Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(231, 'taxrule.view', 'View Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(232, 'taxrule.viewother', 'View Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(233, 'taxrule.update', 'Update Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(234, 'taxrule.updateother', 'Update Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(235, 'taxrule.delete', 'Delete Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(236, 'taxrule.deleteother', 'Delete Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(237, 'taxrule.manage', 'Manage Tax Rules', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(238, 'taxrule.bulk-edit', 'Bulk Edit Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(239, 'taxrule.bulk-delete', 'Bulk Delete Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(240, 'zone.create', 'Create Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(241, 'zone.view', 'View Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(242, 'zone.viewother', 'View Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(243, 'zone.update', 'Update Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(244, 'zone.updateother', 'Update Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(245, 'zone.delete', 'Delete Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(246, 'zone.deleteother', 'Delete Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(247, 'zone.manage', 'Manage Zones', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(248, 'zone.bulk-edit', 'Bulk Edit Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(249, 'zone.bulk-delete', 'Bulk Delete Zone', 'Zone', 'localization/tax', 1, 0, '2018-04-09 13:24:15', NULL),
(250, 'access.manufacturer', 'Access Tab', 'ManufacturerModule', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(251, 'manufacturer.create', 'Create Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(252, 'manufacturer.view', 'View Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(253, 'manufacturer.viewother', 'View Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(254, 'manufacturer.update', 'Update Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(255, 'manufacturer.updateother', 'Update Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(256, 'manufacturer.delete', 'Delete Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(257, 'manufacturer.deleteother', 'Delete Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(258, 'manufacturer.manage', 'Manage Manufacturers', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(259, 'manufacturer.bulk-edit', 'Bulk Edit Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(260, 'manufacturer.bulk-delete', 'Bulk Delete Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-04-09 13:24:15', NULL),
(261, 'access.marketing', 'Access Tab', 'MarketingModule', 'marketing', 1, 0, '2018-04-09 13:24:15', NULL),
(262, 'marketing.mail', 'Marketing Mails', 'MarketingModule', 'marketing', 1, 0, '2018-04-09 13:24:15', NULL),
(263, 'newsletter.create', 'Create Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(264, 'newsletter.view', 'View Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(265, 'newsletter.viewother', 'View Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(266, 'newsletter.update', 'Update Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(267, 'newsletter.updateother', 'Update Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(268, 'newsletter.delete', 'Delete Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(269, 'newsletter.deleteother', 'Delete Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(270, 'newsletter.manage', 'Manage Newsletters', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-04-09 13:24:15', NULL),
(271, 'access.order', 'Access Tab', 'OrderModule', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(272, 'order.create', 'Create Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(273, 'order.view', 'View Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(274, 'order.viewother', 'View Others Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(275, 'order.update', 'Update Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(276, 'order.updateother', 'Update Others Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(277, 'order.delete', 'Delete Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(278, 'order.deleteother', 'Delete Others Order', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(279, 'order.manage', 'Manage Orders', 'Order', 'order', 1, 0, '2018-04-09 13:24:15', NULL),
(280, 'access.payment', 'Access Tab', 'PaymentModule', 'payment', 1, 0, '2018-04-09 13:24:15', NULL),
(281, 'access.shipping', 'Access Tab', 'ShippingModule', 'shipping', 1, 0, '2018-04-09 13:24:15', NULL),
(282, 'access.stores', 'Access Tab', 'StoresModule', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(283, 'store.create', 'Create Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(284, 'store.view', 'View Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(285, 'store.viewother', 'View Others Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(286, 'store.update', 'Update Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(287, 'store.updateother', 'Update Others Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(288, 'store.delete', 'Delete Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(289, 'store.deleteother', 'Delete Others Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(290, 'store.manage', 'Manage Stores', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL),
(291, 'store.bulk-edit', 'Bulk Edit Store', 'Store', 'stores', 1, 0, '2018-04-09 13:24:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `country_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(2, 1, 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(3, 1, 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(4, 1, 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city_translated`
--

CREATE TABLE `tbl_city_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_city_translated`
--

INSERT INTO `tbl_city_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'New Delhi', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(2, 2, 'en-US', 'Panaji', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(3, 3, 'en-US', 'Dispur', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(4, 4, 'en-US', 'Imphal', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configuration`
--

CREATE TABLE `tbl_configuration` (
  `id` int(11) NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_configuration`
--

INSERT INTO `tbl_configuration` (`id`, `module`, `key`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'application', 'dbAdminUsername', 'root', 1, 1, '2018-04-09 13:24:10', '2018-04-09 13:24:10'),
(2, 'application', 'dbAdminPassword', '', 1, 1, '2018-04-09 13:24:10', '2018-04-09 13:24:10'),
(3, 'application', 'siteName', 'Jeans.id', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(4, 'application', 'siteDescription', 'Kami akan membantu Anda menemukan kenyamanan berpakaian.', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(5, 'application', 'superUsername', 'super_admin', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(6, 'application', 'superEmail', 'super_admin@jeans.id', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(7, 'application', 'superPassword', 'SuAdPass', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(8, 'application', 'dbHost', 'localhost', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(9, 'application', 'dbPort', '3306', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(10, 'application', 'dbName', 'jeans_id', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(11, 'application', 'dbUsername', 'jeans_id', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(12, 'application', 'dbPassword', 'jeans_id', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(13, 'application', 'environment', 'dev', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(14, 'application', 'demoData', '1', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(15, 'application', 'timezone', 'Asia/Jakarta', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(16, 'application', 'logo', 'YzgwY2FhYTDoraemon_volume_1_cover.jpg', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(17, 'application', 'uploadInstance', NULL, 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(18, 'application', 'enableSchemaCache', '1', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(19, 'application', 'schemaCachingDuration', '3600', 1, 1, '2018-04-09 13:24:11', '2018-04-09 13:24:11'),
(20, 'application', 'appRebuild', '', 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(21, 'users', 'passwordTokenExpiry', '3600', 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(22, 'application', 'installTime', '2018-04-09 13:24:40', 1, 1, '2018-04-09 13:24:40', '2018-04-09 13:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `postcode_required` smallint(1) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country_translated`
--

CREATE TABLE `tbl_country_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address_format` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  `value` decimal(10,2) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_place` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `status`, `value`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 0, '1.00', 'USD', '$', '', '2', 1, 1, '2018-04-09 13:24:17', '2018-04-10 08:27:54'),
(3, 1, '1.00', 'IDR', 'Rp. ', '', '0', 1, 1, '2018-04-10 04:53:40', '2018-04-10 08:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency_translated`
--

CREATE TABLE `tbl_currency_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_currency_translated`
--

INSERT INTO `tbl_currency_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'US Dollars', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(3, 3, 'id-ID', 'Rupiah', 1, 1, '2018-04-10 04:53:40', '2018-04-10 04:53:40'),
(4, 3, 'en-US', 'Rupiah', 1, 1, '2018-04-10 04:53:40', '2018-04-10 04:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` int(11) NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `timezone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `username`, `unique_id`, `password_reset_token`, `password_hash`, `auth_key`, `status`, `person_id`, `login_ip`, `last_login`, `timezone`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'wholesalecustomer', 10000, NULL, '$2y$13$DYBvA3KBnCb9g/bjm.dqpuZwzP17wJRaHwf2GH/gtJfTsoz5JpBfK', '_SulkOE6CKZSqqYaHM7BzkP_oLbmMA2j', 1, 3, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-04-09 13:24:32', '2018-04-09 13:24:32'),
(2, 'retailcustomer', 10001, NULL, '$2y$13$UvbatEPTrK8M1rsG7b8pRed1lWpJ2Kp/K8Z1ooLdaXX3GwDfzMJjG', '_BJ3akZwRmVGRtVRzVV0-5jucQVLquLP', 1, 4, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-04-09 13:24:36', '2018-04-09 13:24:36'),
(3, 'defaultcustomer', 10002, NULL, '$2y$13$c1TcIXzH.6JGHVFALeBbpeOZ6StlD4xS3SHxXEEhkFIagN3tY0HAC', 'LM6EA2sf-Uf5lW4b3cy_grkLKa40LTEX', 1, 5, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-04-09 13:24:37', '2018-04-09 13:24:37'),
(4, 'user', 10003, NULL, '$2y$13$aZolvBA5R499/8GoCYCqbuXpD72jebYJ7iCHBiNyW0dpuyX6pDhWm', 'OPT_S-mqU3FhFPeJleCJUQ0ir567pvU3', 1, 6, '::1', '2018-04-10 08:53:13', 'Asia/Jakarta', 0, 1, '2018-04-10 08:47:09', '2018-04-10 08:52:57'),
(5, 'username', 10004, NULL, '$2y$13$UVaKoC/heorevHY3Ia65x.vwXuXI6YvjkyrthMxzvIoiyzyGcfLrG', 'lPEWBMEWCDM_t_zKKwPNfMErxvj2Eg-5', 2, 7, NULL, NULL, 'Asia/Jakarta', 0, 0, '2018-04-10 08:50:51', '2018-04-10 08:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_activity`
--

CREATE TABLE `tbl_customer_activity` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer_activity`
--

INSERT INTO `tbl_customer_activity` (`id`, `customer_id`, `key`, `data`, `ip`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 4, 'register', 'a:2:{s:11:\"customer_id\";i:4;s:4:\"name\";s:9:\"User User\";}', '::1', 0, 0, '2018-04-10 08:47:12', '2018-04-10 08:47:12'),
(2, 5, 'register', 'a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:9:\"Para Mudi\";}', '::1', 0, 0, '2018-04-10 08:50:51', '2018-04-10 08:50:51'),
(3, 4, 'login', 'a:2:{s:11:\"customer_id\";i:4;s:4:\"name\";s:9:\"User User\";}', '::1', 4, 4, '2018-04-10 08:53:13', '2018-04-10 08:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_download_mapping`
--

CREATE TABLE `tbl_customer_download_mapping` (
  `customer_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_metadata`
--

CREATE TABLE `tbl_customer_metadata` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8_unicode_ci,
  `wishlist` text COLLATE utf8_unicode_ci,
  `compareproducts` text COLLATE utf8_unicode_ci,
  `currency` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer_metadata`
--

INSERT INTO `tbl_customer_metadata` (`id`, `customer_id`, `cart`, `wishlist`, `compareproducts`, `currency`, `language`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-04-09 13:24:32', '2018-04-09 13:24:32'),
(2, 2, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-04-09 13:24:36', '2018-04-09 13:24:36'),
(3, 3, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-04-09 13:24:38', '2018-04-09 13:24:38'),
(4, 4, 'a:1:{i:56;a:16:{s:5:\"price\";s:9:\"700000.00\";s:12:\"optionsPrice\";i:0;s:4:\"name\";s:39:\"Stretch Custom Jeans With Fit Guarantee\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"56\";s:3:\"qty\";s:1:\"1\";s:5:\"model\";s:2:\"56\";s:9:\"thumbnail\";s:20:\"YzA5ZjhlOWsj.1.4.jpg\";s:8:\"itemCode\";s:2:\"56\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";i:0;s:10:\"totalPrice\";s:9:\"700000.00\";}}', 'a:1:{i:0;s:2:\"56\";}', 'a:0:{}', 'IDR', 'en-US', 0, 4, '2018-04-10 08:47:09', '2018-04-10 08:53:13'),
(5, 5, 'a:0:{}', 'a:0:{}', 'a:0:{}', 'IDR', 'en-US', 0, 0, '2018-04-10 08:50:51', '2018-04-10 08:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_online`
--

CREATE TABLE `tbl_customer_online` (
  `id` int(11) NOT NULL,
  `ip` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `url` varchar(164) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(164) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_category`
--

CREATE TABLE `tbl_data_category` (
  `id` int(11) NOT NULL,
  `status` smallint(1) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_data_category`
--

INSERT INTO `tbl_data_category` (`id`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_category_translated`
--

CREATE TABLE `tbl_data_category_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_data_category_translated`
--

INSERT INTO `tbl_data_category_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Root Category', 'This is root data category for the application under which all the data would reside', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extension`
--

CREATE TABLE `tbl_extension` (
  `id` int(11) NOT NULL,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_version` text COLLATE utf8_unicode_ci,
  `status` smallint(1) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_extension`
--

INSERT INTO `tbl_extension` (`id`, `category`, `author`, `version`, `product_version`, `status`, `code`, `data`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'payment', 'WhatACart', '1.0', '2.0.0', 0, 'cashondelivery', NULL, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(2, 'payment', 'WhatACart', '1.0', '2.0.0', 0, 'paypal_standard', NULL, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(3, 'shipping', 'WhatACart', '1.0', '2.0.0', 0, 'flat', NULL, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(4, 'shipping', 'WhatACart', '1.0', '2.0.0', 0, 'free', NULL, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extension_translated`
--

CREATE TABLE `tbl_extension_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_extension_translated`
--

INSERT INTO `tbl_extension_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Cash On Delivery', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(2, 2, 'en-US', 'Paypal Standard', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(3, 3, 'en-US', 'Flat Rate', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(4, 4, 'en-US', 'Free Shipping', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system',
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `parent_id`, `level`, `status`, `category`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Administrators', 0, 0, 1, 'system', '1', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(2, 'General', 0, 0, 1, 'customer', '2', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(3, 'Wholesale', 0, 0, 1, 'customer', '3', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(4, 'Retailer', 0, 0, 1, 'customer', '4', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_member`
--

CREATE TABLE `tbl_group_member` (
  `group_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_group_member`
--

INSERT INTO `tbl_group_member` (`group_id`, `member_id`, `member_type`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 2, 'user', 1, 1, '2018-04-09 13:24:22', '2018-04-09 13:24:22'),
(2, 3, 'customer', 1, 1, '2018-04-09 13:24:38', '2018-04-09 13:24:38'),
(2, 4, 'customer', 1, 1, '2018-04-10 08:52:57', '2018-04-10 08:52:57'),
(2, 5, 'customer', 0, 0, '2018-04-10 08:50:51', '2018-04-10 08:50:51'),
(3, 1, 'customer', 1, 1, '2018-04-09 13:24:32', '2018-04-09 13:24:32'),
(4, 2, 'customer', 1, 1, '2018-04-09 13:24:36', '2018-04-09 13:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `id` int(11) NOT NULL,
  `unique_id` int(16) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price_excluding_tax` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `total_items` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_translated`
--

CREATE TABLE `tbl_invoice_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `locale`, `image`, `sort_order`, `status`, `code`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'English', 'en-US', '', 1, 1, 'en-US', 1, 1, '2018-04-09 13:24:15', '2018-04-10 09:43:21'),
(3, 'Indonesia', 'id-ID', '', 2, 1, 'id-ID', 1, 1, '2018-04-10 09:27:41', '2018-04-10 09:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_length_class`
--

CREATE TABLE `tbl_length_class` (
  `id` int(11) NOT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_length_class`
--

INSERT INTO `tbl_length_class` (`id`, `unit`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'm', '1.00', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(2, 'cm', '100.00', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(3, 'in', '39.37', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(4, 'mm', '1000.00', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_length_class_translated`
--

CREATE TABLE `tbl_length_class_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_length_class_translated`
--

INSERT INTO `tbl_length_class_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Meter', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(2, 2, 'en-US', 'Centimeter', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(3, 3, 'en-US', 'Inch', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17'),
(4, 4, 'en-US', 'Millimeter', 1, 1, '2018-04-09 13:24:17', '2018-04-09 13:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`id`, `name`, `image`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Apple', NULL, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 'Canon', NULL, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(3, 'HTC', NULL, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(4, 'Sony', NULL, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(5, 'jeans.id', '', 1, 1, 1, '2018-04-10 05:01:25', '2018-04-10 05:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

CREATE TABLE `tbl_newsletter` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `subject` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_customers`
--

CREATE TABLE `tbl_newsletter_customers` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_translated`
--

CREATE TABLE `tbl_newsletter_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `modulename` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `priority` smallint(1) NOT NULL DEFAULT '1',
  `senddatetime` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `modulename`, `type`, `data`, `status`, `priority`, `senddatetime`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'users', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a32323a226d6179616e6b406d6179616e6b73746f72652e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3238323a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e53746f7265204f776e65723c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e73746f72656f776e65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e616263643132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-04-09 13:24:24', 1, 0, '2018-04-09 13:24:24', NULL),
(2, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a33313a2277686f6c6573616c65637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3331353a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e57686f6c6573616c65637573746f6d65722077686f6c6573616c65637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e77686f6c6573616c65637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e77633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-04-09 13:24:34', 1, 0, '2018-04-09 13:24:34', NULL),
(3, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a32383a2272657461696c637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3330363a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e52657461696c637573746f6d65722072657461696c637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e72657461696c637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e72633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-04-09 13:24:37', 1, 0, '2018-04-09 13:24:37', NULL),
(4, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a32393a2264656661756c74637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3330393a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e44656661756c74637573746f6d65722064656661756c74637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e64656661756c74637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e64633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-04-09 13:24:39', 1, 0, '2018-04-09 13:24:39', NULL),
(5, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a31363a22706479616e70407961686f6f2e636f6d223b733a373a227375626a656374223b733a32353a224e657720437573746f6d657220526567697374726174696f6e223b733a343a22626f6479223b733a3536363a223c703e57656c636f6d65205573657220557365722e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174204a65616e732e69643c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e20757365723c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a204075736572313c2f703e0d0a0d0a506c6561736520636f6e6669726d20796f757220656d61696c20627920636c69636b696e6720746865206c696e6b2062656c6f7720746f20616374697661746520796f7572206163636f756e742e3c62722f3e3c62722f3e0d0a3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6a65616e732e69642f637573746f6d65722f736974652f76616c69646174652d656d61696c2d616464726573733f686173683d4a444a354a44457a4a47466162327832516b4531556a51354f5338345232394457554e78596e5659634551334d6d706c596c6c4b4e326c4453454a70546e6c584d47527764586c594e6e42456146647426656d61696c3d706479616e70407961686f6f2e636f6d273e436f6e6669726d20796f757220656d61696c206163636f756e743c2f613e3c62722f3e3c62722f3e0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a223b7d, 1, 1, '2018-04-10 08:47:11', 1, 0, '2018-04-10 08:47:11', NULL),
(6, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32303a2273757065725f61646d696e406a65616e732e6964223b733a393a22746f41646472657373223b733a31373a22706479616e7031407961686f6f2e636f6d223b733a373a227375626a656374223b733a32353a224e657720437573746f6d657220526567697374726174696f6e223b733a343a22626f6479223b733a3537313a223c703e57656c636f6d652050617261204d7564692e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174204a65616e732e69643c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e20757365726e616d653c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a204075736572313c2f703e0d0a0d0a506c6561736520636f6e6669726d20796f757220656d61696c20627920636c69636b696e6720746865206c696e6b2062656c6f7720746f20616374697661746520796f7572206163636f756e742e3c62722f3e3c62722f3e0d0a3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6a65616e732e69642f637573746f6d65722f736974652f76616c69646174652d656d61696c2d616464726573733f686173683d4a444a354a44457a4a465657595574765179396f5a5739795a585a4957544e4a59545931654335326431683157456b3257585a7161336c796447684e65487032535739706558703552324e6d54484a4826656d61696c3d706479616e7031407961686f6f2e636f6d273e436f6e6669726d20796f757220656d61696c206163636f756e743c2f613e3c62722f3e3c62722f3e0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a223b7d, 1, 1, '2018-04-10 08:50:51', 1, 0, '2018-04-10 08:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_layout`
--

CREATE TABLE `tbl_notification_layout` (
  `id` int(11) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_layout_translated`
--

CREATE TABLE `tbl_notification_layout_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_template`
--

CREATE TABLE `tbl_notification_template` (
  `id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `notifykey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_notification_template`
--

INSERT INTO `tbl_notification_template` (`id`, `type`, `notifykey`, `layout_id`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'email', 'createUser', NULL, 1, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(2, 'email', 'changepassword', NULL, 1, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(3, 'email', 'forgotpassword', NULL, 1, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(4, 'email', 'productReview', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(5, 'email', 'orderCompletion', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(6, 'email', 'orderReceived', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(7, 'email', 'orderUpdate', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(8, 'email', 'sendMail', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(9, 'email', 'sendNewsletter', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(10, 'email', 'createCustomer', NULL, 1, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_template_translated`
--

CREATE TABLE `tbl_notification_template_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_notification_template_translated`
--

INSERT INTO `tbl_notification_template_translated` (`id`, `owner_id`, `language`, `subject`, `content`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'New User Registration', 0x3c703e57656c636f6d65207b7b66756c6c4e616d657d7d2e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174207b7b6170706e616d657d7d3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d3c2f703e0d0a0d0a7b7b636f6e6669726d656d61696c4c6162656c7d7d0d0a7b7b636f6e6669726d656d61696c7d7d0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(2, 2, 'en-US', 'You have changed your password', 0x3c703e44656172207b7b66756c6c4e616d657d7d2c203c62722f3e3c62722f3e596f75722070617373776f726420686173206265656e206368616e67656420746f207b7b70617373776f72647d7d2e0d0a3c62722f3e3c62722f3e0d0a5468616e6b733c62722f3e0d0a53797374656d2041646d696e3c2f703e, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(3, 3, 'en-US', 'Forgot Password Request', 0x3c703e44656172207b7b66756c6c4e616d657d7d2c3c62722f3e0d0a596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c62723e0d0a3c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c62723e0d0a3c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d0d0a3c62722f3e3c62722f3e0d0a5468616e6b733c62723e0d0a53797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-04-09 13:24:15', '2018-04-09 13:24:15'),
(4, 4, 'en-US', 'Product Review | {{productName}}', 0x3c703e0d0a2020202048656c6c6f2c3c62722f3e0d0a202020207b7b637573746f6d65726e616d657d7d2068617320706f737465642061206e657720726576696577206f6e207b7b70726f647563746e616d657d7d2e0d0a3c2f703e0d0a3c703e0d0a20202020546865207265766965772069733a3c62722f3e0d0a202020207b7b7265766965777d7d3c62722f3e3c62722f3e0d0a202020205468616e6b732c3c6272202f3e0d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(5, 5, 'en-US', 'Order Completion', 0x3c703e446561722c207b7b637573746f6d65726e616d657d7d3c2f703e0d0a3c703e0d0a20202020596f7572206f7264657220237b7b6f726465726e756d6265727d7d2070726f63657373696e6720697320636f6d706c65746564206f6e207b7b6f72646572646174657d7d2e0d0a3c2f703e0d0a7b7b6f726465724c696e6b7d7d0d0a3c703e0d0a202020205468616e6b20596f752c203c62722f3e200d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(6, 6, 'en-US', 'Received Order', 0x3c646976207374796c653d2277696474683a2036383070783b223e0d0a20203c70207374796c653d226d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323070783b223e5468616e6b20796f7520666f7220796f757220696e74657265737420696e207b7b73746f72654e616d657d7d2070726f64756374732e20596f7572206f7264657220686173206265656e20726563656976656420616e642077696c6c2062652070726f636573736564206f6e6365207061796d656e7420686173206265656e20636f6e6669726d65642e3c2f703e0d0a20207b7b6f726465724c696e6b7d7d0d0a20203c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b2077696474683a20313030253b20626f726465722d746f703a2031707820736f6c696420234444444444443b20626f726465722d6c6566743a2031707820736f6c696420234444444444443b206d617267696e2d626f74746f6d3a20323070783b223e0d0a202020203c74686561643e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b20626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b206261636b67726f756e642d636f6c6f723a20234546454645463b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b20636f6c6f723a20233232323232323b2220636f6c7370616e3d2232223e0d0a2020202020202020202020204f726465722044657461696c730d0a20202020202020203c2f74643e0d0a2020202020203c2f74723e0d0a202020203c2f74686561643e0d0a202020203c74626f64793e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a202020202020202020203c623e4f726465722049443a3c2f623e207b7b6f7264657249647d7d3c6272202f3e0d0a202020202020202020203c623e44617465206f66204f726465723a3c2f623e207b7b6461746541646465647d7d3c6272202f3e0d0a202020202020202020203c623e5061796d656e74204d6574686f643a3c2f623e207b7b7061796d656e744d6574686f647d7d3c6272202f3e0d0a202020202020202020207b7b7368697070696e674d6574686f647d7d0d0a202020202020202020203c2f74643e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a202020202020202020203c623e456d61696c3a3c2f623e207b7b656d61696c7d7d3c6272202f3e0d0a202020202020202020203c623e54656c6570686f6e653a3c2f623e207b7b74656c6570686f6e657d7d3c6272202f3e0d0a202020202020202020203c623e5374617475733a3c2f623e207b7b6f726465725374617475737d7d3c6272202f3e0d0a20202020202020203c2f74643e0d0a2020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a20203c2f7461626c653e0d0a20203c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b2077696474683a20313030253b20626f726465722d746f703a2031707820736f6c696420234444444444443b20626f726465722d6c6566743a2031707820736f6c696420234444444444443b206d617267696e2d626f74746f6d3a20323070783b223e0d0a202020203c74686561643e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b20626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b206261636b67726f756e642d636f6c6f723a20234546454645463b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b20636f6c6f723a20233232323232323b223e0d0a20202020202020202020202042696c6c696e6720416464726573730d0a20202020202020203c2f74643e0d0a20202020202020207b7b7368697070696e67416464726573735469746c657d7d0d0a2020202020203c2f74723e0d0a202020203c2f74686561643e0d0a202020203c74626f64793e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a2020202020202020202020207b7b7061796d656e74416464726573737d7d0d0a20202020202020203c2f74643e0d0a20202020202020207b7b7368697070696e67416464726573737d7d0d0a2020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a20203c2f7461626c653e0d0a20207b7b6f7264657250726f64756374737d7d0d0a20203c70207374796c653d226d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323070783b223e506c65617365207265706c7920746f20737570706f7274407768617461636172742e636f6d20696620796f75206861766520616e79207175657374696f6e732e3c2f703e0d0a20203c703e0d0a2020202020205468616e6b732c3c62722f3e0d0a20202020202053797374656d2041646d696e0d0a20203c2f703e0d0a3c2f6469763e, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(7, 7, 'en-US', 'Update Order | {{ordernumber}}', 0x3c703e44656172207b7b637573746f6d65726e616d657d7d2c3c2f703e0d0a3c703e0d0a20202020596f7572206f7264657220237b7b6f726465726e756d6265727d7d20737461747573206f726465726564206f6e207b7b6f72646572646174657d7d20686173206265656e207570646174656420746f207b7b6f726465727374617475737d7d2e0d0a3c2f703e0d0a7b7b6f726465724c696e6b7d7d0d0a3c703e0d0a2020202054686520636f6d6d656e747320666f7220746865206f72646572206172653a3c62722f3e0d0a202020207b7b6f72646572636f6d6d656e74737d7d0d0a3c2f703e0d0a3c703e0d0a202020205468616e6b20596f752c203c62722f3e200d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(8, 8, 'en-US', 'Send Mail', 0x3c68313e7b7b6170706e616d657d7d3c2f68313e0d0a3c703e0d0a202020203c7374726f6e673e46726f6d3a3c2f7374726f6e673e207b7b73746f72656e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e5375626a6563743a3c2f7374726f6e673e3a207b7b7375626a6563747d7d3c6272202f3e0d0a202020203c7374726f6e673e4d6573736167653a3c2f7374726f6e673e3a207b7b6d6573736167657d7d0d0a3c2f703e, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(9, 9, 'en-US', 'Newsletter', 0x3c68313e7b7b6170706e616d657d7d3c2f68313e0d0a3c703e0d0a202020203c7374726f6e673e46726f6d3a3c2f7374726f6e673e207b7b73746f72656e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e5375626a6563743a3c2f7374726f6e673e3a207b7b7375626a6563747d7d3c6272202f3e0d0a202020203c7374726f6e673e4d6573736167653a3c2f7374726f6e673e3a207b7b6d6573736167657d7d0d0a3c2f703e0d0a7b7b756e7375627363726962657d7d, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(10, 10, 'en-US', 'New Customer Registration', 0x3c703e57656c636f6d65207b7b66756c6c4e616d657d7d2e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174207b7b6170706e616d657d7d3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d3c2f703e0d0a0d0a7b7b636f6e6669726d656d61696c4c6162656c7d7d0d0a7b7b636f6e6669726d656d61696c7d7d0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a, 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `shipping` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `shipping_fee` decimal(10,2) DEFAULT '0.00',
  `unique_id` int(11) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `currency_conversion_value` float NOT NULL DEFAULT '1',
  `interface` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_address_details`
--

CREATE TABLE `tbl_order_address_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_history`
--

CREATE TABLE `tbl_order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `notify_customer` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_history_translated`
--

CREATE TABLE `tbl_order_history_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_payment_details`
--

CREATE TABLE `tbl_order_payment_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_including_tax` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_payment_details_translated`
--

CREATE TABLE `tbl_order_payment_details_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_payment_transaction_map`
--

CREATE TABLE `tbl_order_payment_transaction_map` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_record_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_product`
--

CREATE TABLE `tbl_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `displayed_options` text COLLATE utf8_unicode_ci,
  `item_code` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `options_price` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status`
--

CREATE TABLE `tbl_order_status` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_status`
--

INSERT INTO `tbl_order_status` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(3, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(4, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(5, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(6, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(7, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(8, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(9, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(10, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(11, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(12, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(13, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(14, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status_translated`
--

CREATE TABLE `tbl_order_status_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order_status_translated`
--

INSERT INTO `tbl_order_status_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Cancelled', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 2, 'en-US', 'Canceled_Reversal', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(3, 3, 'en-US', 'Chargeback', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(4, 4, 'en-US', 'Completed', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(5, 5, 'en-US', 'Denied', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(6, 6, 'en-US', 'Expired', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(7, 7, 'en-US', 'Failed', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(8, 8, 'en-US', 'Pending', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(9, 9, 'en-US', 'Processed', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(10, 10, 'en-US', 'Processing', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(11, 11, 'en-US', 'Refunded', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(12, 12, 'en-US', 'Reversed', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(13, 13, 'en-US', 'Shipped', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(14, 14, 'en-US', 'Voided', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_translated`
--

CREATE TABLE `tbl_order_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_comments` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `status` smallint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `custom_url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` smallint(1) NOT NULL,
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `status`, `parent_id`, `custom_url`, `level`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 0, NULL, 0, '1', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 1, 0, NULL, 0, '2', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(3, 1, 0, NULL, 0, '3', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(4, 1, 0, NULL, 0, '4', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_translated`
--

CREATE TABLE `tbl_page_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `summary` text COLLATE utf8_unicode_ci,
  `metakeywords` text COLLATE utf8_unicode_ci,
  `metadescription` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page_translated`
--

INSERT INTO `tbl_page_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `menuitem`, `content`, `summary`, `metakeywords`, `metadescription`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'About Us', 'about-us', 'About Us', '<p>\r\n    <strong class=\"first-paragraph\">A</strong>t Usha Informatique, Web Development Company in India, we are driven by SPEED and EFFICIENCY to achieve superior quality and cost-competitiveness so as to enable our customer&rsquo;s stay at the forefront of their industry.</p><p>At Usha Informatique, you can find a right combination of Technical excellence, outstanding design, effective strategy and the results are pretty impressive, to serve clients acroos the globe. We utilizes both continued technical and intellectual education to enhance each project that is brought to Usha Informatique that stands our clients into the world of technology with class.</p><p>Our knowledge and experience in Software and Web solutions have greatly boosted our clients in business augmentation. We specialize in delivering cost-effective software/web solutions by implementing an offshore development model. We have a dedicated team of software professionals to bring quality products to the clients.\r\n</p>\r\n\r\n', 'About us summary', 'about us', 'about us description', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 2, 'en-US', 'Delivery Information', 'delivery-info', 'Delivery Information', '<p>This is delivery information</p>', 'Delivery information summary', 'delivery information', 'deliverr information description', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(3, 3, 'en-US', 'Privacy Policy', 'privacy-policy', 'Privacy Policy', '<p>This is privacy policy</p>', 'Privacy policy summary', 'privacy policy', 'privacy policy description', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(4, 4, 'en-US', 'Terms & Conditions', 'terms', 'Terms & Conditions', '<p>These are terms and conditions</p>', 'Terms & condition summary', 'terms & condition', 'terms & condition description', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_person`
--

CREATE TABLE `tbl_person` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_person`
--

INSERT INTO `tbl_person` (`id`, `firstname`, `lastname`, `mobilephone`, `email`, `avatar`, `profile_image`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Super', 'Admin', '', 'super_admin@jeans.id', NULL, NULL, 1, 1, '2018-04-09 13:24:13', '2018-04-09 13:24:13'),
(2, 'Store', 'Owner', NULL, 'mayank@mayankstore.com', NULL, NULL, 1, 1, '2018-04-09 13:24:21', '2018-04-09 13:24:21'),
(3, 'Wholesalecustomer', 'wholesalecustomerlast', NULL, 'wholesalecustomer@whatacart.com', NULL, NULL, 1, 1, '2018-04-09 13:24:32', '2018-04-09 13:24:32'),
(4, 'Retailcustomer', 'retailcustomerlast', NULL, 'retailcustomer@whatacart.com', NULL, NULL, 1, 1, '2018-04-09 13:24:35', '2018-04-09 13:24:35'),
(5, 'Defaultcustomer', 'defaultcustomerlast', NULL, 'defaultcustomer@whatacart.com', NULL, NULL, 1, 1, '2018-04-09 13:24:37', '2018-04-09 13:24:37'),
(6, 'User', 'User', '+6289669664343', 'pdyanp@yahoo.com', NULL, NULL, 0, 0, '2018-04-10 08:47:08', '2018-04-10 08:47:08'),
(7, 'Para', 'Mudi', '+6289669664343', 'pdyanp1@yahoo.com', NULL, NULL, 0, 0, '2018-04-10 08:50:49', '2018-04-10 08:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `type` smallint(1) DEFAULT '1',
  `model` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `buy_price` decimal(10,2) DEFAULT '0.00',
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `sku` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `initial_quantity` int(11) DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `minimum_quantity` int(11) DEFAULT NULL,
  `subtract_stock` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_status` smallint(1) DEFAULT NULL,
  `requires_shipping` smallint(1) DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `is_featured` smallint(1) DEFAULT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `length_class` int(11) DEFAULT NULL,
  `weight_class` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `upc` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpn` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `type`, `model`, `price`, `buy_price`, `image`, `status`, `sku`, `quantity`, `initial_quantity`, `tax_class_id`, `minimum_quantity`, `subtract_stock`, `stock_status`, `requires_shipping`, `available_date`, `manufacturer`, `is_featured`, `location`, `length`, `width`, `height`, `date_available`, `weight`, `length_class`, `weight_class`, `hits`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(56, 1, '', '700000.00', '0.00', 'YzA5ZjhlOWsj.1.4.jpg', 1, '-', 1, NULL, NULL, 1, '1', 1, 1, NULL, 5, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 5, '', '', '', '', '', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute`
--

CREATE TABLE `tbl_product_attribute` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_group` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_attribute`
--

INSERT INTO `tbl_product_attribute` (`id`, `sort_order`, `attribute_group`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 1, 1, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute_group`
--

CREATE TABLE `tbl_product_attribute_group` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute_group_translated`
--

CREATE TABLE `tbl_product_attribute_group_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute_mapping`
--

CREATE TABLE `tbl_product_attribute_mapping` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute_translated`
--

CREATE TABLE `tbl_product_attribute_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_attribute_translated`
--

INSERT INTO `tbl_product_attribute_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Clockspeed', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 2, 'en-US', 'Fan Speed', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(11) NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `displayintopmenu` smallint(1) DEFAULT NULL,
  `data_category_id` int(11) NOT NULL,
  `code` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `image`, `parent_id`, `level`, `status`, `displayintopmenu`, `data_category_id`, `code`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(5, 'NWU0ZmY4Nzj1.1.jpg', 0, 0, 1, 1, 1, '1', '5', 1, 1, '2018-04-10 05:13:52', '2018-04-10 05:13:52'),
(6, 'NTRjZWRlMjsj.2.1.jpg', 5, 1, 1, 1, 1, '2', '5/6', 1, 1, '2018-04-10 05:17:49', '2018-04-10 05:18:34'),
(7, 'ZTY5OWVjYznsj.1.1.jpg', 5, 1, 1, 1, 1, '3', '5/7', 1, 1, '2018-04-10 05:23:23', '2018-04-10 05:23:23'),
(8, 'ZTQ4MzQxNmmj.1.jpg', 5, 1, 1, 1, 1, '4', '5/8', 1, 1, '2018-04-10 05:29:47', '2018-04-10 05:29:47'),
(9, 'YzM1NzExMjwj.1 (2).jpg', 5, 1, 1, 1, 1, '5', '5/9', 1, 1, '2018-04-10 05:35:14', '2018-04-10 05:35:32'),
(10, 'NjA3ZTJmNmkdj.1.jpg', 5, 1, 1, 1, 1, '6', '5/10', 1, 1, '2018-04-10 05:37:46', '2018-04-10 05:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category_mapping`
--

CREATE TABLE `tbl_product_category_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `data_category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_category_mapping`
--

INSERT INTO `tbl_product_category_mapping` (`product_id`, `category_id`, `data_category_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(56, 5, 1, 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(56, 6, 1, 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(56, 8, 1, 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(56, 9, 1, 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category_translated`
--

CREATE TABLE `tbl_product_category_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadescription` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_category_translated`
--

INSERT INTO `tbl_product_category_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `metakeywords`, `metadescription`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(5, 5, 'en-US', 'Jeans', 'jeans', '', '', '', 1, 1, '2018-04-10 05:13:52', '2018-04-10 05:13:52'),
(6, 6, 'en-US', 'Stretch Jeans', 'stretch-jeans', '', '', '', 1, 1, '2018-04-10 05:17:49', '2018-04-10 05:17:49'),
(7, 7, 'en-US', 'Non Stretch Jeans', 'non-stretch-jeans', '', '', '', 1, 1, '2018-04-10 05:23:23', '2018-04-10 05:23:23'),
(8, 8, 'en-US', 'Pria', 'pria', '', '', '', 1, 1, '2018-04-10 05:29:47', '2018-04-10 05:29:47'),
(9, 9, 'en-US', 'Wanita', 'wanita', '', '', '', 1, 1, '2018-04-10 05:35:14', '2018-04-10 05:35:14'),
(10, 10, 'en-US', 'Anak-Anak', 'anak-anak', '', '', '', 1, 1, '2018-04-10 05:37:46', '2018-04-10 05:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_discount`
--

CREATE TABLE `tbl_product_discount` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_download`
--

CREATE TABLE `tbl_product_download` (
  `id` int(11) NOT NULL,
  `file` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_downloads` int(10) DEFAULT '0',
  `number_of_days` int(10) DEFAULT '0',
  `size` double DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_download_mapping`
--

CREATE TABLE `tbl_product_download_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `download_option` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_download_translated`
--

CREATE TABLE `tbl_product_download_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`id`, `product_id`, `image`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 56, 'NTgwNTYxMTsj.1.1.jpg', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(2, 56, 'YzkxMTFjNDsj.1.2.jpg', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(3, 56, 'MjQ2MzMxMmsj.1.3.jpg', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(4, 56, 'YzJhZWEyNTsj.1.4.jpg', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image_translated`
--

CREATE TABLE `tbl_product_image_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_image_translated`
--

INSERT INTO `tbl_product_image_translated` (`id`, `owner_id`, `language`, `caption`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', '', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(2, 2, 'en-US', '', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(3, 3, 'en-US', '', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17'),
(4, 4, 'en-US', '', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option`
--

CREATE TABLE `tbl_product_option` (
  `id` int(11) NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_option`
--

INSERT INTO `tbl_product_option` (`id`, `type`, `url`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'checkbox', NULL, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 'radio', NULL, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(3, 'select', NULL, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option_mapping`
--

CREATE TABLE `tbl_product_option_mapping` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `required` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option_mapping_details`
--

CREATE TABLE `tbl_product_option_mapping_details` (
  `id` int(11) NOT NULL,
  `mapping_id` int(11) NOT NULL,
  `option_value_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `subtract_stock` smallint(1) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `weight_prefix` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_option_mapping_details`
--

INSERT INTO `tbl_product_option_mapping_details` (`id`, `mapping_id`, `option_value_id`, `quantity`, `subtract_stock`, `price_prefix`, `price`, `weight_prefix`, `weight`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, '1', 1, 1, '+', '5.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(2, 1, '2', 1, 1, '+', '10.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(3, 2, '4', 1, 1, '+', '10.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(4, 2, '5', 1, 1, '+', '15.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(5, 3, '8', 1, 1, '+', '20.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31'),
(6, 3, '9', 1, 1, '+', '25.00', '+', '0.00', 1, 1, '2018-04-09 13:24:31', '2018-04-09 13:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option_translated`
--

CREATE TABLE `tbl_product_option_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_option_translated`
--

INSERT INTO `tbl_product_option_translated` (`id`, `owner_id`, `language`, `name`, `display_name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Color', 'color', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 2, 'en-US', 'Size', 'size', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(3, 3, 'en-US', 'Resolution', 'resolution', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option_value`
--

CREATE TABLE `tbl_product_option_value` (
  `id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_option_value`
--

INSERT INTO `tbl_product_option_value` (`id`, `option_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 1, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(3, 1, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(4, 2, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(5, 2, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(6, 2, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(7, 2, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(8, 3, 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(9, 3, 1, 1, '2018-04-09 13:24:28', '2018-04-09 13:24:28'),
(10, 3, 1, 1, '2018-04-09 13:24:28', '2018-04-09 13:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_option_value_translated`
--

CREATE TABLE `tbl_product_option_value_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_option_value_translated`
--

INSERT INTO `tbl_product_option_value_translated` (`id`, `owner_id`, `language`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Grey', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(2, 2, 'en-US', 'Silver', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(3, 3, 'en-US', 'Black', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(4, 4, 'en-US', 'L', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(5, 5, 'en-US', 'M', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(6, 6, 'en-US', 'XL', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(7, 7, 'en-US', 'S', 1, 1, '2018-04-09 13:24:27', '2018-04-09 13:24:27'),
(8, 8, 'en-US', '4MP', 1, 1, '2018-04-09 13:24:28', '2018-04-09 13:24:28'),
(9, 9, 'en-US', '8MP', 1, 1, '2018-04-09 13:24:28', '2018-04-09 13:24:28'),
(10, 10, 'en-US', '10MP', 1, 1, '2018-04-09 13:24:28', '2018-04-09 13:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_rating`
--

CREATE TABLE `tbl_product_rating` (
  `id` int(11) NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_related_product_mapping`
--

CREATE TABLE `tbl_product_related_product_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `related_product_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_review`
--

CREATE TABLE `tbl_product_review` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_review_translated`
--

CREATE TABLE `tbl_product_review_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_special`
--

CREATE TABLE `tbl_product_special` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_tag_mapping`
--

CREATE TABLE `tbl_product_tag_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_tax_class`
--

CREATE TABLE `tbl_product_tax_class` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_tax_class`
--

INSERT INTO `tbl_product_tax_class` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_tax_class_translated`
--

CREATE TABLE `tbl_product_tax_class_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_tax_class_translated`
--

INSERT INTO `tbl_product_tax_class_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'taxable goods', 'Applied to goods on which tax has to be applied', 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_translated`
--

CREATE TABLE `tbl_product_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadescription` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_translated`
--

INSERT INTO `tbl_product_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `metakeywords`, `metadescription`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(56, 56, 'en-US', 'Stretch Custom Jeans With Fit Guarantee', 'stretch-custom-jeans-with-fit-guarantee', '', '', '<h3>Stop wearing jeans that don\'t fit and get custom-made, pre-washed jeans made exclusively for you.<br style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\"><span style=\"color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">100% Fit Guarantee - If you\'re not satisfied with the fit, simply let us know and we\'ll give you a free remake.</span><br style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\"><span style=\"color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">Jeans made of premium stretch fabric.</span><br style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\"><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">12 Oz Dark Blue Denim, 97% Cotton 3% Lycra, full stretch fabric.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">Each piece is individually cut from rolls of denim fabric and stitched accordingly.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">Hard Washed at high temperatures to give complete shrinkage.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">Leather labels.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">5 Pocket style.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\">Metal Buttons and Rivets Reinforced.</li><li style=\"margin: 0px; padding: 0px; color: rgb(58, 56, 58); font-family: Roboto, sans-serif; font-size: 13px; font-weight: 400;\"><font color=\"red\" style=\"margin: 0px; padding: 0px;\">Made to your measurements</font><dl style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><dt style=\"margin: 0px; padding: 0px;\"><a href=\"http://www.makeyourownjeans.com/#\" class=\"faq-question\" style=\"margin: 0px; padding: 0px; color: rgb(61, 41, 11);\"><b style=\"margin: 0px; padding: 0px;\">What if my Jeans do not fit?</b>&nbsp;</a><a rel=\"(Read more...)\" name=\"(Hide text...)\" id=\"first_element\" class=\"read-more\" style=\"margin: 0px; padding: 0px; color: rgb(0, 174, 239);\">(Read more...)</a></dt></dl><dl style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><dt style=\"margin: 0px; padding: 0px;\"><a href=\"http://www.makeyourownjeans.com/#\" class=\"faq-question\" style=\"margin: 0px; padding: 0px; color: rgb(61, 41, 11);\"><b style=\"margin: 0px; padding: 0px;\">How do I claim my Remake if needed?</b>&nbsp;</a><a rel=\"(Read more...)\" name=\"(Hide text...)\" id=\"second_element\" class=\"read-more\" style=\"margin: 0px; padding: 0px; color: rgb(0, 174, 239);\">(Read more...)</a></dt></dl><div style=\"margin: 0px 0px 40px; padding: 0px; width: 793px;\"><div id=\"customMadeLink\" style=\"margin: 20px 20px 0px 0px; padding: 0px; float: left;\"><font face=\"bebas,verdana,arial,sans-serif\" size=\"2\" style=\"margin: 0px; padding: 0px;\">Custom-Made</font>&nbsp;<font size=\"2\" style=\"margin: 0px; padding: 0px;\"><a class=\"inlinePopup cboxElement\" href=\"http://www.makeyourownjeans.com/#popupContent\" style=\"margin: 0px; padding: 0px; color: rgb(61, 41, 11);\"><img src=\"http://www.makeyourownjeans.com/images/custom_made.jpg\" style=\"margin: 0px; padding: 0px; height: auto; max-width: 100%; border-width: initial; border-style: none;\"><img src=\"http://www.makeyourownjeans.com/images/popup_icon1.gif\" style=\"margin: 0px; padding: 0px; height: auto; max-width: 100%; border-width: initial; border-style: none;\"></a></font></div><div class=\"clearBoth\" style=\"margin: 0px; padding: 0px; clear: both; position: relative;\"></div><div id=\"fitText\" style=\"margin: 20px 0px 0px; padding: 0px;\"><div class=\"greenCheck\" style=\"margin: 0px; padding: 0px;\"><img src=\"http://www.makeyourownjeans.com/images/icons/green-check.png\" style=\"margin: 0px; padding: 0px; height: 12px; max-width: 100%;\">&nbsp;For Men and Women</div><div class=\"greenCheck\" style=\"margin: 0px; padding: 0px;\"><img src=\"http://www.makeyourownjeans.com/images/icons/green-check.png\" style=\"margin: 0px; padding: 0px; height: 12px; max-width: 100%;\">&nbsp;Measurements to be given on shopping cart page</div><div class=\"greenCheck\" style=\"margin: 0px; padding: 0px;\"><img src=\"http://www.makeyourownjeans.com/images/icons/green-check.png\" style=\"margin: 0px; padding: 0px; height: 12px; max-width: 100%;\">&nbsp;All Fits and Styles<a class=\"stylesPopup cboxElement\" href=\"http://www.makeyourownjeans.com/#availableStyles\" style=\"margin: 0px; padding: 0px; color: rgb(41, 171, 226);\">&nbsp;(View Details)</a></div></div></div></li></h3>', 1, 1, '2018-04-10 05:50:17', '2018-04-10 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sequence`
--

CREATE TABLE `tbl_sequence` (
  `id` int(11) NOT NULL,
  `invoice_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `customer_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sequence`
--

INSERT INTO `tbl_sequence` (`id`, `invoice_sequence_no`, `customer_sequence_no`, `order_sequence_no`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, '0', '10004', '0', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE `tbl_session` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `country_id`, `status`, `code`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 'DE', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(2, 1, 1, 'AS', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(3, 1, 1, 'GO', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(4, 1, 1, 'MN', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state_translated`
--

CREATE TABLE `tbl_state_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_state_translated`
--

INSERT INTO `tbl_state_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Delhi', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(2, 2, 'en-US', 'Assam', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(3, 3, 'en-US', 'Goa', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16'),
(4, 4, 'en-US', 'Manipur', 1, 1, '2018-04-09 13:24:16', '2018-04-09 13:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_status`
--

CREATE TABLE `tbl_stock_status` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_stock_status`
--

INSERT INTO `tbl_stock_status` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_status_translated`
--

CREATE TABLE `tbl_stock_status_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_stock_status_translated`
--

INSERT INTO `tbl_stock_status_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'In Stock', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 2, 'en-US', 'Out Of Stock', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store`
--

CREATE TABLE `tbl_store` (
  `id` int(11) NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `data_category_id` int(11) NOT NULL,
  `is_default` smallint(1) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL,
  `theme` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_store`
--

INSERT INTO `tbl_store` (`id`, `url`, `status`, `data_category_id`, `is_default`, `owner_id`, `theme`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'http://teststore.org', 1, 1, 0, 2, NULL, 1, 1, '2018-04-09 13:24:24', '2018-04-09 13:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_configuration`
--

CREATE TABLE `tbl_store_configuration` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_store_configuration`
--

INSERT INTO `tbl_store_configuration` (`id`, `store_id`, `category`, `code`, `key`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'storeconfig', 'storesettings', 'invoice_prefix', '#', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(2, 1, 'storeconfig', 'storesettings', 'catalog_items_per_page', '8', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(3, 1, 'storeconfig', 'storesettings', 'list_description_limit', '100', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(4, 1, 'storeconfig', 'storesettings', 'display_price_with_tax', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(5, 1, 'storeconfig', 'storesettings', 'tax_calculation_based_on', 'billing', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(6, 1, 'storeconfig', 'storesettings', 'guest_checkout', '0', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(7, 1, 'storeconfig', 'storesettings', 'order_status', '8', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(8, 1, 'storeconfig', 'storesettings', 'display_stock', '0', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(9, 1, 'storeconfig', 'storesettings', 'customer_online', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(10, 1, 'storeconfig', 'storesettings', 'default_customer_group', '2', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(11, 1, 'storeconfig', 'storesettings', 'allow_reviews', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(12, 1, 'storeconfig', 'storesettings', 'allow_guest_reviews', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(13, 1, 'storeconfig', 'storesettings', 'show_out_of_stock_warning', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(14, 1, 'storeconfig', 'storesettings', 'allow_out_of_stock_checkout', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(15, 1, 'storeconfig', 'storesettings', 'allow_wishlist', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(16, 1, 'storeconfig', 'storesettings', 'allow_compare_products', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(17, 1, 'storeconfig', 'storesettings', 'customer_prefix', '#', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(18, 1, 'storeconfig', 'storesettings', 'order_prefix', '#', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(19, 1, 'storeconfig', 'storesettings', 'display_weight', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(20, 1, 'storeconfig', 'storesettings', 'display_dimensions', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(21, 1, 'storeconfig', 'storelocal', 'country', 'IN', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(22, 1, 'storeconfig', 'storelocal', 'timezone', 'Asia/Kolkata', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(23, 1, 'storeconfig', 'storelocal', 'state', 'Haryana', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(24, 1, 'storeconfig', 'storelocal', 'currency', 'USD', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(25, 1, 'storeconfig', 'storelocal', 'length_class', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(26, 1, 'storeconfig', 'storelocal', 'weight_class', '1', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(27, 1, 'storeconfig', 'storelocal', 'language', 'en-US', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(28, 1, 'storeconfig', 'storeimage', 'store_logo', '', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(29, 1, 'storeconfig', 'storeimage', 'icon', '', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(30, 1, 'storeconfig', 'storeimage', 'category_image_width', '90', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(31, 1, 'storeconfig', 'storeimage', 'category_image_height', '90', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(32, 1, 'storeconfig', 'storeimage', 'product_list_image_width', '150', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(33, 1, 'storeconfig', 'storeimage', 'product_list_image_height', '150', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(34, 1, 'storeconfig', 'storeimage', 'related_product_image_width', '80', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(35, 1, 'storeconfig', 'storeimage', 'related_product_image_height', '80', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(36, 1, 'storeconfig', 'storeimage', 'compare_image_width', '90', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(37, 1, 'storeconfig', 'storeimage', 'compare_image_height', '90', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(38, 1, 'storeconfig', 'storeimage', 'wishlist_image_width', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(39, 1, 'storeconfig', 'storeimage', 'wishlist_image_height', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(40, 1, 'storeconfig', 'storeimage', 'cart_image_width', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(41, 1, 'storeconfig', 'storeimage', 'cart_image_height', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(42, 1, 'storeconfig', 'storeimage', 'store_image_width', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25'),
(43, 1, 'storeconfig', 'storeimage', 'store_image_height', '47', 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_translated`
--

CREATE TABLE `tbl_store_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `metakeywords` text COLLATE utf8_unicode_ci,
  `metadescription` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_store_translated`
--

INSERT INTO `tbl_store_translated` (`id`, `owner_id`, `language`, `name`, `description`, `metakeywords`, `metadescription`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Default', 'This is test store set up with the application', NULL, NULL, 1, 1, '2018-04-09 13:24:25', '2018-04-09 13:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `id` int(11) NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag_translated`
--

CREATE TABLE `tbl_tag_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rule`
--

CREATE TABLE `tbl_tax_rule` (
  `id` int(11) NOT NULL,
  `based_on` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tax_rule`
--

INSERT INTO `tbl_tax_rule` (`id`, `based_on`, `type`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'shipping', 'percent', '4', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 'billing', 'percent', '5', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rule_details`
--

CREATE TABLE `tbl_tax_rule_details` (
  `id` int(11) NOT NULL,
  `tax_rule_id` int(11) NOT NULL,
  `product_tax_class_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tax_rule_details`
--

INSERT INTO `tbl_tax_rule_details` (`id`, `tax_rule_id`, `product_tax_class_id`, `customer_group_id`, `tax_zone_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 2, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 1, 1, 4, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(3, 1, 1, 3, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(4, 2, 1, 2, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(5, 2, 1, 4, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(6, 2, 1, 3, 1, 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rule_translated`
--

CREATE TABLE `tbl_tax_rule_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tax_rule_translated`
--

INSERT INTO `tbl_tax_rule_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Sales Tax', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20'),
(2, 2, 'en-US', 'Service Tax', 1, 1, '2018-04-09 13:24:20', '2018-04-09 13:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `timezone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password_reset_token`, `password_hash`, `auth_key`, `status`, `person_id`, `login_ip`, `last_login`, `timezone`, `type`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'super_admin', NULL, '$2y$13$alnIyV06sayL33pnQTlMpuH2PTY7yy4ob917TiTXWhDYB24ce/uGe', 'MiJtJDYVXLKUui0nFndU3tfnw3AJG4l6', 1, 1, '::1', '2018-04-09 14:44:27', 'Asia/Jakarta', 'system', 1, 1, '2018-04-09 13:24:13', '2018-04-09 13:24:13'),
(2, 'storeowner', NULL, '$2y$13$udC3H6QO0QRtCE.rV1I7ce.TebA8Nm74j7mifzgjh8HYjth9xLG8G', 'YhkCImsaVyZ4eYLXN0iHH72nN0Smvown', 1, 2, NULL, NULL, 'Asia/Kolkata', 'system', 1, 1, '2018-04-09 13:24:22', '2018-04-09 13:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_weight_class`
--

CREATE TABLE `tbl_weight_class` (
  `id` int(11) NOT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_weight_class`
--

INSERT INTO `tbl_weight_class` (`id`, `unit`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'kg', '1.00', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 'g', '1000.00', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(3, 'oz', '35.27', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(4, 'lb', '2.20', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_weight_class_translated`
--

CREATE TABLE `tbl_weight_class_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_weight_class_translated`
--

INSERT INTO `tbl_weight_class_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Kilogram', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(2, 2, 'en-US', 'Gram', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(3, 3, 'en-US', 'Ounce', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18'),
(4, 4, 'en-US', 'Pound', 1, 1, '2018-04-09 13:24:18', '2018-04-09 13:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_zip_range` smallint(1) DEFAULT NULL,
  `from_zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`id`, `country_id`, `state_id`, `zip`, `is_zip_range`, `from_zip`, `to_zip`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '110005', 0, NULL, NULL, 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19'),
(2, 1, 4, '*', 1, '781000', '781010', 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone_translated`
--

CREATE TABLE `tbl_zone_translated` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_zone_translated`
--

INSERT INTO `tbl_zone_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'North Zone', 'North Zone for India', 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19'),
(2, 2, 'en-US', 'East Zone', 'East Zone for India', 1, 1, '2018-04-09 13:24:19', '2018-04-09 13:24:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_country` (`country`),
  ADD KEY `idx_postal_code` (`postal_code`);

--
-- Indexes for table `tbl_auth_assignment`
--
ALTER TABLE `tbl_auth_assignment`
  ADD KEY `idx_identity_name` (`identity_name`),
  ADD KEY `idx_identity_type` (`identity_type`),
  ADD KEY `idx_permission` (`permission`);

--
-- Indexes for table `tbl_auth_permission`
--
ALTER TABLE `tbl_auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_permission` (`name`,`module`,`resource`,`alias`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_resource` (`resource`),
  ADD KEY `idx_module` (`module`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_country_id` (`country_id`);

--
-- Indexes for table `tbl_city_translated`
--
ALTER TABLE `tbl_city_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module` (`module`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country_translated`
--
ALTER TABLE `tbl_country_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_symbol_left` (`symbol_left`),
  ADD KEY `idx_code` (`code`),
  ADD KEY `idx_symbol_right` (`symbol_right`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_currency_translated`
--
ALTER TABLE `tbl_currency_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_customer_activity`
--
ALTER TABLE `tbl_customer_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `tbl_customer_download_mapping`
--
ALTER TABLE `tbl_customer_download_mapping`
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_download_id` (`download_id`);

--
-- Indexes for table `tbl_customer_metadata`
--
ALTER TABLE `tbl_customer_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_currency` (`currency`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_customer_online`
--
ALTER TABLE `tbl_customer_online`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ip` (`ip`),
  ADD KEY `idx_customer_id` (`customer_id`);

--
-- Indexes for table `tbl_data_category`
--
ALTER TABLE `tbl_data_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_data_category_translated`
--
ALTER TABLE `tbl_data_category_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_extension`
--
ALTER TABLE `tbl_extension`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_code` (`code`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_category` (`category`);

--
-- Indexes for table `tbl_extension_translated`
--
ALTER TABLE `tbl_extension_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_group_member`
--
ALTER TABLE `tbl_group_member`
  ADD UNIQUE KEY `idx_group_member` (`group_id`,`member_id`,`member_type`),
  ADD KEY `idx_member_type` (`member_type`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_unique_id` (`unique_id`);

--
-- Indexes for table `tbl_invoice_translated`
--
ALTER TABLE `tbl_invoice_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_locale` (`locale`),
  ADD KEY `idx_sort_order` (`sort_order`),
  ADD KEY `idx_code` (`code`);

--
-- Indexes for table `tbl_length_class`
--
ALTER TABLE `tbl_length_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unit` (`unit`);

--
-- Indexes for table `tbl_length_class_translated`
--
ALTER TABLE `tbl_length_class_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_store_id` (`store_id`),
  ADD KEY `idx_to` (`to`),
  ADD KEY `idx_subject` (`subject`);

--
-- Indexes for table `tbl_newsletter_customers`
--
ALTER TABLE `tbl_newsletter_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `tbl_newsletter_translated`
--
ALTER TABLE `tbl_newsletter_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_modulename` (`modulename`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_priority` (`priority`);

--
-- Indexes for table `tbl_notification_layout`
--
ALTER TABLE `tbl_notification_layout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_notification_layout_translated`
--
ALTER TABLE `tbl_notification_layout_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_notification_template`
--
ALTER TABLE `tbl_notification_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notifykey` (`notifykey`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_notification_template_translated`
--
ALTER TABLE `tbl_notification_template_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_subject` (`subject`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_store_id` (`store_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_unique_id` (`unique_id`),
  ADD KEY `idx_currency_code` (`currency_code`);

--
-- Indexes for table `tbl_order_address_details`
--
ALTER TABLE `tbl_order_address_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_firstname` (`firstname`),
  ADD KEY `idx_lastname` (`lastname`),
  ADD KEY `idx_city` (`city`),
  ADD KEY `idx_country` (`country`),
  ADD KEY `idx_postal_code` (`postal_code`);

--
-- Indexes for table `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_order_history_translated`
--
ALTER TABLE `tbl_order_history_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_order_payment_details`
--
ALTER TABLE `tbl_order_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_payment_method` (`payment_method`),
  ADD KEY `idx_payment_type` (`payment_type`),
  ADD KEY `idx_total_including_tax` (`total_including_tax`),
  ADD KEY `idx_tax` (`tax`),
  ADD KEY `idx_shipping_fee` (`shipping_fee`);

--
-- Indexes for table `tbl_order_payment_details_translated`
--
ALTER TABLE `tbl_order_payment_details_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_order_payment_transaction_map`
--
ALTER TABLE `tbl_order_payment_transaction_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_amount` (`amount`),
  ADD KEY `idx_payment_method` (`payment_method`),
  ADD KEY `idx_transaction_record_id` (`transaction_record_id`);

--
-- Indexes for table `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_status_translated`
--
ALTER TABLE `tbl_order_status_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_order_translated`
--
ALTER TABLE `tbl_order_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `tbl_page_translated`
--
ALTER TABLE `tbl_page_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_person`
--
ALTER TABLE `tbl_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_email` (`email`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_model` (`model`),
  ADD KEY `idx_price` (`price`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_quantity` (`quantity`),
  ADD KEY `idx_sku` (`sku`),
  ADD KEY `idx_stock_status` (`stock_status`),
  ADD KEY `idx_available_date` (`available_date`),
  ADD KEY `idx_manufacturer` (`manufacturer`),
  ADD KEY `idx_tax_class_id` (`tax_class_id`),
  ADD KEY `idx_location` (`location`),
  ADD KEY `idx_length` (`length`),
  ADD KEY `idx_width` (`width`),
  ADD KEY `idx_height` (`height`),
  ADD KEY `idx_length_class` (`length_class`),
  ADD KEY `idx_weight_class` (`weight_class`),
  ADD KEY `idx_buy_price` (`buy_price`),
  ADD KEY `idx_initial_quantity` (`initial_quantity`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_hits` (`hits`);

--
-- Indexes for table `tbl_product_attribute`
--
ALTER TABLE `tbl_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sort_order` (`sort_order`),
  ADD KEY `idx_attribute_group` (`attribute_group`);

--
-- Indexes for table `tbl_product_attribute_group`
--
ALTER TABLE `tbl_product_attribute_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sort_order` (`sort_order`);

--
-- Indexes for table `tbl_product_attribute_group_translated`
--
ALTER TABLE `tbl_product_attribute_group_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_attribute_mapping`
--
ALTER TABLE `tbl_product_attribute_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_attribute_id` (`attribute_id`),
  ADD KEY `idx_attribute_value` (`attribute_value`);

--
-- Indexes for table `tbl_product_attribute_translated`
--
ALTER TABLE `tbl_product_attribute_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_id` (`parent_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_data_category_id` (`data_category_id`);

--
-- Indexes for table `tbl_product_category_mapping`
--
ALTER TABLE `tbl_product_category_mapping`
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_data_category_id` (`data_category_id`);

--
-- Indexes for table `tbl_product_category_translated`
--
ALTER TABLE `tbl_product_category_translated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_id` (`id`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_group_id` (`group_id`),
  ADD KEY `idx_quantity` (`quantity`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_price` (`price`),
  ADD KEY `idx_start_datetime` (`start_datetime`),
  ADD KEY `idx_end_datetime` (`end_datetime`);

--
-- Indexes for table `tbl_product_download`
--
ALTER TABLE `tbl_product_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `tbl_product_download_mapping`
--
ALTER TABLE `tbl_product_download_mapping`
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_download_id` (`download_id`),
  ADD KEY `idx_download_option` (`download_option`);

--
-- Indexes for table `tbl_product_download_translated`
--
ALTER TABLE `tbl_product_download_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indexes for table `tbl_product_image_translated`
--
ALTER TABLE `tbl_product_image_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_caption` (`caption`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_product_option`
--
ALTER TABLE `tbl_product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `tbl_product_option_mapping`
--
ALTER TABLE `tbl_product_option_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_option_id` (`option_id`),
  ADD KEY `idx_required` (`required`);

--
-- Indexes for table `tbl_product_option_mapping_details`
--
ALTER TABLE `tbl_product_option_mapping_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mapping_id` (`mapping_id`),
  ADD KEY `idx_option_value_id` (`option_value_id`),
  ADD KEY `idx_quantity` (`quantity`),
  ADD KEY `idx_price_prefix` (`price_prefix`),
  ADD KEY `idx_price` (`price`),
  ADD KEY `idx_weight_prefix` (`weight_prefix`),
  ADD KEY `idx_weight` (`weight`);

--
-- Indexes for table `tbl_product_option_translated`
--
ALTER TABLE `tbl_product_option_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_display_name` (`display_name`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_option_value`
--
ALTER TABLE `tbl_product_option_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_option_id` (`option_id`);

--
-- Indexes for table `tbl_product_option_value_translated`
--
ALTER TABLE `tbl_product_option_value_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_value` (`value`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_product_rating`
--
ALTER TABLE `tbl_product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_rating` (`rating`);

--
-- Indexes for table `tbl_product_related_product_mapping`
--
ALTER TABLE `tbl_product_related_product_mapping`
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_related_product_id` (`related_product_id`);

--
-- Indexes for table `tbl_product_review`
--
ALTER TABLE `tbl_product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `tbl_product_review_translated`
--
ALTER TABLE `tbl_product_review_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_group_id` (`group_id`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_price` (`price`),
  ADD KEY `idx_start_datetime` (`start_datetime`),
  ADD KEY `idx_end_datetime` (`end_datetime`);

--
-- Indexes for table `tbl_product_tag_mapping`
--
ALTER TABLE `tbl_product_tag_mapping`
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_tag_id` (`tag_id`);

--
-- Indexes for table `tbl_product_tax_class`
--
ALTER TABLE `tbl_product_tax_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_tax_class_translated`
--
ALTER TABLE `tbl_product_tax_class_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_product_translated`
--
ALTER TABLE `tbl_product_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_sequence`
--
ALTER TABLE `tbl_sequence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_invoice_sequence_no` (`invoice_sequence_no`),
  ADD KEY `idx_customer_sequence_no` (`customer_sequence_no`),
  ADD KEY `idx_order_sequence_no` (`order_sequence_no`);

--
-- Indexes for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_expire` (`expire`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_country` (`country_id`),
  ADD KEY `idx_code` (`code`);

--
-- Indexes for table `tbl_state_translated`
--
ALTER TABLE `tbl_state_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_stock_status`
--
ALTER TABLE `tbl_stock_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stock_status_translated`
--
ALTER TABLE `tbl_stock_status_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_store`
--
ALTER TABLE `tbl_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_data_category_id` (`data_category_id`),
  ADD KEY `idx_theme` (`theme`);

--
-- Indexes for table `tbl_store_configuration`
--
ALTER TABLE `tbl_store_configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_store_code_key` (`store_id`,`code`,`key`),
  ADD KEY `idx_store_id` (`store_id`),
  ADD KEY `idx_category` (`category`),
  ADD KEY `idx_code` (`code`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `tbl_store_translated`
--
ALTER TABLE `tbl_store_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_frequency` (`frequency`);

--
-- Indexes for table `tbl_tag_translated`
--
ALTER TABLE `tbl_tag_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_tax_rule`
--
ALTER TABLE `tbl_tax_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_based_on` (`based_on`),
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `tbl_tax_rule_details`
--
ALTER TABLE `tbl_tax_rule_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_tax_class_id` (`product_tax_class_id`),
  ADD KEY `idx_customer_group_id` (`customer_group_id`),
  ADD KEY `idx_tax_rule_id` (`tax_rule_id`),
  ADD KEY `idx_tax_zone_id` (`tax_zone_id`);

--
-- Indexes for table `tbl_tax_rule_translated`
--
ALTER TABLE `tbl_tax_rule_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD UNIQUE KEY `idx_person_id` (`person_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_timezone` (`timezone`);

--
-- Indexes for table `tbl_weight_class`
--
ALTER TABLE `tbl_weight_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_unit` (`unit`);

--
-- Indexes for table `tbl_weight_class_translated`
--
ALTER TABLE `tbl_weight_class_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_country_id` (`country_id`),
  ADD KEY `idx_state_id` (`state_id`),
  ADD KEY `idx_zip` (`zip`),
  ADD KEY `idx_is_zip_range` (`is_zip_range`),
  ADD KEY `idx_from_zip` (`from_zip`),
  ADD KEY `idx_to_zip` (`to_zip`);

--
-- Indexes for table `tbl_zone_translated`
--
ALTER TABLE `tbl_zone_translated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_id` (`owner_id`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_auth_permission`
--
ALTER TABLE `tbl_auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_city_translated`
--
ALTER TABLE `tbl_city_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_configuration`
--
ALTER TABLE `tbl_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country_translated`
--
ALTER TABLE `tbl_country_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_currency_translated`
--
ALTER TABLE `tbl_currency_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer_activity`
--
ALTER TABLE `tbl_customer_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer_metadata`
--
ALTER TABLE `tbl_customer_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer_online`
--
ALTER TABLE `tbl_customer_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_data_category`
--
ALTER TABLE `tbl_data_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_data_category_translated`
--
ALTER TABLE `tbl_data_category_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_extension`
--
ALTER TABLE `tbl_extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_extension_translated`
--
ALTER TABLE `tbl_extension_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoice_translated`
--
ALTER TABLE `tbl_invoice_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_length_class`
--
ALTER TABLE `tbl_length_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_length_class_translated`
--
ALTER TABLE `tbl_length_class_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_newsletter_customers`
--
ALTER TABLE `tbl_newsletter_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_newsletter_translated`
--
ALTER TABLE `tbl_newsletter_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_notification_layout`
--
ALTER TABLE `tbl_notification_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification_layout_translated`
--
ALTER TABLE `tbl_notification_layout_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification_template`
--
ALTER TABLE `tbl_notification_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_notification_template_translated`
--
ALTER TABLE `tbl_notification_template_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_address_details`
--
ALTER TABLE `tbl_order_address_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_history_translated`
--
ALTER TABLE `tbl_order_history_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_payment_details`
--
ALTER TABLE `tbl_order_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_payment_details_translated`
--
ALTER TABLE `tbl_order_payment_details_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_payment_transaction_map`
--
ALTER TABLE `tbl_order_payment_transaction_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order_status_translated`
--
ALTER TABLE `tbl_order_status_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order_translated`
--
ALTER TABLE `tbl_order_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_page_translated`
--
ALTER TABLE `tbl_page_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_person`
--
ALTER TABLE `tbl_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_product_attribute`
--
ALTER TABLE `tbl_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_attribute_group`
--
ALTER TABLE `tbl_product_attribute_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_attribute_group_translated`
--
ALTER TABLE `tbl_product_attribute_group_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_attribute_mapping`
--
ALTER TABLE `tbl_product_attribute_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product_attribute_translated`
--
ALTER TABLE `tbl_product_attribute_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_category_translated`
--
ALTER TABLE `tbl_product_category_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_download`
--
ALTER TABLE `tbl_product_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_download_translated`
--
ALTER TABLE `tbl_product_download_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_image_translated`
--
ALTER TABLE `tbl_product_image_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_option`
--
ALTER TABLE `tbl_product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_option_mapping`
--
ALTER TABLE `tbl_product_option_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_option_mapping_details`
--
ALTER TABLE `tbl_product_option_mapping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product_option_translated`
--
ALTER TABLE `tbl_product_option_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_option_value`
--
ALTER TABLE `tbl_product_option_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_option_value_translated`
--
ALTER TABLE `tbl_product_option_value_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_rating`
--
ALTER TABLE `tbl_product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_review`
--
ALTER TABLE `tbl_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_review_translated`
--
ALTER TABLE `tbl_product_review_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_tax_class`
--
ALTER TABLE `tbl_product_tax_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product_tax_class_translated`
--
ALTER TABLE `tbl_product_tax_class_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product_translated`
--
ALTER TABLE `tbl_product_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_sequence`
--
ALTER TABLE `tbl_sequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_state_translated`
--
ALTER TABLE `tbl_state_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_stock_status`
--
ALTER TABLE `tbl_stock_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_stock_status_translated`
--
ALTER TABLE `tbl_stock_status_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_store`
--
ALTER TABLE `tbl_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_store_configuration`
--
ALTER TABLE `tbl_store_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_store_translated`
--
ALTER TABLE `tbl_store_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tag_translated`
--
ALTER TABLE `tbl_tag_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tax_rule`
--
ALTER TABLE `tbl_tax_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tax_rule_details`
--
ALTER TABLE `tbl_tax_rule_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tax_rule_translated`
--
ALTER TABLE `tbl_tax_rule_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_weight_class`
--
ALTER TABLE `tbl_weight_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_weight_class_translated`
--
ALTER TABLE `tbl_weight_class_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_zone_translated`
--
ALTER TABLE `tbl_zone_translated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_city_translated`
--
ALTER TABLE `tbl_city_translated`
  ADD CONSTRAINT `fk_tbl_city_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_country_translated`
--
ALTER TABLE `tbl_country_translated`
  ADD CONSTRAINT `fk_tbl_country_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_currency_translated`
--
ALTER TABLE `tbl_currency_translated`
  ADD CONSTRAINT `fk_tbl_currency_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_data_category_translated`
--
ALTER TABLE `tbl_data_category_translated`
  ADD CONSTRAINT `fk_tbl_data_category_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_data_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_extension_translated`
--
ALTER TABLE `tbl_extension_translated`
  ADD CONSTRAINT `fk_tbl_extension_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_extension` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD CONSTRAINT `fk_tbl_invoice_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_invoice_translated`
--
ALTER TABLE `tbl_invoice_translated`
  ADD CONSTRAINT `fk_tbl_invoice_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_length_class_translated`
--
ALTER TABLE `tbl_length_class_translated`
  ADD CONSTRAINT `fk_tbl_length_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_length_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_newsletter_translated`
--
ALTER TABLE `tbl_newsletter_translated`
  ADD CONSTRAINT `fk_tbl_newsletter_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_newsletter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_notification_layout_translated`
--
ALTER TABLE `tbl_notification_layout_translated`
  ADD CONSTRAINT `fk_tbl_notification_layout_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_notification_layout` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_notification_template_translated`
--
ALTER TABLE `tbl_notification_template_translated`
  ADD CONSTRAINT `fk_tbl_notification_template_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_notification_template` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_address_details`
--
ALTER TABLE `tbl_order_address_details`
  ADD CONSTRAINT `fk_tbl_order_address_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  ADD CONSTRAINT `fk_tbl_order_history_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_history_translated`
--
ALTER TABLE `tbl_order_history_translated`
  ADD CONSTRAINT `fk_tbl_order_history_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_payment_details`
--
ALTER TABLE `tbl_order_payment_details`
  ADD CONSTRAINT `fk_tbl_order_payment_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_payment_details_translated`
--
ALTER TABLE `tbl_order_payment_details_translated`
  ADD CONSTRAINT `fk_tbl_order_payment_details_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_payment_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_payment_transaction_map`
--
ALTER TABLE `tbl_order_payment_transaction_map`
  ADD CONSTRAINT `fk_tbl_order_payment_transaction_map_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD CONSTRAINT `fk_tbl_order_product_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_status_translated`
--
ALTER TABLE `tbl_order_status_translated`
  ADD CONSTRAINT `fk_tbl_order_status_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order_translated`
--
ALTER TABLE `tbl_order_translated`
  ADD CONSTRAINT `fk_tbl_order_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_page_translated`
--
ALTER TABLE `tbl_page_translated`
  ADD CONSTRAINT `fk_tbl_page_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_attribute_group_translated`
--
ALTER TABLE `tbl_product_attribute_group_translated`
  ADD CONSTRAINT `fk_tbl_product_attribute_group_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_attribute_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_attribute_mapping`
--
ALTER TABLE `tbl_product_attribute_mapping`
  ADD CONSTRAINT `fk_tbl_product_attribute_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_attribute_translated`
--
ALTER TABLE `tbl_product_attribute_translated`
  ADD CONSTRAINT `fk_tbl_product_attribute_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_category_mapping`
--
ALTER TABLE `tbl_product_category_mapping`
  ADD CONSTRAINT `fk_tbl_product_category_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_category_translated`
--
ALTER TABLE `tbl_product_category_translated`
  ADD CONSTRAINT `fk_tbl_product_category_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  ADD CONSTRAINT `fk_tbl_product_discount_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_download_mapping`
--
ALTER TABLE `tbl_product_download_mapping`
  ADD CONSTRAINT `fk_tbl_product_download_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_download_translated`
--
ALTER TABLE `tbl_product_download_translated`
  ADD CONSTRAINT `fk_tbl_product_download_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_download` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD CONSTRAINT `fk_tbl_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_image_translated`
--
ALTER TABLE `tbl_product_image_translated`
  ADD CONSTRAINT `fk_tbl_product_image_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_option_mapping`
--
ALTER TABLE `tbl_product_option_mapping`
  ADD CONSTRAINT `fk_tbl_product_option_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_option_translated`
--
ALTER TABLE `tbl_product_option_translated`
  ADD CONSTRAINT `fk_tbl_product_option_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_option_value_translated`
--
ALTER TABLE `tbl_product_option_value_translated`
  ADD CONSTRAINT `fk_tbl_product_option_value_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_option_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_rating`
--
ALTER TABLE `tbl_product_rating`
  ADD CONSTRAINT `fk_tbl_product_rating_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_related_product_mapping`
--
ALTER TABLE `tbl_product_related_product_mapping`
  ADD CONSTRAINT `fk_tbl_product_related_product_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_review`
--
ALTER TABLE `tbl_product_review`
  ADD CONSTRAINT `fk_tbl_product_review_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_review_translated`
--
ALTER TABLE `tbl_product_review_translated`
  ADD CONSTRAINT `fk_tbl_product_review_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  ADD CONSTRAINT `fk_tbl_product_special_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_tag_mapping`
--
ALTER TABLE `tbl_product_tag_mapping`
  ADD CONSTRAINT `fk_tbl_product_tag_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product_tax_class_translated`
--
ALTER TABLE `tbl_product_tax_class_translated`
  ADD CONSTRAINT `fk_tbl_product_tax_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_tax_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_translated`
--
ALTER TABLE `tbl_product_translated`
  ADD CONSTRAINT `fk_tbl_product_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_state_translated`
--
ALTER TABLE `tbl_state_translated`
  ADD CONSTRAINT `fk_tbl_state_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stock_status_translated`
--
ALTER TABLE `tbl_stock_status_translated`
  ADD CONSTRAINT `fk_tbl_stock_status_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_stock_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_store_translated`
--
ALTER TABLE `tbl_store_translated`
  ADD CONSTRAINT `fk_tbl_store_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tag_translated`
--
ALTER TABLE `tbl_tag_translated`
  ADD CONSTRAINT `fk_tbl_tag_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tax_rule_translated`
--
ALTER TABLE `tbl_tax_rule_translated`
  ADD CONSTRAINT `fk_tbl_tax_rule_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_tax_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_weight_class_translated`
--
ALTER TABLE `tbl_weight_class_translated`
  ADD CONSTRAINT `fk_tbl_weight_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_weight_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_zone_translated`
--
ALTER TABLE `tbl_zone_translated`
  ADD CONSTRAINT `fk_tbl_zone_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
