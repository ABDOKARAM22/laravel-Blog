-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 06:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-blog`
--

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_27_151642_posts', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `subtitle`, `description`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'the-versatile-language-of-the-web', 'The Versatile Language of the Web', 'comprehensive overview of the PHP language, its features, history, and its applications in web development.', 'Introduction\r\n\r\nPHP, which stands for Hypertext Preprocessor (originally Personal Home Page), is a powerful and versatile server-side scripting language used to develop dynamic and interactive web applications. Since its inception in 1994 by Rasmus Lerdorf, PHP has grown to become one of the most popular and widely-used programming languages on the web. This article delves into the world of PHP, its history, features, and its role in web development.\r\n\r\nA Brief History of PHP\r\n\r\nPHP\'s journey began as a set of Common Gateway Interface (CGI) binaries written in C, used for tracking visits to Rasmus Lerdorf\'s online resume. It soon evolved into a server-side scripting language that enabled developers to create dynamic web pages. Over the years, PHP underwent numerous updates and improvements, with each version offering enhanced features and performance optimizations.\r\n\r\nKey Features of PHP\r\n\r\nServer-Side Scripting: PHP is primarily a server-side scripting language, which means it is executed on the server and sends the resulting HTML to the client\'s web browser. This approach allows for the creation of dynamic and data-driven web applications.\r\n\r\nCross-Platform Compatibility: PHP is platform-independent and works seamlessly on various operating systems like Windows, Linux, and macOS. This flexibility makes it a popular choice among developers.\r\n\r\nOpen Source: PHP is an open-source language, which means it is freely available and actively maintained by a large community of developers. This open nature encourages innovation and ensures that PHP remains up-to-date with the latest web development trends.\r\n\r\nExtensive Library Support: PHP boasts a vast collection of libraries and extensions, allowing developers to easily integrate various functionalities into their applications. From database connectivity to image processing, there\'s a PHP extension for nearly every web development need.\r\n\r\nEase of Learning: PHP is known for its low learning curve, making it an excellent choice for beginners. The syntax is intuitive and similar to other C-based languages, making it accessible for developers with prior programming experience.\r\n\r\nIntegration Capabilities: PHP can be easily integrated with popular databases like MySQL, PostgreSQL, and Oracle. This enables the creation of robust and data-driven web applications.\r\n\r\nWeb Frameworks: Numerous web frameworks, such as Laravel, Symfony, and CodeIgniter, have been developed in PHP to streamline the web development process. These frameworks provide predefined structures and tools to expedite development.\r\n\r\nCommunity Support: The PHP community is extensive and vibrant, with countless online resources, forums, and tutorials available. This support network ensures that developers can easily find help and guidance.\r\n\r\nApplications of PHP\r\n\r\nPHP is utilized in a wide range of web development scenarios, including:\r\n\r\nContent Management Systems (CMS): Popular CMS platforms like WordPress, Joomla, and Drupal are built on PHP. These systems enable users to create and manage websites with ease.\r\n\r\nE-commerce Websites: PHP powers many e-commerce platforms, facilitating secure online transactions and product management. The Magento and WooCommerce platforms are noteworthy examples.\r\n\r\nSocial Media Networks: Some components of social media platforms, such as Facebook, are built using PHP. It plays a pivotal role in handling user interactions and database operations.\r\n\r\nWeb Applications: PHP is used in a variety of web applications, ranging from simple contact forms to complex customer relationship management (CRM) systems.\r\n\r\nConclusion\r\n\r\nPHP, with its extensive features and community support, remains a versatile and popular language in the world of web development. Its journey from a personal project to a foundational element of the web showcases its significance. Whether you are a novice or an experienced developer, PHP\'s ease of learning and extensive library support make it a valuable tool for creating dynamic and interactive web applications. As technology continues to evolve, PHP is certain to evolve with it, maintaining its relevance in the ever-changing landscape of web development.\r\n\r\n\r\n\r\n\r\nUser', '65281900c6212_the-versatile-language-of-the-web.png', '2023-09-30 13:50:45', '2023-10-12 13:04:16', 2),
(4, 'laravel-unraveling-the-elegance-of-modern-web-development', 'Laravel: Unraveling the Elegance of Modern Web Development', 'a popular PHP framework for web development. It highlights its key features, benefits, and its growing significance in modern web application development.', 'Introduction\r\n\r\nLaravel, often dubbed as the \"PHP framework for web artisans,\" has rapidly emerged as a leading framework in the world of web development. Created by Taylor Otwell, Laravel offers a refined, elegant, and efficient way to build web applications, providing developers with the tools they need to create powerful, feature-rich, and maintainable websites. In this article, we will delve into the world of Laravel, exploring its key features, benefits, and why it\'s a top choice for web developers.\r\n\r\nThe Laravel Ecosystem\r\n\r\nEloquent ORM: Laravel\'s Eloquent ORM (Object-Relational Mapping) simplifies database interactions by allowing developers to work with databases using an intuitive syntax. It supports a wide range of database systems, making it easy to switch between them without changing code.\r\n\r\nBlade Templating Engine: Blade is a lightweight and powerful templating engine that simplifies the process of building HTML templates. It includes features like template inheritance, sections, and more, which enhance code reusability and maintainability.\r\n\r\nArtisan Console: Laravel\'s command-line tool, Artisan, is a developer\'s best friend. It automates various development tasks, from generating boilerplate code to running database migrations and scheduling tasks. Custom Artisan commands can also be created, streamlining your development workflow.\r\n\r\nMiddleware: Middleware is used for handling HTTP requests entering your application. It offers a powerful way to filter requests, enabling tasks such as authentication, logging, and CORS handling.\r\n\r\nAuthentication and Authorization: Laravel provides a built-in authentication system that simplifies user registration, login, and password reset processes. It also has a flexible authorization system that allows developers to define access control at a granular level.\r\n\r\nRouting: Laravel\'s expressive and simple routing system makes defining application routes a breeze. It can handle URL routing, named routes, and parameter binding with ease.\r\n\r\nCommunity and Packages: Laravel has a vibrant community and an ecosystem of packages and extensions. The community actively contributes to the framework, and there are many packages available for common tasks, saving developers time and effort.\r\n\r\nBenefits of Using Laravel\r\n\r\nRapid Development: Laravel\'s elegant syntax and the availability of pre-built components enable developers to build web applications quickly. This is particularly beneficial for startups and businesses aiming for a fast time-to-market.\r\n\r\nEloquent ORM: With Eloquent, working with databases is seamless. The active record implementation simplifies database operations, making them more developer-friendly.\r\n\r\nSecurity: Laravel takes security seriously. It provides tools and features to protect against common web vulnerabilities, like SQL injection, cross-site scripting, and cross-site request forgery.\r\n\r\nCommunity and Documentation: The Laravel community is one of its greatest strengths. You can find extensive documentation, tutorials, and support forums, which are invaluable resources for both beginners and experienced developers.\r\n\r\nScalability: Laravel applications can be easily scaled to accommodate growing user bases and increased traffic. This scalability is crucial for businesses with long-term growth plans.\r\n\r\nConclusion\r\n\r\nLaravel has revolutionized the PHP framework landscape by offering an elegant, developer-friendly, and highly efficient environment for building web applications. Its extensive list of features, coupled with a supportive community and comprehensive documentation, has made it a go-to choice for many web developers. Whether you\'re building a simple blog or a complex enterprise-level application, Laravel simplifies the development process, allowing you to focus on creating exceptional web experiences.', '6525ec57e84da_laravel-unraveling-the-elegance-of-modern-web-development.jpg', '2023-09-30 14:23:22', '2023-10-10 21:29:11', 2),
(5, 'mysql-powering-the-data-behind-the-internet', 'MySQL: Powering the Data Behind the Internet', '\"The Heart of Data Management: MySQL\'s Vital Role in the Digital Age\"', 'Introduction\r\n\r\nIn the digital age, data is the lifeblood of the internet, and MySQL stands as one of its most trusted and widely used guardians. MySQL is an open-source relational database management system (RDBMS) renowned for its speed, reliability, and versatility. In this article, we will delve into the world of MySQL, exploring its history, features, applications, and its enduring role in managing the data that powers the internet.\r\n\r\nA Brief History\r\n\r\nMySQL\'s story begins in the mid-1990s when it was developed by Michael Widenius, David Axmark, and Allan Larsson. The project was initially intended as a light and efficient alternative to commercial database systems. Over time, it evolved into a robust, open-source database system, which was released to the public under the GNU General Public License. MySQL was subsequently acquired by Sun Microsystems in 2008, and later by Oracle Corporation in 2010.\r\n\r\nKey Features of MySQL\r\n\r\nOpen Source: MySQL is open-source software, meaning it is freely available to anyone. This open nature has led to an active and dedicated community, ensuring ongoing development and support.\r\n\r\nHigh Performance: MySQL is recognized for its remarkable speed and performance. It can handle large datasets and high transaction volumes with ease, making it a preferred choice for websites, applications, and data-driven systems.\r\n\r\nScalability: MySQL is highly scalable, allowing applications to grow with ease. It supports various storage engines like InnoDB and MyISAM, each tailored to specific needs.\r\n\r\nReliability: Known for its robustness, MySQL offers ACID compliance (Atomicity, Consistency, Isolation, Durability), ensuring data integrity even in complex environments.\r\n\r\nData Security: MySQL provides various security features, including encryption, access control, and user privilege management, to protect sensitive data from unauthorized access.\r\n\r\nCross-Platform Compatibility: It is compatible with multiple operating systems, such as Windows, Linux, and macOS, making it a versatile choice for developers.\r\n\r\nApplications of MySQL\r\n\r\nWebsites and Blogs: Many content management systems, including WordPress, Drupal, and Joomla, rely on MySQL to manage website data.\r\n\r\nE-commerce: MySQL plays a crucial role in e-commerce platforms like Magento, WooCommerce, and Shopify, managing product information, user data, and transactions.\r\n\r\nMobile Applications: MySQL is often integrated into mobile apps to store and manage user data, user-generated content, and application logs.\r\n\r\nData Warehousing: Enterprises use MySQL to store and manage vast amounts of data in data warehousing solutions, facilitating reporting and analytics.\r\n\r\nFinancial Services: In the financial industry, MySQL handles critical data such as transactions, customer information, and fraud detection.\r\n\r\nIoT (Internet of Things): MySQL is employed to store and analyze data from IoT devices, making it an essential component in this rapidly growing field.\r\n\r\nConclusion\r\n\r\nMySQL stands as a cornerstone in the digital landscape, powering a vast array of applications and services on the internet. Its combination of open-source accessibility, high performance, scalability, and reliability has solidified its position as one of the most trusted RDBMS solutions available. With the constant evolution of technology and data-driven applications, MySQL\'s role in managing, securing, and delivering data remains indispensable, making it an enduring force behind the connected world we know today.', '65185f957221a_mysql-powering-the-data-behind-the-internet.jpg', '2023-09-30 14:49:09', '2023-09-30 14:49:09', 1),
(6, 'object-oriented-programming-oop-in-php', 'Object-Oriented Programming (OOP) in PHP', 'Mastering OOP Principles for Effective PHP Development', 'Object-Oriented Programming (OOP) is a programming paradigm that emphasizes the concept of objects. It is widely used in PHP, a popular scripting language for web development. In this article, we will explore the key principles and concepts of OOP in PHP.\r\n\r\nWhat is OOP?\r\nOOP is a programming paradigm that revolves around objects. An object is a self-contained unit that encapsulates both data and the methods that manipulate that data. OOP encourages the modeling of real-world entities as objects, making it easier to manage and interact with them in your code.\r\n\r\nClasses and Objects\r\nIn PHP, classes serve as blueprints for creating objects. A class defines the properties (attributes) and methods (functions) that an object will have. To create an object from a class, you use the new keyword. Objects are instances of classes and represent specific instances of an entity.\r\n\r\nEncapsulation\r\nEncapsulation is a fundamental concept in OOP. It involves bundling data and the methods that operate on that data into a single unit, i.e., an object. This unit is self-contained and provides an interface for interacting with the data. Encapsulation helps in organizing and protecting data by controlling access to it.\r\n\r\nInheritance\r\nInheritance is another key OOP concept that allows you to create a new class based on an existing one. The new class inherits the properties and methods from the parent class, promoting code reuse. Inheritance helps in creating class hierarchies and can be used to model relationships between objects.\r\n\r\nPolymorphism\r\nPolymorphism allows objects of different classes to be treated as objects of a common superclass. It facilitates dynamic behavior and flexibility in your code. You can use polymorphism to work with objects of different classes in a uniform manner, simplifying the code.\r\n\r\nConclusion\r\nObject-Oriented Programming (OOP) in PHP is a powerful paradigm for creating well-organized and maintainable code. It encourages the use of classes and objects to model real-world entities, and the concepts of encapsulation, inheritance, and polymorphism enhance code reusability and flexibility. As you delve deeper into OOP, you\'ll discover additional concepts like interfaces and abstract classes, which further enhance your ability to create robust and reusable PHP code.', '6528195626784_object-oriented-programming-oop-in-php.png', '2023-10-12 12:40:59', '2023-10-12 13:05:42', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdelrahman', 'example22@gmail.com', NULL, '$2y$10$WC2MFQesZmYrNnnEGD6S8ubQcP5sSjs5UHNBZqD4AfJpQfn/wxsVK', NULL, '2023-09-28 12:03:53', '2023-09-28 12:03:53'),
(2, 'Ahmed', 'example11@gmail.com', NULL, '$2y$10$MnA2Y0vNLu5aeXOdkGM2jupNoTSgOTqYMHP2/FUtXGSNYZ/pou3ui', NULL, '2023-09-30 21:05:00', '2023-09-30 21:05:00');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
