-- Вывести информацию о всех книгах, хранящихся на складе. 
SELECT * FROM book;


-- Выбрать авторов, название книг и их цену из таблицы book.
SELECT author, title, price FROM book;


-- Выбрать названия книг и авторов из таблицы book, для поля title задать имя(псевдоним) 
-- Название, для поля author –  Автор. 
SELECT title AS Название, author AS Автор FROM book;


/* Для упаковки каждой книги требуется один лист бумаги, цена которого 1 рубль 65 копеек. 
Посчитать стоимость упаковки для каждой книги (сколько денег потребуется, чтобы упаковать все экземпляры книги). 
В запросе вывести название книги, ее количество и стоимость упаковки, последний столбец назвать pack. */
SELECT title, amount, 1.65 * amount AS pack 
FROM book;


/* В конце года цену всех книг на складе пересчитывают – снижают ее на 30%. Написать SQL запрос, 
который из таблицы book выбирает названия, авторов, количества и вычисляет новые цены книг. Столбец с новой ценой
назвать new_price, цену округлить до 2-х знаков после запятой. */
SELECT title, author, amount,
ROUND ((price*0.7), 2) AS new_price
FROM book;


/* При анализе продаж книг выяснилось, что наибольшей популярностью пользуются книги Михаила Булгакова, 
на втором месте книги Сергея Есенина. Исходя из этого решили поднять цену книг Булгакова на 10%, 
а цену книг Есенина - на 5%. Написать запрос, куда включить автора, название книги и новую цену, 
последний столбец назвать new_price. Значение округлить до двух знаков после запятой. */
SELECT author, title,
	ROUND(IF(author = "Булгаков М.А.", price * 1.1, 
		IF(author = "Есенин С.А.", price * 1.05, price * 1)), 2) 
	AS new_price
FROM book;


-- Вывести автора, название  и цены тех книг, количество которых меньше 10.
SELECT author, title, price 
FROM book
WHERE amount < 10;


-- Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600, 
-- а стоимость всех экземпляров этих книг больше или равна 5000.
SELECT title, author, price, amount
FROM book
WHERE (price < 500 OR price > 600) AND (price * amount) >= 5000; -- Сначала выполнить OR, обязательны скобки.


-- Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы),
-- а количество или 2, или 3, или 5, или 7.
SELECT title, author
FROM book 
WHERE (price BETWEEN 540.50 AND 800) AND (amount IN (2,3,5,7));


/* Вывести  автора и название  книг, количество которых принадлежит интервалу от 2 до 14 (включая границы). 
Информацию  отсортировать сначала по авторам (в обратном алфавитном порядке), а затем по названиям книг 
(по алфавиту). */
SELECT author, title
FROM book
WHERE amount BETWEEN 2 AND 14
ORDER BY author DESC, title;


/* Вывести название и автора тех книг, название которых состоит из двух и более слов, а инициалы автора содержат 
букву «С». Считать, что в названии слова отделяются друг от друга пробелами и не содержат знаков препинания, 
между фамилией автора и инициалами обязателен пробел, инициалы записываются без пробела в формате: буква, точка,
буква, точка. Информацию отсортировать по названию книги в алфавитном порядке. */
SELECT title, author
FROM book
WHERE title LIKE "_% _%"
	AND (author LIKE "_% %С.%"
    	OR author LIKE "_% %.С%")
ORDER BY title;