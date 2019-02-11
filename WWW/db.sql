-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 11 2019 г., 23:25
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Михаил Кожан', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(4, 'Путешествия');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL,
  `autor_id` int(11) UNSIGNED DEFAULT NULL,
  `post_img` tinyint(1) UNSIGNED DEFAULT NULL,
  `postimg` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postimgsmall` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date_time`, `autor_id`, `post_img`, `postimg`, `postimgsmall`) VALUES
(31, '7 признаков измены', 'Если партнер раньше не баловал вас цветами и подарками, звонками, признаниями, а тут вдруг неожиданно часто вы начали получать их без повода, то в этом случае тоже стоит задуматься. Таким образом он может стараться откупиться, загладить свою вину. В случае расставания он будет пытаться успокоить этим и себя, и вас.', '2019-02-11 11:23:38', 102, NULL, '343369066356.jpg', '320-343369066356.jpg'),
(32, '123', '123', '2019-02-11 11:45:22', 102, NULL, '738689532498.jpg', '320-738689532498.jpg'),
(33, 'Он очень хотел загрузить картинку но понимал что символов может не хватить', '123', '2019-02-11 11:47:09', 102, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `firstname`, `lastname`, `country`, `city`, `recovery_code_times`, `recovery_code`, `avatar`, `avatar_small`) VALUES
(102, '123@mail.ru', '$2y$10$NfvgAdij7GcnRWO8yXmBf.bc8B/MvaHwJPFP16EUFJCe/j9AXX3IK', 'admin', 'Михаил', 'Кожан', 'Россия', 'Хабаровск', 3, '2ce4fhVWyUSlb0d', '141752701382.png', '48-141752701382.png'),
(103, '1232@mail.ru', '$2y$10$Ga.JmZkLO1m1Q0VI.QrLdek2z9JOHETz.0zfMVdljNB3HEPjDwVY6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '12311@mail.ru', '$2y$10$5hHnykjv0UWDCRHqUXTXCOXIk.3bBkO1OYtN7ybAp9COnHTcKqDfG', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'mikhail.kozhan@gmail.com', '$2y$10$9k1MYYmtCwmObUpsstxtfOBRQPIyg7ITS9pmyo5ETcRSxdKLVKqmu', 'user', NULL, NULL, NULL, NULL, 3, 'FGTaXRUVlASxuom', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_autor` (`autor_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
