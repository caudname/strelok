-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 02 2021 г., 04:37
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `strelok`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `cart_id` int NOT NULL,
  `price` int NOT NULL,
  `count` int NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `price`, `count`, `ip`) VALUES
(1, 9, 18511, 1, '127.0.0.1'),
(2, 29, 10450, 3, '127.0.0.1'),
(3, 19, 7750, 2, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`) VALUES
(1, 'Рустам', 'Отличный магазин! Покупал газовый баллончик все понятно объяснили рассказали остался доволен! Большой выбор травматического оружия!'),
(2, 'Камиль', 'Самые искренние рекомендации этому магазину! Успехов и процветания! Отличный магазин!'),
(3, 'Марат', 'Покупал ружье. Отношение продавца порадовало. После неоднократно покупал принадлежности для охоты.'),
(4, 'Серажутдин', 'Изумительный магазин, достойный выбор! Очень понравилось отношение продавцов-консультантов. Цены достойные (низкие)! Покупками доволен, спасибо еще раз!'),
(5, 'Джабраил', 'Магазином доволен. Всегда есть новые модели и импорта немало. Хороший магазин.'),
(6, 'Далгат', 'Помогли с разрешением, спасибо! Все в рамках закона!');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `description`) VALUES
(1, 'news-1.jpg', 'Новая модель МР-155', 'Новая модель МР-155 является продолжением российского полуавтомата МР-153 и теперь это прямой конкурент турецким ружьям за счет качественного усовершенствования.<br>\r\n					1. В новой модели МР-155 снижен вес.<br>\r\n					2. Улучшена эргономика ружья.<br>\r\n					Также в конструкцию ружья введён механизм механической отсечки, позволяющий отключать автоматическую подачу патронов из магазина, как в ружьях МЦ-21-12, но при этом дает возможность использовать патроны с другим номером дроби, картечь или пулю.'),
(2, 'news-2.jpg', 'Зимняя охота', 'Зимняя охота: Как охотникам подготовиться к охоте.<br>\r\n\r\nПодготовка лыж к зимней охоте.<br>\r\nЛыжи должны быть прочными, легкими и правильно подогнанными к обуви, а также точно соответствовать весу и росту охотника.\r\n\r\nПодготовка оружия к зимней охоту.<br>\r\nРужье, идеально лежащее в руках в летнее время, окажется не таким удобным для стрельбы зимой, когда на человеке меховая или ватная куртка.<br>\r\n'),
(3, 'news-3.jpg', 'Подбор камуфляжного костюма', 'Камуфляж на охоте просто необходим – он создает визуальное искажение и позволяет зверю не заметить человека. Он не сделает охотника полностью невидимым, конечно, но при правильном подборе он скроет его на фоне природы путем размытия четких контуров. То есть зверь вас все равно рано или поздно заметит, но ваш вид в камуфляже не насторожит и не спугнет его. Здравый смысл подсказывает, что нужно выбирать камуфляж для охоты так, чтобы максимально сливаться с местностью.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`) VALUES
(1, 'Магомедов', 'magomedov@mail.ru', 'admin', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `weapons`
--

CREATE TABLE `weapons` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `weapons`
--

INSERT INTO `weapons` (`id`, `type`, `name`, `image`, `price`) VALUES
(1, 'Винтовки', 'Пневматическая Винтовка МР-61-12 (Дерево)', 'rifles-1.jpg', 7650),
(2, 'Винтовки', 'Пневматическая Винтовка ИЖ-61 (МР-61, С Кнопкой Предохр.)', 'rifles-2.jpg', 5950),
(3, 'Винтовки', 'Пневматическая Винтовка Umarex 850 Air Magnum Target Kit', 'rifles-3.jpg', 37490),
(4, 'Винтовки', 'Пневматическая Винтовка Kral Puncher Maxi R-Romentone', 'rifles-4.jpg', 26890),
(5, 'Винтовки', 'Пневматическая Винтовка ИЖ-61 (МР-61, С КНОПКОЙ ПРЕДОХР.)', 'rifles-5.jpg', 5950),
(6, 'Винтовки', 'Пневматическая Винтовка HATSAN DOMINATOR 200S', 'rifles-6.jpg', 14990),
(7, 'Винтовки', 'Пневматическая Винтовка CROSMAN FIRE NP', 'rifles-7.jpg', 14590),
(8, 'Автоматы', 'Автомат Калашникова СХП АК 103 (ИЖ-161)', 'automata-1.jpg', 32290),
(9, 'Автоматы', 'Пневматический автомат Юнкер 4 07-длинный', 'automata-2.jpg', 18511),
(10, 'Автоматы', 'Детский пневматический автомат Ураган 90см', 'automata-3.jpg', 1690),
(11, 'Автоматы', 'Автомат пневматический Stg - 44, с лазером, прицелом', 'automata-4.jpg', 1676),
(12, 'Автоматы', 'Автомат пневматический \'Штурм\'', 'automata-5.jpg', 3086),
(13, 'Автоматы', 'АК 103', 'automata-6.jpg', 72500),
(14, 'Пистолеты', 'Пневматический револьвер GLETCHER NGT (F) SILVER', 'pistols-1.jpg', 11250),
(15, 'Пистолеты', 'ПНЕВМАТИЧЕСКИЙ РЕВОЛЬВЕР CROSMAN VIGILANTE (6\")', 'pistols-2.jpg', 6990),
(16, 'Пистолеты', 'ПНЕВМАТИЧЕСКИЙ ПИСТОЛЕТ МР-658К (ПМ, BLOWBACK)', 'pistols-3.jpg', 8150),
(17, 'Пистолеты', 'ПНЕВМАТИЧЕСКИЙ ПИСТОЛЕТ МР-655К (ГРАЧ, ЯРЫГИНА)', 'pistols-4.jpg', 5990),
(18, 'Пистолеты', 'Пневматический пистолет МР-654К-22 (ПМ, с глушителем)', 'pistols-5.jpg', 8250),
(19, 'Пистолеты', 'ПНЕВМАТИЧЕСКИЙ ПИСТОЛЕТ МР-654К-20 (ПМ, МАКАРОВА)', 'pistols-6.jpg', 7750),
(20, 'Патроны', '«Полный Набор» Для Пневматического Пистолета', 'patrons-1.jpg', 2790),
(21, 'Патроны', 'Патрон 366 ТКМ Техкрим Эко', 'patrons-2.jpg', 27),
(22, 'Патроны', 'Патрон 9х39 КСПЗ пуля со свинцовым сердечником', 'patrons-3.jpg', 79),
(23, 'Патроны', 'Патрон 9,3х64 БПЗ SP лак', 'patrons-4.jpg', 55),
(24, 'Патроны', 'Патрон 5,6х16 HILTI DX (100шт).', 'patrons-5.jpg', 1061),
(25, 'Патроны', 'Патрон 10х28Т Техкрим Maximum 91Дж травматический', 'patrons-6.jpg', 23),
(26, 'Ножи', 'НОЖ BENCHMADE 15007-1 SADDLE MOUNTAIN HUNTER', 'knives-1.jpg', 12650),
(27, 'Ножи', 'НОЖ BENCHMADE 183R CONTEGO', 'knives-2.jpg', 13950),
(28, 'Ножи', 'Нож Автоматический Benchmade 6800BK Auto APB (Черное Лезвие)', 'knives-3.jpg', 19950),
(29, 'Ножи', 'Нож Складной Benchmade 551-ORG Griptilian', 'knives-4.jpg', 10450),
(32, 'Арбалеты и луки', 'Арбалет рекурсивный EK COBRA SYSTEM R9', 'arbalets-1.jpg', 13000),
(33, 'Арбалеты и луки', 'Арбалет блочный EK HEX 400', 'arbalets-2.jpg', 27700),
(34, 'Арбалеты и луки', 'Арбалет блочный ManKung XB 58 Kraken', 'arbalets-3.jpg', 27800),
(35, 'Арбалеты и луки', 'Лук блочный MK-CB30 30lbs', 'arbalets-4.jpg', 5100),
(36, 'Арбалеты и луки', 'Лук Ястреб MK-CB55', 'arbalets-5.jpg', 8300),
(37, 'Средства самообороны', 'АЭРОЗОЛЬНОЕ УСТРОЙСТВО (ПИСТОЛЕТ) «ДОБРЫНЯ»', 'selfdefence-1.jpg', 3490),
(38, 'Средства самообороны', 'ГАЗОВЫЙ БАЛЛОНЧИК BLACK, 25 МЛ', 'selfdefence-2.jpg', 490),
(39, 'Средства самообороны', 'ГАЗОВЫЙ БАЛЛОНЧИК BLACK, 25 МЛ, В ЗАЩИТНОМ ФУТЛЯРЕ', 'selfdefence-3.jpg', 550),
(40, 'Средства самообороны', 'НАРУЧНИКИ «БРС-2» (ВОРОНЕНЫЕ, 2 КЛЮЧА)', 'selfdefence-4.jpg', 890),
(41, 'Средства самообороны', 'ГАЗОВЫЙ БАЛЛОНЧИК «ШПАГА», 100 МЛ', 'selfdefence-5.jpg', 690),
(42, 'Средства самообороны', 'ГАЗОВЫЙ БАЛЛОНЧИК LADY BLACK, 25 МЛ', 'selfdefence-6.jpg', 490),
(43, 'Спецодежда', 'Шляпа «Любитель рыбалки», камуфляж', 'workwear-1.jpg', 1499),
(44, 'Спецодежда', 'Мужчины Повседневные Брюки Камуфляж', 'workwear-2.jpg', 1658),
(45, 'Спецодежда', 'Костюм зимний Norfin Explorer камуфляж', 'workwear-3.jpg', 24120),
(46, 'Спецодежда', 'Футболка серый камуфляж', 'workwear-4.jpg', 400),
(47, 'Спецодежда', 'Куртка Тайфун', 'workwear-5.jpg', 580),
(48, 'Спецодежда', 'Кепка мембранная зимний камуфляж', 'workwear-6.jpg', 567),
(49, 'Аксессуары', 'АКТИВНЫЕ НАУШНИКИ \"СОНУС\" ДЛЯ СТРЕЛЬБЫ', 'accessories-1.jpg', 5290),
(50, 'Аксессуары', 'ЗАПАСНОЙ МАГАЗИН (ОБОЙМА) ДЛЯ UMAREX CP 88, 99, BERETTA', 'accessories-2.jpg', 1250),
(51, 'Аксессуары', 'КОБУРА ОПЕРАТИВНАЯ ДЛЯ ПМ, ЧЕРНАЯ, НАТ. КОЖА', 'accessories-3.jpg', 790),
(52, 'Аксессуары', 'КОБУРА ПОЯСНАЯ GLETCHER ПОД CLT 1911', 'accessories-4.jpg', 2150),
(53, 'Аксессуары', 'Ремешок страховочный коричневый (пистолетный)', 'accessories-5.jpg', 180),
(54, 'Аксессуары', 'Фонарь подствольный/пистолета на планку Weaver', 'accessories-6.jpg', 3799);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
