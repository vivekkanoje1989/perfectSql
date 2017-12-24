-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2017 at 11:59 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 1, '2017-03-28 14:24:00', '2017-03-28 01:00:00', NULL, 'hello', NULL, NULL, 0),
(2, 'pending', 1, '2017-03-28 14:42:59', '2017-04-02 14:55:50', NULL, NULL, NULL, NULL, 0),
(3, 'pending', 2, '2017-03-29 15:45:00', '2017-03-29 15:45:07', NULL, NULL, NULL, NULL, 0),
(4, 'incomplete', 2, '2017-03-29 15:45:10', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Theme & Design', 'Banjara hills', 'haidrabaad', 'Tamilnadu', '7788900', 'India', '2017-03-28', 'www.themesdesign.com', '0712898956', '', '', 0, '', '', 0),
(2, 'Prisma', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT '0',
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\n <tbody><tr>\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n <tbody><tr>\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\n                                        <tbody><tr>\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                        <tbody>\n                                                            <tr>\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\n                                                                        <tbody><tr>\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\n                                                                                </td>\n                                                                            </tr>\n                                                                        </tbody>\n                                                                    </table>\n                                                                </td>\n                                                            </tr>\n                                                        </tbody>\n                                                    </table>\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                        <tbody>\n                                                            <tr>\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\n                                                                        <tbody><tr>\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\n                                                                                    Hello,<br>\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\n                                                                                    Thank you for your business cooperation.\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                                                        <tbody>\n                                                                                            <tr>\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                                                                        <tbody>\n                                                                                                            <tr>\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\n                                                                                                                </td>\n                                                                                                            </tr>\n                                                                                                        </tbody>\n                                                                                                    </table>\n                                                                                                </td>\n                                                                                            </tr>\n                                                                                        </tbody>\n                                                                                    </table>\n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \n                                                                                    \n                                                                                </td>\n                                                                            </tr>\n                                                                            <tr>\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \n  {SIGNATURE}\n  </td>\n </tr>\n </tbody>\n  </table>\n  </td>\n  </tr>\n  </tbody>\n </table>\n  </td>\n </tr>\n  </tbody>\n  </table>\n  </td>\n </tr>\n </tbody>\n </table>\n </td>\n </tr>\n </tbody>\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `enable_attachment` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `deleted`, `color`) VALUES
(1, 'Devop', 'Come to var', '2017-02-26', '2017-02-26', '01:00:00', '22:00:00', 1, 'Saint Prk', 1, '', 'all', 0, '#83c340');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `help_articles`
--

CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `total_views` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_categories`
--

CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_invoice_id` int(11) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date NOT NULL DEFAULT '0000-00-00',
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `unit_type`, `rate`, `deleted`) VALUES
(1, 'Devolope page', 'New Un', 'pc', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 1, '2017-03-28', '2017-04-06', '80.00', '10.00', 1, 'cold and cough', 'approved', '2017-03-28 12:17:58', 0, '2017-03-28 12:18:16', 1, 0),
(2, 1, '2017-03-29', '2017-03-29', '8.00', '1.00', 2, 'lol', 'pending', '2017-03-29 15:49:08', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Casual Leave', 'active', '#83c340', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'hi', 'hello', '2017-03-29 15:47:22', 2, 1, 'read', 0, 0, 'a:0:{}', ''),
(2, '', 'hello', '2017-03-29 16:02:18', 1, 2, 'unread', 1, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `deleted`) VALUES
(1, 1, '2017-03-28 14:35:52', 'well', 'be', 0, 0, 0, 'Important', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `deleted`) VALUES
(1, 1, '', '2017-03-28 12:18:16', '', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 0, 0, '', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 0, 1, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 0, 1, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 0, 0, '', '', '', 7, 0),
(8, 'project_task_finished', 'project', 0, 0, '', '', '', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 0, 0, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 0, 0, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 0, 1, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 0, 0, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 0, 0, '', '', '', 32, 0),
(33, 'estimate_sent', 'estimate', 0, 0, '', '', '', 33, 0),
(34, 'estimate_accepted', 'estimate', 0, 0, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 0, '', '', '', 36, 0),
(37, 'message_reply_sent', 'message', 0, 0, '', '', '', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 0, 0, '', '', '', 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 1, '2017-03-28 12:20:17', 'fgfbfb', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:61:\"timeline_post_file58da550140671-Mani-Taee-20160713_073558.jpg\";s:9:\"file_size\";s:5:\"22168\";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('open','completed','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `deleted`) VALUES
(1, 'Mahopatra', 'web in codeigniter', '2017-03-01', '2017-04-27', 1, '2017-03-28', 1, 'open', 'Urgent', 1239, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_settings`
--

CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Manager', 'a:30:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;}', 0),
(2, 'Employee', 'a:30:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;}', 0),
(3, 'Lead', 'a:30:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:3:\"all\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `deleted`) VALUES
('accepted_file_formats', 'jpg,jpeg,doc', 0),
('allowed_ip_addresses', '', 0),
('app_title', 'Rise', 0),
('company_email', 'vivekkanoje189@gmail.com', 0),
('currency_position', 'left', 0),
('currency_symbol', '$', 0),
('date_format', 'Y-m-d', 0),
('decimal_separator', '.', 0),
('default_currency', 'USD', 0),
('email_sent_from_address', 'vivekkanoje189@gmail.com', 0),
('email_sent_from_name', 'Vivek', 0),
('first_day_of_week', '0', 0),
('invoice_logo', 'default-invoice-logo.png', 0),
('item_purchase_code', 'richa', 0),
('language', 'english', 0),
('module_announcement', '1', 0),
('module_attendance', '1', 0),
('module_estimate', '1', 0),
('module_estimate_request', '1', 0),
('module_event', '1', 0),
('module_expense', '1', 0),
('module_help', '1', 0),
('module_invoice', '1', 0),
('module_knowledge_base', '1', 0),
('module_leave', '1', 0),
('module_message', '1', 0),
('module_note', '1', 0),
('module_project_timesheet', '1', 0),
('module_ticket', '1', 0),
('module_timeline', '1', 0),
('rows_per_page', '10', 0),
('scrollbar', 'jquery', 0),
('show_background_image_in_signin_page', 'no', 0),
('show_logo_in_signin_page', 'yes', 0),
('site_logo', 'default-stie-logo.png', 0),
('time_format', 'small', 0),
('timezone', 'UTC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date NOT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'Tax (10%)', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'Manager', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date NOT NULL DEFAULT '0000-00-00',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `deleted`) VALUES
(1, 'Vivek', 'Kanoje', 'staff', 1, 0, 'vivekkanoje189@gmail.com', '0a698c2828f73d714836b4f58aa97384', NULL, 'active', '2017-03-28 12:21:40', 0, '2017-03-28 12:21:38', 0, 'Admin', 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'male', 'm  k l l ; jbhbhbjh', NULL, 1, 1, '2017-03-28 13:23:57', 0),
(2, 'Richa', 'Dixit', 'staff', 0, 0, 'vivekkanoje89@gmail.com', '0a698c2828f73d714836b4f58aa97384', NULL, 'active', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1, 'Employee', 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'female', NULL, NULL, 1, 1, '2017-03-28 11:32:36', 0),
(3, 'Vijay', 'nandanwar', 'client', 0, 0, 'vjnndnwr@gmail.com', '0a698c2828f73d714836b4f58aa97384', NULL, 'active', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'male', NULL, NULL, 1, 1, '2017-03-28 14:04:38', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_articles`
--
ALTER TABLE `help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_categories`
--
ALTER TABLE `help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_settings`
--
ALTER TABLE `project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indexes for table `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `help_articles`
--
ALTER TABLE `help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `help_categories`
--
ALTER TABLE `help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
