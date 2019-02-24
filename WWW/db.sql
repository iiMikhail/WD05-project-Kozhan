-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 24 2019 г., 20:32
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
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `text`, `photo`) VALUES
(1, 'Михаил Кожан', '<p>Я веб разработчик из Санкт-Петербурга. Мне 28 лет.</p>\r\n\r\n<p>Занимаюсь разработкой современных сайтов и приложенийю Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>Этот сайт я сделал в рамкаобучения в школе онлайн обучения WebCademy. Чуть позже освежу в нем свой контент. А пока посмотрите, как тут все классно и красиво!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Что я умею </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Меня привлекает Frontend разработка, это не только моя работа, но и хобби. Также знаком и могу решать несложные задачи на Backend. Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp</p>\r\n', '956502171363.png');

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
(5, 'Спорт'),
(6, 'Разработка'),
(8, 'Путешествия'),
(9, 'Путешествия2');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(104, 36, 102, 'обязательно', '2019-02-13 12:40:12'),
(105, 36, 102, 'Оставить комментарий', '2019-02-13 12:40:37'),
(106, 36, 102, 'Еще комментарий', '2019-02-13 14:57:07');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vkontakte` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `email`, `phone`, `last_name`, `skype`, `facebook`, `address`, `github`, `twitter`, `vkontakte`) VALUES
(1, 'Михаил', 'mikhail.kozhan@gmail.com', '8 (981) 743-05-42', 'Кожан', 'nightwolf00707', '', 'Россия, г. Санкт-Петербург', 'https://github.com/iiMikhail', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` int(11) UNSIGNED DEFAULT NULL,
  `price_old` int(11) UNSIGNED DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `autor_id` int(11) UNSIGNED DEFAULT NULL,
  `itemimg` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `itemimgsmall` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `price_old`, `description`, `date_time`, `autor_id`, `itemimg`, `itemimgsmall`) VALUES
(3, 'Еще товары Эппл', 1200, 3000, '<p>Тут описание о продаже товаров эппл</p>\r\n', '2019-02-24 20:11:13', 102, '772711953173.jpg', '320-772711953173.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_user` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `original_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name_user`, `email`, `message`, `file`, `original_file`, `date_time`) VALUES
(3, 'Саша', '12345@mail.ru', 'Давно не виделись, как оно?', '862312255896.jpg', '3 (1).jpg', '2019-02-13 23:09:30'),
(4, 'Вася', '987@mail.ru', 'Возьмешься за работу?', '421258465209.jpg', '1.jpg', '2019-02-13 23:10:37');

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
  `postimgsmall` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date_time`, `autor_id`, `post_img`, `postimg`, `postimgsmall`, `category_id`, `update_time`) VALUES
(36, 'Это новый пост', 'Текст поста', '2019-02-12 23:44:42', 102, NULL, '541591257419.jpg', '320-541591257419.jpg', 5, NULL),
(38, 'Еще один новый пост', '<p>Тут текст поста</p>\r\n', '2019-02-22 17:42:13', 102, NULL, '661269027862.jpg', '320-661269027862.jpg', 5, NULL),
(39, 'Еще тестовый пост', '<p>123</p>\r\n', '2019-02-23 09:52:06', 102, NULL, '186074032650.jpg', '320-186074032650.jpg', 5, NULL),
(40, 'И еще Новый пост', '<p>23</p>\r\n', '2019-02-23 09:52:29', 102, NULL, '755840408681.jpg', '320-755840408681.jpg', 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `css` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `js` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `jquery` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `php` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mysql` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `git` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gulp` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bower` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `webpack` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `bower`, `webpack`) VALUES
(1, '100', '90', '10', '90', '60', '30', '80', '60', '0', '');

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
(102, '123@mail.ru', '$2y$10$NfvgAdij7GcnRWO8yXmBf.bc8B/MvaHwJPFP16EUFJCe/j9AXX3IK', 'admin', 'Михаил', 'Кожан', 'Россия', 'Хабаровск', 3, '2ce4fhVWyUSlb0d', '532560761453.png', '48-532560761453.png'),
(103, '1232@mail.ru', '$2y$10$Ga.JmZkLO1m1Q0VI.QrLdek2z9JOHETz.0zfMVdljNB3HEPjDwVY6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '12311@mail.ru', '$2y$10$5hHnykjv0UWDCRHqUXTXCOXIk.3bBkO1OYtN7ybAp9COnHTcKqDfG', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'mikhail.kozhan@gmail.com', '$2y$10$9k1MYYmtCwmObUpsstxtfOBRQPIyg7ITS9pmyo5ETcRSxdKLVKqmu', 'user', NULL, NULL, NULL, NULL, 3, 'FGTaXRUVlASxuom', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `workcategory`
--

CREATE TABLE `workcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workcategory`
--

INSERT INTO `workcategory` (`id`, `name`) VALUES
(1, 'Веб-дизайн'),
(4, 'Верстка'),
(5, 'Бэкенд');

-- --------------------------------------------------------

--
-- Структура таблицы `workplaces`
--

CREATE TABLE `workplaces` (
  `id` int(11) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `job_name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `workplaces`
--

INSERT INTO `workplaces` (`id`, `date`, `job_name`, `description`) VALUES
(12, 'с 1 мая', 'Разработчик', 'Разработка веб-сайтов');

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `technology` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `project` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `workimg` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `workimgsmall` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `autorid` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `categoryid` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `name`, `description`, `result`, `technology`, `project`, `github`, `workimg`, `workimgsmall`, `autorid`, `date_time`, `categoryid`) VALUES
(17, 'Верстка сайта', 'Верстал сайт', 'Верстал сайт', 'Верстал сайт', 'htttp://project', 'htttp://github', '868561920777.jpg', '360-868561920777.jpg', NULL, NULL, NULL),
(18, 'Еще одна работа', 'Тест', 'Тест', 'Тест', 'htttp://project', 'htttp://github', '628142571148.png', '360-628142571148.png', NULL, NULL, NULL),
(19, 'Еще одна работа', 'тест', 'тест', 'тест', 'htttp://project', 'htttp://github', '845635493890.jpg', '360-845635493890.jpg', NULL, NULL, NULL),
(20, 'Тест работы с автором', 'Описание работы с автором', 'Результат работы с автором', 'Технологии работы с автором', 'htttp://project', 'htttp://github', '766442408866.jpg', '360-766442408866.jpg', 102, NULL, NULL),
(21, 'Работа с категорией +100500', '&lt;p&gt;Тут новый текст&lt;/p&gt;\r\n', '&lt;p&gt;Тут новый текст&lt;/p&gt;\r\n', '&lt;p&gt;Текст какой-то&lt;/p&gt;\r\n', 'htttp://project', 'htttp://github', '644755118861.jpg', '360-644755118861.jpg', 102, '2019-02-19 20:12:56', '4');

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
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_goods_autor` (`autor_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_autor` (`autor_id`),
  ADD KEY `index_foreignkey_posts_category` (`category_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workcategory`
--
ALTER TABLE `workcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workplaces`
--
ALTER TABLE `workplaces`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `workcategory`
--
ALTER TABLE `workcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `workplaces`
--
ALTER TABLE `workplaces`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
