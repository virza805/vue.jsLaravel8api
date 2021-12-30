-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 07:19 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesla`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `order`, `created_at`, `updated_at`) VALUES
(2, 'Hade Craft', '1640447403tanvir-.png', 564, NULL, '2021-12-25 09:50:03'),
(5, 'Onamica Tanvir', '1640410743StreamData 1.png', 1, '2021-12-24 10:24:45', '2021-12-24 23:39:03'),
(6, 'Tanvir', '1640410661profil_pick.jpg', 123, '2021-12-24 23:37:41', '2021-12-24 23:37:41'),
(8, 'Tanvir Onamica', '1640411593Tanvir Hasan.jpg', 999, '2021-12-24 23:53:13', '2021-12-24 23:53:13'),
(18, 'Onamica Tanvir', '1640411711Tanvir Md. Al-Amin.jpg', 111, '2021-12-24 23:53:57', '2021-12-24 23:55:11'),
(19, 'dsv', '1640536688p-tanvir.jpg', 11, '2021-12-26 10:38:08', '2021-12-26 10:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_172738_create_categories_table', 2),
(6, '2021_12_25_061847_create_products_table', 3),
(7, '2021_12_26_152727_add_product_category_id', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'Tanvir', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '564.505', '1640430793workw_develop.png', '2021-12-25 05:13:13', '2021-12-28 09:11:45', 5),
(3, 'Tanjil', 'It’s also different; different to the first-generation Model X that we drove a couple of years ago. The styling hasn’t changed – such is the Tesla way – but the way it operates has. Tesla has this year given it the Raven update (named for the character in the X-Men comics) which means it has a new, more efficient, front electric motor, and a 100kWh battery pack that gives this Long Range model a theoretical one-charge range of 507km.', '9988', '1640704797img.jpg', '2021-12-25 05:22:57', '2021-12-28 09:19:57', 6),
(4, 'Six-seat layout', 'Our test car had the optional six-seat layout – four individual seats in two rows, followed by a split-folding two-seater bench in the back. It’s not the most practical layout; space in the third row is limited, and equally space in the middle row is not as luxurious as you might expect, but it had one major benefit. The space between the individual middle-row seats made for an ideal spot for my dog to lie down. More conventional five and seven-seat layouts are also available.', '666', '1640706279img1.jpg', '2021-12-25 05:25:27', '2021-12-28 09:44:39', 2),
(5, 'Tesla Modes X', 'যে-দিন স্রষ্টার বুকে জেগেছিল আদি সৃষ্টি-কাম,\nসেই দিন স্রষ্টা সাথে তুমি এলে, আমি আসিলাম।\nআমি কাম, তুমি হ’লে রতি,\nতরুণ-তরুণী বুকে নিত্য তাই আমাদের অপরূপ গতি!\nকী যে তুমি, কী যে নহ, কত ভাবি-কত দিকে চাই!\nনামে নামে, অ-নামিকা, তোমারে কি খুঁজিনু বৃথাই?\nবৃথাই বাসিনু ভালো? বৃথা সবে ভালোবাসে মোরে?\nতুমি ভেবে যারে বুকে চেপে ধরি সে-ই যায় স’রে।\nকেন হেন হয়, হায়, কেন লয় মনে-\nযারে ভালো বাসিলাম, তারো চেয়ে ভালো কেহ\nবাসিছে গোপনে।\n\nসে বুঝি সুন্দরতর-আরো আরো মধু!\nআমারি বধূর বুকে হাসো তুমি হ’য়ে নববধূ।\n-------------------------------------------\nপ্রেম সত্য, প্রেম-পাত্র বহু-আগণন,\nতাই-চাই, বুকে পাই, তবু কেন কেঁদে ওঠে মন।\nমদ সত্য, পাত্র সত্য নয়!\nযে-পাত্রে ঢালিয়া খাও সেই নেশা হয়!', '3', '1640706348teslaphilippines.model-x.jpg', NULL, '2021-12-29 08:58:35', 6),
(6, 'Flower', 'Then again, much of that price is ploughed into the battery. Tesla’s claim of 507km on a single charge is believable, but if you’re on the motorway a lot that will probably drop to a more realistic 400km or thereabouts. Still good, but there’s better news when it comes to recharging. The Raven update has allowed the Model X to charge at faster speeds, and it’s now able to draw 200kW from Tesla’s own-brand Supercharger system. Plug in, and within 15-20 minutes you’ll have another 150km of range on board. It’s actually quite startling, and stands in stark contrast to the snail-mail efforts of ESB’s 50kW “fast” chargers. This is what electric motoring is supposed to be like, and hopefully will be like as/when/if the charging network improves.', '7', '4.jpg', NULL, '2021-12-29 08:37:10', 5),
(7, 'Tesla Model X Long Range: The lowdown', '400km or thereabouts. Still good, but there’s better news when it comes to recharging. The Raven update has allowed the Model X to charge at faster speeds, and it’s now able to draw 200kW from Tesla’s own-brand Supercharger system. Plug in, and within 15-20 minutes you’ll have another 150km of range on board. It’s actually quite startling, and stands in stark contrast to the snail-mail efforts of ESB’s 50kW “fast” chargers. This is what electric motoring is supposed to be like, and hopefully will be like as/when/if the charging network improves.', '5', '5.jpg', NULL, '2021-12-28 09:49:32', 19),
(8, 'Tesla Model X Long Range', 'Still, there’s something about the Model X. It’s not as polished a product as the smaller, cheaper Model 3, nor is it as good to drive. But it is fascinating, it is interesting, it is intriguing and it is a rare modern car about which we can say that. Perfect? No, but at long last, a car about which my family wants to talk to me.', '4', '6.jpg', NULL, '2021-12-28 09:50:13', 19),
(9, 'Accessories', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is', '8', '1640707090img2.jpg', NULL, '2021-12-28 09:58:10', 2),
(10, 'Product- 6', 'Product- Six Still, there’s something about the Model X. It’s not as polished a product as the smaller, cheaper Model 3, nor is it as good to drive. But it is fascinating, it is interesting, it is intriguing and it is a rare modern car about which we can say that. Perfect? No, but at long last, a car about which my family wants to talk to me.', '9', '8.jpg', NULL, '2021-12-28 09:58:52', 2),
(11, 'Product- 7', 'Product- SevenAccessories Still, there’s something about the Model X. It’s not as polished a product as the smaller, cheaper Model 3, nor is it as good to drive. But it is fascinating, it is interesting, it is intriguing and it is a rare modern car about which we can say that. Perfect? No, but at long last, a car about which my family wants to talk to me.', '12', '9.jpg', NULL, '2021-12-28 09:58:41', 5),
(12, 'Product-8', 'Then again, much of that price is ploughed into the battery. Tesla’s claim of 507km on a single charge is believable, but if you’re on the motorway a lot that will probably drop to a more realistic 400km or thereabouts. Still good, but there’s better news when it comes to recharging. The Raven update has allowed the Model X to charge at faster speeds, and it’s now able to draw 200kW from Tesla’s own-brand Supercharger system. Plug in, and within 15-20 minutes you’ll have another 150km of range on board. It’s actually quite startling, and stands in stark contrast to the snail-mail efforts of ESB’s 50kW “fast” chargers. This is what electric motoring is supposed to be like, and hopefully will be like as/when/if the charging network improves.', '14', '10.jpg', NULL, '2021-12-28 09:48:03', 5),
(13, 'Tesla Model X', 'Tesla’s next-gen Model X\nTesla is a brand that is seldom out of the spotlight and attracts an almost fanatical following of fans. So how does its Model X Long Range fare, an all-electric family that sits in the circa €100,000 sector of the market? Video: Neil Briscoe\nMy family sees cars come and go. It’s the life of a professional motoring journalist; and no, I’m not looking for sympathy. My point is that shiny new cars are so commonplace in the lives of my children and my wife, that they have become inured to it all. They’re hard to impress, as apt to be annoyed by the fact that they don’t know which car outside Lidl is ours as they are to notice that it has some new, whizz-bang innovation. Mostly, they just don’t care what I’m driving.\n\nExcept for this one. This one, the Tesla Model X,', '998', '1640704626image.jpg', NULL, '2021-12-28 09:20:49', 2),
(14, 'Onamica', 'তোমারে বন্দনা করি\n      স্বপ্ন-সহচরী\n     লো আমার অনাগত প্রিয়া,\n   আমার পাওয়ার বুকে না-পাওয়ার তৃষ্ণা-জাগানিয়া!\n      তোমারে বন্দনা করি….\n     হে আমার মানস-রঙ্গিণী,\n   অনন্ত-যৌবনা বালা, চিরন্তন বাসনা-সঙ্গিনী!\n      তোমারে বন্দনা করি….\n   নাম-নাহি-জানা ওগো আজো-নাহি-আসা!\n   আমার বন্দনা লহ, লহ ভালবাসা….\n     গোপণ-চারিণী মোর, লো চির-প্রেয়সী!\n   সৃষ্টি-দিন হ’তে কাঁদ’ বাসনার অন্তরালে বসি’-\n      ধরা নাহি দিলে দেহে।\n   তোমার কল্যাণ-দীপ জ্বলিলে না\n     দীপ-নেভা বেড়া-দেওয়া গেহে।\n   অসীমা! এলে না তুমি সীমারেখা-পারে!\n   স্বপনে পাইয়া তোমা’ স্বপনে হারাই বারে বারে\n   অরুপা লো! রহি হ’য়ে এলে মনে,\n     সতী হ’য়ে এলে না ক’ ঘরে।\n   প্রিয় হ’য়ে এলে প্রেমে,\n     বধূ হয়ে এলে না অধরে!\n   দ্রাক্ষা-বুকে রহিলে গোপনে তুমি শিরীন্‌ শরাব,\n   পেয়ালায় নাহি এলে!-\n     ‘উতারো নেকার’-\n      হাঁকে মোর দুরন্ত কামনা!\n   সুদুরিকা! দূরে থাক’-ভালোবাসা-নিকটে এসো না।\n   তুমি নহ নিভে যাওয়া আলো, নহ শিখা।\n     তুমি মরীচিকা,\n     তুমি জ্যোতি।-\n   জন্ম-জন্মান্তর ধরি’ লোকে-লোকান্তরে তোমা’ করেছি আরতি,\n        বারে বারে  একই জন্মে শতবার করি!\nযেখানে দেখেছি রূপ,-করেছি বন্দনা প্রিয়া তোমারেই স্মরি’।\n     রূপে রূপে, অপরূপা, খুঁজেছি তোমায়,\n     পবনের যবনিকা যত তুলি তত বেড়ে যায়!\n   বিরহের কান্না-ধোওয়া তৃপ্ত হিয়া ভরি’\n   বারে বারে উদিয়াছ ইন্দ্রধনুসমা,\n      হাওয়া-পরী\n      প্রিয় মনোরমা!\n   ধরিতে গিয়োছি-তুমি মিলায়েছ দূর দিগ্বলয়ে\n   ব্যথা-দেওয়া রাণী মোর,  এলে না ক’ কথা কওয়া হ’য়ে।\n  চির-দূরে–থাকা ওগো চির-নাহি-আসা!\n   তোমারে দেহের তীরে পাবার দুরাশা\n     গ্রহ হ’তে গ্রহান্তরে ল’য়ে যায় মোরে!\n   বাসনার বিপুল আগ্রহে-\n     জন্ম লভি লোকে-লোকান্তরে!\n   উদ্বেলিত বুকে মোর অতৃপ্ত যৌবন-ক্ষুধা\n       উদগ্র কামনা,\n     জন্ম তাই লভি বারে বারে,\n      না-পাওয়ার করি আরাধনা!….\n   যা-কিছু সুন্দর হেরি’ ক’রেছি চুম্বন,\n    যা-কিছু চুম্বন দিয়া ক’রেছি সুন্দর-\n   সে-সবার মাঝে যেন তব হরষণ\n    অনুভব করিয়াছি!-ছুঁয়েছি অধর\n   তিলোত্তমা, তিলে তিলে!\n     তোমারে যে করেছি চুম্বন\n   প্রতি তরুণীর ঠোঁটে\n     প্রকাশ গোপন।\n   যে কেহ প্রিয়ারে তার চুম্বিয়াছে ঘুম-ভাঙা রাতে,\n    রাত্রি-জাগা তন্দ্রা-লাগা ঘুম-পাওয়া প্রাতে,\n   সকলের সাথে আমি চুমিয়াছি তোমা’\n   সকলের ঠোঁটে যেন, হে নিখিল-প্রিয়া প্রিয়তমা!\n   তরু, লতা, পশু, পাখী, সকলের কামনার সাথে\n   আমার কামনা জাগে,-আমি রমি বিশ্ব-কামনাতে!\n   বঞ্চিত যাহারা প্রেমে, ভুঞ্জে যারা রতি-\n   সকলের মাঝে আমি-সকলের প্রেমে মোর গতি!\n   যে-দিন স্রষ্টার বুকে জেগেছিল আদি সৃষ্টি-কাম,\n   সেই দিন স্রষ্টা সাথে তুমি এলে, আমি আসিলাম।\n     আমি কাম, তুমি হ’লে রতি,\n   তরুণ-তরুণী বুকে নিত্য তাই আমাদের অপরূপ গতি!\n   কী যে তুমি, কী যে নহ, কত ভাবি-কত দিকে চাই!\n   নামে নামে, অ-নামিকা, তোমারে কি খুঁজিনু বৃথাই?\n   বৃথাই বাসিনু ভালো? বৃথা সবে ভালোবাসে মোরে?\n   তুমি ভেবে যারে বুকে চেপে ধরি সে-ই যায় স’রে।\n     কেন হেন হয়, হায়, কেন লয় মনে-\n   যারে ভালো বাসিলাম, তারো চেয়ে ভালো কেহ\nবাসিছে গোপনে।\n    সে বুঝি সুন্দরতর-আরো আরো মধু!\n    আমারি বধূর বুকে হাসো তুমি হ’য়ে নববধূ।\n     বুকে যারে পাই, হায়,\n     তারি বুকে তাহারি শয্যায়\n   নাহি-পাওয়া হ’য়ে তুমি কাঁদ একাকিনী,\n     ওগো মোর প্রিয়ার সতিনী।….\n   বারে বারে পাইলাম-বারে বারে মন যেন কহে-\n     নহে, এ সে নহে!\n   কুহেলিকা! কোথা তুমি? দেখা পাব কবে?\n   জন্মেছিলে জন্মিয়াছ কিম্বা জন্ম লবে?\n     কথা কও, কও কথা প্রিয়া,\n   হে আমার যুগে-যুগে না-পাওয়ার তৃষ্ণা-জাগানিয়া!\n   কহিবে না কথা তুমি! আজ মনে হয়,\n   প্রেম সত্য চিরন্তন, প্রেমের পাত্র সে বুঝি চিরন্তন নয়।\n     জন্ম যার কামনার বীজে\n   কামনারই মাঝে সে যে বেড়ে যায় কল্পতরু নিজে।\n   দিকে দিকে শাখা তার করে অভিযান,\n   ও যেন শুষিয়া নেবে আকাশের যত বায়ু প্রাণ।\n     আকাশ ঢেকেছে তার পাখা\n     কামনার সবুজ বলাকা!\n   প্রেম সত্য,  প্রেম-পাত্র বহু-আগণন,\n   তাই-চাই, বুকে পাই, তবু কেন কেঁদে ওঠে মন।\n     মদ সত্য, পাত্র সত্য নয়!\n   যে-পাত্রে ঢালিয়া খাও সেই নেশা হয়!\n      চির-সহচরী!\n     এতদিনে পরিচয় পেনু, মরি মরি!\n     আমারি প্রেমের মাঝে রয়েছ গোপন,\n   বৃথা আমি খুঁজে মরি’ জন্মে জন্মে করিনু রোদন।\n     প্রতি রূপে, অপরূপা, ডাক তুমি,\n      চিনেছি তোমায়,\n     যাহারে বাসিব ভালো-সে-ই তুমি,\n      ধরা দেবে তায়!\n     প্রেম এক, প্রেমিকা সে বহু,\n   বহু পাত্রে ঢেলে পি’ব সেই প্রেম-\n      সে শরাব লোহু।\n   তোমারে করিব পান, অ-নামিকা, শত কামনায়,\n     ভৃঙ্গারে, গোলাসে কভু, কভু পেয়ালায়!\n\n\nকবিতা: অ-নামিকা\nকবি: কাজী নজরুল ইসলাম\nকাব্যগ্রন্থ / প্রকাশিত: সিন্ধু হিন্দোল\nলিখার সময়: ১৭/০৭/১৯২৬\nলিখার স্থান: চট্টগ্রাম', '0.09', '1640788716teslaphilippines.model-x.jpg', '2021-12-29 08:38:36', '2021-12-29 08:54:11', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir', 'tanvir@gmail.com', NULL, '$2y$10$/bbJvd8w3e/ki3d./u1/jOscG7aHe353i4Qu8vZPutJJP7NWMH.wu', 'UppVDzwavOBmag74VnBxvBLpzhmX0laM395bxob3Aoe5gTKKRwerD37vYm8G', '2021-12-18 06:12:32', '2021-12-18 06:12:32'),
(2, 'virza', 'virza.bd@gmail.com', NULL, '$2y$10$9ul/FMMvttzpuJxMvP1TGOVPeKrFeShUoLult7QvLhSGKHPBAPlTi', 'Ns0QSihJIwgoqcipwo616UWWarXQTkjfFgUxENpIgFgqJNm6wi1z72oLPvQi', '2021-12-18 06:13:32', '2021-12-18 06:13:32'),
(3, 'MD AL AMIN', 'virza805@gmail.com', NULL, '$2y$10$xo.pAaS75vG77ys6DzYCuem.vdaDwlJSEMr784LT5lSXHtQqfe8my', 'ol6hWjgZA7nV66AKOBDahuuHMHQimJTSJkVJCx728FW0WHTXbuq37BLWFhz2', '2021-12-18 08:33:59', '2021-12-18 08:33:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
