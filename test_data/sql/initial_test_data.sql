-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ghost
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(24) NOT NULL,
  `resource_id` varchar(24) DEFAULT NULL,
  `resource_type` varchar(50) NOT NULL,
  `actor_id` varchar(24) NOT NULL,
  `actor_type` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `context` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('63a8726e0abef80001ecfd84','63a871970abef80001ecfd2e','setting','1','user','edited','{\"key\":\"title\",\"group\":\"site\"}','2022-12-25 15:55:26'),('63a8726e0abef80001ecfd85','63a871970abef80001ecfd2f','setting','1','user','edited','{\"key\":\"description\",\"group\":\"site\"}','2022-12-25 15:55:26'),('63a872a30abef80001ecfd87','1','user','1','user','edited','{\"primary_name\":\"Testing\"}','2022-12-25 15:56:19'),('63a872b10abef80001ecfd8a','63a872b10abef80001ecfd89','api_key','1','user','added','{}','2022-12-25 15:56:33'),('63a872b10abef80001ecfd8c','63a872b10abef80001ecfd8b','api_key','1','user','added','{}','2022-12-25 15:56:33'),('63a872b10abef80001ecfd8d','63a872b10abef80001ecfd88','integration','1','user','added','{\"primary_name\":\"Testing\"}','2022-12-25 15:56:33');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `role_id` varchar(24) DEFAULT NULL,
  `integration_id` varchar(24) DEFAULT NULL,
  `user_id` varchar(24) DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `last_seen_version` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_secret_unique` (`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES ('63a871970abef80001ecfbf9','ghost_api','86096ce34fcdc6f831fc8a645a5a29dd1d4fe9aca27360d6f7eef52c76822984','63a871960abef80001ecfb7f','63a871970abef80001ecfbf8',NULL,NULL,NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbfb','ghost_api','c0eca072c4caf847fb8c5f67af0ab8256ba2926025a08fd07750bd5450844026','63a871960abef80001ecfb80','63a871970abef80001ecfbfa',NULL,NULL,NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbfd','ghost_api','58a7f1d2deddccc68b2d780456c4c2eba52e70ece1fed41dc044bd8b2da028c4','63a871960abef80001ecfb81','63a871970abef80001ecfbfc',NULL,NULL,NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbff','ghost_api','8857b22d6a7e152a58c3e6377d97f3fb2e7169c26b071cb286830ec43c203ecf','63a871960abef80001ecfb82','63a871970abef80001ecfbfe',NULL,NULL,NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfc01','content','5f55b62c7df9ffe6f781a514eb',NULL,'63a871970abef80001ecfc00',NULL,NULL,NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a872b10abef80001ecfd89','content','18e95ea80dcbf2a8ff834ee5a8',NULL,'63a872b10abef80001ecfd88',NULL,NULL,NULL,'2022-12-25 15:56:34','1','2022-12-25 15:56:34','1'),('63a872b10abef80001ecfd8b','ghost_api','15c0404660e3c6bd12a62c05672d69804f175818c33fe633500fd05f6c70bb60','63a871960abef80001ecfb7f','63a872b10abef80001ecfd88',NULL,NULL,NULL,'2022-12-25 15:56:34','1','2022-12-25 15:56:34','1');
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `benefits_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brute`
--

DROP TABLE IF EXISTS `brute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brute` (
  `key` varchar(191) NOT NULL,
  `firstRequest` bigint NOT NULL,
  `lastRequest` bigint NOT NULL,
  `lifetime` bigint NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brute`
--

LOCK TABLES `brute` WRITE;
/*!40000 ALTER TABLE `brute` DISABLE KEYS */;
INSERT INTO `brute` VALUES ('+EBMYzqGREPYN/i25XtIWvhq47/XgIbxqnqynqTUIf8=',1671983726630,1671983726630,1671987326632,1);
/*!40000 ALTER TABLE `brute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_likes`
--

DROP TABLE IF EXISTS `comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_likes` (
  `id` varchar(24) NOT NULL,
  `comment_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_likes_comment_id_foreign` (`comment_id`),
  KEY `comment_likes_member_id_foreign` (`member_id`),
  CONSTRAINT `comment_likes_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_likes_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_likes`
--

LOCK TABLES `comment_likes` WRITE;
/*!40000 ALTER TABLE `comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_reports`
--

DROP TABLE IF EXISTS `comment_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_reports` (
  `id` varchar(24) NOT NULL,
  `comment_id` varchar(24) NOT NULL,
  `member_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_reports_comment_id_foreign` (`comment_id`),
  KEY `comment_reports_member_id_foreign` (`member_id`),
  CONSTRAINT `comment_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_reports_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_reports`
--

LOCK TABLES `comment_reports` WRITE;
/*!40000 ALTER TABLE `comment_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `member_id` varchar(24) DEFAULT NULL,
  `parent_id` varchar(24) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `html` longtext,
  `edited_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_member_id_foreign` (`member_id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  CONSTRAINT `comments_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_theme_settings`
--

DROP TABLE IF EXISTS `custom_theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_theme_settings` (
  `id` varchar(24) NOT NULL,
  `theme` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_theme_settings`
--

LOCK TABLES `custom_theme_settings` WRITE;
/*!40000 ALTER TABLE `custom_theme_settings` DISABLE KEYS */;
INSERT INTO `custom_theme_settings` VALUES ('63a871980abef80001ecfd74','casper','navigation_layout','select','Logo on cover'),('63a871980abef80001ecfd75','casper','title_font','select','Modern sans-serif'),('63a871980abef80001ecfd76','casper','body_font','select','Elegant serif'),('63a871980abef80001ecfd77','casper','show_publication_cover','boolean','true'),('63a871980abef80001ecfd78','casper','header_style','select','Center aligned'),('63a871980abef80001ecfd79','casper','feed_layout','select','Classic'),('63a871980abef80001ecfd7a','casper','color_scheme','select','Light'),('63a871980abef80001ecfd7b','casper','post_image_style','select','Wide'),('63a871980abef80001ecfd7c','casper','email_signup_text','text','Sign up for more like this.'),('63a871980abef80001ecfd7d','casper','show_recent_posts_footer','boolean','true');
/*!40000 ALTER TABLE `custom_theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_batches`
--

DROP TABLE IF EXISTS `email_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_batches` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `member_segment` text,
  `error_status_code` int unsigned DEFAULT NULL,
  `error_message` varchar(2000) DEFAULT NULL,
  `error_data` longtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_batches_email_id_foreign` (`email_id`),
  CONSTRAINT `email_batches_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_batches`
--

LOCK TABLES `email_batches` WRITE;
/*!40000 ALTER TABLE `email_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_recipient_failures`
--

DROP TABLE IF EXISTS `email_recipient_failures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_recipient_failures` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `member_id` varchar(24) DEFAULT NULL,
  `email_recipient_id` varchar(24) NOT NULL,
  `code` int unsigned NOT NULL,
  `enhanced_code` varchar(50) DEFAULT NULL,
  `message` varchar(2000) NOT NULL,
  `severity` varchar(50) NOT NULL DEFAULT 'permanent',
  `failed_at` datetime NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_recipient_failures_email_id_foreign` (`email_id`),
  KEY `email_recipient_failures_email_recipient_id_foreign` (`email_recipient_id`),
  CONSTRAINT `email_recipient_failures_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`),
  CONSTRAINT `email_recipient_failures_email_recipient_id_foreign` FOREIGN KEY (`email_recipient_id`) REFERENCES `email_recipients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_recipient_failures`
--

LOCK TABLES `email_recipient_failures` WRITE;
/*!40000 ALTER TABLE `email_recipient_failures` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_recipient_failures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_recipients`
--

DROP TABLE IF EXISTS `email_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_recipients` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `batch_id` varchar(24) NOT NULL,
  `processed_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `member_uuid` varchar(36) NOT NULL,
  `member_email` varchar(191) NOT NULL,
  `member_name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_recipients_member_id_index` (`member_id`),
  KEY `email_recipients_batch_id_foreign` (`batch_id`),
  KEY `email_recipients_delivered_at_index` (`delivered_at`),
  KEY `email_recipients_opened_at_index` (`opened_at`),
  KEY `email_recipients_failed_at_index` (`failed_at`),
  KEY `email_recipients_email_id_member_email_index` (`email_id`,`member_email`),
  CONSTRAINT `email_recipients_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `email_batches` (`id`),
  CONSTRAINT `email_recipients_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_recipients`
--

LOCK TABLES `email_recipients` WRITE;
/*!40000 ALTER TABLE `email_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_spam_complaint_events`
--

DROP TABLE IF EXISTS `email_spam_complaint_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_spam_complaint_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `email_address` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_spam_complaint_events_email_id_member_id_unique` (`email_id`,`member_id`),
  KEY `email_spam_complaint_events_member_id_foreign` (`member_id`),
  CONSTRAINT `email_spam_complaint_events_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`),
  CONSTRAINT `email_spam_complaint_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_spam_complaint_events`
--

LOCK TABLES `email_spam_complaint_events` WRITE;
/*!40000 ALTER TABLE `email_spam_complaint_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_spam_complaint_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `recipient_filter` text NOT NULL,
  `error` varchar(2000) DEFAULT NULL,
  `error_data` longtext,
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `delivered_count` int unsigned NOT NULL DEFAULT '0',
  `opened_count` int unsigned NOT NULL DEFAULT '0',
  `failed_count` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(300) DEFAULT NULL,
  `from` varchar(2000) DEFAULT NULL,
  `reply_to` varchar(2000) DEFAULT NULL,
  `html` longtext,
  `plaintext` longtext,
  `source` longtext,
  `source_type` varchar(50) NOT NULL DEFAULT 'html',
  `track_opens` tinyint(1) NOT NULL DEFAULT '0',
  `track_clicks` tinyint(1) NOT NULL DEFAULT '0',
  `feedback_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_at` datetime NOT NULL,
  `newsletter_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_post_id_unique` (`post_id`),
  KEY `emails_post_id_index` (`post_id`),
  KEY `emails_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `emails_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations`
--

DROP TABLE IF EXISTS `integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrations` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'custom',
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon_image` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `integrations_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations`
--

LOCK TABLES `integrations` WRITE;
/*!40000 ALTER TABLE `integrations` DISABLE KEYS */;
INSERT INTO `integrations` VALUES ('63a871970abef80001ecfbf8','builtin','Zapier','zapier',NULL,'Built-in Zapier integration','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbfa','core','Ghost Explore','ghost-explore',NULL,'Built-in Ghost Explore integration','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbfc','internal','Ghost Backup','ghost-backup',NULL,'Internal DB Backup integration','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfbfe','internal','Ghost Scheduler','ghost-scheduler',NULL,'Internal Scheduler integration','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfc00','internal','Ghost Internal Frontend','ghost-internal-frontend',NULL,'Internal frontend integration','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a872b10abef80001ecfd88','custom','Testing','testing',NULL,NULL,'2022-12-25 15:56:33','1','2022-12-25 15:56:33','1');
/*!40000 ALTER TABLE `integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invites` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `token` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `expires` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invites_token_unique` (`token`),
  UNIQUE KEY `invites_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'queued',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('63a871990abef80001ecfd7e','members-migrations','finished','2022-12-25 15:51:53','2022-12-25 15:51:53','2022-12-25 15:51:53','2022-12-25 15:51:53');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `labels_name_unique` (`name`),
  UNIQUE KEY `labels_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'free',
  `name` varchar(191) DEFAULT NULL,
  `expertise` varchar(191) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `geolocation` varchar(2000) DEFAULT NULL,
  `enable_comment_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `email_opened_count` int unsigned NOT NULL DEFAULT '0',
  `email_open_rate` int unsigned DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `last_commented_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`),
  UNIQUE KEY `members_uuid_unique` (`uuid`),
  KEY `members_email_open_rate_index` (`email_open_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_cancel_events`
--

DROP TABLE IF EXISTS `members_cancel_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_cancel_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_plan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_cancel_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_cancel_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_cancel_events`
--

LOCK TABLES `members_cancel_events` WRITE;
/*!40000 ALTER TABLE `members_cancel_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_cancel_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_click_events`
--

DROP TABLE IF EXISTS `members_click_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_click_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `redirect_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_click_events_member_id_foreign` (`member_id`),
  KEY `members_click_events_redirect_id_foreign` (`redirect_id`),
  CONSTRAINT `members_click_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_click_events_redirect_id_foreign` FOREIGN KEY (`redirect_id`) REFERENCES `redirects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_click_events`
--

LOCK TABLES `members_click_events` WRITE;
/*!40000 ALTER TABLE `members_click_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_click_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_created_events`
--

DROP TABLE IF EXISTS `members_created_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_created_events` (
  `id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `attribution_id` varchar(24) DEFAULT NULL,
  `attribution_type` varchar(50) DEFAULT NULL,
  `attribution_url` varchar(2000) DEFAULT NULL,
  `referrer_source` varchar(191) DEFAULT NULL,
  `referrer_medium` varchar(191) DEFAULT NULL,
  `referrer_url` varchar(2000) DEFAULT NULL,
  `source` varchar(50) NOT NULL,
  `batch_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_created_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_created_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_created_events`
--

LOCK TABLES `members_created_events` WRITE;
/*!40000 ALTER TABLE `members_created_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_created_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_email_change_events`
--

DROP TABLE IF EXISTS `members_email_change_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_email_change_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `to_email` varchar(191) NOT NULL,
  `from_email` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_email_change_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_email_change_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_email_change_events`
--

LOCK TABLES `members_email_change_events` WRITE;
/*!40000 ALTER TABLE `members_email_change_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_email_change_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_feedback`
--

DROP TABLE IF EXISTS `members_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_feedback` (
  `id` varchar(24) NOT NULL,
  `score` int unsigned NOT NULL DEFAULT '0',
  `member_id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_feedback_member_id_foreign` (`member_id`),
  KEY `members_feedback_post_id_foreign` (`post_id`),
  CONSTRAINT `members_feedback_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_feedback_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_feedback`
--

LOCK TABLES `members_feedback` WRITE;
/*!40000 ALTER TABLE `members_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_labels`
--

DROP TABLE IF EXISTS `members_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_labels` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `label_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `members_labels_member_id_foreign` (`member_id`),
  KEY `members_labels_label_id_foreign` (`label_id`),
  CONSTRAINT `members_labels_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_labels_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_labels`
--

LOCK TABLES `members_labels` WRITE;
/*!40000 ALTER TABLE `members_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_login_events`
--

DROP TABLE IF EXISTS `members_login_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_login_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_login_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_login_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_login_events`
--

LOCK TABLES `members_login_events` WRITE;
/*!40000 ALTER TABLE `members_login_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_login_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_newsletters`
--

DROP TABLE IF EXISTS `members_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_newsletters` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `newsletter_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_newsletters_member_id_foreign` (`member_id`),
  KEY `members_newsletters_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `members_newsletters_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_newsletters_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_newsletters`
--

LOCK TABLES `members_newsletters` WRITE;
/*!40000 ALTER TABLE `members_newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_paid_subscription_events`
--

DROP TABLE IF EXISTS `members_paid_subscription_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_paid_subscription_events` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) DEFAULT NULL,
  `from_plan` varchar(255) DEFAULT NULL,
  `to_plan` varchar(255) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `mrr_delta` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_paid_subscription_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_paid_subscription_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_paid_subscription_events`
--

LOCK TABLES `members_paid_subscription_events` WRITE;
/*!40000 ALTER TABLE `members_paid_subscription_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_paid_subscription_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_payment_events`
--

DROP TABLE IF EXISTS `members_payment_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_payment_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `amount` int NOT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_payment_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_payment_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_payment_events`
--

LOCK TABLES `members_payment_events` WRITE;
/*!40000 ALTER TABLE `members_payment_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_payment_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_product_events`
--

DROP TABLE IF EXISTS `members_product_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_product_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_product_events_member_id_foreign` (`member_id`),
  KEY `members_product_events_product_id_foreign` (`product_id`),
  CONSTRAINT `members_product_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_product_events_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_product_events`
--

LOCK TABLES `members_product_events` WRITE;
/*!40000 ALTER TABLE `members_product_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_product_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_products`
--

DROP TABLE IF EXISTS `members_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_products` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `expiry_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_products_member_id_foreign` (`member_id`),
  KEY `members_products_product_id_foreign` (`product_id`),
  CONSTRAINT `members_products_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_products`
--

LOCK TABLES `members_products` WRITE;
/*!40000 ALTER TABLE `members_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_status_events`
--

DROP TABLE IF EXISTS `members_status_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_status_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_status` varchar(50) DEFAULT NULL,
  `to_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_status_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_status_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_status_events`
--

LOCK TABLES `members_status_events` WRITE;
/*!40000 ALTER TABLE `members_status_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_status_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers`
--

DROP TABLE IF EXISTS `members_stripe_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_customer_id_unique` (`customer_id`),
  KEY `members_stripe_customers_member_id_foreign` (`member_id`),
  CONSTRAINT `members_stripe_customers_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers`
--

LOCK TABLES `members_stripe_customers` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers_subscriptions`
--

DROP TABLE IF EXISTS `members_stripe_customers_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers_subscriptions` (
  `id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `ghost_subscription_id` varchar(24) DEFAULT NULL,
  `subscription_id` varchar(255) NOT NULL,
  `stripe_price_id` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL,
  `cancel_at_period_end` tinyint(1) NOT NULL DEFAULT '0',
  `cancellation_reason` varchar(500) DEFAULT NULL,
  `current_period_end` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `default_payment_card_last4` varchar(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `mrr` int unsigned NOT NULL DEFAULT '0',
  `offer_id` varchar(24) DEFAULT NULL,
  `trial_start_at` datetime DEFAULT NULL,
  `trial_end_at` datetime DEFAULT NULL,
  `plan_id` varchar(255) NOT NULL,
  `plan_nickname` varchar(50) NOT NULL,
  `plan_interval` varchar(50) NOT NULL,
  `plan_amount` int NOT NULL,
  `plan_currency` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_subscriptions_subscription_id_unique` (`subscription_id`),
  KEY `members_stripe_customers_subscriptions_customer_id_foreign` (`customer_id`),
  KEY `mscs_ghost_subscription_id_foreign` (`ghost_subscription_id`),
  KEY `members_stripe_customers_subscriptions_stripe_price_id_index` (`stripe_price_id`),
  KEY `members_stripe_customers_subscriptions_offer_id_foreign` (`offer_id`),
  CONSTRAINT `members_stripe_customers_subscriptions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `members_stripe_customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `members_stripe_customers_subscriptions_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  CONSTRAINT `mscs_ghost_subscription_id_foreign` FOREIGN KEY (`ghost_subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers_subscriptions`
--

LOCK TABLES `members_stripe_customers_subscriptions` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_subscribe_events`
--

DROP TABLE IF EXISTS `members_subscribe_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_subscribe_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `newsletter_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_subscribe_events_member_id_foreign` (`member_id`),
  KEY `members_subscribe_events_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `members_subscribe_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_subscribe_events_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_subscribe_events`
--

LOCK TABLES `members_subscribe_events` WRITE;
/*!40000 ALTER TABLE `members_subscribe_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_subscribe_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_subscription_created_events`
--

DROP TABLE IF EXISTS `members_subscription_created_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_subscription_created_events` (
  `id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) NOT NULL,
  `attribution_id` varchar(24) DEFAULT NULL,
  `attribution_type` varchar(50) DEFAULT NULL,
  `attribution_url` varchar(2000) DEFAULT NULL,
  `referrer_source` varchar(191) DEFAULT NULL,
  `referrer_medium` varchar(191) DEFAULT NULL,
  `referrer_url` varchar(2000) DEFAULT NULL,
  `batch_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_subscription_created_events_member_id_foreign` (`member_id`),
  KEY `members_subscription_created_events_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `members_subscription_created_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_subscription_created_events_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `members_stripe_customers_subscriptions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_subscription_created_events`
--

LOCK TABLES `members_subscription_created_events` WRITE;
/*!40000 ALTER TABLE `members_subscription_created_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_subscription_created_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `version` varchar(70) NOT NULL,
  `currentVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `migrations_name_version_unique` (`name`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'1-create-tables.js','init','5.26'),(2,'2-create-fixtures.js','init','5.26'),(3,'01-final-v1.js','1.25','5.26'),(4,'02-noop.js','1.25','5.26'),(5,'01-final-v2.js','2.37','5.26'),(6,'01-final-v3.js','3.41','5.26'),(7,'01-update-mobiledoc.js','4.0','5.26'),(8,'02-add-status-column-to-members.js','4.0','5.26'),(9,'03-populate-status-column-for-members.js','4.0','5.26'),(10,'04-drop-apps-related-tables.js','4.0','5.26'),(11,'05-add-members-subscribe-events-table.js','4.0','5.26'),(12,'06-populate-members-subscribe-events-table.js','4.0','5.26'),(13,'07-alter-unique-constraint-for-posts-slug.js','4.0','5.26'),(14,'08-add-members-login-events-table.js','4.0','5.26'),(15,'09-add-members-email-change-events-table.js','4.0','5.26'),(16,'10-add-members-status-events-table.js','4.0','5.26'),(17,'11-add-members-paid-subscription-events-table.js','4.0','5.26'),(18,'12-delete-apps-related-settings-keys.js','4.0','5.26'),(19,'13-add-members-payment-events-table.js','4.0','5.26'),(20,'14-remove-orphaned-stripe-records.js','4.0','5.26'),(21,'15-add-frontmatter-column-to-meta.js','4.0','5.26'),(22,'16-refactor-slack-setting.js','4.0','5.26'),(23,'17-populate-members-status-events-table.js','4.0','5.26'),(24,'18-transform-urls-absolute-to-transform-ready.js','4.0','5.26'),(25,'19-remove-labs-members-setting.js','4.0','5.26'),(26,'20-refactor-unsplash-setting.js','4.0','5.26'),(27,'21-sanitize-email-batches-provider-id.js','4.0','5.26'),(28,'22-solve-orphaned-webhooks.js','4.0','5.26'),(29,'23-regenerate-posts-html.js','4.0','5.26'),(30,'24-add-missing-email-permissions.js','4.0','5.26'),(31,'25-populate-members-paid-subscription-events-table.js','4.0','5.26'),(32,'26-add-cascade-on-delete.js','4.0','5.26'),(33,'27-add-primary-key-brute-migrations-lock.js','4.0','5.26'),(34,'28-add-webhook-intergrations-foreign-key.js','4.0','5.26'),(35,'29-fix-foreign-key-for-members-stripe-customers-subscriptions.js','4.0','5.26'),(36,'30-set-default-accent-color.js','4.0','5.26'),(37,'01-fix-backup-content-permission-typo.js','4.1','5.26'),(38,'02-add-unique-constraint-for-member-stripe-tables.js','4.1','5.26'),(39,'01-fix-incorrect-mrr-delta-events.js','4.2','5.26'),(40,'01-add-products-table.js','4.3','5.26'),(41,'02-add-members-products-table.js','4.3','5.26'),(42,'03-add-default-product.js','4.3','5.26'),(43,'04-attach-members-to-product.js','4.3','5.26'),(44,'05-add-stripe-products-table.js','4.3','5.26'),(45,'06-add-stripe-prices-table.js','4.3','5.26'),(46,'07-add-products-permissions.js','4.3','5.26'),(47,'08-migrate-members-signup-setting.js','4.3','5.26'),(48,'09-add-price-id-column-to-subscriptions-table.js','4.3','5.26'),(49,'10-populate-stripe-price-id-in-subscriptions.js','4.3','5.26'),(50,'01-restore-free-members-signup-setting-from-backup.js','4.4','5.26'),(51,'02-migrate-members-signup-access.js','4.4','5.26'),(52,'01-add-stripe-price-description-column.js','4.5','5.26'),(53,'02-add-product-description-column.js','4.5','5.26'),(54,'03-give-label-read-permissions-to-editors.js','4.5','5.26'),(55,'04-remove-unique-constraint-from-product-name.js','4.5','5.26'),(56,'05-rename-default-product-to-site-title.js','4.5','5.26'),(57,'01-remove-comped-status.js','4.6','5.26'),(58,'01-add-monthly-price-column-to-products.js','4.7','5.26'),(59,'02-add-yearly-price-column-to-products.js','4.7','5.26'),(60,'03-add-labs-setting.js','4.7','5.26'),(61,'01-add-feature-image-alt-column-to-posts-meta.js','4.8','5.26'),(62,'02-add-feature-image-caption-column-to-posts-meta.js','4.8','5.26'),(63,'03-add-default-product-portal-products.js','4.8','5.26'),(64,'04-migrate-show-newsletter-header-setting.js','4.8','5.26'),(65,'01-add-reset-all-passwords-permission.js','4.9','5.26'),(66,'02-add-benefits-table.js','4.9','5.26'),(67,'03-add-products-benefits-table.js','4.9','5.26'),(68,'04-add-member-segment-to-email-batches.js','4.9','5.26'),(69,'05-fix-missed-mobiledoc-url-transforms.js','4.9','5.26'),(70,'06-add-comped-status.js','4.9','5.26'),(71,'07-update-comped-members-status-events.js','4.9','5.26'),(72,'01-add-oauth-user-data.js','4.11','5.26'),(73,'02-add-email-verification-required-setting.js','4.11','5.26'),(74,'01-add-email-only-column-to-posts-meta-table.js','4.12','5.26'),(75,'02-fix-member-statuses.js','4.12','5.26'),(76,'01-add-members-stripe-connect-auth-permission-to-administrators.js','4.13','5.26'),(77,'02-add-members-products-events-table.js','4.13','5.26'),(78,'01-fix-comped-member-statuses.js','4.14','5.26'),(79,'02-fix-free-members-status-events.js','4.14','5.26'),(80,'01-add-temp-members-analytic-events-table.js','4.15','5.26'),(81,'01-add-custom-theme-settings-table.js','4.16','5.26'),(82,'01-add-custom-theme-settings-permissions.js','4.17','5.26'),(83,'02-add-offers-table.js','4.17','5.26'),(84,'03-add-offers-permissions.js','4.17','5.26'),(85,'01-add-active-column-to-offers.js','4.19','5.26'),(86,'02-add-offer-redemptions-table.js','4.19','5.26'),(87,'01-remove-offer-redemptions-table.js','4.20','5.26'),(88,'02-remove-offers-table.js','4.20','5.26'),(89,'03-add-offers-table.js','4.20','5.26'),(90,'04-add-offer-redemptions-table.js','4.20','5.26'),(91,'05-remove-not-null-constraint-from-portal-title.js','4.20','5.26'),(92,'01-add-is-launch-complete-setting.js','4.22','5.26'),(93,'02-update-launch-complete-setting-from-user-data.js','4.22','5.26'),(94,'01-truncate-offer-names.js','4.23','5.26'),(95,'2022-01-14-11-50-add-type-column-to-products.js','4.33','5.26'),(96,'2022-01-14-11-51-add-default-free-tier.js','4.33','5.26'),(97,'2022-01-18-09-07-remove-duplicate-offer-redemptions.js','4.33','5.26'),(98,'2022-01-19-10-43-add-active-column-to-products-table.js','4.33','5.26'),(99,'2022-01-25-13-53-add-welcome-page-url-column-to-products.js','4.34','5.26'),(100,'2022-01-20-05-55-add-post-products-table.js','4.35','5.26'),(101,'2022-01-30-15-17-set-welcome-page-url-from-settings.js','4.35','5.26'),(102,'2022-02-01-11-48-update-email-recipient-filter-column-type.js','4.35','5.26'),(103,'2022-02-01-12-03-update-recipient-filter-column-type.js','4.35','5.26'),(104,'2022-02-02-10-38-add-default-content-visibility-tiers-setting.js','4.35','5.26'),(105,'2022-02-02-13-10-transform-specific-tiers-default-content-visibility.js','4.35','5.26'),(106,'2022-02-04-04-34-populate-empty-portal-products.js','4.35','5.26'),(107,'2022-02-07-14-34-add-last-seen-at-column-to-members.js','4.36','5.26'),(108,'2022-02-21-09-53-backfill-members-last-seen-at-column.js','4.37','5.26'),(109,'2022-03-01-08-46-add-visibility-to-tiers.js','4.38','5.26'),(110,'2022-03-03-16-12-add-visibility-to-tiers.js','4.38','5.26'),(111,'2022-03-03-16-17-drop-tiers-visible-column.js','4.38','5.26'),(112,'2022-03-07-10-57-update-free-products-visibility-column.js','4.39','5.26'),(113,'2022-03-07-10-57-update-products-visibility-column.js','4.39','5.26'),(114,'2022-03-07-14-37-add-members-cancel-events-table.js','4.40','5.26'),(115,'2022-03-15-06-40-add-offers-ghost_api-integration-permission-roles.js','4.40','5.26'),(116,'2022-03-15-06-40-add-tiers-ghost_api-integration-permission-roles.js','4.40','5.26'),(117,'2022-03-21-17-17-add.js','4.42','5.26'),(118,'2022-03-30-15-44-add-newsletter-permissions.js','4.42','5.26'),(119,'2022-03-28-19-26-recreate-newsletter-table.js','4.43','5.26'),(120,'2022-03-29-14-45-add-members-newsletters-table.js','4.43','5.26'),(121,'2022-04-01-10-13-add-post-newsletter-relation.js','4.43','5.26'),(122,'2022-04-06-09-47-add-type-column-to-paid-subscription-events.js','4.43','5.26'),(123,'2022-04-06-14-56-add-email-newsletter-relation.js','4.43','5.26'),(124,'2022-04-08-10-45-add-subscription-id-to-mrr-events.js','4.43','5.26'),(125,'2022-04-06-15-22-populate-type-column-for-paid-subscription-events.js','4.44','5.26'),(126,'2022-04-08-11-54-add-cancelled-events.js','4.44','5.26'),(127,'2022-04-11-08-24-add-newsletter-permissions.js','4.44','5.26'),(128,'2022-04-11-10-54-add-mrr-to-subscriptions.js','4.44','5.26'),(129,'2022-04-12-07-33-fill-mrr.js','4.44','5.26'),(130,'2022-04-13-12-00-remove-newsletter-sender-name-not-null-constraint.js','4.44','5.26'),(131,'2022-04-15-07-53-add-offer-id-to-subscriptions.js','4.44','5.26'),(132,'2022-04-19-12-23-backfill-subscriptions-offers.js','4.45','5.26'),(133,'2022-04-20-11-25-add-newsletter-read-permission.js','4.45','5.26'),(134,'2022-04-21-02-55-add-notifications-key-entry-to-settings-table.js','4.45','5.26'),(135,'2022-04-13-12-00-add-created-at-newsletters.js','4.46','5.26'),(136,'2022-04-13-12-01-add-updated-at-newsletters.js','4.46','5.26'),(137,'2022-04-13-12-02-fill-created-at-newsletters.js','4.46','5.26'),(138,'2022-04-13-12-03-drop-nullable-created-at-newsletters.js','4.46','5.26'),(139,'2022-04-13-12-08-newsletters-show-header-name.js','4.46','5.26'),(140,'2022-04-13-12-57-add-uuid-column-to-newsletters.js','4.46','5.26'),(141,'2022-04-13-12-58-fill-uuid-for-newsletters.js','4.46','5.26'),(142,'2022-04-13-12-59-drop-nullable-uuid-newsletters.js','4.46','5.26'),(143,'2022-04-13-13-00-add-default-newsletter.js','4.46','5.26'),(144,'2022-04-20-08-39-map-subscribers-to-default-newsletter.js','4.46','5.26'),(145,'2022-04-22-07-43-add-newsletter-id-to-subscribe-events.js','4.46','5.26'),(146,'2022-04-27-07-59-set-newsletter-id-subscribe-events.js','4.46','5.26'),(147,'2022-05-03-15-30-update-newsletter-sending-options.js','4.47','5.26'),(148,'2022-05-04-10-03-transform-newsletter-header-image.js','4.47','5.26'),(149,'2022-03-14-12-33-delete-duplicate-offer-redemptions.js','5.0','5.26'),(150,'2022-03-28-15-25-backfill-mrr-adjustments-for-offers.js','5.0','5.26'),(151,'2022-04-25-10-32-backfill-mrr-for-discounted-subscriptions.js','5.0','5.26'),(152,'2022-04-26-15-44-backfill-mrr-events-for-canceled-subscriptions.js','5.0','5.26'),(153,'2022-04-27-11-26-backfill-mrr-for-canceled-subscriptions.js','5.0','5.26'),(154,'2022-04-28-03-26-remove-author-id-column-from-posts-table.js','5.0','5.26'),(155,'2022-05-03-09-39-drop-nullable-subscribe-event-newsletter-id.js','5.0','5.26'),(156,'2022-05-04-15-24-map-existing-emails-to-default-newsletter.js','5.0','5.26'),(157,'2022-05-05-13-13-migrate-legacy-recipient-filters.js','5.0','5.26'),(158,'2022-05-05-13-29-add-newsletters-ghost_api-integration-permission-roles.js','5.0','5.26'),(159,'2022-05-05-15-17-drop-oauth-table.js','5.0','5.26'),(160,'2022-05-06-08-16-cleanup-client-subscriber-permissions.js','5.0','5.26'),(161,'2022-05-06-13-22-add-frontend-integration.js','5.0','5.26'),(162,'2022-05-09-10-00-drop-members-subscribed-column.js','5.0','5.26'),(163,'2022-05-09-14-17-cleanup-invalid-users-status.js','5.0','5.26'),(164,'2022-05-10-08-33-drop-members-analytics-table.js','5.0','5.26'),(165,'2022-05-10-14-57-cleanup-invalid-posts-status.js','5.0','5.26'),(166,'2022-05-11-12-08-drop-webhooks-status-column.js','5.0','5.26'),(167,'2022-05-11-13-12-rename-settings.js','5.0','5.26'),(168,'2022-05-11-16-36-remove-unused-settings.js','5.0','5.26'),(169,'2022-05-12-10-29-add-newsletter-permissions-for-editors-and-authors.js','5.0','5.26'),(170,'2022-05-12-13-51-add-label-permissions-for-authors.js','5.0','5.26'),(171,'2022-05-13-11-38-drop-none-email-recipient-filter.js','5.0','5.26'),(172,'2022-05-21-00-00-regenerate-posts-html.js','5.0','5.26'),(173,'2022-07-04-13-49-add-comments-table.js','5.3','5.26'),(174,'2022-07-05-09-36-add-comments-likes-table.js','5.3','5.26'),(175,'2022-07-05-09-47-add-comments-reports-table.js','5.3','5.26'),(176,'2022-07-05-10-00-add-comment-related-fields-to-members.js','5.3','5.26'),(177,'2022-07-05-12-55-add-comments-crud-permissions.js','5.3','5.26'),(178,'2022-07-05-15-35-add-comment-notifications-field-to-users-table.js','5.3','5.26'),(179,'2022-07-06-07-26-add-comments-enabled-setting.js','5.3','5.26'),(180,'2022-07-06-07-58-add-ghost-explore-integration-role.js','5.3','5.26'),(181,'2022-07-06-09-13-add-ghost-explore-integration-role-permissions.js','5.3','5.26'),(182,'2022-07-06-09-17-add-ghost-explore-integration.js','5.3','5.26'),(183,'2022-07-06-09-26-add-ghost-explore-integration-api-key.js','5.3','5.26'),(184,'2022-07-18-14-29-add-comment-reporting-permissions.js','5.5','5.26'),(185,'2022-07-18-14-31-drop-reports-reason.js','5.5','5.26'),(186,'2022-07-18-14-32-drop-nullable-member-id-from-likes.js','5.5','5.26'),(187,'2022-07-18-14-33-fix-comments-on-delete-foreign-keys.js','5.5','5.26'),(188,'2022-07-21-08-56-add-jobs-table.js','5.5','5.26'),(189,'2022-07-27-13-40-change-explore-type.js','5.6','5.26'),(190,'2022-08-02-06-09-add-trial-period-days-column-to-tiers.js','5.8','5.26'),(191,'2022-08-03-15-28-add-trial-start-column-to-stripe-subscriptions.js','5.8','5.26'),(192,'2022-08-03-15-29-add-trial-end-column-to-stripe-subscriptions.js','5.8','5.26'),(193,'2022-08-09-08-32-added-new-integration-type.js','5.9','5.26'),(194,'2022-08-15-05-34-add-expiry-at-column-to-members-products.js','5.10','5.26'),(195,'2022-08-16-14-25-add-member-created-events-table.js','5.10','5.26'),(196,'2022-08-16-14-25-add-subscription-created-events-table.js','5.10','5.26'),(197,'2022-08-19-14-15-fix-comments-deletion-strategy.js','5.10','5.26'),(198,'2022-08-22-11-03-add-member-alert-settings-columns-to-users.js','5.11','5.26'),(199,'2022-08-23-13-41-backfill-members-created-events.js','5.11','5.26'),(200,'2022-08-23-13-59-fix-page-resource-type.js','5.11','5.26'),(201,'2022-09-02-12-55-rename-members-bio-to-expertise.js','5.14','5.26'),(202,'2022-09-12-16-10-add-posts-lexical-column.js','5.15','5.26'),(203,'2022-09-14-12-46-add-email-track-clicks-setting.js','5.15','5.26'),(204,'2022-09-16-08-22-add-post-revisions-table.js','5.15','5.26'),(205,'2022-09-19-09-04-add-link-redirects-table.js','5.16','5.26'),(206,'2022-09-19-09-05-add-members-link-click-events-table.js','5.16','5.26'),(207,'2022-09-19-17-44-add-referrer-columns-to-member-events-table.js','5.16','5.26'),(208,'2022-09-19-17-44-add-referrer-columns-to-subscription-events-table.js','5.16','5.26'),(209,'2022-09-27-13-53-remove-click-tracking-tables.js','5.17','5.26'),(210,'2022-09-27-13-55-add-redirects-table.js','5.17','5.26'),(211,'2022-09-27-13-56-add-members-click-events-table.js','5.17','5.26'),(212,'2022-09-27-16-49-set-track-clicks-based-on-opens.js','5.17','5.26'),(213,'2022-09-29-12-39-add-track-clicks-column-to-emails.js','5.17','5.26'),(214,'2022-09-02-20-25-add-columns-to-products-table.js','5.19','5.26'),(215,'2022-09-02-20-52-backfill-new-product-columns.js','5.19','5.26'),(216,'2022-10-10-06-58-add-subscriptions-table.js','5.19','5.26'),(217,'2022-10-10-10-05-add-members-feedback-table.js','5.19','5.26'),(218,'2022-10-11-10-38-add-feedback-enabled-column-to-newsletters.js','5.19','5.26'),(219,'2022-10-18-05-39-drop-nullable-tier-id.js','5.20','5.26'),(220,'2022-10-18-10-13-add-ghost-subscription-id-column-to-mscs.js','5.20','5.26'),(221,'2022-10-19-11-17-add-link-browse-permissions.js','5.20','5.26'),(222,'2022-10-20-02-52-add-link-edit-permissions.js','5.20','5.26'),(223,'2022-10-24-07-23-disable-feedback-enabled.js','5.21','5.26'),(224,'2022-10-25-12-05-backfill-missed-products-columns.js','5.21','5.26'),(225,'2022-10-26-04-49-add-batch-id-members-created-events.js','5.21','5.26'),(226,'2022-10-26-04-49-add-batch-id-subscription-created-events.js','5.21','5.26'),(227,'2022-10-26-04-50-member-subscription-created-batch-id.js','5.21','5.26'),(228,'2022-10-26-09-32-add-feedback-enabled-column-to-emails.js','5.21','5.26'),(229,'2022-10-27-09-50-add-member-track-source-setting.js','5.21','5.26'),(230,'2022-10-31-12-03-backfill-new-product-columns.js','5.22','5.26'),(231,'2022-11-21-09-32-add-source-columns-to-emails-table.js','5.24','5.26'),(232,'2022-11-21-15-03-populate-source-column-with-html-for-emails.js','5.24','5.26'),(233,'2022-11-21-15-57-add-error-columns-for-email-batches.js','5.24','5.26'),(234,'2022-11-24-10-36-add-suppressions-table.js','5.25','5.26'),(235,'2022-11-24-10-37-add-email-spam-complaint-events-table.js','5.25','5.26'),(236,'2022-11-29-08-30-add-error-recipient-failures-table.js','5.25','5.26');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations_lock`
--

DROP TABLE IF EXISTS `migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations_lock` (
  `lock_key` varchar(191) NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `acquired_at` datetime DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  PRIMARY KEY (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations_lock`
--

LOCK TABLES `migrations_lock` WRITE;
/*!40000 ALTER TABLE `migrations_lock` DISABLE KEYS */;
INSERT INTO `migrations_lock` VALUES ('km01',0,'2022-12-25 15:51:45','2022-12-25 15:51:51');
/*!40000 ALTER TABLE `migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobiledoc_revisions`
--

DROP TABLE IF EXISTS `mobiledoc_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobiledoc_revisions` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `mobiledoc` longtext,
  `created_at_ts` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobiledoc_revisions_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobiledoc_revisions`
--

LOCK TABLES `mobiledoc_revisions` WRITE;
/*!40000 ALTER TABLE `mobiledoc_revisions` DISABLE KEYS */;
INSERT INTO `mobiledoc_revisions` VALUES ('63a8726e0abef80001ecfd80','63a871960abef80001ecfbf4','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"a\",[\"href\",\"#/portal/\",\"rel\",\"noopener noreferrer\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is a brand new site that\'s just getting started. Things will be up and running here shortly, but you can \"],[0,[0],1,\"subscribe\"],[0,[],0,\" in the meantime if you\'d like to stay up to date and receive emails when new content is published!\"]]]],\"ghostVersion\":\"4.0\"}',1671983726450,'2022-12-25 15:55:26'),('63a8726e0abef80001ecfd81','63a871960abef80001ecfbf4','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"a\",[\"href\",\"#/portal/\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is Testing, a brand new site by Testing that\'s just getting started. Things will be up and running here shortly, but you can \"],[0,[0],1,\"subscribe\"],[0,[],0,\" in the meantime if you\'d like to stay up to date and receive emails when new content is published!\"]]]],\"ghostVersion\":\"4.0\"}',1671983726451,'2022-12-25 15:55:26'),('63a8726e0abef80001ecfd82','63a871970abef80001ecfbf6','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"hr\",{}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is an independent publication. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible. Thank you!\"]]],[1,\"h3\",[[0,[],0,\"Access all areas\"]]],[1,\"p\",[[0,[],0,\"By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\"]]],[1,\"h3\",[[0,[],0,\"Fresh content, delivered\"]]],[1,\"p\",[[0,[],0,\"Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\"]]],[1,\"h3\",[[0,[],0,\"Meet people like you\"]]],[1,\"p\",[[0,[],0,\"Join a community of other subscribers who share the same interests.\"]]],[10,0],[1,\"h3\",[[0,[],0,\"Start your own thing\"]]],[1,\"p\",[[0,[],0,\"Enjoying the experience? Get started for free and set up your very own subscription business using \"],[0,[0],1,\"Ghost\"],[0,[],0,\", the same platform that powers this website.\"]]]],\"ghostVersion\":\"4.0\"}',1671983726516,'2022-12-25 15:55:26'),('63a8726e0abef80001ecfd83','63a871970abef80001ecfbf6','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"hr\",{}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"Testing is an independent publication launched in December 2022 by Testing. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible, and allows Testing to continue to exist. Thank you!\"]]],[1,\"h3\",[[0,[],0,\"Access all areas\"]]],[1,\"p\",[[0,[],0,\"By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\"]]],[1,\"h3\",[[0,[],0,\"Fresh content, delivered\"]]],[1,\"p\",[[0,[],0,\"Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\"]]],[1,\"h3\",[[0,[],0,\"Meet people like you\"]]],[1,\"p\",[[0,[],0,\"Join a community of other subscribers who share the same interests.\"]]],[10,0],[1,\"h3\",[[0,[],0,\"Start your own thing\"]]],[1,\"p\",[[0,[],0,\"Enjoying the experience? Get started for free and set up your very own subscription business using \"],[0,[0],1,\"Ghost\"],[0,[],0,\", the same platform that powers this website.\"]]]],\"ghostVersion\":\"4.0\"}',1671983726517,'2022-12-25 15:55:26');
/*!40000 ALTER TABLE `mobiledoc_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `feedback_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) NOT NULL,
  `sender_name` varchar(191) DEFAULT NULL,
  `sender_email` varchar(191) DEFAULT NULL,
  `sender_reply_to` varchar(191) NOT NULL DEFAULT 'newsletter',
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `visibility` varchar(50) NOT NULL DEFAULT 'members',
  `subscribe_on_signup` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `header_image` varchar(2000) DEFAULT NULL,
  `show_header_icon` tinyint(1) NOT NULL DEFAULT '1',
  `show_header_title` tinyint(1) NOT NULL DEFAULT '1',
  `title_font_category` varchar(191) NOT NULL DEFAULT 'sans_serif',
  `title_alignment` varchar(191) NOT NULL DEFAULT 'center',
  `show_feature_image` tinyint(1) NOT NULL DEFAULT '1',
  `body_font_category` varchar(191) NOT NULL DEFAULT 'sans_serif',
  `footer_content` text,
  `show_badge` tinyint(1) NOT NULL DEFAULT '1',
  `show_header_name` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletters_uuid_unique` (`uuid`),
  UNIQUE KEY `newsletters_name_unique` (`name`),
  UNIQUE KEY `newsletters_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES ('63a871960abef80001ecfb86','f29cb028-9f5c-40ac-91fd-ba726a9c769d','Testing',NULL,0,'default-newsletter',NULL,NULL,'newsletter','active','members',1,0,NULL,1,1,'sans_serif','center',1,'sans_serif',NULL,1,0,'2022-12-25 15:51:50','2022-12-25 15:55:26');
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_redemptions`
--

DROP TABLE IF EXISTS `offer_redemptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer_redemptions` (
  `id` varchar(24) NOT NULL,
  `offer_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offer_redemptions_offer_id_foreign` (`offer_id`),
  KEY `offer_redemptions_member_id_foreign` (`member_id`),
  KEY `offer_redemptions_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `offer_redemptions_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offer_redemptions_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offer_redemptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `members_stripe_customers_subscriptions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_redemptions`
--

LOCK TABLES `offer_redemptions` WRITE;
/*!40000 ALTER TABLE `offer_redemptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer_redemptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` varchar(24) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `stripe_coupon_id` varchar(255) DEFAULT NULL,
  `interval` varchar(50) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `discount_type` varchar(50) NOT NULL,
  `discount_amount` int NOT NULL,
  `duration` varchar(50) NOT NULL,
  `duration_in_months` int DEFAULT NULL,
  `portal_title` varchar(191) DEFAULT NULL,
  `portal_description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `offers_name_unique` (`name`),
  UNIQUE KEY `offers_code_unique` (`code`),
  UNIQUE KEY `offers_stripe_coupon_id_unique` (`stripe_coupon_id`),
  KEY `offers_product_id_foreign` (`product_id`),
  CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `object_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('63a871960abef80001ecfb88','Read explore data','explore','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb89','Export database','db','exportContent',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8a','Import database','db','importContent',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8b','Delete all content','db','deleteAllContent',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8c','Send mail','mail','send',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8d','Browse notifications','notification','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8e','Add notifications','notification','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb8f','Delete notifications','notification','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb90','Browse posts','post','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb91','Read posts','post','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb92','Edit posts','post','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb93','Add posts','post','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb94','Delete posts','post','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb95','Browse settings','setting','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb96','Read settings','setting','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb97','Edit settings','setting','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb98','Generate slugs','slug','generate',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb99','Browse tags','tag','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9a','Read tags','tag','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9b','Edit tags','tag','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9c','Add tags','tag','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9d','Delete tags','tag','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9e','Browse themes','theme','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb9f','Edit themes','theme','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba0','Activate themes','theme','activate',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba1','Upload themes','theme','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba2','Download themes','theme','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba3','Delete themes','theme','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba4','Browse users','user','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba5','Read users','user','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba6','Edit users','user','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba7','Add users','user','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba8','Delete users','user','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfba9','Assign a role','role','assign',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbaa','Browse roles','role','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbab','Browse invites','invite','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbac','Read invites','invite','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbad','Edit invites','invite','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbae','Add invites','invite','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbaf','Delete invites','invite','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb0','Download redirects','redirect','download',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb1','Upload redirects','redirect','upload',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb2','Add webhooks','webhook','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb3','Edit webhooks','webhook','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb4','Delete webhooks','webhook','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb5','Browse integrations','integration','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb6','Read integrations','integration','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb7','Edit integrations','integration','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb8','Add integrations','integration','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbb9','Delete integrations','integration','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbba','Browse API keys','api_key','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbbb','Read API keys','api_key','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbbc','Edit API keys','api_key','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbbd','Add API keys','api_key','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbbe','Delete API keys','api_key','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbbf','Browse Actions','action','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc0','Browse Members','member','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc1','Read Members','member','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc2','Edit Members','member','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc3','Add Members','member','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc4','Delete Members','member','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc5','Browse Products','product','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc6','Read Products','product','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc7','Edit Products','product','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc8','Add Products','product','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbc9','Delete Products','product','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbca','Publish posts','post','publish',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbcb','Backup database','db','backupContent',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbcc','Email preview','email_preview','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbcd','Send test email','email_preview','sendTestEmail',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbce','Browse emails','email','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbcf','Read emails','email','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd0','Retry emails','email','retry',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd1','Browse labels','label','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd2','Read labels','label','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd3','Edit labels','label','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd4','Add labels','label','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd5','Delete labels','label','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd6','Read member signin urls','member_signin_url','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd7','Read identities','identity','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd8','Auth Stripe Connect for Members','members_stripe_connect','auth',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbd9','Browse snippets','snippet','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbda','Read snippets','snippet','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbdb','Edit snippets','snippet','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbdc','Add snippets','snippet','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbdd','Delete snippets','snippet','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbde','Browse offers','offer','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbdf','Read offers','offer','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe0','Edit offers','offer','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe1','Add offers','offer','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe2','Reset all passwords','authentication','resetAllPasswords',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe3','Browse custom theme settings','custom_theme_setting','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe4','Edit custom theme settings','custom_theme_setting','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe5','Browse newsletters','newsletter','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe6','Read newsletters','newsletter','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe7','Add newsletters','newsletter','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe8','Edit newsletters','newsletter','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbe9','Browse comments','comment','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbea','Read comments','comment','read',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbeb','Edit comments','comment','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbec','Add comments','comment','add',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbed','Delete comments','comment','destroy',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbee','Moderate comments','comment','moderate',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbef','Like comments','comment','like',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbf0','Unlike comments','comment','unlike',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbf1','Report comments','comment','report',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbf2','Browse links','link','browse',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfbf3','Edit links','link','edit',NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_roles` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES ('63a871970abef80001ecfc02','63a871960abef80001ecfb7a','63a871960abef80001ecfb89'),('63a871970abef80001ecfc03','63a871960abef80001ecfb7a','63a871960abef80001ecfb8a'),('63a871970abef80001ecfc04','63a871960abef80001ecfb7a','63a871960abef80001ecfb8b'),('63a871970abef80001ecfc05','63a871960abef80001ecfb7a','63a871960abef80001ecfbcb'),('63a871970abef80001ecfc06','63a871960abef80001ecfb7a','63a871960abef80001ecfb8c'),('63a871970abef80001ecfc07','63a871960abef80001ecfb7a','63a871960abef80001ecfb8d'),('63a871970abef80001ecfc08','63a871960abef80001ecfb7a','63a871960abef80001ecfb8e'),('63a871970abef80001ecfc09','63a871960abef80001ecfb7a','63a871960abef80001ecfb8f'),('63a871970abef80001ecfc0a','63a871960abef80001ecfb7a','63a871960abef80001ecfb90'),('63a871970abef80001ecfc0b','63a871960abef80001ecfb7a','63a871960abef80001ecfb91'),('63a871970abef80001ecfc0c','63a871960abef80001ecfb7a','63a871960abef80001ecfb92'),('63a871970abef80001ecfc0d','63a871960abef80001ecfb7a','63a871960abef80001ecfb93'),('63a871970abef80001ecfc0e','63a871960abef80001ecfb7a','63a871960abef80001ecfb94'),('63a871970abef80001ecfc0f','63a871960abef80001ecfb7a','63a871960abef80001ecfbca'),('63a871970abef80001ecfc10','63a871960abef80001ecfb7a','63a871960abef80001ecfb95'),('63a871970abef80001ecfc11','63a871960abef80001ecfb7a','63a871960abef80001ecfb96'),('63a871970abef80001ecfc12','63a871960abef80001ecfb7a','63a871960abef80001ecfb97'),('63a871970abef80001ecfc13','63a871960abef80001ecfb7a','63a871960abef80001ecfb98'),('63a871970abef80001ecfc14','63a871960abef80001ecfb7a','63a871960abef80001ecfb99'),('63a871970abef80001ecfc15','63a871960abef80001ecfb7a','63a871960abef80001ecfb9a'),('63a871970abef80001ecfc16','63a871960abef80001ecfb7a','63a871960abef80001ecfb9b'),('63a871970abef80001ecfc17','63a871960abef80001ecfb7a','63a871960abef80001ecfb9c'),('63a871970abef80001ecfc18','63a871960abef80001ecfb7a','63a871960abef80001ecfb9d'),('63a871970abef80001ecfc19','63a871960abef80001ecfb7a','63a871960abef80001ecfb9e'),('63a871970abef80001ecfc1a','63a871960abef80001ecfb7a','63a871960abef80001ecfb9f'),('63a871970abef80001ecfc1b','63a871960abef80001ecfb7a','63a871960abef80001ecfba0'),('63a871970abef80001ecfc1c','63a871960abef80001ecfb7a','63a871960abef80001ecfba1'),('63a871970abef80001ecfc1d','63a871960abef80001ecfb7a','63a871960abef80001ecfba2'),('63a871970abef80001ecfc1e','63a871960abef80001ecfb7a','63a871960abef80001ecfba3'),('63a871970abef80001ecfc1f','63a871960abef80001ecfb7a','63a871960abef80001ecfba4'),('63a871970abef80001ecfc20','63a871960abef80001ecfb7a','63a871960abef80001ecfba5'),('63a871970abef80001ecfc21','63a871960abef80001ecfb7a','63a871960abef80001ecfba6'),('63a871970abef80001ecfc22','63a871960abef80001ecfb7a','63a871960abef80001ecfba7'),('63a871970abef80001ecfc23','63a871960abef80001ecfb7a','63a871960abef80001ecfba8'),('63a871970abef80001ecfc24','63a871960abef80001ecfb7a','63a871960abef80001ecfba9'),('63a871970abef80001ecfc25','63a871960abef80001ecfb7a','63a871960abef80001ecfbaa'),('63a871970abef80001ecfc26','63a871960abef80001ecfb7a','63a871960abef80001ecfbab'),('63a871970abef80001ecfc27','63a871960abef80001ecfb7a','63a871960abef80001ecfbac'),('63a871970abef80001ecfc28','63a871960abef80001ecfb7a','63a871960abef80001ecfbad'),('63a871970abef80001ecfc29','63a871960abef80001ecfb7a','63a871960abef80001ecfbae'),('63a871970abef80001ecfc2a','63a871960abef80001ecfb7a','63a871960abef80001ecfbaf'),('63a871970abef80001ecfc2b','63a871960abef80001ecfb7a','63a871960abef80001ecfbb0'),('63a871970abef80001ecfc2c','63a871960abef80001ecfb7a','63a871960abef80001ecfbb1'),('63a871970abef80001ecfc2d','63a871960abef80001ecfb7a','63a871960abef80001ecfbb2'),('63a871970abef80001ecfc2e','63a871960abef80001ecfb7a','63a871960abef80001ecfbb3'),('63a871970abef80001ecfc2f','63a871960abef80001ecfb7a','63a871960abef80001ecfbb4'),('63a871970abef80001ecfc30','63a871960abef80001ecfb7a','63a871960abef80001ecfbb5'),('63a871970abef80001ecfc31','63a871960abef80001ecfb7a','63a871960abef80001ecfbb6'),('63a871970abef80001ecfc32','63a871960abef80001ecfb7a','63a871960abef80001ecfbb7'),('63a871970abef80001ecfc33','63a871960abef80001ecfb7a','63a871960abef80001ecfbb8'),('63a871970abef80001ecfc34','63a871960abef80001ecfb7a','63a871960abef80001ecfbb9'),('63a871970abef80001ecfc35','63a871960abef80001ecfb7a','63a871960abef80001ecfbba'),('63a871970abef80001ecfc36','63a871960abef80001ecfb7a','63a871960abef80001ecfbbb'),('63a871970abef80001ecfc37','63a871960abef80001ecfb7a','63a871960abef80001ecfbbc'),('63a871970abef80001ecfc38','63a871960abef80001ecfb7a','63a871960abef80001ecfbbd'),('63a871970abef80001ecfc39','63a871960abef80001ecfb7a','63a871960abef80001ecfbbe'),('63a871970abef80001ecfc3a','63a871960abef80001ecfb7a','63a871960abef80001ecfbbf'),('63a871970abef80001ecfc3b','63a871960abef80001ecfb7a','63a871960abef80001ecfbc0'),('63a871970abef80001ecfc3c','63a871960abef80001ecfb7a','63a871960abef80001ecfbc1'),('63a871970abef80001ecfc3d','63a871960abef80001ecfb7a','63a871960abef80001ecfbc2'),('63a871970abef80001ecfc3e','63a871960abef80001ecfb7a','63a871960abef80001ecfbc3'),('63a871970abef80001ecfc3f','63a871960abef80001ecfb7a','63a871960abef80001ecfbc4'),('63a871970abef80001ecfc40','63a871960abef80001ecfb7a','63a871960abef80001ecfbc5'),('63a871970abef80001ecfc41','63a871960abef80001ecfb7a','63a871960abef80001ecfbc6'),('63a871970abef80001ecfc42','63a871960abef80001ecfb7a','63a871960abef80001ecfbc7'),('63a871970abef80001ecfc43','63a871960abef80001ecfb7a','63a871960abef80001ecfbc8'),('63a871970abef80001ecfc44','63a871960abef80001ecfb7a','63a871960abef80001ecfbc9'),('63a871970abef80001ecfc45','63a871960abef80001ecfb7a','63a871960abef80001ecfbd1'),('63a871970abef80001ecfc46','63a871960abef80001ecfb7a','63a871960abef80001ecfbd2'),('63a871970abef80001ecfc47','63a871960abef80001ecfb7a','63a871960abef80001ecfbd3'),('63a871970abef80001ecfc48','63a871960abef80001ecfb7a','63a871960abef80001ecfbd4'),('63a871970abef80001ecfc49','63a871960abef80001ecfb7a','63a871960abef80001ecfbd5'),('63a871970abef80001ecfc4a','63a871960abef80001ecfb7a','63a871960abef80001ecfbcc'),('63a871970abef80001ecfc4b','63a871960abef80001ecfb7a','63a871960abef80001ecfbcd'),('63a871970abef80001ecfc4c','63a871960abef80001ecfb7a','63a871960abef80001ecfbce'),('63a871970abef80001ecfc4d','63a871960abef80001ecfb7a','63a871960abef80001ecfbcf'),('63a871970abef80001ecfc4e','63a871960abef80001ecfb7a','63a871960abef80001ecfbd0'),('63a871970abef80001ecfc4f','63a871960abef80001ecfb7a','63a871960abef80001ecfbd6'),('63a871970abef80001ecfc50','63a871960abef80001ecfb7a','63a871960abef80001ecfbd9'),('63a871970abef80001ecfc51','63a871960abef80001ecfb7a','63a871960abef80001ecfbda'),('63a871970abef80001ecfc52','63a871960abef80001ecfb7a','63a871960abef80001ecfbdb'),('63a871970abef80001ecfc53','63a871960abef80001ecfb7a','63a871960abef80001ecfbdc'),('63a871970abef80001ecfc54','63a871960abef80001ecfb7a','63a871960abef80001ecfbdd'),('63a871970abef80001ecfc55','63a871960abef80001ecfb7a','63a871960abef80001ecfbe3'),('63a871970abef80001ecfc56','63a871960abef80001ecfb7a','63a871960abef80001ecfbe4'),('63a871970abef80001ecfc57','63a871960abef80001ecfb7a','63a871960abef80001ecfbde'),('63a871970abef80001ecfc58','63a871960abef80001ecfb7a','63a871960abef80001ecfbdf'),('63a871970abef80001ecfc59','63a871960abef80001ecfb7a','63a871960abef80001ecfbe0'),('63a871970abef80001ecfc5a','63a871960abef80001ecfb7a','63a871960abef80001ecfbe1'),('63a871970abef80001ecfc5b','63a871960abef80001ecfb7a','63a871960abef80001ecfbe2'),('63a871970abef80001ecfc5c','63a871960abef80001ecfb7a','63a871960abef80001ecfbd8'),('63a871970abef80001ecfc5d','63a871960abef80001ecfb7a','63a871960abef80001ecfbe5'),('63a871970abef80001ecfc5e','63a871960abef80001ecfb7a','63a871960abef80001ecfbe6'),('63a871970abef80001ecfc5f','63a871960abef80001ecfb7a','63a871960abef80001ecfbe7'),('63a871970abef80001ecfc60','63a871960abef80001ecfb7a','63a871960abef80001ecfbe8'),('63a871970abef80001ecfc61','63a871960abef80001ecfb7a','63a871960abef80001ecfb88'),('63a871970abef80001ecfc62','63a871960abef80001ecfb7a','63a871960abef80001ecfbe9'),('63a871970abef80001ecfc63','63a871960abef80001ecfb7a','63a871960abef80001ecfbea'),('63a871970abef80001ecfc64','63a871960abef80001ecfb7a','63a871960abef80001ecfbeb'),('63a871970abef80001ecfc65','63a871960abef80001ecfb7a','63a871960abef80001ecfbec'),('63a871970abef80001ecfc66','63a871960abef80001ecfb7a','63a871960abef80001ecfbed'),('63a871970abef80001ecfc67','63a871960abef80001ecfb7a','63a871960abef80001ecfbee'),('63a871970abef80001ecfc68','63a871960abef80001ecfb7a','63a871960abef80001ecfbef'),('63a871970abef80001ecfc69','63a871960abef80001ecfb7a','63a871960abef80001ecfbf0'),('63a871970abef80001ecfc6a','63a871960abef80001ecfb7a','63a871960abef80001ecfbf1'),('63a871970abef80001ecfc6b','63a871960abef80001ecfb7a','63a871960abef80001ecfbf2'),('63a871970abef80001ecfc6c','63a871960abef80001ecfb7a','63a871960abef80001ecfbf3'),('63a871970abef80001ecfc6d','63a871960abef80001ecfb81','63a871960abef80001ecfb89'),('63a871970abef80001ecfc6e','63a871960abef80001ecfb81','63a871960abef80001ecfb8a'),('63a871970abef80001ecfc6f','63a871960abef80001ecfb81','63a871960abef80001ecfb8b'),('63a871970abef80001ecfc70','63a871960abef80001ecfb81','63a871960abef80001ecfbcb'),('63a871970abef80001ecfc71','63a871960abef80001ecfb82','63a871960abef80001ecfbca'),('63a871970abef80001ecfc72','63a871960abef80001ecfb80','63a871960abef80001ecfb88'),('63a871970abef80001ecfc73','63a871960abef80001ecfb7f','63a871960abef80001ecfb8c'),('63a871970abef80001ecfc74','63a871960abef80001ecfb7f','63a871960abef80001ecfb8d'),('63a871970abef80001ecfc75','63a871960abef80001ecfb7f','63a871960abef80001ecfb8e'),('63a871970abef80001ecfc76','63a871960abef80001ecfb7f','63a871960abef80001ecfb8f'),('63a871970abef80001ecfc77','63a871960abef80001ecfb7f','63a871960abef80001ecfb90'),('63a871970abef80001ecfc78','63a871960abef80001ecfb7f','63a871960abef80001ecfb91'),('63a871970abef80001ecfc79','63a871960abef80001ecfb7f','63a871960abef80001ecfb92'),('63a871970abef80001ecfc7a','63a871960abef80001ecfb7f','63a871960abef80001ecfb93'),('63a871970abef80001ecfc7b','63a871960abef80001ecfb7f','63a871960abef80001ecfb94'),('63a871970abef80001ecfc7c','63a871960abef80001ecfb7f','63a871960abef80001ecfbca'),('63a871970abef80001ecfc7d','63a871960abef80001ecfb7f','63a871960abef80001ecfb95'),('63a871970abef80001ecfc7e','63a871960abef80001ecfb7f','63a871960abef80001ecfb96'),('63a871970abef80001ecfc7f','63a871960abef80001ecfb7f','63a871960abef80001ecfb97'),('63a871970abef80001ecfc80','63a871960abef80001ecfb7f','63a871960abef80001ecfb98'),('63a871970abef80001ecfc81','63a871960abef80001ecfb7f','63a871960abef80001ecfb99'),('63a871970abef80001ecfc82','63a871960abef80001ecfb7f','63a871960abef80001ecfb9a'),('63a871970abef80001ecfc83','63a871960abef80001ecfb7f','63a871960abef80001ecfb9b'),('63a871970abef80001ecfc84','63a871960abef80001ecfb7f','63a871960abef80001ecfb9c'),('63a871970abef80001ecfc85','63a871960abef80001ecfb7f','63a871960abef80001ecfb9d'),('63a871970abef80001ecfc86','63a871960abef80001ecfb7f','63a871960abef80001ecfb9e'),('63a871970abef80001ecfc87','63a871960abef80001ecfb7f','63a871960abef80001ecfb9f'),('63a871970abef80001ecfc88','63a871960abef80001ecfb7f','63a871960abef80001ecfba0'),('63a871970abef80001ecfc89','63a871960abef80001ecfb7f','63a871960abef80001ecfba1'),('63a871970abef80001ecfc8a','63a871960abef80001ecfb7f','63a871960abef80001ecfba2'),('63a871970abef80001ecfc8b','63a871960abef80001ecfb7f','63a871960abef80001ecfba3'),('63a871970abef80001ecfc8c','63a871960abef80001ecfb7f','63a871960abef80001ecfba4'),('63a871970abef80001ecfc8d','63a871960abef80001ecfb7f','63a871960abef80001ecfba5'),('63a871970abef80001ecfc8e','63a871960abef80001ecfb7f','63a871960abef80001ecfba6'),('63a871970abef80001ecfc8f','63a871960abef80001ecfb7f','63a871960abef80001ecfba7'),('63a871970abef80001ecfc90','63a871960abef80001ecfb7f','63a871960abef80001ecfba8'),('63a871970abef80001ecfc91','63a871960abef80001ecfb7f','63a871960abef80001ecfba9'),('63a871970abef80001ecfc92','63a871960abef80001ecfb7f','63a871960abef80001ecfbaa'),('63a871970abef80001ecfc93','63a871960abef80001ecfb7f','63a871960abef80001ecfbab'),('63a871970abef80001ecfc94','63a871960abef80001ecfb7f','63a871960abef80001ecfbac'),('63a871970abef80001ecfc95','63a871960abef80001ecfb7f','63a871960abef80001ecfbad'),('63a871970abef80001ecfc96','63a871960abef80001ecfb7f','63a871960abef80001ecfbae'),('63a871970abef80001ecfc97','63a871960abef80001ecfb7f','63a871960abef80001ecfbaf'),('63a871970abef80001ecfc98','63a871960abef80001ecfb7f','63a871960abef80001ecfbb0'),('63a871970abef80001ecfc99','63a871960abef80001ecfb7f','63a871960abef80001ecfbb1'),('63a871970abef80001ecfc9a','63a871960abef80001ecfb7f','63a871960abef80001ecfbb2'),('63a871970abef80001ecfc9b','63a871960abef80001ecfb7f','63a871960abef80001ecfbb3'),('63a871970abef80001ecfc9c','63a871960abef80001ecfb7f','63a871960abef80001ecfbb4'),('63a871970abef80001ecfc9d','63a871960abef80001ecfb7f','63a871960abef80001ecfbbf'),('63a871970abef80001ecfc9e','63a871960abef80001ecfb7f','63a871960abef80001ecfbc0'),('63a871970abef80001ecfc9f','63a871960abef80001ecfb7f','63a871960abef80001ecfbc1'),('63a871970abef80001ecfca0','63a871960abef80001ecfb7f','63a871960abef80001ecfbc2'),('63a871970abef80001ecfca1','63a871960abef80001ecfb7f','63a871960abef80001ecfbc3'),('63a871970abef80001ecfca2','63a871960abef80001ecfb7f','63a871960abef80001ecfbc4'),('63a871970abef80001ecfca3','63a871960abef80001ecfb7f','63a871960abef80001ecfbd1'),('63a871970abef80001ecfca4','63a871960abef80001ecfb7f','63a871960abef80001ecfbd2'),('63a871970abef80001ecfca5','63a871960abef80001ecfb7f','63a871960abef80001ecfbd3'),('63a871970abef80001ecfca6','63a871960abef80001ecfb7f','63a871960abef80001ecfbd4'),('63a871970abef80001ecfca7','63a871960abef80001ecfb7f','63a871960abef80001ecfbd5'),('63a871970abef80001ecfca8','63a871960abef80001ecfb7f','63a871960abef80001ecfbcc'),('63a871970abef80001ecfca9','63a871960abef80001ecfb7f','63a871960abef80001ecfbcd'),('63a871970abef80001ecfcaa','63a871960abef80001ecfb7f','63a871960abef80001ecfbce'),('63a871970abef80001ecfcab','63a871960abef80001ecfb7f','63a871960abef80001ecfbcf'),('63a871970abef80001ecfcac','63a871960abef80001ecfb7f','63a871960abef80001ecfbd0'),('63a871970abef80001ecfcad','63a871960abef80001ecfb7f','63a871960abef80001ecfbd9'),('63a871970abef80001ecfcae','63a871960abef80001ecfb7f','63a871960abef80001ecfbda'),('63a871970abef80001ecfcaf','63a871960abef80001ecfb7f','63a871960abef80001ecfbdb'),('63a871970abef80001ecfcb0','63a871960abef80001ecfb7f','63a871960abef80001ecfbdc'),('63a871970abef80001ecfcb1','63a871960abef80001ecfb7f','63a871960abef80001ecfbdd'),('63a871970abef80001ecfcb2','63a871960abef80001ecfb7f','63a871960abef80001ecfbc5'),('63a871970abef80001ecfcb3','63a871960abef80001ecfb7f','63a871960abef80001ecfbc6'),('63a871970abef80001ecfcb4','63a871960abef80001ecfb7f','63a871960abef80001ecfbc7'),('63a871970abef80001ecfcb5','63a871960abef80001ecfb7f','63a871960abef80001ecfbc8'),('63a871970abef80001ecfcb6','63a871960abef80001ecfb7f','63a871960abef80001ecfbde'),('63a871970abef80001ecfcb7','63a871960abef80001ecfb7f','63a871960abef80001ecfbdf'),('63a871970abef80001ecfcb8','63a871960abef80001ecfb7f','63a871960abef80001ecfbe0'),('63a871970abef80001ecfcb9','63a871960abef80001ecfb7f','63a871960abef80001ecfbe1'),('63a871970abef80001ecfcba','63a871960abef80001ecfb7f','63a871960abef80001ecfbe5'),('63a871970abef80001ecfcbb','63a871960abef80001ecfb7f','63a871960abef80001ecfbe6'),('63a871970abef80001ecfcbc','63a871960abef80001ecfb7f','63a871960abef80001ecfbe7'),('63a871970abef80001ecfcbd','63a871960abef80001ecfb7f','63a871960abef80001ecfbe8'),('63a871970abef80001ecfcbe','63a871960abef80001ecfb7f','63a871960abef80001ecfb88'),('63a871970abef80001ecfcbf','63a871960abef80001ecfb7f','63a871960abef80001ecfbe9'),('63a871970abef80001ecfcc0','63a871960abef80001ecfb7f','63a871960abef80001ecfbea'),('63a871970abef80001ecfcc1','63a871960abef80001ecfb7f','63a871960abef80001ecfbeb'),('63a871970abef80001ecfcc2','63a871960abef80001ecfb7f','63a871960abef80001ecfbec'),('63a871970abef80001ecfcc3','63a871960abef80001ecfb7f','63a871960abef80001ecfbed'),('63a871970abef80001ecfcc4','63a871960abef80001ecfb7f','63a871960abef80001ecfbee'),('63a871970abef80001ecfcc5','63a871960abef80001ecfb7f','63a871960abef80001ecfbef'),('63a871970abef80001ecfcc6','63a871960abef80001ecfb7f','63a871960abef80001ecfbf0'),('63a871970abef80001ecfcc7','63a871960abef80001ecfb7f','63a871960abef80001ecfbf1'),('63a871970abef80001ecfcc8','63a871960abef80001ecfb7f','63a871960abef80001ecfbf2'),('63a871970abef80001ecfcc9','63a871960abef80001ecfb7f','63a871960abef80001ecfbf3'),('63a871970abef80001ecfcca','63a871960abef80001ecfb7b','63a871960abef80001ecfb8d'),('63a871970abef80001ecfccb','63a871960abef80001ecfb7b','63a871960abef80001ecfb8e'),('63a871970abef80001ecfccc','63a871960abef80001ecfb7b','63a871960abef80001ecfb8f'),('63a871970abef80001ecfccd','63a871960abef80001ecfb7b','63a871960abef80001ecfb90'),('63a871970abef80001ecfcce','63a871960abef80001ecfb7b','63a871960abef80001ecfb91'),('63a871970abef80001ecfccf','63a871960abef80001ecfb7b','63a871960abef80001ecfb92'),('63a871970abef80001ecfcd0','63a871960abef80001ecfb7b','63a871960abef80001ecfb93'),('63a871970abef80001ecfcd1','63a871960abef80001ecfb7b','63a871960abef80001ecfb94'),('63a871970abef80001ecfcd2','63a871960abef80001ecfb7b','63a871960abef80001ecfbca'),('63a871970abef80001ecfcd3','63a871960abef80001ecfb7b','63a871960abef80001ecfb95'),('63a871970abef80001ecfcd4','63a871960abef80001ecfb7b','63a871960abef80001ecfb96'),('63a871970abef80001ecfcd5','63a871960abef80001ecfb7b','63a871960abef80001ecfb98'),('63a871970abef80001ecfcd6','63a871960abef80001ecfb7b','63a871960abef80001ecfb99'),('63a871970abef80001ecfcd7','63a871960abef80001ecfb7b','63a871960abef80001ecfb9a'),('63a871970abef80001ecfcd8','63a871960abef80001ecfb7b','63a871960abef80001ecfb9b'),('63a871970abef80001ecfcd9','63a871960abef80001ecfb7b','63a871960abef80001ecfb9c'),('63a871970abef80001ecfcda','63a871960abef80001ecfb7b','63a871960abef80001ecfb9d'),('63a871970abef80001ecfcdb','63a871960abef80001ecfb7b','63a871960abef80001ecfba4'),('63a871970abef80001ecfcdc','63a871960abef80001ecfb7b','63a871960abef80001ecfba5'),('63a871970abef80001ecfcdd','63a871960abef80001ecfb7b','63a871960abef80001ecfba6'),('63a871970abef80001ecfcde','63a871960abef80001ecfb7b','63a871960abef80001ecfba7'),('63a871970abef80001ecfcdf','63a871960abef80001ecfb7b','63a871960abef80001ecfba8'),('63a871970abef80001ecfce0','63a871960abef80001ecfb7b','63a871960abef80001ecfba9'),('63a871970abef80001ecfce1','63a871960abef80001ecfb7b','63a871960abef80001ecfbaa'),('63a871970abef80001ecfce2','63a871960abef80001ecfb7b','63a871960abef80001ecfbab'),('63a871970abef80001ecfce3','63a871960abef80001ecfb7b','63a871960abef80001ecfbac'),('63a871970abef80001ecfce4','63a871960abef80001ecfb7b','63a871960abef80001ecfbad'),('63a871970abef80001ecfce5','63a871960abef80001ecfb7b','63a871960abef80001ecfbae'),('63a871970abef80001ecfce6','63a871960abef80001ecfb7b','63a871960abef80001ecfbaf'),('63a871970abef80001ecfce7','63a871960abef80001ecfb7b','63a871960abef80001ecfb9e'),('63a871970abef80001ecfce8','63a871960abef80001ecfb7b','63a871960abef80001ecfbcc'),('63a871970abef80001ecfce9','63a871960abef80001ecfb7b','63a871960abef80001ecfbcd'),('63a871970abef80001ecfcea','63a871960abef80001ecfb7b','63a871960abef80001ecfbce'),('63a871970abef80001ecfceb','63a871960abef80001ecfb7b','63a871960abef80001ecfbcf'),('63a871970abef80001ecfcec','63a871960abef80001ecfb7b','63a871960abef80001ecfbd0'),('63a871970abef80001ecfced','63a871960abef80001ecfb7b','63a871960abef80001ecfbd9'),('63a871970abef80001ecfcee','63a871960abef80001ecfb7b','63a871960abef80001ecfbda'),('63a871970abef80001ecfcef','63a871960abef80001ecfb7b','63a871960abef80001ecfbdb'),('63a871970abef80001ecfcf0','63a871960abef80001ecfb7b','63a871960abef80001ecfbdc'),('63a871970abef80001ecfcf1','63a871960abef80001ecfb7b','63a871960abef80001ecfbdd'),('63a871970abef80001ecfcf2','63a871960abef80001ecfb7b','63a871960abef80001ecfbd1'),('63a871970abef80001ecfcf3','63a871960abef80001ecfb7b','63a871960abef80001ecfbd2'),('63a871970abef80001ecfcf4','63a871960abef80001ecfb7b','63a871960abef80001ecfbc5'),('63a871970abef80001ecfcf5','63a871960abef80001ecfb7b','63a871960abef80001ecfbc6'),('63a871970abef80001ecfcf6','63a871960abef80001ecfb7b','63a871960abef80001ecfbe5'),('63a871970abef80001ecfcf7','63a871960abef80001ecfb7b','63a871960abef80001ecfbe6'),('63a871970abef80001ecfcf8','63a871960abef80001ecfb7c','63a871960abef80001ecfb90'),('63a871970abef80001ecfcf9','63a871960abef80001ecfb7c','63a871960abef80001ecfb91'),('63a871970abef80001ecfcfa','63a871960abef80001ecfb7c','63a871960abef80001ecfb93'),('63a871970abef80001ecfcfb','63a871960abef80001ecfb7c','63a871960abef80001ecfb95'),('63a871970abef80001ecfcfc','63a871960abef80001ecfb7c','63a871960abef80001ecfb96'),('63a871970abef80001ecfcfd','63a871960abef80001ecfb7c','63a871960abef80001ecfb98'),('63a871970abef80001ecfcfe','63a871960abef80001ecfb7c','63a871960abef80001ecfb99'),('63a871970abef80001ecfcff','63a871960abef80001ecfb7c','63a871960abef80001ecfb9a'),('63a871970abef80001ecfd00','63a871960abef80001ecfb7c','63a871960abef80001ecfb9c'),('63a871970abef80001ecfd01','63a871960abef80001ecfb7c','63a871960abef80001ecfba4'),('63a871970abef80001ecfd02','63a871960abef80001ecfb7c','63a871960abef80001ecfba5'),('63a871970abef80001ecfd03','63a871960abef80001ecfb7c','63a871960abef80001ecfbaa'),('63a871970abef80001ecfd04','63a871960abef80001ecfb7c','63a871960abef80001ecfb9e'),('63a871970abef80001ecfd05','63a871960abef80001ecfb7c','63a871960abef80001ecfbcc'),('63a871970abef80001ecfd06','63a871960abef80001ecfb7c','63a871960abef80001ecfbcf'),('63a871970abef80001ecfd07','63a871960abef80001ecfb7c','63a871960abef80001ecfbd9'),('63a871970abef80001ecfd08','63a871960abef80001ecfb7c','63a871960abef80001ecfbda'),('63a871970abef80001ecfd09','63a871960abef80001ecfb7c','63a871960abef80001ecfbd1'),('63a871970abef80001ecfd0a','63a871960abef80001ecfb7c','63a871960abef80001ecfbd2'),('63a871970abef80001ecfd0b','63a871960abef80001ecfb7c','63a871960abef80001ecfbc5'),('63a871970abef80001ecfd0c','63a871960abef80001ecfb7c','63a871960abef80001ecfbc6'),('63a871970abef80001ecfd0d','63a871960abef80001ecfb7c','63a871960abef80001ecfbe5'),('63a871970abef80001ecfd0e','63a871960abef80001ecfb7c','63a871960abef80001ecfbe6'),('63a871970abef80001ecfd0f','63a871960abef80001ecfb7d','63a871960abef80001ecfb90'),('63a871970abef80001ecfd10','63a871960abef80001ecfb7d','63a871960abef80001ecfb91'),('63a871970abef80001ecfd11','63a871960abef80001ecfb7d','63a871960abef80001ecfb93'),('63a871970abef80001ecfd12','63a871960abef80001ecfb7d','63a871960abef80001ecfb95'),('63a871970abef80001ecfd13','63a871960abef80001ecfb7d','63a871960abef80001ecfb96'),('63a871970abef80001ecfd14','63a871960abef80001ecfb7d','63a871960abef80001ecfb98'),('63a871970abef80001ecfd15','63a871960abef80001ecfb7d','63a871960abef80001ecfb99'),('63a871970abef80001ecfd16','63a871960abef80001ecfb7d','63a871960abef80001ecfb9a'),('63a871970abef80001ecfd17','63a871960abef80001ecfb7d','63a871960abef80001ecfba4'),('63a871970abef80001ecfd18','63a871960abef80001ecfb7d','63a871960abef80001ecfba5'),('63a871970abef80001ecfd19','63a871960abef80001ecfb7d','63a871960abef80001ecfbaa'),('63a871970abef80001ecfd1a','63a871960abef80001ecfb7d','63a871960abef80001ecfb9e'),('63a871970abef80001ecfd1b','63a871960abef80001ecfb7d','63a871960abef80001ecfbcc'),('63a871970abef80001ecfd1c','63a871960abef80001ecfb7d','63a871960abef80001ecfbcf'),('63a871970abef80001ecfd1d','63a871960abef80001ecfb7d','63a871960abef80001ecfbd9'),('63a871970abef80001ecfd1e','63a871960abef80001ecfb7d','63a871960abef80001ecfbda');
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_users`
--

DROP TABLE IF EXISTS `permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_users` (
  `id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_users`
--

LOCK TABLES `permissions_users` WRITE;
/*!40000 ALTER TABLE `permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_revisions`
--

DROP TABLE IF EXISTS `post_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_revisions` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `lexical` longtext,
  `created_at_ts` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_revisions_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_revisions`
--

LOCK TABLES `post_revisions` WRITE;
/*!40000 ALTER TABLE `post_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `mobiledoc` longtext,
  `lexical` longtext,
  `html` longtext,
  `comment_id` varchar(50) DEFAULT NULL,
  `plaintext` longtext,
  `feature_image` varchar(2000) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'post',
  `status` varchar(50) NOT NULL DEFAULT 'draft',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `email_recipient_filter` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `published_by` varchar(24) DEFAULT NULL,
  `custom_excerpt` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `custom_template` varchar(100) DEFAULT NULL,
  `canonical_url` text,
  `newsletter_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_type_unique` (`slug`,`type`),
  KEY `posts_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `posts_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('63a871960abef80001ecfbf4','1dc56852-5061-457c-aa5f-5b5e57bc0a37','Coming soon','coming-soon','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"a\",[\"href\",\"#/portal/\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is Testing, a brand new site by Testing that\'s just getting started. Things will be up and running here shortly, but you can \"],[0,[0],1,\"subscribe\"],[0,[],0,\" in the meantime if you\'d like to stay up to date and receive emails when new content is published!\"]]]],\"ghostVersion\":\"4.0\"}',NULL,'<p>This is Testing, a brand new site by Testing that\'s just getting started. Things will be up and running here shortly, but you can <a href=\"#/portal/\">subscribe</a> in the meantime if you\'d like to stay up to date and receive emails when new content is published!</p>','63a871960abef80001ecfbf4','This is Testing, a brand new site by Testing that\'s just getting started. Things will be up and running here shortly, but you can subscribe in the meantime if you\'d like to stay up to date and receive emails when new content is published!','https://static.ghost.org/v4.0.0/images/feature-image.jpg',0,'post','published',NULL,'public','all','2022-12-25 15:51:50','1','2022-12-25 15:55:26','63a871960abef80001ecfbf4','2022-12-25 15:51:50','1',NULL,NULL,NULL,NULL,NULL,NULL),('63a871970abef80001ecfbf6','14dc62c7-0241-42b7-8c1e-52d4d8f0ede1','About this site','about','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"hr\",{}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"Testing is an independent publication launched in December 2022 by Testing. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible, and allows Testing to continue to exist. Thank you!\"]]],[1,\"h3\",[[0,[],0,\"Access all areas\"]]],[1,\"p\",[[0,[],0,\"By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\"]]],[1,\"h3\",[[0,[],0,\"Fresh content, delivered\"]]],[1,\"p\",[[0,[],0,\"Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\"]]],[1,\"h3\",[[0,[],0,\"Meet people like you\"]]],[1,\"p\",[[0,[],0,\"Join a community of other subscribers who share the same interests.\"]]],[10,0],[1,\"h3\",[[0,[],0,\"Start your own thing\"]]],[1,\"p\",[[0,[],0,\"Enjoying the experience? Get started for free and set up your very own subscription business using \"],[0,[0],1,\"Ghost\"],[0,[],0,\", the same platform that powers this website.\"]]]],\"ghostVersion\":\"4.0\"}',NULL,'<p>Testing is an independent publication launched in December 2022 by Testing. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible, and allows Testing to continue to exist. Thank you!</p><h3 id=\"access-all-areas\">Access all areas</h3><p>By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.</p><h3 id=\"fresh-content-delivered\">Fresh content, delivered</h3><p>Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.</p><h3 id=\"meet-people-like-you\">Meet people like you</h3><p>Join a community of other subscribers who share the same interests.</p><hr><h3 id=\"start-your-own-thing\">Start your own thing</h3><p>Enjoying the experience? Get started for free and set up your very own subscription business using <a href=\"https://ghost.org\">Ghost</a>, the same platform that powers this website.</p>','63a871970abef80001ecfbf6','Testing is an independent publication launched in December 2022 by Testing. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible, and allows Testing to continue to exist. Thank you!\n\n\nAccess all areas\n\nBy signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\n\n\nFresh content, delivered\n\nStay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\n\n\nMeet people like you\n\nJoin a community of other subscribers who share the same interests.\n\n\nStart your own thing\n\nEnjoying the experience? Get started for free and set up your very own subscription business using Ghost, the same platform that powers this website.',NULL,0,'page','published',NULL,'public','all','2022-12-25 15:51:51','1','2022-12-25 15:55:26','63a871970abef80001ecfbf6','2022-12-25 15:51:51','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_authors`
--

DROP TABLE IF EXISTS `posts_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_authors` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `author_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_authors_post_id_foreign` (`post_id`),
  KEY `posts_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_authors_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_authors`
--

LOCK TABLES `posts_authors` WRITE;
/*!40000 ALTER TABLE `posts_authors` DISABLE KEYS */;
INSERT INTO `posts_authors` VALUES ('63a871970abef80001ecfbf5','63a871960abef80001ecfbf4','1',0),('63a871970abef80001ecfbf7','63a871970abef80001ecfbf6','1',0);
/*!40000 ALTER TABLE `posts_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_meta`
--

DROP TABLE IF EXISTS `posts_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_meta` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `email_subject` varchar(300) DEFAULT NULL,
  `frontmatter` text,
  `feature_image_alt` varchar(191) DEFAULT NULL,
  `feature_image_caption` text,
  `email_only` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_meta_post_id_unique` (`post_id`),
  CONSTRAINT `posts_meta_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_meta`
--

LOCK TABLES `posts_meta` WRITE;
/*!40000 ALTER TABLE `posts_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_products`
--

DROP TABLE IF EXISTS `posts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_products` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_products_post_id_foreign` (`post_id`),
  KEY `posts_products_product_id_foreign` (`product_id`),
  CONSTRAINT `posts_products_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_products`
--

LOCK TABLES `posts_products` WRITE;
/*!40000 ALTER TABLE `posts_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_tags` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `tag_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_tags_post_id_foreign` (`post_id`),
  KEY `posts_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES ('63a871970abef80001ecfd1f','63a871960abef80001ecfbf4','63a871960abef80001ecfb87',0);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `welcome_page_url` varchar(2000) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'none',
  `trial_days` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(191) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'paid',
  `currency` varchar(50) DEFAULT NULL,
  `monthly_price` int unsigned DEFAULT NULL,
  `yearly_price` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `monthly_price_id` varchar(24) DEFAULT NULL,
  `yearly_price_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('63a871960abef80001ecfb84','Free','free',1,NULL,'public',0,NULL,'free',NULL,NULL,NULL,'2022-12-25 15:51:50','2022-12-25 15:51:50',NULL,NULL),('63a871960abef80001ecfb85','Testing','default-product',1,NULL,'public',0,NULL,'paid','USD',500,5000,'2022-12-25 15:51:50','2022-12-25 15:55:26',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_benefits`
--

DROP TABLE IF EXISTS `products_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_benefits` (
  `id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `benefit_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_benefits_product_id_foreign` (`product_id`),
  KEY `products_benefits_benefit_id_foreign` (`benefit_id`),
  CONSTRAINT `products_benefits_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_benefits_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_benefits`
--

LOCK TABLES `products_benefits` WRITE;
/*!40000 ALTER TABLE `products_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redirects` (
  `id` varchar(24) NOT NULL,
  `from` varchar(2000) NOT NULL,
  `to` varchar(2000) NOT NULL,
  `post_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `redirects_post_id_foreign` (`post_id`),
  CONSTRAINT `redirects_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('63a871960abef80001ecfb7a','Administrator','Administrators','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb7b','Editor','Editors','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb7c','Author','Authors','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb7d','Contributor','Contributors','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb7e','Owner','Blog Owner','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb7f','Admin Integration','External Apps','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb80','Ghost Explore Integration','Internal Integration for the Ghost Explore directory','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb81','DB Backup Integration','Internal DB Backup Client','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1'),('63a871960abef80001ecfb82','Scheduler Integration','Internal Scheduler Client','2022-12-25 15:51:50','1','2022-12-25 15:51:50','1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES ('63a871960abef80001ecfb83','63a871960abef80001ecfb7e','1');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(24) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `session_data` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_session_id_unique` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('63a8726e0abef80001ecfd86','6gV14eBpvPmAEytQJFu77_sMoRoDXtI9','1','{\"cookie\":{\"originalMaxAge\":15768000000,\"expires\":\"2023-06-26T03:55:26.733Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/ghost\",\"sameSite\":\"lax\"},\"user_id\":\"1\",\"origin\":\"http://localhost:2368\",\"user_agent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"ip\":\"::ffff:172.20.0.1\"}','2022-12-25 15:55:27','2022-12-25 15:55:27');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` varchar(24) NOT NULL,
  `group` varchar(50) NOT NULL DEFAULT 'core',
  `key` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  `flags` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('63a871970abef80001ecfd20','core','db_hash','53a216ee-f885-4740-8694-a44f046b60f4','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd21','core','routes_hash','3d180d52c663d173a6be791ef411ed01','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:53','1'),('63a871970abef80001ecfd22','core','next_update_check','1672070085','number',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:54:45','1'),('63a871970abef80001ecfd23','core','notifications','[{\"dismissible\":true,\"location\":\"bottom\",\"status\":\"alert\",\"id\":\"b2c126a0-82f3-11ed-b567-d5f91ef1e449\",\"createdAtVersion\":\"5.26.2\",\"custom\":false,\"createdAt\":\"2022-12-23T18:57:50.000Z\",\"type\":\"info\",\"top\":false,\"message\":\"Ghost <a href=\\\"https://github.com/TryGhost/Ghost/releases\\\">5.26.3</a> has been released, <a href=\\\"https://ghost.org/update/?v=5.26.2\\\">click here</a> to upgrade.\",\"seen\":false,\"addedAt\":\"2022-12-25T15:54:45.218Z\"}]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:54:45','1'),('63a871970abef80001ecfd24','core','version_notifications','[]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd25','core','admin_session_secret','178e3619364eb548b663a84ef86d8b7e8845c7fca72a75fba3841a60ce120042','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd26','core','theme_session_secret','2fe7a8349cab56db0e71fc5b0c11a9b3b163ce25920124d46550e23e663fef99','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd27','core','ghost_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBAI5J3fopf2cxg2tSQmr+i5CXFOl0xwjcN3kAG8vKutup5KDGABnuIsWHKi1IG+Do\nTqzcqtb/wQxrKOZQqBQaqR0+wi/ja2l6mIiBNQ7UJHuZVQxs1oGFXvTj3rdrjOzkI+giHo0D\nsChRKZRr4cc4LkTMDuFoiMBu5fGdDnezD45xAgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd28','core','ghost_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICXQIBAAKBgQCOSd36KX9nMYNrUkJq/ouQlxTpdMcI3Dd5ABvLyrrbqeSgxgAZ7iLFhyot\nSBvg6E6s3KrW/8EMayjmUKgUGqkdPsIv42tpepiIgTUO1CR7mVUMbNaBhV704963a4zs5CPo\nIh6NA7AoUSmUa+HHOC5EzA7haIjAbuXxnQ53sw+OcQIDAQABAoGAYPtN9h1kvfRMi9DEfmLC\nw6mGUl0K8CoREUMWrv+d/uy8bSynkwTx5EptX/G/NruALGg3dVVawlkjxl+BQDqvurzeJdtQ\nwQtDEvd/XsN5wLGtRDgp0ye6HSQAxn78eCcjzfe0ZrMPUfWCtuJjtnUKtVBgY7GFEYC721ms\n1/AD/yUCQQDfC6LG0y15KpUemrePz6BMptxjetamV37NNECTiWEJl+M8f4CVbAHPIKfYQJWh\niw/i6oPTFvt3F40H5jeKQzo7AkEAo0+4fjgxBloOlNhTjGETAjBEB5qn0bJ7bGiTyXULCJWs\n4eTcoB1eS36QIOzVOPxPmA4iar/fN6F75LtOQi/jQwJBAIv4Ols5VPUPsuq0vvLhob/Yir9m\n6+MRT0KpQskTUjD5/yENBn0+fVglLw93YC8zHHITJ0zFxGK1BczqPPpoO9cCQEd6QPmdhneN\nOwySkh7C7hrrHRtm6USypaqRKv3lqGqdeAl2rcm2kOrh/hsrDTff1sZqiU3HpN8oYp1+DYaS\nhxkCQQCM3ProfquDgCzFhjwZbog/v2yYiDD/Pw/GHm7bzvFqwk1xbDpU6TWwc6oXkFEKlTFt\noESB4icJ5jvtoDtXR7Un\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd29','core','members_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBAKOMmEZS4Gyv5ZdqR1kd6YBYQtAFJDqPoyRqWThJxA6iTstJUOqYzlAJyNrbggqw\nvSSRB2c0WTEBrknVF3bgQ0pBwCSNc6zaoSXh7fB0erm85rSWvyZ3mSZOi/GYx3ckq9MyK/fO\nCGtaovx+HvrBLc9twj7OugcQvz/ahnF1OJ41AgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd2a','core','members_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICXAIBAAKBgQCjjJhGUuBsr+WXakdZHemAWELQBSQ6j6Mkalk4ScQOok7LSVDqmM5QCcja\n24IKsL0kkQdnNFkxAa5J1Rd24ENKQcAkjXOs2qEl4e3wdHq5vOa0lr8md5kmTovxmMd3JKvT\nMiv3zghrWqL8fh76wS3PbcI+zroHEL8/2oZxdTieNQIDAQABAoGAAKTTDKPS4lqm6ruuYDlv\n6+NtD+iVRe2+1Kveggw4S150NPSq7uF/Hm2LbuEiV+xuMjCn+M4J89lv2DaQixVC7oxLLUTg\n2/yxvMyd3b0IMFsWph9Ig/yerYTHgxhLmlgQ8rLIWiBLeC8Saq/LWUL9KZfBfQm/JM6eEqn1\niaOcdpkCQQDRTr0t9BC+xVfEBTW4qHAwRga7LNwTXD4AAaXCVMTAzeR8wJ8aAMXPHPyt61Bm\neELvCgjTjxAoaXUaZV+ZZogHAkEAyAiozoC8Tb6KSuRoeme7YfTPqVOC0LnLE/eRfHQMBVBG\nSzLg/duDRXhY5/sNPoFf7MdMkc8g0aHqeHzBVsIA4wJBAAxKG0F/exw4ahbQV38oJK4w7mQ/\nFgzs9Zb6gckPQR4w+KF6jdzw/qxSf2OW1Xmuxf9TD4GcfM5iosWR/jL7mjECQEPkBH8J3F86\nky819GvO9x8Y+r4KdPSoik89kChALrBC/YiaPRiLvzL91JbvcyBKwqbXQZqfRRFBNhYsqWXr\ntGcCQEUG0igMt1/ea5RAtmnpZIjhxcbKgN5uLV/6OAhfFGs/Y+Pkq+/ks56OHtOmKXUV3w5s\nkvGJusSbB62Rqbp7fgQ=\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd2b','core','members_email_auth_secret','1f15fc8264a4b54d1ef7c8ffc2712d7a9ff6eafb18a11e933fc0552f4e6690c4749607fc4072a2a9a3d0e85bfce391359430785cd081f348a5a8a1e2fad9046e','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd2c','core','members_stripe_webhook_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd2d','core','members_stripe_webhook_secret',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd2e','site','title','Testing','string','PUBLIC','2022-12-25 15:51:51','1','2022-12-25 15:55:26','1'),('63a871970abef80001ecfd2f','site','description','Thoughts, stories and ideas.','string','PUBLIC','2022-12-25 15:51:51','1','2022-12-25 15:55:26','1'),('63a871970abef80001ecfd30','site','logo','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd31','site','cover_image','https://static.ghost.org/v5.0.0/images/publication-cover.jpg','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd32','site','icon','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd33','site','accent_color','#FF1A75','string','PUBLIC','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd34','site','locale','en','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd35','site','timezone','Etc/UTC','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd36','site','codeinjection_head','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd37','site','codeinjection_foot','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd38','site','facebook','ghost','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd39','site','twitter','@ghost','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3a','site','navigation','[{\"label\":\"Home\",\"url\":\"/\"},{\"label\":\"About\",\"url\":\"/about/\"}]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3b','site','secondary_navigation','[{\"label\":\"Sign up\",\"url\":\"#/portal/\"}]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3c','site','meta_title',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3d','site','meta_description',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3e','site','og_image',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd3f','site','og_title',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd40','site','og_description',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd41','site','twitter_image',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd42','site','twitter_title',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd43','site','twitter_description',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd44','theme','active_theme','casper','string','RO','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd45','private','is_private','false','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd46','private','password','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd47','private','public_hash','5ff8e4b76c881ffb508048c541d07f','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd48','members','default_content_visibility','public','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd49','members','default_content_visibility_tiers','[]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4a','members','members_signup_access','all','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4b','members','members_support_address','noreply','string','PUBLIC,RO','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4c','members','stripe_secret_key',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4d','members','stripe_publishable_key',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4e','members','stripe_plans','[]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd4f','members','stripe_connect_publishable_key',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd50','members','stripe_connect_secret_key',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd51','members','stripe_connect_livemode',NULL,'boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd52','members','stripe_connect_display_name',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd53','members','stripe_connect_account_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd54','members','members_monthly_price_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd55','members','members_yearly_price_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd56','members','members_track_sources','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd57','portal','portal_name','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd58','portal','portal_button','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd59','portal','portal_plans','[\"free\"]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5a','portal','portal_products','[]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5b','portal','portal_button_style','icon-and-text','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5c','portal','portal_button_icon',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5d','portal','portal_button_signup_text','Subscribe','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5e','email','mailgun_domain',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd5f','email','mailgun_api_key',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd60','email','mailgun_base_url',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd61','email','email_track_opens','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd62','email','email_track_clicks','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd63','email','email_verification_required','false','boolean','RO','2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd64','amp','amp','false','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd65','amp','amp_gtag_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd66','firstpromoter','firstpromoter','false','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd67','firstpromoter','firstpromoter_id',NULL,'string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd68','labs','labs','{}','object',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd69','slack','slack_url','','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6a','slack','slack_username','Ghost','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6b','unsplash','unsplash','true','boolean',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6c','views','shared_views','[]','array',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6d','editor','editor_default_email_recipients','visibility','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6e','editor','editor_default_email_recipients_filter','all','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1'),('63a871970abef80001ecfd6f','comments','comments_enabled','off','string',NULL,'2022-12-25 15:51:51','1','2022-12-25 15:51:51','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snippets` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `mobiledoc` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `snippets_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_prices`
--

DROP TABLE IF EXISTS `stripe_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_prices` (
  `id` varchar(24) NOT NULL,
  `stripe_price_id` varchar(255) NOT NULL,
  `stripe_product_id` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'recurring',
  `interval` varchar(50) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_prices_stripe_price_id_unique` (`stripe_price_id`),
  KEY `stripe_prices_stripe_product_id_foreign` (`stripe_product_id`),
  CONSTRAINT `stripe_prices_stripe_product_id_foreign` FOREIGN KEY (`stripe_product_id`) REFERENCES `stripe_products` (`stripe_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_prices`
--

LOCK TABLES `stripe_prices` WRITE;
/*!40000 ALTER TABLE `stripe_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_products`
--

DROP TABLE IF EXISTS `stripe_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_products` (
  `id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `stripe_product_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_products_stripe_product_id_unique` (`stripe_product_id`),
  KEY `stripe_products_product_id_foreign` (`product_id`),
  CONSTRAINT `stripe_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_products`
--

LOCK TABLES `stripe_products` WRITE;
/*!40000 ALTER TABLE `stripe_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `tier_id` varchar(24) NOT NULL,
  `cadence` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `payment_provider` varchar(50) DEFAULT NULL,
  `payment_subscription_url` varchar(2000) DEFAULT NULL,
  `payment_user_url` varchar(2000) DEFAULT NULL,
  `offer_id` varchar(24) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_member_id_foreign` (`member_id`),
  KEY `subscriptions_tier_id_foreign` (`tier_id`),
  KEY `subscriptions_offer_id_foreign` (`offer_id`),
  CONSTRAINT `subscriptions_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  CONSTRAINT `subscriptions_tier_id_foreign` FOREIGN KEY (`tier_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppressions`
--

DROP TABLE IF EXISTS `suppressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppressions` (
  `id` varchar(24) NOT NULL,
  `email_address` varchar(191) NOT NULL,
  `email_id` varchar(24) DEFAULT NULL,
  `reason` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suppressions_email_address_unique` (`email_address`),
  KEY `suppressions_email_id_foreign` (`email_id`),
  CONSTRAINT `suppressions_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppressions`
--

LOCK TABLES `suppressions` WRITE;
/*!40000 ALTER TABLE `suppressions` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text,
  `feature_image` varchar(2000) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `canonical_url` varchar(2000) DEFAULT NULL,
  `accent_color` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('63a871960abef80001ecfb87','News','news',NULL,NULL,NULL,'public',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-25 15:51:50','1','2022-12-25 15:51:50','1');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` varchar(24) NOT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tokens_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `profile_image` varchar(2000) DEFAULT NULL,
  `cover_image` varchar(2000) DEFAULT NULL,
  `bio` text,
  `website` varchar(2000) DEFAULT NULL,
  `location` text,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `accessibility` text,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `tour` text,
  `last_seen` datetime DEFAULT NULL,
  `comment_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `free_member_signup_notification` tinyint(1) NOT NULL DEFAULT '1',
  `paid_subscription_started_notification` tinyint(1) NOT NULL DEFAULT '1',
  `paid_subscription_canceled_notification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','Testing','testing','$2a$10$OyIO8d4.9jlr13.OoPizt.ah6Mffe6LepUIfaiA6vJGmESWpI9Cma','ghost_api@testing.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{\"nightShift\":true}','active',NULL,'public',NULL,NULL,NULL,'2022-12-25 15:55:26',1,1,1,0,'2022-12-25 15:51:50','1','2022-12-25 15:56:19','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` varchar(24) NOT NULL,
  `event` varchar(50) NOT NULL,
  `target_url` varchar(2000) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secret` varchar(191) DEFAULT NULL,
  `api_version` varchar(50) NOT NULL DEFAULT 'v2',
  `integration_id` varchar(24) NOT NULL,
  `last_triggered_at` datetime DEFAULT NULL,
  `last_triggered_status` varchar(50) DEFAULT NULL,
  `last_triggered_error` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_integration_id_foreign` (`integration_id`),
  CONSTRAINT `webhooks_integration_id_foreign` FOREIGN KEY (`integration_id`) REFERENCES `integrations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25 15:57:07
