-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 11:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bill_payment_client`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$H5oSxdIu6goOeGvtlVBJY.Uq4xNWrS0ZT/BET/94tpEtLIf1JyqUa', 'cmRrIyHVt5PCqysw1IFCjViE6kpXVJBdHRLOMEQhJoD7hXz3wtNJcis6Ctuh', 'dX6Bg400esxrivQ_lVrXga:APA91bHn4gZnins1Kl6i-UcUEji28uC3KV3l5cKT7gb1tuBVBvCeNsaJF-xLlHj9Q_d4noNPK1RtIpYuiiVEo96G5Kr_3XPoSBV8C_ILoehBO0i5VR1sKey11XQGJFEcyElI5b2QeZFq', '2020-12-12 07:34:26', '2023-08-09 23:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_profiles`
--

CREATE TABLE `admin_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_profiles`
--

INSERT INTO `admin_profiles` (`id`, `admin_id`, `city`, `state`, `phone`, `address`, `profile_picture`, `driver`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'NY pd', 'NY pd', '123456789', 'R - 08, H - 41', 'adminProfile/admin.png', 'local', NULL, NULL, '2021-01-16 06:35:21', '2023-05-13 04:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `basic_controls`
--

CREATE TABLE `basic_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `primaryColor` varchar(255) DEFAULT NULL,
  `btnColor` varchar(50) DEFAULT NULL,
  `btnHoverColor` varchar(50) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `base_currency` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `paginate` varchar(255) DEFAULT NULL,
  `strong_password` tinyint(1) NOT NULL,
  `registration` tinyint(1) NOT NULL,
  `fraction_number` int(11) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `social_title` text DEFAULT NULL,
  `social_description` text DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `sender_email_name` varchar(255) DEFAULT NULL,
  `email_description` text DEFAULT NULL,
  `push_notification` tinyint(1) NOT NULL DEFAULT 0,
  `email_notification` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 0,
  `tawk_id` varchar(255) DEFAULT NULL,
  `tawk_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_messenger_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fb_page_id` varchar(255) DEFAULT NULL,
  `reCaptcha_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `reCaptcha_status_registration` tinyint(1) NOT NULL DEFAULT 0,
  `reCaptcha_status_admin_login` tinyint(1) NOT NULL DEFAULT 0,
  `manual_reCaptcha_status` tinyint(1) NOT NULL DEFAULT 0,
  `google_reCaptcha_status` tinyint(1) NOT NULL DEFAULT 0,
  `MEASUREMENT_ID` varchar(255) DEFAULT NULL,
  `analytic_status` tinyint(1) NOT NULL,
  `error_log` tinyint(1) NOT NULL DEFAULT 0,
  `is_active_cron_notification` tinyint(1) NOT NULL DEFAULT 1,
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_controls`
--

INSERT INTO `basic_controls` (`id`, `theme`, `site_title`, `primaryColor`, `btnColor`, `btnHoverColor`, `time_zone`, `base_currency`, `currency_symbol`, `paginate`, `strong_password`, `registration`, `fraction_number`, `meta_keywords`, `meta_description`, `social_title`, `social_description`, `sender_email`, `sender_email_name`, `email_description`, `push_notification`, `email_notification`, `email_verification`, `sms_notification`, `sms_verification`, `tawk_id`, `tawk_status`, `fb_messenger_status`, `fb_app_id`, `fb_page_id`, `reCaptcha_status_login`, `reCaptcha_status_registration`, `reCaptcha_status_admin_login`, `manual_reCaptcha_status`, `google_reCaptcha_status`, `MEASUREMENT_ID`, `analytic_status`, `error_log`, `is_active_cron_notification`, `force_ssl`, `created_at`, `updated_at`) VALUES
(1, 'basic', 'Bill Pay', '#875aff', '#875aff', '#875aff', 'UTC', 'USD', '$', '15', 0, 1, 2, 'Bill payment,Bill management,Payment solution,Finance management,Expense tracking,Automated payments,Monthly bills,Streamlined billing,Payment automation,Online bill payment,Billing system,Utility bills,Financial software,Convenient payments,Financial management,Online payment script,Subscription management,Payment processing,Efficient billing', 'Bill Pay- The Complete Bill Management Solution', 'Bill Pay', 'Bill Pay- The Complete Bill Management Solution', 'support@example.com', 'Pay Secure', '<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<meta name=\"viewport\" content=\"width=device-width\">\r\n<style type=\"text/css\">\r\n    @media only screen and (min-width: 620px) {\r\n        * [lang=x-wrapper] h1 {\r\n        }\r\n\r\n        * [lang=x-wrapper] h1 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        * [lang=x-wrapper] h2 {\r\n        }\r\n\r\n        * [lang=x-wrapper] h2 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        * [lang=x-wrapper] h3 {\r\n        }\r\n\r\n        * [lang=x-layout__inner] p,\r\n        * [lang=x-layout__inner] ol,\r\n        * [lang=x-layout__inner] ul {\r\n        }\r\n\r\n        * div [lang=x-size-8] {\r\n            font-size: 8px !important;\r\n            line-height: 14px !important\r\n        }\r\n\r\n        * div [lang=x-size-9] {\r\n            font-size: 9px !important;\r\n            line-height: 16px !important\r\n        }\r\n\r\n        * div [lang=x-size-10] {\r\n            font-size: 10px !important;\r\n            line-height: 18px !important\r\n        }\r\n\r\n        * div [lang=x-size-11] {\r\n            font-size: 11px !important;\r\n            line-height: 19px !important\r\n        }\r\n\r\n        * div [lang=x-size-12] {\r\n            font-size: 12px !important;\r\n            line-height: 19px !important\r\n        }\r\n\r\n        * div [lang=x-size-13] {\r\n            font-size: 13px !important;\r\n            line-height: 21px !important\r\n        }\r\n\r\n        * div [lang=x-size-14] {\r\n            font-size: 14px !important;\r\n            line-height: 21px !important\r\n        }\r\n\r\n        * div [lang=x-size-15] {\r\n            font-size: 15px !important;\r\n            line-height: 23px !important\r\n        }\r\n\r\n        * div [lang=x-size-16] {\r\n            font-size: 16px !important;\r\n            line-height: 24px !important\r\n        }\r\n\r\n        * div [lang=x-size-17] {\r\n            font-size: 17px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-18] {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-18] {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-20] {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        * div [lang=x-size-22] {\r\n            font-size: 22px !important;\r\n            line-height: 31px !important\r\n        }\r\n\r\n        * div [lang=x-size-24] {\r\n            font-size: 24px !important;\r\n            line-height: 32px !important\r\n        }\r\n\r\n        * div [lang=x-size-26] {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        * div [lang=x-size-28] {\r\n            font-size: 28px !important;\r\n            line-height: 36px !important\r\n        }\r\n\r\n        * div [lang=x-size-30] {\r\n            font-size: 30px !important;\r\n            line-height: 38px !important\r\n        }\r\n\r\n        * div [lang=x-size-32] {\r\n            font-size: 32px !important;\r\n            line-height: 40px !important\r\n        }\r\n\r\n        * div [lang=x-size-34] {\r\n            font-size: 34px !important;\r\n            line-height: 43px !important\r\n        }\r\n\r\n        * div [lang=x-size-36] {\r\n            font-size: 36px !important;\r\n            line-height: 43px !important\r\n        }\r\n\r\n        * div [lang=x-size-40] {\r\n            font-size: 40px !important;\r\n            line-height: 47px !important\r\n        }\r\n\r\n        * div [lang=x-size-44] {\r\n            font-size: 44px !important;\r\n            line-height: 50px !important\r\n        }\r\n\r\n        * div [lang=x-size-48] {\r\n            font-size: 48px !important;\r\n            line-height: 54px !important\r\n        }\r\n\r\n        * div [lang=x-size-56] {\r\n            font-size: 56px !important;\r\n            line-height: 60px !important\r\n        }\r\n\r\n        * div [lang=x-size-64] {\r\n            font-size: 64px !important;\r\n            line-height: 63px !important\r\n        }\r\n    }\r\n</style>\r\n<style type=\"text/css\">\r\n    body {\r\n        margin: 0;\r\n        padding: 0;\r\n    }\r\n\r\n    table {\r\n        border-collapse: collapse;\r\n        table-layout: fixed;\r\n    }\r\n\r\n    * {\r\n        line-height: inherit;\r\n    }\r\n\r\n    [x-apple-data-detectors],\r\n    [href^=\"tel\"],\r\n    [href^=\"sms\"] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n    }\r\n\r\n    .wrapper .footer__share-button a:hover,\r\n    .wrapper .footer__share-button a:focus {\r\n        color: #ffffff !important;\r\n    }\r\n\r\n    .btn a:hover,\r\n    .btn a:focus,\r\n    .footer__share-button a:hover,\r\n    .footer__share-button a:focus,\r\n    .email-footer__links a:hover,\r\n    .email-footer__links a:focus {\r\n        opacity: 0.8;\r\n    }\r\n\r\n    .preheader,\r\n    .header,\r\n    .layout,\r\n    .column {\r\n        transition: width 0.25s ease-in-out, max-width 0.25s ease-in-out;\r\n    }\r\n\r\n    .layout,\r\n    .header {\r\n        max-width: 400px !important;\r\n        -fallback-width: 95% !important;\r\n        width: calc(100% - 20px) !important;\r\n    }\r\n\r\n    div.preheader {\r\n        max-width: 360px !important;\r\n        -fallback-width: 90% !important;\r\n        width: calc(100% - 60px) !important;\r\n    }\r\n\r\n    .snippet,\r\n    .webversion {\r\n        Float: none !important;\r\n    }\r\n\r\n    .column {\r\n        max-width: 400px !important;\r\n        width: 100% !important;\r\n    }\r\n\r\n    .fixed-width.has-border {\r\n        max-width: 402px !important;\r\n    }\r\n\r\n    .fixed-width.has-border .layout__inner {\r\n        box-sizing: border-box;\r\n    }\r\n\r\n    .snippet,\r\n    .webversion {\r\n        width: 50% !important;\r\n    }\r\n\r\n    .ie .btn {\r\n        width: 100%;\r\n    }\r\n\r\n    .ie .column,\r\n    [owa] .column,\r\n    .ie .gutter,\r\n    [owa] .gutter {\r\n        display: table-cell;\r\n        float: none !important;\r\n        vertical-align: top;\r\n    }\r\n\r\n    .ie div.preheader,\r\n    [owa] div.preheader,\r\n    .ie .email-footer,\r\n    [owa] .email-footer {\r\n        max-width: 560px !important;\r\n        width: 560px !important;\r\n    }\r\n\r\n    .ie .snippet,\r\n    [owa] .snippet,\r\n    .ie .webversion,\r\n    [owa] .webversion {\r\n        width: 280px !important;\r\n    }\r\n\r\n    .ie .header,\r\n    [owa] .header,\r\n    .ie .layout,\r\n    [owa] .layout,\r\n    .ie .one-col .column,\r\n    [owa] .one-col .column {\r\n        max-width: 600px !important;\r\n        width: 600px !important;\r\n    }\r\n\r\n    .ie .fixed-width.has-border,\r\n    [owa] .fixed-width.has-border,\r\n    .ie .has-gutter.has-border,\r\n    [owa] .has-gutter.has-border {\r\n        max-width: 602px !important;\r\n        width: 602px !important;\r\n    }\r\n\r\n    .ie .two-col .column,\r\n    [owa] .two-col .column {\r\n        width: 300px !important;\r\n    }\r\n\r\n    .ie .three-col .column,\r\n    [owa] .three-col .column,\r\n    .ie .narrow,\r\n    [owa] .narrow {\r\n        width: 200px !important;\r\n    }\r\n\r\n    .ie .wide,\r\n    [owa] .wide {\r\n        width: 400px !important;\r\n    }\r\n\r\n    .ie .two-col.has-gutter .column,\r\n    [owa] .two-col.x_has-gutter .column {\r\n        width: 290px !important;\r\n    }\r\n\r\n    .ie .three-col.has-gutter .column,\r\n    [owa] .three-col.x_has-gutter .column,\r\n    .ie .has-gutter .narrow,\r\n    [owa] .has-gutter .narrow {\r\n        width: 188px !important;\r\n    }\r\n\r\n    .ie .has-gutter .wide,\r\n    [owa] .has-gutter .wide {\r\n        width: 394px !important;\r\n    }\r\n\r\n    .ie .two-col.has-gutter.has-border .column,\r\n    [owa] .two-col.x_has-gutter.x_has-border .column {\r\n        width: 292px !important;\r\n    }\r\n\r\n    .ie .three-col.has-gutter.has-border .column,\r\n    [owa] .three-col.x_has-gutter.x_has-border .column,\r\n    .ie .has-gutter.has-border .narrow,\r\n    [owa] .has-gutter.x_has-border .narrow {\r\n        width: 190px !important;\r\n    }\r\n\r\n    .ie .has-gutter.has-border .wide,\r\n    [owa] .has-gutter.x_has-border .wide {\r\n        width: 396px !important;\r\n    }\r\n\r\n    .ie .fixed-width .layout__inner {\r\n        border-left: 0 none white !important;\r\n        border-right: 0 none white !important;\r\n    }\r\n\r\n    .ie .layout__edges {\r\n        display: none;\r\n    }\r\n\r\n    .mso .layout__edges {\r\n        font-size: 0;\r\n    }\r\n\r\n    .layout-fixed-width,\r\n    .mso .layout-full-width {\r\n        background-color: #ffffff;\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n\r\n        .column,\r\n        .gutter {\r\n            display: table-cell;\r\n            Float: none !important;\r\n            vertical-align: top;\r\n        }\r\n\r\n        div.preheader,\r\n        .email-footer {\r\n            max-width: 560px !important;\r\n            width: 560px !important;\r\n        }\r\n\r\n        .snippet,\r\n        .webversion {\r\n            width: 280px !important;\r\n        }\r\n\r\n        .header,\r\n        .layout,\r\n        .one-col .column {\r\n            max-width: 600px !important;\r\n            width: 600px !important;\r\n        }\r\n\r\n        .fixed-width.has-border,\r\n        .fixed-width.ecxhas-border,\r\n        .has-gutter.has-border,\r\n        .has-gutter.ecxhas-border {\r\n            max-width: 602px !important;\r\n            width: 602px !important;\r\n        }\r\n\r\n        .two-col .column {\r\n            width: 300px !important;\r\n        }\r\n\r\n        .three-col .column,\r\n        .column.narrow {\r\n            width: 200px !important;\r\n        }\r\n\r\n        .column.wide {\r\n            width: 400px !important;\r\n        }\r\n\r\n        .two-col.has-gutter .column,\r\n        .two-col.ecxhas-gutter .column {\r\n            width: 290px !important;\r\n        }\r\n\r\n        .three-col.has-gutter .column,\r\n        .three-col.ecxhas-gutter .column,\r\n        .has-gutter .narrow {\r\n            width: 188px !important;\r\n        }\r\n\r\n        .has-gutter .wide {\r\n            width: 394px !important;\r\n        }\r\n\r\n        .two-col.has-gutter.has-border .column,\r\n        .two-col.ecxhas-gutter.ecxhas-border .column {\r\n            width: 292px !important;\r\n        }\r\n\r\n        .three-col.has-gutter.has-border .column,\r\n        .three-col.ecxhas-gutter.ecxhas-border .column,\r\n        .has-gutter.has-border .narrow,\r\n        .has-gutter.ecxhas-border .narrow {\r\n            width: 190px !important;\r\n        }\r\n\r\n        .has-gutter.has-border .wide,\r\n        .has-gutter.ecxhas-border .wide {\r\n            width: 396px !important;\r\n        }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (min-device-pixel-ratio: 2), only screen and (min-resolution: 192dpi), only screen and (min-resolution: 2dppx) {\r\n        .fblike {\r\n            background-image: url(https://i3.createsend1.com/static/eb/customise/13-the-blueprint-3/images/fblike@2x.png) !important;\r\n        }\r\n\r\n        .tweet {\r\n            background-image: url(https://i4.createsend1.com/static/eb/customise/13-the-blueprint-3/images/tweet@2x.png) !important;\r\n        }\r\n\r\n        .linkedinshare {\r\n            background-image: url(https://i6.createsend1.com/static/eb/customise/13-the-blueprint-3/images/lishare@2x.png) !important;\r\n        }\r\n\r\n        .forwardtoafriend {\r\n            background-image: url(https://i5.createsend1.com/static/eb/customise/13-the-blueprint-3/images/forward@2x.png) !important;\r\n        }\r\n    }\r\n\r\n    @media (max-width: 321px) {\r\n        .fixed-width.has-border .layout__inner {\r\n            border-width: 1px 0 !important;\r\n        }\r\n\r\n        .layout,\r\n        .column {\r\n            min-width: 320px !important;\r\n            width: 320px !important;\r\n        }\r\n\r\n        .border {\r\n            display: none;\r\n        }\r\n    }\r\n\r\n    .mso div {\r\n        border: 0 none white !important;\r\n    }\r\n\r\n    .mso .w560 .divider {\r\n        margin-left: 260px !important;\r\n        margin-right: 260px !important;\r\n    }\r\n\r\n    .mso .w360 .divider {\r\n        margin-left: 160px !important;\r\n        margin-right: 160px !important;\r\n    }\r\n\r\n    .mso .w260 .divider {\r\n        margin-left: 110px !important;\r\n        margin-right: 110px !important;\r\n    }\r\n\r\n    .mso .w160 .divider {\r\n        margin-left: 60px !important;\r\n        margin-right: 60px !important;\r\n    }\r\n\r\n    .mso .w354 .divider {\r\n        margin-left: 157px !important;\r\n        margin-right: 157px !important;\r\n    }\r\n\r\n    .mso .w250 .divider {\r\n        margin-left: 105px !important;\r\n        margin-right: 105px !important;\r\n    }\r\n\r\n    .mso .w148 .divider {\r\n        margin-left: 54px !important;\r\n        margin-right: 54px !important;\r\n    }\r\n\r\n    .mso .font-avenir,\r\n    .mso .font-cabin,\r\n    .mso .font-open-sans,\r\n    .mso .font-ubuntu {\r\n        font-family: sans-serif !important;\r\n    }\r\n\r\n    .mso .font-bitter,\r\n    .mso .font-merriweather,\r\n    .mso .font-pt-serif {\r\n        font-family: Georgia, serif !important;\r\n    }\r\n\r\n    .mso .font-lato,\r\n    .mso .font-roboto {\r\n        font-family: Tahoma, sans-serif !important;\r\n    }\r\n\r\n    .mso .font-pt-sans {\r\n        font-family: \"Trebuchet MS\", sans-serif !important;\r\n    }\r\n\r\n    .mso .footer__share-button p {\r\n        margin: 0;\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n        .wrapper .size-8 {\r\n            font-size: 8px !important;\r\n            line-height: 14px !important;\r\n        }\r\n\r\n        .wrapper .size-9 {\r\n            font-size: 9px !important;\r\n            line-height: 16px !important;\r\n        }\r\n\r\n        .wrapper .size-10 {\r\n            font-size: 10px !important;\r\n            line-height: 18px !important;\r\n        }\r\n\r\n        .wrapper .size-11 {\r\n            font-size: 11px !important;\r\n            line-height: 19px !important;\r\n        }\r\n\r\n        .wrapper .size-12 {\r\n            font-size: 12px !important;\r\n            line-height: 19px !important;\r\n        }\r\n\r\n        .wrapper .size-13 {\r\n            font-size: 13px !important;\r\n            line-height: 21px !important;\r\n        }\r\n\r\n        .wrapper .size-14 {\r\n            font-size: 14px !important;\r\n            line-height: 21px !important;\r\n        }\r\n\r\n        .wrapper .size-15 {\r\n            font-size: 15px !important;\r\n            line-height: 23px !important;\r\n        }\r\n\r\n        .wrapper .size-16 {\r\n            font-size: 16px !important;\r\n            line-height: 24px !important;\r\n        }\r\n\r\n        .wrapper .size-17 {\r\n            font-size: 17px !important;\r\n            line-height: 26px !important;\r\n        }\r\n\r\n        .wrapper .size-18 {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important;\r\n        }\r\n\r\n        .wrapper .size-20 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important;\r\n        }\r\n\r\n        .wrapper .size-22 {\r\n            font-size: 22px !important;\r\n            line-height: 31px !important;\r\n        }\r\n\r\n        .wrapper .size-24 {\r\n            font-size: 24px !important;\r\n            line-height: 32px !important;\r\n        }\r\n\r\n        .wrapper .size-26 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important;\r\n        }\r\n\r\n        .wrapper .size-28 {\r\n            font-size: 28px !important;\r\n            line-height: 36px !important;\r\n        }\r\n\r\n        .wrapper .size-30 {\r\n            font-size: 30px !important;\r\n            line-height: 38px !important;\r\n        }\r\n\r\n        .wrapper .size-32 {\r\n            font-size: 32px !important;\r\n            line-height: 40px !important;\r\n        }\r\n\r\n        .wrapper .size-34 {\r\n            font-size: 34px !important;\r\n            line-height: 43px !important;\r\n        }\r\n\r\n        .wrapper .size-36 {\r\n            font-size: 36px !important;\r\n            line-height: 43px !important;\r\n        }\r\n\r\n        .wrapper .size-40 {\r\n            font-size: 40px !important;\r\n            line-height: 47px !important;\r\n        }\r\n\r\n        .wrapper .size-44 {\r\n            font-size: 44px !important;\r\n            line-height: 50px !important;\r\n        }\r\n\r\n        .wrapper .size-48 {\r\n            font-size: 48px !important;\r\n            line-height: 54px !important;\r\n        }\r\n\r\n        .wrapper .size-56 {\r\n            font-size: 56px !important;\r\n            line-height: 60px !important;\r\n        }\r\n\r\n        .wrapper .size-64 {\r\n            font-size: 64px !important;\r\n            line-height: 63px !important;\r\n        }\r\n    }\r\n\r\n    .mso .size-8,\r\n    .ie .size-8 {\r\n        font-size: 8px !important;\r\n        line-height: 14px !important;\r\n    }\r\n\r\n    .mso .size-9,\r\n    .ie .size-9 {\r\n        font-size: 9px !important;\r\n        line-height: 16px !important;\r\n    }\r\n\r\n    .mso .size-10,\r\n    .ie .size-10 {\r\n        font-size: 10px !important;\r\n        line-height: 18px !important;\r\n    }\r\n\r\n    .mso .size-11,\r\n    .ie .size-11 {\r\n        font-size: 11px !important;\r\n        line-height: 19px !important;\r\n    }\r\n\r\n    .mso .size-12,\r\n    .ie .size-12 {\r\n        font-size: 12px !important;\r\n        line-height: 19px !important;\r\n    }\r\n\r\n    .mso .size-13,\r\n    .ie .size-13 {\r\n        font-size: 13px !important;\r\n        line-height: 21px !important;\r\n    }\r\n\r\n    .mso .size-14,\r\n    .ie .size-14 {\r\n        font-size: 14px !important;\r\n        line-height: 21px !important;\r\n    }\r\n\r\n    .mso .size-15,\r\n    .ie .size-15 {\r\n        font-size: 15px !important;\r\n        line-height: 23px !important;\r\n    }\r\n\r\n    .mso .size-16,\r\n    .ie .size-16 {\r\n        font-size: 16px !important;\r\n        line-height: 24px !important;\r\n    }\r\n\r\n    .mso .size-17,\r\n    .ie .size-17 {\r\n        font-size: 17px !important;\r\n        line-height: 26px !important;\r\n    }\r\n\r\n    .mso .size-18,\r\n    .ie .size-18 {\r\n        font-size: 18px !important;\r\n        line-height: 26px !important;\r\n    }\r\n\r\n    .mso .size-20,\r\n    .ie .size-20 {\r\n        font-size: 20px !important;\r\n        line-height: 28px !important;\r\n    }\r\n\r\n    .mso .size-22,\r\n    .ie .size-22 {\r\n        font-size: 22px !important;\r\n        line-height: 31px !important;\r\n    }\r\n\r\n    .mso .size-24,\r\n    .ie .size-24 {\r\n        font-size: 24px !important;\r\n        line-height: 32px !important;\r\n    }\r\n\r\n    .mso .size-26,\r\n    .ie .size-26 {\r\n        font-size: 26px !important;\r\n        line-height: 34px !important;\r\n    }\r\n\r\n    .mso .size-28,\r\n    .ie .size-28 {\r\n        font-size: 28px !important;\r\n        line-height: 36px !important;\r\n    }\r\n\r\n    .mso .size-30,\r\n    .ie .size-30 {\r\n        font-size: 30px !important;\r\n        line-height: 38px !important;\r\n    }\r\n\r\n    .mso .size-32,\r\n    .ie .size-32 {\r\n        font-size: 32px !important;\r\n        line-height: 40px !important;\r\n    }\r\n\r\n    .mso .size-34,\r\n    .ie .size-34 {\r\n        font-size: 34px !important;\r\n        line-height: 43px !important;\r\n    }\r\n\r\n    .mso .size-36,\r\n    .ie .size-36 {\r\n        font-size: 36px !important;\r\n        line-height: 43px !important;\r\n    }\r\n\r\n    .mso .size-40,\r\n    .ie .size-40 {\r\n        font-size: 40px !important;\r\n        line-height: 47px !important;\r\n    }\r\n\r\n    .mso .size-44,\r\n    .ie .size-44 {\r\n        font-size: 44px !important;\r\n        line-height: 50px !important;\r\n    }\r\n\r\n    .mso .size-48,\r\n    .ie .size-48 {\r\n        font-size: 48px !important;\r\n        line-height: 54px !important;\r\n    }\r\n\r\n    .mso .size-56,\r\n    .ie .size-56 {\r\n        font-size: 56px !important;\r\n        line-height: 60px !important;\r\n    }\r\n\r\n    .mso .size-64,\r\n    .ie .size-64 {\r\n        font-size: 64px !important;\r\n        line-height: 63px !important;\r\n    }\r\n\r\n    .footer__share-button p {\r\n        margin: 0;\r\n    }\r\n</style>\r\n\r\n<title></title>\r\n<!--[if !mso]><!-->\r\n<style type=\"text/css\">\r\n    @import url(https://fonts.googleapis.com/css?family=Bitter:400,700,400italic|Cabin:400,700,400italic,700italic|Open+Sans:400italic,700italic,700,400);\r\n</style>\r\n<link href=\"https://fonts.googleapis.com/css?family=Bitter:400,700,400italic|Cabin:400,700,400italic,700italic|Open+Sans:400italic,700italic,700,400\" rel=\"stylesheet\" type=\"text/css\">\r\n<!--<![endif]-->\r\n<style type=\"text/css\">\r\n    body {\r\n        background-color: #f5f7fa\r\n    }\r\n\r\n    .mso h1 {\r\n    }\r\n\r\n    .mso h1 {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso h2 {\r\n    }\r\n\r\n    .mso h3 {\r\n    }\r\n\r\n    .mso .column,\r\n    .mso .column__background td {\r\n    }\r\n\r\n    .mso .column,\r\n    .mso .column__background td {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .btn a {\r\n    }\r\n\r\n    .mso .btn a {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .webversion,\r\n    .mso .snippet,\r\n    .mso .layout-email-footer td,\r\n    .mso .footer__share-button p {\r\n    }\r\n\r\n    .mso .webversion,\r\n    .mso .snippet,\r\n    .mso .layout-email-footer td,\r\n    .mso .footer__share-button p {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .logo {\r\n    }\r\n\r\n    .mso .logo {\r\n        font-family: Tahoma, sans-serif !important\r\n    }\r\n\r\n    .logo a:hover,\r\n    .logo a:focus {\r\n        color: #859bb1 !important\r\n    }\r\n\r\n    .mso .layout-has-border {\r\n        border-top: 1px solid #b1c1d8;\r\n        border-bottom: 1px solid #b1c1d8\r\n    }\r\n\r\n    .mso .layout-has-bottom-border {\r\n        border-bottom: 1px solid #b1c1d8\r\n    }\r\n\r\n    .mso .border,\r\n    .ie .border {\r\n        background-color: #b1c1d8\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n        .wrapper h1 {\r\n        }\r\n\r\n        .wrapper h1 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        .wrapper h2 {\r\n        }\r\n\r\n        .wrapper h2 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        .wrapper h3 {\r\n        }\r\n\r\n        .column p,\r\n        .column ol,\r\n        .column ul {\r\n        }\r\n    }\r\n\r\n    .mso h1,\r\n    .ie h1 {\r\n    }\r\n\r\n    .mso h1,\r\n    .ie h1 {\r\n        font-size: 26px !important;\r\n        line-height: 34px !important\r\n    }\r\n\r\n    .mso h2,\r\n    .ie h2 {\r\n    }\r\n\r\n    .mso h2,\r\n    .ie h2 {\r\n        font-size: 20px !important;\r\n        line-height: 28px !important\r\n    }\r\n\r\n    .mso h3,\r\n    .ie h3 {\r\n    }\r\n\r\n    .mso .layout__inner p,\r\n    .ie .layout__inner p,\r\n    .mso .layout__inner ol,\r\n    .ie .layout__inner ol,\r\n    .mso .layout__inner ul,\r\n    .ie .layout__inner ul {\r\n    }\r\n</style>\r\n<meta name=\"robots\" content=\"noindex,nofollow\">\r\n\r\n<meta property=\"og:title\" content=\"Just One More Step\">\r\n\r\n<link href=\"https://css.createsend1.com/css/social.min.css?h=0ED47CE120160920\" media=\"screen,projection\" rel=\"stylesheet\" type=\"text/css\">\r\n\r\n\r\n<div class=\"wrapper\" style=\"min-width: 320px;background-color: #f5f7fa;\" lang=\"x-wrapper\">\r\n    <div class=\"preheader\" style=\"margin: 0 auto;max-width: 560px;min-width: 280px; width: 280px;\">\r\n        <div style=\"border-collapse: collapse;display: table;width: 100%;\">\r\n            <div class=\"snippet\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;padding: 10px 0 5px 0;color: #b9b9b9;\">\r\n            </div>\r\n            <div class=\"webversion\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;padding: 10px 0 5px 0;text-align: right;color: #b9b9b9;\">\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"layout one-col fixed-width\" style=\"margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;\">\r\n            <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #c4e5dc;\" lang=\"x-layout__inner\">\r\n                <div class=\"column\" style=\"text-align: left;color: #60666d;font-size: 14px;line-height: 21px;max-width:600px;min-width:320px;\">\r\n                    <div style=\"margin-left: 20px;margin-right: 20px;margin-top: 24px;margin-bottom: 24px;\">\r\n                        <h1 style=\"margin-top: 0;margin-bottom: 0;font-style: normal;font-weight: normal;color: #44a8c7;font-size: 36px;line-height: 43px;font-family: bitter,georgia,serif;text-align: center;\">\r\n                            <img style=\"width: 200px;\" src=\"data:image/png;base64,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\" data-filename=\"imageedit_76_3542310111.png\"></h1>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"layout one-col fixed-width\" style=\"margin: 0 auto;max-width: 600px;min-width: 320px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;\">\r\n                <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #ffffff;\" lang=\"x-layout__inner\">\r\n                    <div class=\"column\" style=\"text-align: left; background: rgb(237, 241, 235); line-height: 21px; max-width: 600px; min-width: 320px; width: 320px;\">\r\n\r\n                        <div style=\"color: rgb(96, 102, 109); font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n                            <div style=\"line-height:10px;font-size:1px\">&nbsp;</div>\r\n                        </div>\r\n\r\n                        <div style=\"margin-left: 20px; margin-right: 20px;\">\r\n\r\n                            <p style=\"color: rgb(96, 102, 109); font-size: 14px; margin-top: 16px; margin-bottom: 0px;\"><strong>Hello [[name]],</strong></p>\r\n                            <p style=\"color: rgb(96, 102, 109); font-size: 14px; margin-top: 20px; margin-bottom: 20px;\"><strong>[[message]]</strong></p>\r\n                            <p style=\"margin-top: 20px; margin-bottom: 20px;\"><strong style=\"color: rgb(96, 102, 109); font-size: 14px;\">Sincerely,<br>Team&nbsp;</strong><font color=\"#60666d\"><b>Pay Secure</b></font></p>\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #2c3262; margin-bottom: 20px\" lang=\"x-layout__inner\">\r\n                <div class=\"column\" style=\"text-align: left;color: #60666d;font-size: 14px;line-height: 21px;max-width:600px;min-width:320px;\">\r\n                    <div style=\"margin-top: 5px;margin-bottom: 5px;\">\r\n                        <p style=\"margin-top: 0;margin-bottom: 0;font-style: normal;font-weight: normal;color: #ffffff;font-size: 16px;line-height: 35px;font-family: bitter,georgia,serif;text-align: center;\">\r\n                            2022 ©  All Right Reserved</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n\r\n\r\n        <div style=\"border-collapse: collapse;display: table;width: 100%;\">\r\n            <div class=\"snippet\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;padding: 10px 0 5px 0;color: #b9b9b9;\">\r\n            </div>\r\n            <div class=\"webversion\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;padding: 10px 0 5px 0;text-align: right;color: #b9b9b9;\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 0, 0, 1, 0, 0, '58dd135ef7bbaa72709c3470/default', 0, 0, '1983831301869331', '1983831301869331', 1, 0, 1, 1, 0, 'G-TFQZ8YZ468', 0, 0, 0, 0, '2021-03-15 00:26:24', '2023-11-07 05:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `bill_methods`
--

CREATE TABLE `bill_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `methodName` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL COMMENT 'api parameters',
  `extra_parameters` text DEFAULT NULL,
  `inputForm` text DEFAULT NULL,
  `convert_rate` text DEFAULT NULL COMMENT 'convert through base currency',
  `is_active` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `logo` text DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `extra_credential` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_methods`
--

INSERT INTO `bill_methods` (`id`, `methodName`, `code`, `description`, `parameters`, `extra_parameters`, `inputForm`, `convert_rate`, `is_active`, `logo`, `driver`, `extra_credential`, `created_at`, `updated_at`) VALUES
(1, 'Flutterwave', 'flutterwave', 'Flutterwave\'s bill payment system offers seamless and secure transactions for settling bills and invoices. Users can conveniently make payments for utilities, services, and more, using a variety of payment methods.', '{\"Public_Key\":\"\",\"Secret_Key\":\"\",\"Encryption_Key\":\"\"}', NULL, '{\"customer\":{\"name\":\"customer\",\"label\":\"Customer\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"NGN\":\"799\",\"ZMW\":\"22.46\",\"KES\":\"151.30\",\"GHS\":\"11.32\"}', 0, 'billPaymentMethod/4XfppIa8H1aGetIJb16HLSoMCuEk9f7bDRfnQcjR.jpg', 'local', NULL, NULL, '2023-11-07 07:02:31'),
(3, 'Bloc', 'bloc', 'Bloc bill payment system offers seamless and secure transactions for settling bills and invoices. Users can conveniently make payments for utilities, services, and more, using a variety of payment methods.', '{\"Public_Key\":\"\",\"Secret_Key\":\"\"}', '{\"webhook\":\"webhook\"}', '{\"customer\":{\"name\":\"customer\",\"label\":\"Customer\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"NGN\":\"233\"}', 0, 'billPaymentMethod/PmhuFuj7US4oUIFxudZBFTtevefVdD7wIkp5UKPs.png', 'local', NULL, NULL, '2023-09-14 05:11:55'),
(4, 'Tpaga', 'tpaga', 'Unit bill payment system offers seamless and secure transactions for settling bills and invoices. Users can conveniently make payments for utilities, services, and more, using a variety of payment methods.', '{\"Api_Key\":\"\"}', '', '{\"customer\":{\"name\":\"customer\",\"label\":\"Customer\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"COP\":\"3990\"}', 0, 'billPaymentMethod/jru2ih6m3Wv0a2OckvhwiLgezE0SbKbvXDT6oQj0.png', 'local', NULL, NULL, '2023-09-23 04:35:09'),
(5, 'Reloadly', 'reloadly', 'Unit bill payment system offers seamless and secure transactions for settling bills and invoices. Users can conveniently make payments for utilities, services, and more, using a variety of payment methods.', '{\"Client_Id\":\"\",\"Client_Secret\":\"\"}', '', '{\"customer\":{\"name\":\"customer\",\"label\":\"Customer\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"NGN\":\"779.90\",\"UGX\":\"108.05\",\"XOF\":\"614\",\"BDT\":\"110.16\",\"INR\":\"83.27\",\"COP\":\"3989\",\"EUR\":\"0.94\",\"KES\":\"151.30\",\"ILS\":\"3.86\",\"KZT\":\"465.24\",\"AFN\":\"73.40\",\"CDF\":\"2616\",\"0\":\"1\",\"SLL\":\"19750\",\"USD\":\"1\",\"XAF\":\"614\",\"MGA\":\"4471.97\",\"MWK\":\"1113.08\",\"NIO\":\"36.57\",\"LKR\":\"327.19\",\"TZS\":\"2498.00\",\"ZMW\":\"22.46\",\"GHS\":\"11.92\",\"RWF\":\"1227.06\",\"THB\":\"35.61\",\"ALL\":\"98.25\",\"LBP\":\"15018.58\",\"MYR\":\"4.67\",\"DOP\":\"56.82\",\"MXN\":\"17.54\",\"GBP\":\"0.81\",\"IQD\":\"1308.97\",\"TJS\":\"2498\",\"AZN\":\"170\",\"BHD\":\"0.38\",\"KGS\":\"89.32\",\"UZS\":\"12270.59\",\"CAD\":\"1.37\",\"BWP\":\"13.50\",\"PEN\":\"3.96\",\"TTD\":\"6.78\",\"ZAR\":\"18.98\",\"KHR\":\"4124.52\",\"GTQ\":\"7.82\",\"CNY\":\"7.28\",\"MRO\":\"39.25\",\"ARS\":\"350.03\",\"BRL\":\"4.86\",\"DZD\":\"134.65\",\"CRC\":\"533.70\",\"HNL\":\"24.68\",\"PAB\":\"1\",\"KMF\":\"1.37\",\"CUP\":\"23.98\",\"CVE\":\"103.22\",\"XCD\":\"2.70\",\"BBD\":\"2.02\",\"FJD\":\"2.27\",\"GYD\":\"209.06\",\"HTG\":\"138.20\",\"JMD\":\"155.92\",\"WST\":\"2.52\",\"SRD\":\"38.13\"}', 1, 'billPaymentMethod/iFPxNxgpQpBHivubDVoJGHzyeCIDDecwFMkKgxbg.png', 'local', NULL, NULL, '2023-11-07 07:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `bill_pays`
--

CREATE TABLE `bill_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL COMMENT 'payment gateway id',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `customer` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0 COMMENT 'amount for api pay',
  `charge` double NOT NULL DEFAULT 0,
  `payable_amount` double DEFAULT 0,
  `pay_amount_in_base` double NOT NULL DEFAULT 0 COMMENT 'payable amount in base currency for return user',
  `currency` varchar(10) DEFAULT NULL,
  `exchange_rate` double NOT NULL DEFAULT 0 COMMENT 'in service currency',
  `utr` text DEFAULT NULL,
  `status` tinyint(6) NOT NULL COMMENT '0=>generate,1=>pending,2=>payment_completed,3=>bill_complete,4=>bill_return,5=>processing',
  `amount_id` double DEFAULT NULL COMMENT 'reloady fixed amount for need',
  `last_api_error` text DEFAULT NULL,
  `reference_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_services`
--

CREATE TABLE `bill_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_method_id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `label_name` varchar(191) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `percent_charge` double NOT NULL DEFAULT 0,
  `fixed_charge` double NOT NULL DEFAULT 0,
  `min_amount` double DEFAULT 0,
  `max_amount` double DEFAULT 0,
  `currency` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>disable,1=>enable',
  `extra_response` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(96, 'feature', '2023-07-20 01:48:58', '2023-07-20 01:48:58'),
(97, 'feature', '2023-07-20 01:49:49', '2023-07-20 01:49:49'),
(98, 'feature', '2023-07-20 01:50:21', '2023-07-20 01:50:21'),
(99, 'feature', '2023-07-20 01:50:55', '2023-07-20 01:50:55'),
(100, 'feature', '2023-07-20 01:51:37', '2023-07-20 01:51:37'),
(101, 'feature', '2023-07-20 01:52:06', '2023-07-20 01:52:06'),
(102, 'how-it-work', '2023-07-20 01:52:46', '2023-07-20 01:52:46'),
(103, 'how-it-work', '2023-07-20 01:53:20', '2023-07-20 01:53:20'),
(104, 'how-it-work', '2023-07-20 01:54:07', '2023-07-20 01:54:07'),
(105, 'how-it-work', '2023-07-20 01:54:38', '2023-07-20 01:54:38'),
(106, 'how-it-work', '2023-07-20 01:55:10', '2023-07-20 01:55:10'),
(107, 'how-it-work', '2023-07-20 01:55:45', '2023-07-20 01:55:45'),
(108, 'why-choose-us', '2023-07-20 01:56:12', '2023-07-20 01:56:12'),
(109, 'why-choose-us', '2023-07-20 01:56:28', '2023-07-20 01:56:28'),
(110, 'why-choose-us', '2023-07-20 01:56:47', '2023-07-20 01:56:47'),
(111, 'testimonial', '2023-07-20 01:58:41', '2023-07-20 01:58:41'),
(112, 'testimonial', '2023-07-20 01:59:32', '2023-07-20 01:59:32'),
(113, 'testimonial', '2023-07-20 02:00:26', '2023-07-20 02:00:26'),
(114, 'testimonial', '2023-07-20 03:19:49', '2023-07-20 03:19:49'),
(115, 'faq', '2023-07-20 03:20:41', '2023-07-20 03:20:41'),
(116, 'faq', '2023-07-20 03:21:37', '2023-07-20 03:21:37'),
(117, 'faq', '2023-07-20 03:22:26', '2023-07-20 03:22:26'),
(118, 'faq', '2023-07-20 03:22:49', '2023-07-20 03:22:49'),
(119, 'faq', '2023-07-20 03:23:30', '2023-07-20 03:23:30'),
(120, 'faq', '2023-07-20 03:24:00', '2023-07-20 03:24:00'),
(121, 'blog', '2023-07-20 03:26:36', '2023-07-20 03:26:36'),
(122, 'blog', '2023-07-20 03:28:03', '2023-07-20 03:28:03'),
(123, 'blog', '2023-07-20 03:28:39', '2023-07-20 03:28:39'),
(124, 'social', '2023-07-20 03:30:15', '2023-07-20 03:30:15'),
(125, 'social', '2023-07-20 03:30:27', '2023-07-20 03:30:27'),
(126, 'social', '2023-07-20 03:30:34', '2023-07-20 03:30:34'),
(127, 'social', '2023-07-20 03:30:40', '2023-07-20 03:30:40'),
(128, 'pages', '2023-07-20 03:31:24', '2023-07-20 03:31:24'),
(129, 'pages', '2023-07-20 03:31:54', '2023-07-20 03:31:54'),
(134, 'app-section', '2023-09-14 03:29:50', '2023-09-14 03:29:50'),
(135, 'app-section', '2023-09-14 03:41:19', '2023-09-14 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `content_details`
--

CREATE TABLE `content_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_details`
--

INSERT INTO `content_details` (`id`, `content_id`, `language_id`, `description`, `created_at`, `updated_at`) VALUES
(167, 96, 1, '{\"title\":\"Secure Payment Gateways\",\"short_description\":\"Rest easy knowing that your financial transactions are protected by advanced and secure payment gateways. We prioritize the safety of your data, ensuring that every payment is processed securely and with the utmost privacy.\"}', '2023-07-20 01:48:58', '2023-11-07 04:29:51'),
(168, 97, 1, '{\"title\":\"Multiple Payment Option\",\"short_description\":\"We understand that flexibility matters when it comes to paying bills. That\'s why we offer a wide array of payment options, allowing you to choose the method that suits you best. Whether you prefer credit cards, bank transfers, or other options, we\'ve got you covered.\"}', '2023-07-20 01:49:49', '2023-11-07 04:30:03'),
(169, 98, 1, '{\"title\":\"User-Friendly Interface\",\"short_description\":\"Our platform is designed with you in mind. The user-friendly interface ensures that you can navigate effortlessly, set up payments, and manage your bills without any confusion. It\'s a seamless experience for both beginners and seasoned users.\"}', '2023-07-20 01:50:21', '2023-11-07 04:30:20'),
(170, 99, 1, '{\"title\":\"24\\/7 Availability\",\"short_description\":\"Your bills don\'t keep office hours, and neither do we. With 24\\/7 availability, you can make payments at your convenience, any time of the day or night. Say goodbye to waiting for business hours to manage your expenses.\"}', '2023-07-20 01:50:55', '2023-11-07 04:30:43'),
(171, 100, 1, '{\"title\":\"Get Amazing Cashbacke\",\"short_description\":\"Who doesn\'t love a little extra? When you pay your bills through our platform, you get more than just convenience; you get amazing cashback rewards. Enjoy savings while handling your financial responsibilities.\"}', '2023-07-20 01:51:37', '2023-11-07 04:31:03'),
(172, 101, 1, '{\"title\":\"Get Instant Recharge\",\"short_description\":\"Top up your accounts and enjoy instant recharge for your services. Whether it\'s airtime, subscriptions, or other prepaid services, our platform ensures that you\'re back up and running in no time.\"}', '2023-07-20 01:52:06', '2023-11-07 04:31:24'),
(173, 102, 1, '{\"title\":\"Create a free account\",\"short_description\":\"The first step in using our bill payment service is to create a free account. This typically involves providing your personal or business information, including your name, email address, and contact details. This account will be used to log in to the bill payment platform.\"}', '2023-07-20 01:52:46', '2023-11-07 03:48:07'),
(174, 103, 1, '{\"title\":\"Access quick bill pay\",\"short_description\":\"Once you\'ve logged into your account, you can access the \\\"Quick Bill Pay\\\" feature. This feature is designed for users who want to make a one-time payment without setting up automated or recurring payments. It allows for fast and convenient bill payments without the need for complex configurations.\"}', '2023-07-20 01:53:20', '2023-11-07 03:49:55'),
(175, 104, 1, '{\"title\":\"Select category\",\"short_description\":\"In the bill payment platform, you will typically see various categories representing the types of bills you can pay. Common categories include utilities (electricity, water, gas), telecommunications (phone, internet, cable), subscriptions, and more. Select the category that corresponds to the bill you wish to pay.\"}', '2023-07-20 01:54:07', '2023-11-07 03:52:29'),
(176, 105, 1, '{\"title\":\"Specify biller labels\",\"short_description\":\"Within the selected category, you\'ll be prompted to specify the biller or service provider. This is where you enter details about the company or organization that issued the bill. You may need to provide specific information like an account number, customer ID, or reference number, which ensures that your payment is correctly applied to your account.\"}', '2023-07-20 01:54:38', '2023-11-07 03:52:57'),
(177, 106, 1, '{\"title\":\"Payment type\",\"short_description\":\"Next, you\'ll choose the payment type. Bill payment platforms typically offer various payment methods, such as credit\\/debit card, bank transfer, online banking, and more. Select the payment method that suits your preference and follow the prompts to provide the necessary payment information.\"}', '2023-07-20 01:55:10', '2023-11-07 03:53:23'),
(178, 107, 1, '{\"title\":\"Submit\",\"short_description\":\"After specifying the biller and payment details, you\'ll finalize the process by clicking the \\\"Submit\\\" or \\\"Pay\\\" button. This action confirms your payment and initiates the transaction. You may receive a payment confirmation or a receipt for your records.\\r\\nThese steps provide a clear overview of how users can pay their bills using your service. Keep in mind that the specific interface and features of your bill payment.\"}', '2023-07-20 01:55:45', '2023-11-07 07:35:54'),
(179, 108, 1, '{\"title\":\"Convenience:\",\"short_description\":\"Our bill payment website is easy to use and makes it simple to pay your bills on time, from anywhere. You can set up recurring payments, so you never have to worry about missing a bill again.\"}', '2023-07-20 01:56:12', '2023-07-20 01:56:12'),
(180, 109, 1, '{\"title\":\"Security:\",\"short_description\":\"We use the latest security measures to protect your personal and financial information. Your payments are processed securely through our PCI-compliant payment gateway.\"}', '2023-07-20 01:56:28', '2023-07-20 01:56:28'),
(181, 110, 1, '{\"title\":\"Affordability:\",\"short_description\":\"Our bill payment services are affordable and offer a variety of payment options to fit your budget. You can pay by credit card, debit card, bank transfer, or electronic check.\"}', '2023-07-20 01:56:47', '2023-07-20 01:56:47'),
(182, 111, 1, '{\"name\":\"Crol Mickey\",\"address\":\"Sydney, Australia\",\"short_description\":\"I\'ve been testing the demo of this bill payment solution for my small business, and I\'m impressed. The user-friendly interface and multiple payment options make it incredibly convenient. I can\'t wait to integrate this into my daily operations.\"}', '2023-07-20 01:58:41', '2023-11-07 05:43:04'),
(183, 112, 1, '{\"name\":\"Tom Haris\",\"address\":\"New York, USA\",\"short_description\":\"As an individual user, I often struggle with bill payments, but this demo has been a game-changer. It\'s secure, easy to navigate, and I love the cashback rewards. This is exactly what I need to keep my finances on track\"}', '2023-07-20 01:59:32', '2023-11-07 05:43:23'),
(184, 113, 1, '{\"name\":\"Alex Cruis\",\"address\":\"Dublin, Ireland\",\"short_description\":\"I always look for innovative solutions, and this demo is impressive. The 24\\/7 availability and instant recharge features are fantastic. I can see this becoming a must-have app for anyone who wants to simplify bill payments.\"}', '2023-07-20 02:00:26', '2023-11-07 05:43:47'),
(185, 114, 1, '{\"name\":\"Alex Cruis\",\"address\":\"Dublin, Ireland\",\"short_description\":\"I\'m excited about the potential of this bill payment solution for my online store. The demo showcases a user-friendly experience and multiple payment options, which align perfectly with my business needs. I\'m looking forward to the full version\"}', '2023-07-20 03:19:49', '2023-11-07 05:44:05'),
(186, 115, 1, '{\"title\":\"How do I create an account on your website?\",\"short_description\":\"To create an account, click on the \\\"Sign Up\\\" button on the homepage and fill out the required information, such as your name, email address, and password. Then, click \\\"Submit\\\" to create your account.\"}', '2023-07-20 03:20:41', '2023-07-20 03:20:41'),
(187, 116, 1, '{\"title\":\"How can I pay my bills on your website?\",\"short_description\":\"To pay your bills, log in to your account and navigate to the \\\"Bill Payment\\\" section. Enter the necessary details, such as the biller\'s name, account number, and payment amount. Follow the prompts to complete the payment securely.\"}', '2023-07-20 03:21:37', '2023-07-20 03:21:37'),
(188, 117, 1, '{\"title\":\"What payment methods are accepted on your website?\",\"short_description\":\"We accept various payment methods, including credit cards, debit cards, and online banking transfers. You can choose your preferred payment method during the payment process.\"}', '2023-07-20 03:22:26', '2023-07-20 03:22:26'),
(189, 118, 1, '{\"title\":\"Are my payment details secure?\",\"short_description\":\"Yes, we take your security seriously. Our website uses industry-standard encryption protocols to ensure the confidentiality and integrity of your payment information. We do not store your payment details on our servers.\"}', '2023-07-20 03:22:49', '2023-07-20 03:22:49'),
(190, 119, 1, '{\"title\":\"How long does it take for my payment to reflect on my account?\",\"short_description\":\"Payment processing times may vary depending on the biller and payment method. Generally, payments made through credit or debit cards are processed instantly, while online banking transfers may take 1-2 business days to reflect on your account.\"}', '2023-07-20 03:23:30', '2023-07-20 03:23:30'),
(191, 120, 1, '{\"title\":\"Can I schedule recurring payments?\",\"short_description\":\"Yes, we offer the option to schedule recurring payments. During the payment process, you can select the frequency (e.g., monthly, quarterly) and the start date for recurring payments. You can also modify or cancel scheduled payments at any time.\"}', '2023-07-20 03:24:00', '2023-07-20 03:24:00'),
(192, 121, 1, '{\"writer_name\":\"Joshep brathwaith\",\"writer_designation\":\"Consultant\",\"title\":\"The Future of Bill Payment: Streamlining Your Monthly Expenses\",\"description\":\"<p>Are you ready to embrace a future where managing your monthly expenses is effortless and stress-free? In our newest blog post, \\\"The Future of Bill Payment: Streamlining Your Monthly Expenses,\\\" we take you on a journey into the evolving landscape of bill payment. Discover how cutting-edge solutions are revolutionizing the way individuals and businesses handle their financial responsibilities, and learn how streamlining bill payments is the key to financial tranquility.<\\/p>\\r\\n\\r\\n<p>Explore the convenience and efficiency of automated payments, and find out how they can eliminate the stress of bill management. We\'ll unveil the diverse range of payment methods, including online banking, credit cards, and more, allowing you to choose what suits your preferences best. Get ready to say goodbye to the hassle of traditional bill payments and welcome a future where your financial life is streamlined and simplified.<\\/p>\\r\\n\\r\\n<p>\\r\\nJoin us as we unravel the secrets to mastering your monthly expenses. Our blog provides insights into the innovative trends that are shaping the future of bill payment, and how you can be a part of this financial transformation. Read our blog now and prepare to embark on a journey towards a more efficient, convenient, and cost-effective way of managing your bills. Your financial future begins here.\\r\\n<\\/p>\"}', '2023-07-20 03:26:36', '2023-11-07 04:39:38'),
(193, 122, 1, '{\"writer_name\":\"Joshep brathwaith\",\"writer_designation\":\"Consultant\",\"title\":\"The Importance of Bill Payment Security: How to Keep Your Data Safe\",\"description\":\"<p>In a world where digital transactions have become the norm, the security of your financial data during bill payments is paramount. Dive into our latest blog post, \\\"The Importance of Bill Payment Security: How to Keep Your Data Safe,\\\" where we explore the critical aspects of protecting your sensitive information. Discover the significance of secure payment gateways, encryption, and fraud prevention measures, and gain valuable insights into the tools and strategies that can shield your financial data from potential threats.<\\/p>\\r\\n\\r\\n<p>\\r\\nWe\'re here to guide you through key security considerations, offering practical tips and actionable steps to enhance your online payment security. Your peace of mind and financial well-being matter, and our mission is to empower you with the knowledge and tools to navigate the digital payment landscape confidently.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\nJoin us in unraveling the secrets to keeping your bill payments secure, and learn how to make your financial transactions worry-free. Read our blog now and fortify your financial data against the risks of the digital age. Your financial security is a priority, and we\'re here to show you how to safeguard it effectively.\\r\\n<\\/p>\"}', '2023-07-20 03:28:03', '2023-11-07 04:37:50'),
(194, 123, 1, '{\"writer_name\":\"Joshep brathwaith\",\"writer_designation\":\"Consultant\",\"title\":\"Maximizing Savings: How Cashback and Rewards Programs Benefit Bill Payers\",\"description\":\"<p>Are you tired of paying bills without getting anything in return? In our latest blog post, we delve into the world of bill payment and uncover the hidden gems of cashback and rewards programs. Discover how savvy bill payers are turning their regular expenses into opportunities for savings and benefits.<\\/p><p>\\r\\n\\r\\nLearn how these programs work, the types of rewards you can expect, and the steps you can take to maximize your savings while managing your bills. Whether you\'re a business owner looking to cut costs or an individual striving to make the most of your budget, our insights will show you how to make every bill payment count.\\r\\n<\\/p><p>\\r\\nJoin us in this exploration of financial efficiency and start reaping the rewards of responsible bill management. Your bills won\'t just be expenses; they\'ll be stepping stones to a more financially rewarding future. Read our blog now and unlock the potential of cashback and rewards in your bill-paying journey.\\r\\n<\\/p>\"}', '2023-07-20 03:28:39', '2023-11-07 04:35:44'),
(195, 124, 1, NULL, '2023-07-20 03:30:15', '2023-07-20 03:30:15'),
(196, 125, 1, NULL, '2023-07-20 03:30:27', '2023-07-20 03:30:27'),
(197, 126, 1, NULL, '2023-07-20 03:30:34', '2023-07-20 03:30:34'),
(198, 127, 1, NULL, '2023-07-20 03:30:40', '2023-07-20 03:30:40'),
(199, 128, 1, '{\"title\":\"Terms and Conditions\",\"description\":\"<h3>Our Terms &amp; Conditions<\\/h3><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and share your personal information when you visit or make a purchase from our website.<\\/p><br \\/><br \\/><h5>Personal Information We Collect<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">When you visit our website, we collect certain information about your device, including your IP address, browser type, and operating system. We also collect information about the pages you visit on our website, the links you click, and the products you view or purchase. We collect this information using cookies and other tracking technologies. For more information about cookies, please see the \\\"Cookies\\\" section below.<\\/p><br \\/><br \\/><h5>How We Use Your Personal Information<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We use the information we collect from you to:<\\/p><ul><li>Process your orders and fulfill your requests<\\/li><li>Communicate with you about your orders, products, and services<\\/li><li>Provide you with targeted advertising and marketing<\\/li><li>Improve our website and products<\\/li><li>Comply with applicable laws and regulations<\\/li><\\/ul><br \\/><br \\/><h5>Sharing Your Personal Information<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We share your personal information with third parties to help us with the purposes listed above. For example, we use Shopify to power our online store. You can read more about how Shopify uses your personal information here: https:\\/\\/www.shopify.com\\/legal\\/privacy. We also use Google Analytics to track website traffic. You can read more about how Google uses your personal information You can opt-out of Google Analytics tracking. Finally, we may share your personal information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to protect our rights.<\\/p><br \\/><br \\/><h5>Contact Us<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">If you have any questions about this Privacy Policy, please contact us at [email protected]<\\/p>\"}', '2023-07-20 03:31:24', '2023-11-07 04:47:51'),
(200, 129, 1, '{\"title\":\"Privacy Policy\",\"description\":\"<h3>Our Privacy Policy<\\/h3><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and share your personal information when you visit or make a purchase from our website.<\\/p><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\"><br \\/><\\/p><h5>Personal Information We Collect<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">When you visit our website, we collect certain information about your device, including your IP address, browser type, and operating system. We also collect information about the pages you visit on our website, the links you click, and the products you view or purchase. We collect this information using cookies and other tracking technologies. For more information about cookies, please see the \\\"Cookies\\\" section below.<\\/p><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\"><br \\/><\\/p><h5>How We Use Your Personal Information<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We use the information we collect from you to:<\\/p><ul><li>Process your orders and fulfill your requests<\\/li><li>Communicate with you about your orders, products, and services<\\/li><li>Provide you with targeted advertising and marketing<\\/li><li>Improve our website and products<\\/li><li>Comply with applicable laws and regulations<\\/li><\\/ul><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\"><br \\/><br \\/><\\/p><h5>Sharing Your Personal Information<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">We share your personal information with third parties to help us with the purposes listed above. For example, we use Shopify to power our online store. You can read more about how Shopify uses your personal information here: https:\\/\\/www.shopify.com\\/legal\\/privacy. We also use Google Analytics to track website traffic. You can read more about how Google uses your personal information You can opt-out of Google Analytics tracking. Finally, we may share your personal information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to protect our rights.<\\/p><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\"><br \\/><br \\/><\\/p><h5>Contact Us<\\/h5><p style=\\\"color:rgb(105,105,105);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">If you have any questions about this Privacy Policy, please contact us at [email protected]<\\/p>\"}', '2023-07-20 03:31:54', '2023-10-28 07:35:55'),
(201, 96, 2, '{\"title\":\"Pasarelas de pago seguras\",\"short_description\":\"Rest easy knowing that your financial transactions are protected by advanced and secure payment gateways. We prioritize the safety of your data, ensuring that every payment is processed securely and with the utmost privacy.\"}', '2023-09-13 22:58:23', '2023-11-07 04:29:44'),
(202, 97, 2, '{\"title\":\"Opci\\u00f3n de pago m\\u00faltiple\",\"short_description\":\"We understand that flexibility matters when it comes to paying bills. That\'s why we offer a wide array of payment options, allowing you to choose the method that suits you best. Whether you prefer credit cards, bank transfers, or other options, we\'ve got you covered.\"}', '2023-09-13 23:00:27', '2023-11-07 04:30:09'),
(203, 98, 2, '{\"title\":\"Interfaz amigable\",\"short_description\":\"Our platform is designed with you in mind. The user-friendly interface ensures that you can navigate effortlessly, set up payments, and manage your bills without any confusion. It\'s a seamless experience for both beginners and seasoned users.\"}', '2023-09-13 23:00:55', '2023-11-07 04:30:27'),
(204, 99, 2, '{\"title\":\"Disponibilidad 24 horas al d\\u00eda, 7 d\\u00edas a la semana\",\"short_description\":\"Your bills don\'t keep office hours, and neither do we. With 24\\/7 availability, you can make payments at your convenience, any time of the day or night. Say goodbye to waiting for business hours to manage your expenses.\"}', '2023-09-13 23:01:23', '2023-11-07 04:30:49'),
(205, 100, 2, '{\"title\":\"Obtenga un incre\\u00edble reembolso en efectivo\",\"short_description\":\"Who doesn\'t love a little extra? When you pay your bills through our platform, you get more than just convenience; you get amazing cashback rewards. Enjoy savings while handling your financial responsibilities.\"}', '2023-09-13 23:01:51', '2023-11-07 04:31:09'),
(206, 101, 2, '{\"title\":\"Obtenga recarga instant\\u00e1nea\",\"short_description\":\"Top up your accounts and enjoy instant recharge for your services. Whether it\'s airtime, subscriptions, or other prepaid services, our platform ensures that you\'re back up and running in no time.\"}', '2023-09-13 23:02:26', '2023-11-07 04:31:30'),
(207, 102, 2, '{\"title\":\"Crea una cuenta nueva\",\"short_description\":\"The first step in using our bill payment service is to create a free account. This typically involves providing your personal or business information, including your name, email address, and contact details. This account will be used to log in to the bill payment platform.\"}', '2023-09-13 23:02:59', '2023-11-07 03:48:14'),
(208, 103, 2, '{\"title\":\"Acceda al pago r\\u00e1pido de facturas\",\"short_description\":\"Once you\'ve logged into your account, you can access the \\\"Quick Bill Pay\\\" feature. This feature is designed for users who want to make a one-time payment without setting up automated or recurring payments. It allows for fast and convenient bill payments without the need for complex configurations.\"}', '2023-09-13 23:03:25', '2023-11-07 03:49:38'),
(209, 104, 2, '{\"title\":\"Selecciona una categor\\u00eda\",\"short_description\":\"In the bill payment platform, you will typically see various categories representing the types of bills you can pay. Common categories include utilities (electricity, water, gas), telecommunications (phone, internet, cable), subscriptions, and more. Select the category that corresponds to the bill you wish to pay.\"}', '2023-09-13 23:03:59', '2023-11-07 03:52:40'),
(210, 105, 2, '{\"title\":\"Especificar etiquetas de facturador\",\"short_description\":\"Within the selected category, you\'ll be prompted to specify the biller or service provider. This is where you enter details about the company or organization that issued the bill. You may need to provide specific information like an account number, customer ID, or reference number, which ensures that your payment is correctly applied to your account.\"}', '2023-09-13 23:04:32', '2023-11-07 03:53:03'),
(211, 106, 2, '{\"title\":\"Tipo de pago\",\"short_description\":\"Next, you\'ll choose the payment type. Bill payment platforms typically offer various payment methods, such as credit\\/debit card, bank transfer, online banking, and more. Select the payment method that suits your preference and follow the prompts to provide the necessary payment information.\"}', '2023-09-13 23:05:49', '2023-11-07 03:53:29'),
(212, 107, 2, '{\"title\":\"Entregar\",\"short_description\":\"After specifying the biller and payment details, you\'ll finalize the process by clicking the \\\"Submit\\\" or \\\"Pay\\\" button. This action confirms your payment and initiates the transaction. You may receive a payment confirmation or a receipt for your records.\\r\\nThese steps provide a clear overview of how users can pay their bills using your service. Keep in mind that the specific interface and features of your bill payment platform may vary, but these steps offer a general guideline for users to follow when using your system.\"}', '2023-09-13 23:06:18', '2023-11-07 03:54:01'),
(213, 108, 2, '{\"title\":\"Conveniencia:\",\"short_description\":\"Nuestro sitio web de pago de facturas es f\\u00e1cil de usar y simplifica el pago de sus facturas a tiempo, desde cualquier lugar. Puede configurar pagos recurrentes para no tener que preocuparse nunca m\\u00e1s por perder una factura.\"}', '2023-09-13 23:07:48', '2023-09-13 23:07:48'),
(214, 109, 2, '{\"title\":\"Seguridad:\",\"short_description\":\"Utilizamos las \\u00faltimas medidas de seguridad para proteger su informaci\\u00f3n personal y financiera. Sus pagos se procesan de forma segura a trav\\u00e9s de nuestra pasarela de pago compatible con PCI.\"}', '2023-09-13 23:08:18', '2023-09-13 23:08:18'),
(215, 110, 2, '{\"title\":\"Asequibilidad:\",\"short_description\":\"Nuestros servicios de pago de facturas son asequibles y ofrecen una variedad de opciones de pago que se ajustan a su presupuesto. Puedes pagar con tarjeta de cr\\u00e9dito, tarjeta de d\\u00e9bito, transferencia bancaria o cheque electr\\u00f3nico.\"}', '2023-09-13 23:13:00', '2023-09-13 23:13:00'),
(216, 111, 2, '{\"name\":\"Mickey Mouse\",\"address\":\"Sydney, Australia\",\"short_description\":\"I\'ve been testing the demo of this bill payment solution for my small business, and I\'m impressed. The user-friendly interface and multiple payment options make it incredibly convenient. I can\'t wait to integrate this into my daily operations.\"}', '2023-09-13 23:13:34', '2023-11-07 05:43:10'),
(217, 112, 2, '{\"name\":\"Tom Haris\",\"address\":\"Nueva York, Estados Unidos\",\"short_description\":\"As an individual user, I often struggle with bill payments, but this demo has been a game-changer. It\'s secure, easy to navigate, and I love the cashback rewards. This is exactly what I need to keep my finances on track\"}', '2023-09-13 23:14:11', '2023-11-07 05:43:30'),
(218, 113, 2, '{\"name\":\"Alex Crucero\",\"address\":\"Dubl\\u00edn, Irlanda\",\"short_description\":\"I always look for innovative solutions, and this demo is impressive. The 24\\/7 availability and instant recharge features are fantastic. I can see this becoming a must-have app for anyone who wants to simplify bill payments.\"}', '2023-09-13 23:14:48', '2023-11-07 05:43:53'),
(219, 114, 2, '{\"name\":\"Alex Crucero\",\"address\":\"Dubl\\u00edn, Irlanda\",\"short_description\":\"I\'m excited about the potential of this bill payment solution for my online store. The demo showcases a user-friendly experience and multiple payment options, which align perfectly with my business needs. I\'m looking forward to the full version\"}', '2023-09-13 23:15:51', '2023-11-07 05:44:17'),
(220, 115, 2, '{\"title\":\"C\\u00f3mo creo una cuenta en su sitio web?\",\"short_description\":\"Para crear una cuenta, haga clic en el bot\\u00f3n \\\"Registrarse\\\" en la p\\u00e1gina de inicio y complete la informaci\\u00f3n requerida, como su nombre, direcci\\u00f3n de correo electr\\u00f3nico y contrase\\u00f1a. Luego, haga clic en \\\"Enviar\\\" para crear su cuenta.\"}', '2023-09-13 23:16:22', '2023-09-13 23:16:22'),
(221, 116, 2, '{\"title\":\"C\\u00f3mo puedo pagar mis facturas en su sitio web?\",\"short_description\":\"Para pagar sus facturas, inicie sesi\\u00f3n en su cuenta y navegue hasta la secci\\u00f3n \\\"Pago de facturas\\\". Ingrese los detalles necesarios, como el nombre del facturador, el n\\u00famero de cuenta y el monto del pago. Siga las indicaciones para completar el pago de forma segura.\"}', '2023-09-13 23:16:52', '2023-09-13 23:16:52'),
(222, 117, 2, '{\"title\":\"Qu\\u00e9 m\\u00e9todos de pago se aceptan en su sitio web?\",\"short_description\":\"Aceptamos varios m\\u00e9todos de pago, incluidas tarjetas de cr\\u00e9dito, tarjetas de d\\u00e9bito y transferencias bancarias en l\\u00ednea. Puede elegir su m\\u00e9todo de pago preferido durante el proceso de pago.\"}', '2023-09-13 23:17:21', '2023-09-13 23:17:21'),
(223, 118, 2, '{\"title\":\"Est\\u00e1n seguros mis datos de pago?\",\"short_description\":\"S\\u00ed, nos tomamos en serio su seguridad. Nuestro sitio web utiliza protocolos de cifrado est\\u00e1ndar de la industria para garantizar la confidencialidad e integridad de su informaci\\u00f3n de pago. No almacenamos sus datos de pago en nuestros servidores.\"}', '2023-09-13 23:17:52', '2023-09-13 23:17:52'),
(224, 119, 2, '{\"title\":\"Cu\\u00e1nto tiempo tarda mi pago en reflejarse en mi cuenta?\",\"short_description\":\"Payment processing times may vary depending on the biller and payment method. Generally, payments made through credit or debit cards are processed instantly, while online banking transfers may take 1-2 business days to reflect on your account.\"}', '2023-09-13 23:18:25', '2023-09-13 23:18:25'),
(225, 120, 2, '{\"title\":\"Puedo programar pagos recurrentes?\",\"short_description\":\"S\\u00ed, ofrecemos la opci\\u00f3n de programar pagos recurrentes. Durante el proceso de pago, puede seleccionar la frecuencia (por ejemplo, mensual, trimestral) y la fecha de inicio de los pagos recurrentes. Tambi\\u00e9n puedes modificar o cancelar los pagos programados en cualquier momento.\"}', '2023-09-13 23:18:53', '2023-09-13 23:18:53'),
(226, 121, 2, '{\"writer_name\":\"joseph brathwaith\",\"writer_designation\":\"Consultor\",\"title\":\"The Future of Bill Payment: Streamlining Your Monthly Expenses\",\"description\":\"<p>Are you ready to embrace a future where managing your monthly expenses is effortless and stress-free? In our newest blog post, \\\"The Future of Bill Payment: Streamlining Your Monthly Expenses,\\\" we take you on a journey into the evolving landscape of bill payment. Discover how cutting-edge solutions are revolutionizing the way individuals and businesses handle their financial responsibilities, and learn how streamlining bill payments is the key to financial tranquility.<\\/p>\\r\\n\\r\\n<p>Explore the convenience and efficiency of automated payments, and find out how they can eliminate the stress of bill management. We\'ll unveil the diverse range of payment methods, including online banking, credit cards, and more, allowing you to choose what suits your preferences best. Get ready to say goodbye to the hassle of traditional bill payments and welcome a future where your financial life is streamlined and simplified.<\\/p>\\r\\n\\r\\n<p>\\r\\nJoin us as we unravel the secrets to mastering your monthly expenses. Our blog provides insights into the innovative trends that are shaping the future of bill payment, and how you can be a part of this financial transformation. Read our blog now and prepare to embark on a journey towards a more efficient, convenient, and cost-effective way of managing your bills. Your financial future begins here.\\r\\n<\\/p>\"}', '2023-09-13 23:20:20', '2023-11-07 04:39:44'),
(227, 122, 2, '{\"writer_name\":\"joseph brathwaith\",\"writer_designation\":\"Consultor\",\"title\":\"The Importance of Bill Payment Security: How to Keep Your Data Safe\",\"description\":\"<p>In a world where digital transactions have become the norm, the security of your financial data during bill payments is paramount. Dive into our latest blog post, \\\"The Importance of Bill Payment Security: How to Keep Your Data Safe,\\\" where we explore the critical aspects of protecting your sensitive information. Discover the significance of secure payment gateways, encryption, and fraud prevention measures, and gain valuable insights into the tools and strategies that can shield your financial data from potential threats.<\\/p>\\r\\n\\r\\n<p>\\r\\nWe\'re here to guide you through key security considerations, offering practical tips and actionable steps to enhance your online payment security. Your peace of mind and financial well-being matter, and our mission is to empower you with the knowledge and tools to navigate the digital payment landscape confidently.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\nJoin us in unraveling the secrets to keeping your bill payments secure, and learn how to make your financial transactions worry-free. Read our blog now and fortify your financial data against the risks of the digital age. Your financial security is a priority, and we\'re here to show you how to safeguard it effectively.\\r\\n<\\/p>\"}', '2023-09-13 23:21:37', '2023-11-07 04:37:57'),
(228, 123, 2, '{\"writer_name\":\"joseph brathwaith\",\"writer_designation\":\"Consultant\",\"title\":\"Maximizing Savings: How Cashback and Rewards Programs Benefit Bill Payers\",\"description\":\"<p>Are you tired of paying bills without getting anything in return? In our latest blog post, we delve into the world of bill payment and uncover the hidden gems of cashback and rewards programs. Discover how savvy bill payers are turning their regular expenses into opportunities for savings and benefits.<\\/p><p>\\r\\n\\r\\nLearn how these programs work, the types of rewards you can expect, and the steps you can take to maximize your savings while managing your bills. Whether you\'re a business owner looking to cut costs or an individual striving to make the most of your budget, our insights will show you how to make every bill payment count.\\r\\n<\\/p><p>\\r\\nJoin us in this exploration of financial efficiency and start reaping the rewards of responsible bill management. Your bills won\'t just be expenses; they\'ll be stepping stones to a more financially rewarding future. Read our blog now and unlock the potential of cashback and rewards in your bill-paying journey.\\r\\n<\\/p>\"}', '2023-09-13 23:22:36', '2023-11-07 04:35:55'),
(229, 128, 2, '{\"title\":\"T\\u00e9rminos y condiciones Condiciones\",\"description\":\"<p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o.<\\/p><p> El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible.\\r\\n\\r\\nMuchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). <\\/p><p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces con humor inyectado a prop\\u00f3sito y cosas por el estilo.<\\/p>\"}', '2023-09-13 23:26:04', '2023-09-13 23:26:04'),
(230, 129, 2, '{\"title\":\"pol\\u00edtica de privacidad\",\"description\":\"<p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia.<\\/p><p> Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia.\\r\\n\\r\\nVarias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo).<\\/p><p> Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El objetivo de utilizar Lorem Ipsum es que tiene una distribuci\\u00f3n m\\u00e1s o menos normal de letras, en lugar de utilizar \\\"Contenido aqu\\u00ed, contenido aqu\\u00ed\\\", lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web utilizan ahora Lorem Ipsum como texto modelo predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces con humor inyectado a prop\\u00f3sito y cosas por el estilo.<\\/p>\"}', '2023-09-13 23:26:46', '2023-09-13 23:27:05'),
(235, 134, 1, '{\"title\":\"Google play\"}', '2023-09-14 03:29:50', '2023-09-14 03:29:50'),
(236, 135, 1, '{\"title\":\"App store\"}', '2023-09-14 03:41:19', '2023-09-14 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `content_media`
--

CREATE TABLE `content_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_media`
--

INSERT INTO `content_media` (`id`, `content_id`, `description`, `driver`, `created_at`, `updated_at`) VALUES
(54, 111, '{\"image\":\"contents\\/ukLrPci6DoejPCsU93OOmugWrHC0WaEOcZpPRJf3.jpg\"}', 'local', '2023-07-20 01:58:41', '2023-07-20 01:58:41'),
(55, 112, '{\"image\":\"contents\\/NOvLuoS6aiIEvEpHND97c73IDMkEuZwhpFCtiEJr.jpg\"}', 'local', '2023-07-20 01:59:32', '2023-07-20 01:59:32'),
(56, 113, '{\"image\":\"contents\\/DGFHIRNBB9gD4qOCH2bLtvLTvDBIf3SfdJKhvyt9.jpg\"}', 'local', '2023-07-20 02:00:26', '2023-07-20 02:00:26'),
(57, 114, '{\"image\":\"contents\\/9XEUG1fFoPFYpViQxiDKQ5kKm0y5Nhk0SqDX7fQA.jpg\"}', 'local', '2023-07-20 03:19:49', '2023-07-20 03:19:49'),
(58, 121, '{\"image\":\"contents\\/8JxF0r7wOfoSxwZDEryCPXmhG6iJaVYg4kImP7rc.jpg\",\"writer_image\":\"contents\\/iDsgddMLaS0WbAet6Wc8fst9CYc8udmI9R6lBMbH.jpg\"}', 'local', '2023-07-20 03:26:38', '2023-07-20 03:26:38'),
(59, 122, '{\"image\":\"contents\\/ycJfYlz2IDQBhhmipSX8A58JALDRa7Iwro85ntRe.jpg\",\"writer_image\":\"contents\\/riVGbxm7wSCzPPaAUk6DoZtuTZJFjJAZ4VvDKPJl.jpg\"}', 'local', '2023-07-20 03:28:03', '2023-07-20 03:28:03'),
(60, 123, '{\"image\":\"contents\\/sRhHYTyO0v8XgVfSIGBWOsx0j1oSnXwSoaXyny6M.jpg\",\"writer_image\":\"contents\\/I4sr0IG88paV6fYSfcncaGanuDjqU427KWWv3C3D.jpg\"}', 'local', '2023-07-20 03:28:39', '2023-07-20 03:28:39'),
(61, 124, '{\"social_icon\":\"fab fa-facebook\",\"social_link\":\"https:\\/\\/www.facebook.com\\/\"}', NULL, '2023-07-20 03:30:15', '2023-09-14 03:35:27'),
(62, 125, '{\"social_icon\":\"fab fa-linkedin-in\",\"social_link\":\"https:\\/\\/www.linkedin.com\\/\"}', NULL, '2023-07-20 03:30:27', '2023-09-14 05:15:17'),
(63, 126, '{\"social_icon\":\"fab fa-twitter\",\"social_link\":\"https:\\/\\/twitter.com\\/\"}', NULL, '2023-07-20 03:30:34', '2023-07-20 03:30:34'),
(64, 127, '{\"social_icon\":\"fab fa-instagram\",\"social_link\":\"https:\\/\\/www.instagram.com\\/\"}', NULL, '2023-07-20 03:30:40', '2023-07-20 03:30:40'),
(69, 96, '{\"icon\":\"fa-light fa-shield-check\"}', NULL, '2023-09-14 03:22:06', '2023-09-14 04:21:47'),
(70, 134, '{\"icon\":\"fa-brands fa-google-play\",\"button_link\":\"https:\\/\\/www.bugfinder.net\\/\"}', NULL, '2023-09-14 03:29:50', '2023-09-14 03:38:18'),
(71, 135, '{\"icon\":\"fa-brands fa-apple\",\"button_link\":\"https:\\/\\/www.bugfinder.net\\/\"}', NULL, '2023-09-14 03:41:19', '2023-09-14 03:41:30'),
(72, 97, '{\"icon\":\"fa-light fa-credit-card\"}', NULL, '2023-09-14 04:22:23', '2023-09-14 04:22:23'),
(73, 98, '{\"icon\":\"fa-light fa-user-group\"}', NULL, '2023-09-14 04:22:42', '2023-09-14 04:22:42'),
(74, 99, '{\"icon\":\"fa-light fa-clock\"}', NULL, '2023-09-14 04:23:04', '2023-09-14 04:23:04'),
(75, 100, '{\"icon\":\"fa-light fa-wallet\"}', NULL, '2023-09-14 04:23:24', '2023-09-14 04:23:24'),
(76, 101, '{\"icon\":\"fa-light fa-battery-bolt\"}', NULL, '2023-09-14 04:23:39', '2023-09-14 04:23:39'),
(77, 102, '{\"icon\":\"fa-light fa-user\"}', NULL, '2023-11-07 03:48:07', '2023-11-07 07:26:31'),
(78, 103, '{\"icon\":\"fa-light fa-universal-access\"}', NULL, '2023-11-07 03:49:55', '2023-11-07 03:49:55'),
(79, 104, '{\"icon\":\"fa-light fa-grid\"}', NULL, '2023-11-07 03:52:29', '2023-11-07 07:34:24'),
(80, 105, '{\"icon\":\"fa-light fa-tag\"}', NULL, '2023-11-07 03:52:57', '2023-11-07 07:34:07'),
(81, 106, '{\"icon\":\"fa-light fa-credit-card\"}', NULL, '2023-11-07 03:53:23', '2023-11-07 07:33:48'),
(82, 107, '{\"icon\":\"fa-light fa-paper-plane\"}', NULL, '2023-11-07 03:53:50', '2023-11-07 07:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `depositable_id` int(11) DEFAULT NULL,
  `depositable_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_currency` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `percentage` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Percent of charge',
  `charge_percentage` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'After adding percent of charge',
  `charge_fixed` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Total charge',
  `payable_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Amount payed',
  `btc_amount` decimal(18,8) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `utr` char(36) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=Success,0=Pending,2=>requested,3=>rejected',
  `note` text DEFAULT NULL,
  `payment_id` varchar(61) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_key` varchar(120) DEFAULT NULL,
  `email_from` varchar(191) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `template` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT 0,
  `sms_status` tinyint(1) NOT NULL DEFAULT 0,
  `lang_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `language_id`, `template_key`, `email_from`, `name`, `subject`, `template`, `sms_body`, `short_keys`, `mail_status`, `sms_status`, `lang_code`, `created_at`, `updated_at`) VALUES
(34, 1, 'VERIFICATION_CODE', 'support@example.com', 'Verification Code', 'verify your email', 'Your email verification code [[code]]', 'Your sms verification code [[code]]', '{\"code\":\"code\"}', 1, 1, 'en', NULL, '2022-11-14 07:47:27'),
(39, 1, 'PASSWORD_RESET', 'support@example.com', 'Reset Password Notification', 'Reset Password Notification', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account. [[message]]', '{\"message\":\"message\"}', 1, 1, 'en', '2021-10-31 05:27:16', '2022-11-14 07:47:27'),
(43, 1, 'PAYMENT_REJECTED', 'support@example.com', 'Payment Rejected', 'Payout Rejected', 'Your payment [[amount]] [[currency]] by [[method]] has been rejected.\r\nTrasanction Id = [[transaction]]\r\nFeedback = [[feedback]] ', 'Your payment [[amount]] [[currency]] by [[method]] has been rejected.\r\nTrasanction Id = [[transaction]]\r\nFeedback = [[feedback]] ', '{\"amount\":\"amount\",\"currency\":\"currency\",\"method\":\"method\",\"transaction\":\"Transaction Number\",\"feedback\":\"feedback\"}', 1, 1, 'en', NULL, '2022-11-14 07:47:27'),
(44, 1, 'BILL_PAYMENT_RETURN', 'support@example.com', 'Bill Payment Return', 'Your Account has been credited', 'your bill [[type]] [[amount]] [[currency]] has been return in your account.\r\nreturn amount [[return_currency_amount]] [[return_currency]]', 'your bill [[type]] [[amount]] [[currency]] has been return in your account.\r\nreturn amount [[return_currency_amount]] [[return_currency]]', '{\"type\":\"Type\",\"amount\":\"Payable Amount\",\"currency\":\"Payable Currency\",\"return_currency_amount\":\"Base Amount\",\"return_currency\":\"Base Currency\",\"transaction\":\"Transaction\"}', 1, 1, 'en', NULL, '2022-11-14 07:47:26'),
(45, 1, 'BILL_PAYMENT', 'support@example.com', 'Bill Payment', 'Bill has been paid', 'Your bill [[type]] [[amount]] [[currency]] has been paid.', 'Your bill [[type]] [[amount]] [[currency]] has been paid.\r\n', '{\"type\":\"Type\",\"amount\":\"Payable Amount\",\"currency\":\"Payable Currency\",\"transaction\":\"Transaction\"}', 1, 1, 'en', NULL, '2022-11-14 07:47:26'),
(46, 2, 'PAYMENT_REJECTED', 'support@example.com', 'Payout Rejected', 'Payout Rejected', 'Your payment [[amount]] [[currency]] by [[method]] has been rejected.\r\nTrasanction Id = [[transaction]]\r\nFeedback = [[feedback]] ', 'Your payment [[amount]] [[currency]] by [[method]] has been rejected.\r\nTrasanction Id = [[transaction]]\r\nFeedback = [[feedback]] ', '{\"amount\":\"amount\",\"currency\":\"currency\",\"method\":\"method\",\"transaction\":\"Transaction Number\",\"feedback\":\"feedback\"}', 1, 1, 'es', '2023-09-10 03:41:09', '2023-09-10 03:41:09');

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
-- Table structure for table `firebase_notifies`
--

CREATE TABLE `firebase_notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `server_key` varchar(255) DEFAULT NULL,
  `vapid_key` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `auth_domain` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `storage_bucket` varchar(255) DEFAULT NULL,
  `messaging_sender_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `measurement_id` varchar(255) DEFAULT NULL,
  `user_foreground` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=> off, 1=> on',
  `user_background` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=> off, 1=> on',
  `admin_foreground` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=> off, 1=> on',
  `admin_background` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=> off, 1=> on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firebase_notifies`
--

INSERT INTO `firebase_notifies` (`id`, `server_key`, `vapid_key`, `api_key`, `auth_domain`, `project_id`, `storage_bucket`, `messaging_sender_id`, `app_id`, `measurement_id`, `user_foreground`, `user_background`, `admin_foreground`, `admin_background`, `created_at`, `updated_at`) VALUES
(1, '', '', 'AIzaSyDcoodTVLeJjpZKqzKDTn2TesCm-ygpH90', 'bug-test-f9efb.appspot.com', 'bug-test-f9efb', 'bug-test-f9efb.appspot.com', '389497707062', '1:389497707062:web:71d798c51ab8baaff31697', 'G-NE55VEBQST', 0, 0, 0, 0, '2023-02-16 09:48:01', '2023-09-13 03:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Deposit from admin',
  `percentage` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Percent of charge',
  `charge_percentage` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'After adding percent of charge',
  `charge_fixed` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `received_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Amount add to receiver',
  `note` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=Success,0=Pending',
  `utr` char(36) DEFAULT NULL,
  `payment_id` varchar(61) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `sort_by` int(11) DEFAULT 1,
  `image` varchar(191) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: inactive, 1: active',
  `parameters` text DEFAULT NULL,
  `currencies` text DEFAULT NULL,
  `extra_parameters` text DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `is_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `environment` enum('test','live') NOT NULL DEFAULT 'live',
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percentage_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `convention_rate` decimal(18,8) NOT NULL DEFAULT 1.00000000,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `code`, `sort_by`, `image`, `driver`, `status`, `parameters`, `currencies`, `extra_parameters`, `currency`, `symbol`, `is_sandbox`, `environment`, `min_amount`, `max_amount`, `percentage_charge`, `fixed_charge`, `convention_rate`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'paypal', 1, 'gateway/LvvtNeIbeFHLlt0qHJLX7vNjJbI8IRDKpSBifqij.jpg', 'local', 0, '{\"cleint_id\":\"\",\"secret\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}}', NULL, 'USD', 'USD', 1, 'test', 0.10000000, 5000.00000000, 1.00000000, 0.52000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(2, 'Stripe ', 'stripe', 2, 'gateway/8OKez4XVZnczItMlgr8lIApmka9lb1iR9tGJCPft.jpg', 'local', 0, '{\"secret_key\":\"\",\"publishable_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}}', NULL, 'USD', 'USD', 1, 'test', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(3, 'Skrill', 'skrill', 3, 'gateway/te5ihVdIMSfs2xM8EKmh6nDWqJVLLeOmzwMrG79E.jpg', 'local', 0, '{\"pay_to_email\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}}', NULL, 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(4, 'Perfect Money', 'perfectmoney', 21, 'gateway/WiYtdmCZTPPtHVQ35aapB9EwrhQ5gbrS8lw4n91s.jpg', 'local', 0, '{\"passphrase\":\"\",\"payee_account\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', NULL, 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(5, 'PayTM', 'paytm', 19, 'gateway/u0FQQKV1RcoayftcSaAhvYyCs35UbFfjzYXSXtHx.jpg', 'local', 0, '{\"MID\":\"\",\"merchant_key\":\"\",\"WEBSITE\":\"\",\"INDUSTRY_TYPE_ID\":\"\",\"CHANNEL_ID\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}}', NULL, 'INR', 'INR', 1, 'test', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(6, 'Payeer', 'payeer', 17, 'gateway/Bpdm5j8DbsXMEEa0DinJXVTbd6cOSV0CbGIpkYJb.jpg', 'local', 0, '{\"merchant_id\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}}', '{\"status\":\"ipn\"}', 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(7, 'PayStack', 'paystack', 18, 'gateway/xwa4bIMcJ55nrp34IQCpaarhrVqVekEM8wR7dPi7.jpg', 'local', 0, '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"NGN\":\"NGN\"}}', '{\"callback\":\"ipn\",\"webhook\":\"ipn\"}\r\n', 'NGN', 'NGN', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(8, 'VoguePay', 'voguepay', 24, 'gateway/MiibHBxNvd4SDtFv3o0NAOqhXJSWr6Wz65SzwgUd.jpg', 'local', 0, '{\"merchant_id\":\"\"}', '{\"0\":{\"NGN\":\"NGN\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"ZAR\":\"ZAR\",\"JPY\":\"JPY\",\"INR\":\"INR\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PLN\":\"PLN\"}}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', NULL, 'NGN', 'NGN', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 256.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(9, 'Flutterwave', 'flutterwave', 13, 'gateway/EkOTCLAUblHymWSc80O14Dwe5K2vYcw882w1liry.jpg', 'local', 0, '{\"public_key\":\"\",\"secret_key\":\"\",\"encryption_key\":\"\"}', '{\"0\":{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}}', NULL, 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(10, 'RazorPay', 'razorpay', 22, 'gateway/LOWup5W2ZG7JSh5WQS6wcI5DLtzawAbTRfEIlocy.jpg', 'local', 0, '{\"key_id\":\"\",\"key_secret\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, 'INR', 'INR', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(11, 'instamojo', 'instamojo', 6, 'gateway/KHWGC7l0vTZb5ggsBC67OdCqTUZpifOvw4N9msIs.jpg', 'local', 0, '{\"api_key\":\"\",\"auth_token\":\"\",\"salt\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, 'INR', 'INR', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 73.51000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(12, 'Mollie', 'mollie', 15, 'gateway/U4rpGRIWSOfEFrWfrFsWeZzDZUWs4Eo4FfDqMK15.jpg', 'local', 0, '{\"api_key\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}}', NULL, 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 73.51000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(13, '2checkout', 'twocheckout', 5, 'gateway/kPRTkESd48HqtFaC9SLfTz124LamYavtfPJLvlGq.jpg', 'local', 0, '{\"merchant_code\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"DZD\":\"DZD\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AZN\":\"AZN\",\"BSD\":\"BSD\",\"BDT\":\"BDT\",\"BBD\":\"BBD\",\"BZD\":\"BZD\",\"BMD\":\"BMD\",\"BOB\":\"BOB\",\"BWP\":\"BWP\",\"BRL\":\"BRL\",\"GBP\":\"GBP\",\"BND\":\"BND\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"XCD\":\"XCD\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"GTQ\":\"GTQ\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JMD\":\"JMD\",\"JPY\":\"JPY\",\"KZT\":\"KZT\",\"KES\":\"KES\",\"LAK\":\"LAK\",\"MMK\":\"MMK\",\"LBP\":\"LBP\",\"LRD\":\"LRD\",\"MOP\":\"MOP\",\"MYR\":\"MYR\",\"MVR\":\"MVR\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PGK\":\"PGK\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"WST\":\"WST\",\"SAR\":\"SAR\",\"SCR\":\"SCR\",\"SGD\":\"SGD\",\"SBD\":\"SBD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"SYP\":\"SYP\",\"THB\":\"THB\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TRY\":\"TRY\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"USD\":\"USD\",\"VUV\":\"VUV\",\"VND\":\"VND\",\"XOF\":\"XOF\",\"YER\":\"YER\"}}', '{\"approved_url\":\"ipn\"}', 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 2.00000000, 6.00000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(14, 'Authorize.Net', 'authorizenet', 4, 'gateway/m2w61mLOtmvF7BqH5BCvoEhRscd3FV5LezwWC1Zm.jpg', 'local', 0, '{\"login_id\":\"\",\"current_transaction_key\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"USD\":\"USD\"}}', NULL, 'USD', 'USD', 1, 'test', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(15, 'SecurionPay', 'securionpay', 23, 'gateway/s5ochBkg5Fu4gbw6RXUsDxTPu5M4yXCSHJAHA1Be.jpg', 'local', 0, '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"AFN\":\"AFN\", \"DZD\":\"DZD\", \"ARS\":\"ARS\", \"AUD\":\"AUD\", \"BHD\":\"BHD\", \"BDT\":\"BDT\", \"BYR\":\"BYR\", \"BAM\":\"BAM\", \"BWP\":\"BWP\", \"BRL\":\"BRL\", \"BND\":\"BND\", \"BGN\":\"BGN\", \"CAD\":\"CAD\", \"CLP\":\"CLP\", \"CNY\":\"CNY\", \"COP\":\"COP\", \"KMF\":\"KMF\", \"HRK\":\"HRK\", \"CZK\":\"CZK\", \"DKK\":\"DKK\", \"DJF\":\"DJF\", \"DOP\":\"DOP\", \"EGP\":\"EGP\", \"ETB\":\"ETB\", \"ERN\":\"ERN\", \"EUR\":\"EUR\", \"GEL\":\"GEL\", \"HKD\":\"HKD\", \"HUF\":\"HUF\", \"ISK\":\"ISK\", \"INR\":\"INR\", \"IDR\":\"IDR\", \"IRR\":\"IRR\", \"IQD\":\"IQD\", \"ILS\":\"ILS\", \"JMD\":\"JMD\", \"JPY\":\"JPY\", \"JOD\":\"JOD\", \"KZT\":\"KZT\", \"KES\":\"KES\", \"KWD\":\"KWD\", \"KGS\":\"KGS\", \"LVL\":\"LVL\", \"LBP\":\"LBP\", \"LTL\":\"LTL\", \"MOP\":\"MOP\", \"MKD\":\"MKD\", \"MGA\":\"MGA\", \"MWK\":\"MWK\", \"MYR\":\"MYR\", \"MUR\":\"MUR\", \"MXN\":\"MXN\", \"MDL\":\"MDL\", \"MAD\":\"MAD\", \"MZN\":\"MZN\", \"NAD\":\"NAD\", \"NPR\":\"NPR\", \"ANG\":\"ANG\", \"NZD\":\"NZD\", \"NOK\":\"NOK\", \"OMR\":\"OMR\", \"PKR\":\"PKR\", \"PEN\":\"PEN\", \"PHP\":\"PHP\", \"PLN\":\"PLN\", \"QAR\":\"QAR\", \"RON\":\"RON\", \"RUB\":\"RUB\", \"SAR\":\"SAR\", \"RSD\":\"RSD\", \"SGD\":\"SGD\", \"ZAR\":\"ZAR\", \"KRW\":\"KRW\", \"IKR\":\"IKR\", \"LKR\":\"LKR\", \"SEK\":\"SEK\", \"CHF\":\"CHF\", \"SYP\":\"SYP\", \"TWD\":\"TWD\", \"TZS\":\"TZS\", \"THB\":\"THB\", \"TND\":\"TND\", \"TRY\":\"TRY\", \"UAH\":\"UAH\", \"AED\":\"AED\", \"GBP\":\"GBP\", \"USD\":\"USD\", \"VEB\":\"VEB\", \"VEF\":\"VEF\", \"VND\":\"VND\", \"XOF\":\"XOF\", \"YER\":\"YER\", \"ZMK\":\"ZMK\"}}', NULL, 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(16, 'PayUmoney', 'payumoney', 20, 'gateway/8i9L1sQBVFeOWHP0YlJIdKHEM2jEjZsxP3TmkQ3r.jpg', 'local', 0, '{\"merchant_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, 'INR', 'INR', 1, 'test', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 73.51000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(17, 'Mercado Pago', 'mercadopago', 14, 'gateway/txJpZJjadTzUqGmzCmAtGU5KRalELLmvDpYx7aUU.jpg', 'local', 0, '{\"access_token\":\"\"}', '{\"0\":{\"ARS\":\"ARS\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"DOP\":\"DOP\",\"EUR\":\"EUR\",\"GTQ\":\"GTQ\",\"HNL\":\"HNL\",\"MXN\":\"MXN\",\"NIO\":\"NIO\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PYG\":\"PYG\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"VEF\":\"VEF\",\"VES\":\"VES\"}}', NULL, 'BRL', 'BRL', 0, '', 0.10000000, 371500000.12000000, 0.00000000, 0.50000000, 3715.12000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(18, 'Coingate', 'coingate', 11, 'gateway/0DkRUvP0E0mJsgrasnyEdm1HYWxNkZZ6V83mFDKh.jpg', 'local', 0, '{\"api_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', NULL, 'USD', 'USD', 1, 'test', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(19, 'Coinbase Commerce', 'coinbasecommerce', 10, 'gateway/2KykVCl41Uz4Rnbj5NGlzUBGAtbY3VvrTrANiXCC.jpg', 'local', 0, '{\"api_key\":\"\",\"secret\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}}', '{\"webhook\":\"ipn\"}', 'USD', 'USD', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(20, 'Monnify', 'monnify', 16, 'gateway/E3Rq7SylmFib8GR0R1Ljd1YaK7kuAinaoJ9wi2QC.jpg', 'local', 0, '{\"api_key\":\"\",\"secret_key\":\"\",\"contract_code\":\"\"}', '{\"0\":{\"NGN\":\"NGN\"}}', NULL, 'NGN', 'NGN', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(21, 'Block.io', 'blockio', 7, 'gateway/lkPBVm5JSyv57Rs07HSe5mW83uERfgN6Buw5aeaG.jpg', 'local', 0, '{\"api_key\":\"\",\"api_pin\":\"\"}', '{\"1\":{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}}', '{\"cron\":\"ipn\"}', 'BTC', 'BTC', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 0.00004200, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(22, 'CoinPayments', 'coinpayments', 12, 'gateway/Y8Iumg9DlLacvt21dHr02nOwQhpwwBxummL09LfN.jpg', 'local', 0, '{\"merchant_id\":\"\",\"private_key\":\"\",\"public_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"},\"1\":{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}}', '{\"callback\":\"ipn\"}', 'BTC', 'BTC', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 0.00004200, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(23, 'Blockchain', 'blockchain', 8, 'gateway/9utHxPrXJaeordFyWMM32kEpxaDgcacy3vJRaiQ1.jpg', 'local', 0, '{\"api_key\":\"\",\"xpub_code\":\"\"}', '{\"1\":{\"BTC\":\"BTC\"}}', NULL, 'BTC', 'BTC', 0, '', 0.10000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, NULL, '2020-09-10 09:05:02', '2023-11-07 09:41:07'),
(25, 'cashmaal', 'cashmaal', 9, 'gateway/CbqGQHAPzJl9BW3OVhbuBRY5zEqj66tYxjZB66yS.jpg', 'local', 0, '{\"web_id\":\"\",\"ipn_key\":\"\"}', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '{\"ipn_url\":\"ipn\"}', 'PKR', 'PKR', 0, '', 0.10000000, 100.00000000, 0.00000000, 0.00000000, 1.00000000, NULL, NULL, '2023-11-07 09:41:07'),
(26, 'Midtrans', 'midtrans', 1, 'gateway/8H6VAzCRnbPoZabBtrlDAYEaL15HHmIceUjristZ.png', 'local', 0, '{\"client_key\":\"\",\"server_key\":\"\"}', '{\"0\":{\"IDR\":\"IDR\"}}', '{\"payment_notification_url\":\"ipn\", \"finish redirect_url\":\"success\", \"unfinish redirect_url\":\"failed\",\"error redirect_url\":\"failed\"}', 'IDR', 'IDR', 1, 'live', 1.00000000, 10000.00000000, 0.00000000, 0.05000000, 14835.20000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(27, 'peachpayments', 'peachpayments', 24, 'gateway/QXnag6R8VhWZwoNSdS74zUQRcP5b3QywTaZxUIPw.png', 'local', 0, '{\"Authorization_Bearer\":\"\",\"Entity_ID\":\"\",\"Recur_Channel\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AFA\":\"AFA\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZM\":\"AZM\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYR\":\"BYR\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CYP\":\"CYP\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EEK\":\"EEK\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHC\":\"GHC\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LTL\":\"LTL\",\"LVL\":\"LVL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MTL\":\"MTL\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZM\":\"MZM\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PTS\":\"PTS\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDD\":\"SDD\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SIT\":\"SIT\",\"SKK\":\"SKK\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SPL\":\"SPL\",\"SRD\":\"SRD\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMM\":\"TMM\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRL\":\"TRL\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TVD\":\"TVD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMK\":\"ZMK\",\"ZWD\":\"ZWD\"}}', NULL, 'USD', 'USD', 0, '', 1.00000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, '', '2020-09-09 03:05:02', '2023-11-07 09:41:07'),
(28, 'Nowpayments', 'nowpayments', 16, 'gateway/Ex00xeijrSFMMLPq9vu9vS2en8qJrYGK7h2UaRnD.jpg', 'local', 0, '{\"api_key\":\"\"}', '{\"1\":{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}}', '{\"cron\":\"ipn\"}', 'BTC', 'BTC', 0, '', 1.00000000, 10000.00000000, 0.00000000, 0.50000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(29, 'Khalti Payment', 'khalti', 20, 'gateway/VlbCT034Gs65azidGfnPIXMYJAZn9WZNU2zMu2TV.webp', 'local', 0, '{\"secret_key\":\"\",\"public_key\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, 'NPR', 'NPR', 0, '', 1.00000000, 10000.00000000, 0.00000000, 0.00000000, 132.04000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(30, 'MAGUA PAY', 'swagger', 18, 'gateway/qwuQnqEP4tnAb6jmtlUfh1DPOB3VfEXcqRRAQg7G.png', 'local', 0, '{\"MAGUA_PAY_ACCOUNT\":\"\",\"MerchantKey\":\"\",\"Secret\":\"\"}', '{\"0\":{\"EUR\":\"EUR\"}}', NULL, 'EUR', 'EUR', 0, '', 1.00000000, 10000.00000000, 0.00000000, 0.00000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(31, 'Free kassa', 'freekassa', 13, 'gateway/4PbWh5aYOkx7db95ZG1KoLuaxZmy1k45Sot8tLZj.jpg', 'local', 0, '{\"merchant_id\":\"\",\"merchant_key\":\"\",\"secret_word\":\"\",\"secret_word2\":\"\"}', '{\"0\":{\"RUB\":\"RUB\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"UAH\":\"UAH\",\"KZT\":\"KZT\"}}', '{\"ipn_url\":\"ipn\"}', 'RUB', 'RUB', 0, '', 1.00000000, 10000.00000000, 0.10000000, 0.00000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(32, 'Konnect', 'konnect', 11, 'gateway/OJiGvnWyqXtbWzDb8AGUAdfLW04AlYH472Dl48DO.jpg', 'local', 0, '{\"api_key\":\"\",\"receiver_wallet_Id\":\"\"}', '{\"0\":{\"TND\":\"TND\",\"EUR\":\"EUR\",\"USD\":\"USD\"}}', '{\"webhook\":\"ipn\"}', 'USD', 'USD', 0, '', 1.00000000, 10000.00000000, 0.00000000, 0.00000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(33, 'Mypay Np', 'mypay', 22, 'gateway/Zmes3WQ03on3ptvvWGO4SYTnbJhXPxPW82AlIpGd.png', 'local', 0, '{\"merchant_username\":\"\",\"merchant_api_password\":\"\",\"merchant_id\":\"\",\"api_key\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, 'NPR', 'NPR', 0, '', 1.00000000, 100000.00000000, 1.50000000, 0.00000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(35, 'IME PAY', 'imepay', 4, 'gateway/OMRzJAbBflaVNIGOQCWbOMVuJNQlPswmrGUrroMU.png', 'local', 0, '{\"MerchantModule\":\"\",\"MerchantCode\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, 'NPR', 'NPR', 0, '', 1.00000000, 100000.00000000, 1.50000000, 0.00000000, 1.00000000, '', '2020-09-08 21:05:02', '2023-11-07 09:41:07'),
(36, 'Cashonex Hosted', 'cashonexHosted', 6, 'gateway/ETbtAGBnTYWK5K2EvskbEaRE6z0ZdYTF8mtQYzgm.jpg', 'local', 0, '{\"idempotency_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"USD\":\"USD\"}}', NULL, 'USD', 'USD', 0, '', 1.00000000, 1000.00000000, 0.00000000, 0.00000000, 1.00000000, '', '2023-04-02 18:31:33', '2023-11-07 09:41:07'),
(37, 'cashonex', 'cashonex', 7, 'gateway/4mIrNntIoZkWiHetEhS7rn1znph1CJbhlQsoqC7D.jpg', 'local', 0, '{\"idempotency_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"USD\":\"USD\"}}', NULL, 'USD', 'USD', 0, '', 1.00000000, 1000.00000000, 0.00000000, 0.00000000, 1.00000000, '', '2023-04-02 18:34:54', '2023-11-07 09:41:07'),
(38, 'Binance', 'binance', 5, 'gateway/hZ2xIbR5LetbieQCS8XWHzaoyFIP35P3jW1Wkimt.png', 'local', 0, '{\"mercent_api_key\":\"\",\"mercent_secret\":\"\"}', '{\"1\":{\"ADA\":\"ADA\",\"ATOM\":\"ATOM\",\"AVA\":\"AVA\",\"BCH\":\"BCH\",\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"BUSD\":\"BUSD\",\"CTSI\":\"CTSI\",\"DASH\":\"DASH\",\"DOGE\":\"DOGE\",\"DOT\":\"DOT\",\"EGLD\":\"EGLD\",\"EOS\":\"EOS\",\"ETC\":\"ETC\",\"ETH\":\"ETH\",\"FIL\":\"FIL\",\"FRONT\":\"FRONT\",\"FTM\":\"FTM\",\"GRS\":\"GRS\",\"HBAR\":\"HBAR\",\"IOTX\":\"IOTX\",\"LINK\":\"LINK\",\"LTC\":\"LTC\",\"MANA\":\"MANA\",\"MATIC\":\"MATIC\",\"NEO\":\"NEO\",\"OM\":\"OM\",\"ONE\":\"ONE\",\"PAX\":\"PAX\",\"QTUM\":\"QTUM\",\"STRAX\":\"STRAX\",\"SXP\":\"SXP\",\"TRX\":\"TRX\",\"TUSD\":\"TUSD\",\"UNI\":\"UNI\",\"USDC\":\"USDC\",\"USDT\":\"USDT\",\"WRX\":\"WRX\",\"XLM\":\"XLM\",\"XMR\":\"XMR\",\"XRP\":\"XRP\",\"XTZ\":\"XTZ\",\"XVS\":\"XVS\",\"ZEC\":\"ZEC\",\"ZIL\":\"ZIL\"}}', NULL, 'USDT', 'USDT', 0, '', 1.00000000, 1000.00000000, 0.00000000, 0.00000000, 1.00000000, '', '2023-04-02 19:36:14', '2023-11-07 09:41:07'),
(1000, 'Bank transfer', 'bank-transfer', 1, 'gateway/g1GoOpfEb2GcLq2Q8QvXsGShElz6YjS2tBaUtEQn.png', 'local', 1, '{\"AccountNumber\":{\"field_name\":\"AccountNumber\",\"field_level\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"BeneficiaryName\":{\"field_name\":\"BeneficiaryName\",\"field_level\":\"Beneficiary Name\",\"type\":\"text\",\"validation\":\"required\"},\"NID\":{\"field_name\":\"NID\",\"field_level\":\"NID\",\"type\":\"file\",\"validation\":\"nullable\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"validation\":\"nullable\"}}', NULL, NULL, 'BDT', 'BDT', 0, 'live', 0.10000000, 10000.00000000, 0.00000000, 2.00000000, 84.00000000, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', NULL, '2023-09-10 01:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `input_form` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `input_form`, `status`, `created_at`, `updated_at`) VALUES
(2, '{\"DrivingLiences\":{\"field_name\":\"DrivingLiences\",\"field_level\":\"Driving Liences\",\"type\":\"text\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"validation\":\"required\"},\"PassportDocument\":{\"field_name\":\"PassportDocument\",\"field_level\":\"Passport Document\",\"type\":\"file\",\"validation\":\"required\"}}', 1, '2022-12-10 02:25:32', '2022-12-10 02:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `rtl` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = active, 0 = inactive	',
  `default_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `driver`, `is_active`, `rtl`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'languages/W7yr9z9hIjh98rmdg7QQc7xvpnFmjQyXaKSZl7Rx.png', 'local', 1, 0, 1, '2021-01-20 04:49:29', '2023-05-13 04:48:20'),
(2, 'Spanish', 'es', 'languages/7tkp4upfE0CXM7ZgPFMwOhl2gm8nPt9fOL1DTfhC.jpg', 'local', 1, 0, 0, '2021-01-21 05:33:06', '2023-05-13 04:48:33');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_19_061600_create_basic_controls_table', 1),
(5, '2020_10_20_100935_create_email_controls_table', 1),
(6, '2020_10_24_072526_create_email_templates_table', 1),
(7, '2020_11_07_085217_create_currencies_table', 2),
(8, '2020_11_08_075435_create_charges_limits_table', 3),
(9, '2020_11_09_112425_create_transfers_table', 4),
(10, '2020_11_11_103026_create_wallets_table', 5),
(11, '2020_11_14_065358_create_security_questions_table', 6),
(12, '2020_11_14_085811_create_two_factor_settings_table', 7),
(13, '2020_11_16_074706_create_transactions_table', 8),
(14, '2020_11_16_132223_create_jobs_table', 9),
(15, '2020_11_18_063222_create_exchanges_table', 10),
(16, '2020_11_19_072459_create_request_money_table', 11),
(17, '2020_11_25_060330_create_user_profiles_table', 12),
(18, '2020_11_30_095703_create_redeem_codes_table', 13),
(19, '2020_12_03_103512_create_admins_table', 14),
(20, '2020_12_06_100331_create_escrows_table', 15),
(21, '2020_12_09_064344_create_vouchers_table', 16),
(22, '2020_12_12_112328_create_sms_controls_table', 17),
(23, '2020_12_20_090105_create_sms_templates_table', 18),
(25, '2020_12_24_051324_create_payout_methods_table', 19),
(26, '2020_12_24_081403_create_payouts_table', 20),
(27, '2020_12_31_063516_create_site_notifications_table', 21),
(56, '2021_01_10_080449_create_deposits_table', 22),
(57, '2021_01_12_071930_create_funds_table', 23),
(58, '2021_01_16_121411_create_admin_profiles_table', 24),
(72, '2021_01_16_131037_create_disputes_table', 25),
(73, '2021_01_16_132315_create_dispute_details_table', 25),
(74, '2021_01_20_095223_create_languages_table', 26),
(75, '2021_01_21_101929_create_templates_table', 27),
(76, '2021_01_24_063900_create_template_media_table', 28),
(80, '2021_01_26_122022_create_contents_table', 29),
(81, '2021_01_26_122211_create_content_details_table', 29),
(82, '2021_01_26_122228_create_content_media_table', 29),
(84, '2021_01_31_060855_create_contacts_table', 30),
(85, '2021_01_31_074126_create_subscribes_table', 31),
(86, '2021_03_08_060607_create_referral_bonuses_table', 32),
(87, '2021_03_08_072720_create_commission_entries_table', 33),
(89, '2021_03_15_042634_create_basic_controls_table', 34),
(90, '2019_12_14_000001_create_personal_access_tokens_table', 35);

-- --------------------------------------------------------

--
-- Table structure for table `notify_templates`
--

CREATE TABLE `notify_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `template_key` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `notify_for` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=> Admin, 0=> User',
  `firebase_notify_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active,0=>inactive',
  `lang_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify_templates`
--

INSERT INTO `notify_templates` (`id`, `language_id`, `name`, `template_key`, `body`, `short_keys`, `status`, `notify_for`, `firebase_notify_status`, `lang_code`, `created_at`, `updated_at`) VALUES
(35, 1, 'Login Bonus', 'LOGIN_BONUS', 'Login Commission From [[sender]] amount [[amount]] [[currency]] . Transaction: #[[transaction]]', '{\"sender\":\"Sender Name\",\"amount\":\"Received Amount\",\"currency\":\"Transfer Currency\",\"transaction\":\"Transaction Number\"}', 1, 0, 1, 'en', NULL, NULL),
(36, 1, 'SUPPORT TICKET CREATE', 'SUPPORT_TICKET_CREATE', '[[username]] create a ticket\r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, 1, 'en', '2021-12-05 04:58:45', '2021-12-05 04:58:45'),
(37, 1, 'SUPPORT TICKET REPLIED', 'SUPPORT_TICKET_REPLIED', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, 1, 'en', '2021-12-05 04:58:45', '2021-12-05 04:58:45'),
(38, 1, 'ADMIN REPLIED SUPPORT TICKET ', 'ADMIN_REPLIED_TICKET', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\"}', 1, 0, 1, 'en', '2021-12-05 05:00:17', '2021-12-05 05:00:17'),
(40, 1, 'DEDUCTED BALANCE', 'DEDUCTED_BALANCE', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 0, 1, 'en', NULL, NULL),
(41, 1, 'ADD BALANCE', 'ADD_BALANCE', '[[amount]] [[currency]] credited in your account. \r\n\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 0, 1, 'en', NULL, NULL),
(42, 2, 'DEDUCTED BALANCE', 'DEDUCTED_BALANCE', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\",\"main_balance\":\"Users Balance After this operation\"}', 1, 0, 1, 'es', '2023-02-23 06:38:14', '2023-02-23 06:38:14'),
(43, 1, 'Bill Payment Return', 'BILL_PAYMENT_RETURN', 'your bill pay [[amount]] [[currency]] has been return in [[return_currency]] wallet.\r\nreturn amount [[return_currency_amount]] [[return_currency]]', '{\"amount\":\"amount\",\"currency\":\"currency\",\"return_currency_amount\":\"return_currency_amount\",\"return_currency\":\"return_currency\",\"transaction\":\"transaction\"}', 1, 0, 1, 'en', NULL, NULL),
(44, 1, 'Bill Payment', 'BILL_PAYMENT', 'Your bill [[type]] [[amount]] [[currency]] has been paid.', '{\"type\":\"Type\",\"amount\":\"Payable Amount\",\"currency\":\"Payable Currency\",\"transaction\":\"Transaction\"}', 1, 0, 1, 'en', NULL, NULL),
(45, 2, 'Bill Payment', 'BILL_PAYMENT', 'Your bill [[type]] [[amount]] [[currency]] has been paid.', '{\"type\":\"Type\",\"amount\":\"Payable Amount\",\"currency\":\"Payable Currency\",\"transaction\":\"Transaction\"}', 1, 0, 1, 'es', '2023-09-10 03:36:14', '2023-09-10 03:36:14'),
(46, 2, 'ADMIN REPLIED SUPPORT TICKET ', 'ADMIN_REPLIED_TICKET', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\"}', 1, 0, 1, 'es', '2023-09-10 03:37:52', '2023-09-10 03:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_notifications`
--

CREATE TABLE `site_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_notificational_id` int(11) NOT NULL,
  `site_notificational_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_controls`
--

CREATE TABLE `sms_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actionMethod` varchar(255) DEFAULT NULL,
  `actionUrl` varchar(255) DEFAULT NULL,
  `headerData` text DEFAULT NULL,
  `paramData` text DEFAULT NULL,
  `formData` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_controls`
--

INSERT INTO `sms_controls` (`id`, `actionMethod`, `actionUrl`, `headerData`, `paramData`, `formData`, `created_at`, `updated_at`) VALUES
(1, 'POST', 'https://rest.nexmo.com/sms/json', '{\"Content-Type\":\"application\\/x-www-form-urlencoded\"}', NULL, '{\"from\":\"Rownak\",\"text\":\"[[message]]\",\"to\":\"[[receiver]]\",\"api_key\":\"930cc608\",\"api_secret\":\"2pijsaMOUw5YKOK5\"}', '2020-12-13 01:45:29', '2022-06-29 00:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>inactive,1=>active',
  `parameters` text DEFAULT NULL COMMENT 'storage credentials',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `code`, `name`, `logo`, `driver`, `status`, `parameters`, `created_at`, `updated_at`) VALUES
(1, 's3', 'Amazon S3', 'driver/EFxmMGx4yzhFgEXsgDhwZwkR1WVqQF0hhgLSH8i3.png', 'local', 0, '{\"access_key_id\":\"xys6\",\"secret_access_key\":\"xys\",\"default_region\":\"xys5\",\"bucket\":\"xys6\",\"url\":\"xysds\"}', NULL, '2023-05-10 04:19:08'),
(3, 'sftp', 'SFTP', 'driver/dmgfZuCpBvK1NZsBHAVWIRfHO3UdxPW6XQ4hhGrq.png', 'local', 0, '{\"sftp_username\":\"xys6\",\"sftp_password\":\"xys\"}', NULL, '2023-05-10 04:22:01'),
(4, 'do', 'Digitalocean Spaces', 'driver/EXMkjY57uSHf4HW66gxmbcPWmOJBejW6qBWtItme.png', 'local', 0, '{\"spaces_key\":\"hj\",\"spaces_secret\":\"vh\",\"spaces_endpoint\":\"jk\",\"spaces_region\":\"sfo2\",\"spaces_bucket\":\"assets-coral\"}', NULL, '2023-05-10 04:21:28'),
(5, 'ftp', 'FTP', 'driver/DBztVoKVYymWD773burMSGGzyGnaWMqd3pXepRC7.png', 'local', 0, '{\"ftp_host\":\"xys6\",\"ftp_username\":\"xys\",\"ftp_password\":\"xys6\"}', NULL, '2023-05-10 04:21:46'),
(6, 'local', 'Local Storage', 'driver/local.png', 'local', 1, '', NULL, '2023-03-12 04:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `language_id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(91, 1, 'hero', '{\"title\":\"Digitalize your financiacials\",\"button_name\":\"Get Started\"}', '2023-07-20 01:17:44', '2023-08-08 03:44:41'),
(92, 1, 'feature', '{\"heading\":\"FEATURE\",\"title\":\"Our Special Features\",\"short_description\":\"Connect your money to your friends &amp; family from anywhere, anytime regardless any delay. Lorem ipsum Nullana integer sagittis, eleifend. met, aliquere.\"}', '2023-07-20 01:18:44', '2023-07-20 01:18:44'),
(93, 1, 'about-us', '{\"heading\":\"ABOUT US\",\"title\":\"Empowering Convenient Bill Payments\",\"button_name\":\"Learn More\",\"short_description\":\"\\\"Introducing our cutting-edge bill payment service! At Bill Pay, we\'ve revolutionized the way you manage your monthly expenses. With a commitment to simplicity and efficiency, we offer a streamlined platform that empowers you to effortlessly handle your bills. Our extensive array of payment methods, including popular options like credit\\/debit cards, online banking, and more, ensures that you have the flexibility to choose how you pay. You can set up automated payments, so your bills are paid on time, without the worry of late fees. Plus, our platform is customizable to suit your unique needs, and we prioritize the security of your financial data. Our dedicated customer support team is always at your service, ensuring a smooth and hassle-free experience. Join our community of satisfied users and say goodbye to bill-related stress. Discover the future of efficient bill management with Bill Pay today.\\\"\\r\\n\\r\\nFeel free to use this paragraph as your item description, and customize it further to align with your specific offerings and target audience.\"}', '2023-07-20 01:23:08', '2023-11-07 03:57:10'),
(94, 1, 'how-it-work', '{\"heading\":\"HOW IT WORKS\",\"title\":\"How Does bill payment Work?\",\"short_description\":\"Bill payment is a fundamental financial activity that individuals and businesses undertake regularly to cover various expenses. Understanding how bill payment works is crucial for managing your finances effectively. In this guide, we\'ll walk you through the typical process of paying bills.\"}', '2023-07-20 01:26:21', '2023-11-07 03:45:47'),
(95, 1, 'why-choose-us', '{\"heading\":\"WHY CHOOSE US\",\"title\":\"Why choose our bill payments system\"}', '2023-07-20 01:27:35', '2023-07-20 01:27:35'),
(96, 1, 'testimonial', '{\"heading\":\"TESTIMONIAL\",\"title\":\"What Clients Say\",\"short_description\":\"Help agencies to define their new business objectives and then create professional software. Lorem ipsum, dolor sit amet\"}', '2023-07-20 01:28:22', '2023-07-20 01:28:22'),
(97, 1, 'faq', '{\"heading\":\"FAQ\",\"title\":\"Clients satifections\",\"short_description\":\"Please note that not all billers are supported by our service. You can check our website to see a list of supported billers.\"}', '2023-07-20 01:29:03', '2023-07-20 01:29:03'),
(98, 1, 'blog', '{\"heading\":\"OUR BLOG\",\"title\":\"Latest Blogs &amp; Articles\",\"short_description\":\"In today\'s fast-paced world, managing bill payments can become a tedious and time-consuming task. Fortunately, with the advent of online payment services, you can simplify the process and gain more control over your financial obligations.\"}', '2023-07-20 01:29:47', '2023-07-20 01:29:47'),
(99, 1, 'app-section', '{\"title\":\"Download our App to get all kinds of Payment benefits from anywhere\"}', '2023-07-20 01:30:00', '2023-07-20 01:30:00'),
(100, 1, 'newsletter', '{\"title\":\"Subscribe to our newsletter\"}', '2023-07-20 01:30:15', '2023-07-20 01:30:15'),
(101, 1, 'contact', '{\"title\":\"Contact Information\",\"short_description\":\"Give us a call or drop by anytime, we endeavour to answer all enquiries within 24 hours on business days. We will be happy to answer your questions.\",\"phone\":\"+45345847431324\",\"email\":\"demo@example.com\",\"location\":\"22 Baker Street, London\",\"about_company\":\"Our logo represents our commitment to simplifying business finances. With a focus on efficiency, security, and savings, we provide businesses with a streamlined bill management solution. Trust in our platform to optimize your financial operations.\"}', '2023-07-20 01:31:15', '2023-11-07 04:43:50'),
(102, 1, 'login', '{\"title\":\"Welcome back!\",\"sub_title\":\"Hey Enter your details to get sign in to your account\"}', '2023-07-20 01:32:42', '2023-07-20 01:32:42'),
(103, 1, 'register', '{\"title\":\"Welcome To Adventure!\",\"sub_title\":\"Hey Enter your details to get sign up to your account\"}', '2023-07-20 01:32:57', '2023-07-20 01:32:57'),
(104, 1, 'forget-password', '{\"title\":\"Forgot Password?\",\"sub_title\":\"Hey Enter your details to recover your account\"}', '2023-07-20 01:33:13', '2023-07-20 01:33:13'),
(105, 1, 'reset-password', '{\"title\":\"Reset Password?\",\"sub_title\":\"Hey Enter your details to reset your password\"}', '2023-07-20 01:33:27', '2023-07-20 01:33:27'),
(106, 1, 'email-verification', '{\"title\":\"Verification here!\",\"sub_title\":\"Hey Enter your code to verify email\"}', '2023-07-20 01:33:47', '2023-08-09 02:04:02'),
(107, 1, 'sms-verification', '{\"title\":\"Verification here!\",\"sub_title\":\"Hey Enter your code to verify phone number\"}', '2023-07-20 01:34:01', '2023-08-09 02:07:38'),
(108, 2, 'hero', '{\"title\":\"Digitaliza tus finanzas\",\"button_name\":\"Empezar\"}', '2023-09-13 22:43:04', '2023-09-13 22:43:04'),
(109, 2, 'feature', '{\"heading\":\"CARACTER\\u00cdSTICA\",\"title\":\"Nuestras caracter\\u00edsticas especiales\",\"short_description\":\"Conecte su dinero con sus amigos y familiares desde cualquier lugar y en cualquier momento, sin importar ning\\u00fan retraso. Lorem ipsum Nullana entero sagittis, eleifend. conoci\\u00f3, aliquere.\"}', '2023-09-13 22:44:16', '2023-09-13 22:44:16'),
(110, 2, 'about-us', '{\"heading\":\"Sobre nosotros\",\"title\":\"Somos un sistema de recarga, pago y reserva.\",\"button_name\":\"Aprende m\\u00e1s\",\"short_description\":\"\\\"Introducing our cutting-edge bill payment service! At Bill Pay, we\'ve revolutionized the way you manage your monthly expenses. With a commitment to simplicity and efficiency, we offer a streamlined platform that empowers you to effortlessly handle your bills. Our extensive array of payment methods, including popular options like credit\\/debit cards, online banking, and more, ensures that you have the flexibility to choose how you pay. You can set up automated payments, so your bills are paid on time, without the worry of late fees. Plus, our platform is customizable to suit your unique needs, and we prioritize the security of your financial data. Our dedicated customer support team is always at your service, ensuring a smooth and hassle-free experience. Join our community of satisfied users and say goodbye to bill-related stress. Discover the future of efficient bill management with Bill Pay today.\\\"\\r\\n\\r\\nFeel free to use this paragraph as your item description, and customize it further to align with your specific offerings and target audience.\"}', '2023-09-13 22:45:49', '2023-11-07 03:57:33'),
(111, 2, 'how-it-work', '{\"heading\":\"C\\u00d3MO FUNCIONA\",\"title\":\"C\\u00f3mo funciona el pago de facturas?\",\"short_description\":\"Bill payment is a fundamental financial activity that individuals and businesses undertake regularly to cover various expenses. Understanding how bill payment works is crucial for managing your finances effectively. In this guide, we\'ll walk you through the typical process of paying bills.\"}', '2023-09-13 22:46:38', '2023-11-07 03:45:53'),
(112, 2, 'why-choose-us', '{\"heading\":\"POR QU\\u00c9 ELEGIRNOS\",\"title\":\"Por qu\\u00e9 elegir nuestro sistema de pago de facturas?\"}', '2023-09-13 22:47:16', '2023-09-13 22:47:16'),
(113, 2, 'testimonial', '{\"heading\":\"TESTIMONIAL\",\"title\":\"Lo que dicen los clientes\",\"short_description\":\"Ayude a las agencias a definir sus nuevos objetivos comerciales y luego crear software profesional. Lorem ipsum, dolor sit amet\"}', '2023-09-13 22:48:04', '2023-09-13 22:48:04'),
(114, 2, 'faq', '{\"heading\":\"Preguntas m\\u00e1s frecuentes\",\"title\":\"Satisfacci\\u00f3n de los clientes\",\"short_description\":\"Tenga en cuenta que no todos los emisores de facturas cuentan con el respaldo de nuestro servicio. Puede consultar nuestro sitio web para ver una lista de facturadores admitidos.\"}', '2023-09-13 22:48:52', '2023-09-13 22:49:00'),
(115, 2, 'blog', '{\"heading\":\"Nuestro blog\",\"title\":\"\\u00daltimos blogs y actualizaciones Art\\u00edculos\",\"short_description\":\"En el acelerado mundo actual, gestionar el pago de facturas puede convertirse en una tarea tediosa y que requiere mucho tiempo. Afortunadamente, con la llegada de los servicios de pago en l\\u00ednea, puedes simplificar el proceso y obtener m\\u00e1s control sobre tus obligaciones financieras.\"}', '2023-09-13 22:49:51', '2023-09-13 22:49:51'),
(116, 2, 'app-section', '{\"title\":\"Descarga nuestra App para obtener todo tipo de beneficios de Pago desde cualquier lugar\"}', '2023-09-13 22:50:13', '2023-09-13 22:50:13'),
(117, 2, 'newsletter', '{\"title\":\"Suscr\\u00edbete a nuestro bolet\\u00edn\"}', '2023-09-13 22:50:28', '2023-09-13 22:50:28'),
(118, 2, 'contact', '{\"title\":\"Informaci\\u00f3n del contacto\",\"short_description\":\"Ll\\u00e1menos o vis\\u00edtenos en cualquier momento, nos esforzamos por responder todas las consultas dentro de las 24 horas en d\\u00edas h\\u00e1biles. Estaremos encantados de responder a sus preguntas.\",\"phone\":\"+45345847431324\",\"email\":\"demo@example.com\",\"location\":\"22 Baker Street, Londres\",\"about_company\":\"Our logo represents our commitment to simplifying business finances. With a focus on efficiency, security, and savings, we provide businesses with a streamlined bill management solution. Trust in our platform to optimize your financial operations.\"}', '2023-09-13 22:51:48', '2023-11-07 04:43:57'),
(119, 2, 'login', '{\"title\":\"\\u00a1Bienvenido de nuevo!\",\"sub_title\":\"Hola, ingresa tus datos para iniciar sesi\\u00f3n en tu cuenta.\"}', '2023-09-13 22:52:13', '2023-09-13 22:52:13'),
(120, 2, 'register', '{\"title\":\"\\u00a1Bienvenidos a la aventura!\",\"sub_title\":\"Hola, ingresa tus datos para registrarte en tu cuenta.\"}', '2023-09-13 22:52:43', '2023-09-13 22:52:43'),
(121, 2, 'forget-password', '{\"title\":\"Has olvidado tu contrase\\u00f1a?\",\"sub_title\":\"Hola, ingresa tus datos para recuperar tu cuenta.\"}', '2023-09-13 22:53:09', '2023-09-13 22:53:09'),
(122, 2, 'reset-password', '{\"title\":\"Restablecer la contrase\\u00f1a?\",\"sub_title\":\"Hola, ingresa tus datos para restablecer tu contrase\\u00f1a.\"}', '2023-09-13 22:53:34', '2023-09-13 22:53:34'),
(123, 2, 'email-verification', '{\"title\":\"Verificaci\\u00f3n aqu\\u00ed!\",\"sub_title\":\"Hola, ingresa tu c\\u00f3digo para verificar el correo electr\\u00f3nico.\"}', '2023-09-13 22:54:11', '2023-09-13 22:54:11'),
(124, 2, 'sms-verification', '{\"title\":\"Verificaci\\u00f3n aqu\\u00ed!\",\"sub_title\":\"Hola, ingresa tu c\\u00f3digo para verificar el n\\u00famero de tel\\u00e9fono.\"}', '2023-09-13 22:54:37', '2023-09-13 22:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `template_media`
--

CREATE TABLE `template_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_media`
--

INSERT INTO `template_media` (`id`, `section_name`, `description`, `driver`, `created_at`, `updated_at`) VALUES
(23, 'hero', '{\"image\":\"templates\\/XxWYI9FFRerOvZxTmD4smiEXv7Ym497uNxdt7rbn.png\",\"video\":null,\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/3iic-AYqm9E\",\"button_link\":\"https:\\/\\/www.bugfinder.net\\/\"}', 'local', '2023-07-20 01:17:44', '2023-08-08 04:07:57'),
(24, 'about-us', '{\"image\":\"templates\\/gaNsBu90nCnFMOISZNA5oGvT5LolJ5GoyT6olYJF.jpg\",\"video\":null,\"button_link\":\"https:\\/\\/www.bugfinder.net\\/\"}', 'local', '2023-07-20 01:23:08', '2023-10-28 07:05:33'),
(25, 'why-choose-us', '{\"image\":\"templates\\/cPAjDIf3hAVFZBdfWWC7YMlAh0KT9mUE0sOrzbf7.jpg\"}', 'local', '2023-07-20 01:27:35', '2023-07-20 01:27:36'),
(26, 'faq', '{\"image\":\"templates\\/7W8p4nDTb3PRYzt4fWf9hWQZ8rhWhlwWj7IPSbNc.jpg\"}', 'local', '2023-07-20 01:29:03', '2023-07-20 01:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(91) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed	',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `driver` varchar(51) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactional_id` int(11) NOT NULL,
  `transactional_type` varchar(255) NOT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `currency_code` varchar(10) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `balance` decimal(18,8) DEFAULT 0.00000000,
  `language_id` bigint(20) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `sms_verification` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `verify_code` varchar(10) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `two_fa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: two-FA off, 1: two-FA on	',
  `two_fa_verify` tinyint(1) NOT NULL DEFAULT 1 COMMENT '	0: two-FA unverified, 1: two-FA verified	',
  `two_fa_code` varchar(20) DEFAULT NULL,
  `kyc_verified` tinyint(4) DEFAULT NULL COMMENT '0=> not verified, 1=>pending , 2=> verified 3=>rejected	',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `github_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `email_key` text DEFAULT NULL COMMENT 'email notification active template key',
  `sms_key` text DEFAULT NULL COMMENT '	sms notification active template key',
  `push_key` text DEFAULT NULL COMMENT '	push notification active template key',
  `in_app_key` text DEFAULT NULL COMMENT '	in app notification active template key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_kycs`
--

CREATE TABLE `user_kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kyc_info` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>pending , 1=> verified, 2=>rejected',
  `reason` longtext DEFAULT NULL COMMENT 'rejected reason',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `phone_code` varchar(8) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_profiles_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `basic_controls`
--
ALTER TABLE `basic_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_methods`
--
ALTER TABLE `bill_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_pays`
--
ALTER TABLE `bill_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_pays_method_id_index` (`method_id`),
  ADD KEY `bill_pays_user_id_index` (`user_id`),
  ADD KEY `bill_pays_service_id_index` (`service_id`);

--
-- Indexes for table `bill_services`
--
ALTER TABLE `bill_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_services_bill_method_id_index` (`bill_method_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_details`
--
ALTER TABLE `content_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_details_content_id_foreign` (`content_id`),
  ADD KEY `content_details_language_id_foreign` (`language_id`);

--
-- Indexes for table `content_media`
--
ALTER TABLE `content_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_media_content_id_foreign` (`content_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`),
  ADD KEY `deposits_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `firebase_notifies`
--
ALTER TABLE `firebase_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funds_user_id_foreign` (`user_id`),
  ADD KEY `funds_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_code_unique` (`code`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `site_notifications`
--
ALTER TABLE `site_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_controls`
--
ALTER TABLE `sms_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `template_media`
--
ALTER TABLE `template_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_attachments_ticket_message_id_foreign` (`ticket_message_id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_messages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_kycs`
--
ALTER TABLE `user_kycs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_kycs_user_id_index` (`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `basic_controls`
--
ALTER TABLE `basic_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_methods`
--
ALTER TABLE `bill_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill_pays`
--
ALTER TABLE `bill_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_services`
--
ALTER TABLE `bill_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `content_details`
--
ALTER TABLE `content_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `content_media`
--
ALTER TABLE `content_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firebase_notifies`
--
ALTER TABLE `firebase_notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `notify_templates`
--
ALTER TABLE `notify_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_notifications`
--
ALTER TABLE `site_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_controls`
--
ALTER TABLE `sms_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `template_media`
--
ALTER TABLE `template_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_kycs`
--
ALTER TABLE `user_kycs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  ADD CONSTRAINT `admin_profiles_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `content_details`
--
ALTER TABLE `content_details`
  ADD CONSTRAINT `content_details_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  ADD CONSTRAINT `content_details_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `content_media`
--
ALTER TABLE `content_media`
  ADD CONSTRAINT `content_media_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`);

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `funds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD CONSTRAINT `notify_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ticket_message_id_foreign` FOREIGN KEY (`ticket_message_id`) REFERENCES `ticket_messages` (`id`);

--
-- Constraints for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `ticket_messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `ticket_messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
