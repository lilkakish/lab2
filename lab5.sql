-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 15 2021 г., 03:55
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `narko_dispancer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `surname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathername` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialisatoin` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispancer` int(11) NOT NULL,
  `lll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `narko_dispancer`
--

CREATE TABLE `narko_dispancer` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `narko_dispancer`
--

INSERT INTO `narko_dispancer` (`id`, `name`, `address`, `telephone`, `email`) VALUES
(2, 'Міський наркодиспансер', 'Наливайка 5', ' 0372857412', 'nark@gmail.com'),
(3, 'Обласний наркодиспансер', ' Павлуша 61', ' 0372234412', ' nark2@gmail.com'),
(4, 'Приватний наркодиспансер', ' Горобини 3', ' 0372323412', ' nark3@gmail.com'),
(5, 'Наркодиспансер \"Водограй\"', ' Сагайдачного 16', ' 0372342312', ' nark4@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `pacient`
--

CREATE TABLE `pacient` (
  `id` int(32) UNSIGNED NOT NULL,
  `surname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathername` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(22) DEFAULT NULL,
  `sex` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(8) UNSIGNED NOT NULL,
  `address_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pacient`
--

INSERT INTO `pacient` (`id`, `surname`, `name`, `fathername`, `age`, `sex`, `telephone`, `state`, `address_home`) VALUES
(2, 'Петров', 'Петро', 'Петрович', 43, 'Чоловік', '+380954237915', 34, 'Горіхова 12/9');

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `code_pacient` int(11) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `code_doctor` int(10) NOT NULL,
  `diagnos` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_dispanser` int(5) NOT NULL,
  `number_palat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `t1` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t2` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3` varchar(252) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `t1`, `t2`, `t3`, `t4`) VALUES
(1, 'Тест [1][1]', 'Тест [1][2]', 'Тест [1][3]', 'Тест [1][4]'),
(2, 'Тест [2][1]', 'Тест [2][2]', 'Тест [2][4]', 'Тест [2][4]'),
(3, 'Тест [3][1]', 'Тест [3][2]', 'Тест [3][3]', 'Тест [3][4]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispancer` (`dispancer`);

--
-- Индексы таблицы `narko_dispancer`
--
ALTER TABLE `narko_dispancer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pacient`
--
ALTER TABLE `pacient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UG` (`id`,`state`);

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `number_dispanser` (`number_dispanser`),
  ADD KEY `registration_ibfk_1` (`code_doctor`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `narko_dispancer`
--
ALTER TABLE `narko_dispancer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`dispancer`) REFERENCES `narko_dispancer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`code_doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
