-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 16 2019 г., 11:13
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_burger`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` int(11) NOT NULL,
  `appt` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `comment` text NOT NULL,
  `payment` varchar(255) NOT NULL,
  `callback` varchar(255) CHARACTER SET ucs2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `street`, `home`, `appt`, `floor`, `comment`, `payment`, `callback`) VALUES
(1, 6, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(2, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(3, 6, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(4, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(5, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(6, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(7, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(8, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(9, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(10, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(11, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(12, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(13, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(14, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(15, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(16, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(17, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(18, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(19, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(20, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(21, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(22, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(23, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(24, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(25, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(26, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(27, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(28, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(29, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(30, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(31, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(32, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(33, 8, 'fasdf', 234, 23, 4, 'fsdafsadf', 'change', 'Don\'t callback'),
(34, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(35, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(36, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(37, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(38, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(39, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback'),
(40, 9, 'fsd', 231, 23, 234, 'gsdfgdf', 'change', 'Don\'t callback');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `phone`) VALUES
(1, 'w@w.w', 'w', '123'),
(2, 'dasdas@fsd.ri', 'Danil', '+7 (199) 212 99 23'),
(3, 'das221das@fsd.ri', 'Danil', '+7 (199) 212 99 23'),
(4, 'das111das@fsd.ri', 'Danil', '+7 (199) 212 99 23'),
(5, 'das@dsa.fds', 'dasdas', '+7 (312) 312 31 23'),
(6, '3123@das.fasd', 'das', '+7 (213) 123 12 31'),
(7, 'fsdfsd@fsd.ter', 'DSADASD', '+7 (213) 442 34 23'),
(8, 'dafdss@dsa.fds', 'dasdas', '+7 (312) 312 31 23'),
(9, '312343@das.fasd', 'das', '+7 (213) 123 12 31');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
