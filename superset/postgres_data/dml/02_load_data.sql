
-- Заполняем данными RAW-слой

INSERT INTO customer_raw (customer_cookies, full_name, gender, birthday, email, phone)
VALUES
    ('cookies1', 'Иван Иванов', 'Мужской', '1990-01-01', 'ivan@example.com', '1234567890'),
    ('cookies2', 'Анна Смирнова', 'Женский', '1985-05-15', 'anna@example.com', '9876543210'),
    ('cookies3', 'Петр Петров', 'Мужской', '1988-09-30', 'petr@example.com', '5555555555'),
    ('cookies4', 'Елена Васильева', 'Женский', '1992-03-20', 'elena@example.com', '1112223334'),
    ('cookies5', 'Михаил Козлов', 'Мужской', '1982-11-12', 'mikhail@example.com', '9990001112'),
    ('cookies6', 'Ольга Новикова', 'Женский', '1995-07-08', 'olga@example.com', '7778889990'),
    ('cookies7', 'Алексей Игнатьев', 'Мужской', '1989-04-25', 'alexey@example.com', '4445556661'),
    ('cookies8', 'Екатерина Федорова', 'Женский', '1991-08-14', 'ekaterina@example.com', '2223334442'),
    ('cookies9', 'Дмитрий Соколов', 'Мужской', '1987-12-02', 'dmitriy@example.com', '8889990003'),
    ('cookies10', 'Мария Ковалева', 'Женский', '1994-06-18', 'maria@example.com', '6667778884');

INSERT INTO promo_raw (product_name, date_start_promo, date_end_promo, discount)
VALUES
    ('Футболка "Basic Tee"', '2023-03-05', '2023-03-15', 10.00),
    ('Джинсы "Classic Straight"', '2023-04-01', '2023-04-15', 15.00),
    ('Платье "Little Black Dress"', '2023-03-08', '2023-03-15', 20.00),
    ('Рубашка "Oxford Shirt"', '2023-04-10', '2023-04-20', 10.00),
    ('Шорты "Cargo Shorts"', '2023-05-01', '2023-05-07', 15.00),
    ('Куртка "Bomber Jacket"', '2023-03-25', '2023-04-05', 20.00),
    ('Блузка "Wrap Top"', '2023-03-25', '2023-04-20', 10.00),
    ('Юбка "Pleated Skirt"', '2023-05-10', '2023-05-15', 15.00),
    ('Свитшот "Hoodie"', '2023-04-20', '2023-04-25', 20.00),
    ('Брюки "Chinos"', '2023-05-20', '2023-05-31', 10.00);

INSERT INTO sales_raw (datetime_of_sale, product_name, price_of_sale, brand_name, category_name, promo_id, customer_cookies, sum_of_sale)
VALUES
    ('2023-03-01 10:30:00', 'Футболка "Basic Tee"', 10.99, 'H&M', 'Одежда для верхней половины тела', NULL, 'cookies1', 10.99),
    ('2023-05-01 14:15:00', 'Джинсы "Classic Straight"', 69.99, 'Levis', 'Одежда для нижней половины тела', NULL, 'cookies1', 139.98),
    ('2023-03-02 09:45:00', 'Платье "Little Black Dress"', 129.99, 'Calvin Klein', 'Одежда для нижней половины тела', NULL, 'cookies1', 129.99),
    ('2023-03-15 11:30:00', 'Футболка "Basic Tee"', 9.89, 'H&M', 'Одежда для верхней половины тела', 1, 'cookies1', 29.67),
    ('2023-04-05 09:45:00', 'Джинсы "Classic Straight"', 59.49, 'Levis', 'Одежда для нижней половины тела', 2, 'cookies1', 178.47),
    ('2023-03-02 15:30:00', 'Рубашка "Oxford Shirt"', 89.99, 'Nike', 'Одежда для верхней половины тела', NULL, 'cookies2', 179.98),
    ('2023-03-03 12:00:00', 'Шорты "Cargo Shorts"', 49.99, 'H&M', 'Одежда для нижней половины тела', NULL, 'cookies2', 49.99),
    ('2023-03-03 16:45:00', 'Куртка "Bomber Jacket"', 129.99, 'H&M', 'Верхняя одежда', NULL, 'cookies2', 389.97),
    ('2023-03-08 09:45:00', 'Платье "Little Black Dress"', 103.99, 'Calvin Klein', 'Одежда для нижней половины тела', 3, 'cookies2', 207.98),
    ('2023-04-12 10:30:00', 'Рубашка "Oxford Shirt"', 80.99, 'Nike', 'Одежда для верхней половины тела', 4, 'cookies2', 404.95),
    ('2023-03-04 11:15:00', 'Блузка "Wrap Top"', 39.99, 'Zara', 'Одежда для верхней половины тела', NULL, 'cookies3', 39.99),
    ('2023-03-05 09:30:00', 'Юбка "Pleated Skirt"', 49.99, 'Topshop', 'Одежда для нижней половины тела', NULL, 'cookies3', 49.99),
    ('2023-03-06 13:45:00', 'Свитшот "Hoodie"', 59.99, 'Nike', 'Одежда для верхней половины тела', NULL, 'cookies3', 179.97),
    ('2023-05-05 13:45:00', 'Шорты "Cargo Shorts"', 42.49, 'H&M', 'Одежда для нижней половины тела', 5, 'cookies3', 42.49),
    ('2023-04-05 16:30:00', 'Куртка "Bomber Jacket"', 103.99, 'H&M', 'Верхняя одежда', 6, 'cookies3', 311.98),
    ('2023-03-06 16:30:00', 'Брюки "Chinos"', 79.99, 'Zara', 'Одежда для нижней половины тела', NULL, 'cookies4', 79.99),
    ('2023-03-25 11:15:00', 'Блузка "Wrap Top"', 35.99, 'Zara', 'Одежда для верхней половины тела', 7, 'cookies4', 35.99),
    ('2023-05-11 09:30:00', 'Юбка "Pleated Skirt"', 42.49, 'Topshop', 'Одежда для нижней половины тела', 8, 'cookies4', 212.45),
    ('2023-04-07 10:30:00', 'Футболка "Basic Tee"', 10.99, 'H&M', 'Одежда для верхней половины тела', NULL, 'cookies5', 21.98),
    ('2023-05-07 14:15:00', 'Джинсы "Classic Straight"', 69.99, 'Levis', 'Одежда для нижней половины тела', NULL, 'cookies5', 69.99),
    ('2023-04-25 13:45:00', 'Свитшот "Hoodie"', 47.99, 'Nike', 'Одежда для верхней половины тела', 9, 'cookies5', 191.96),
    ('2023-04-05 14:15:00', 'Платье "Little Black Dress"', 129.99, 'Calvin Klein', 'Одежда для нижней половины тела', NULL, 'cookies6', 129.99),
    ('2023-03-08 15:30:00', 'Рубашка "Oxford Shirt"', 89.99, 'Nike', 'Одежда для верхней половины тела', NULL, 'cookies6', 89.99),
    ('2023-05-25 16:30:00', 'Брюки "Chinos"', 71.99, 'Zara', 'Одежда для нижней половины тела', 10, 'cookies6', 71.99),
    ('2023-04-09 12:00:00', 'Шорты "Cargo Shorts"', 49.99, 'H&M', 'Одежда для нижней половины тела', NULL, 'cookies7', 99.98),
    ('2023-03-09 16:45:00', 'Куртка "Bomber Jacket"', 129.99, 'H&M', 'Верхняя одежда', NULL, 'cookies7', 129.99),
    ('2023-05-10 11:15:00', 'Блузка "Wrap Top"', 39.99, 'Zara', 'Одежда для верхней половины тела', NULL, 'cookies8', 39.99),
    ('2023-03-26 09:30:00', 'Юбка "Pleated Skirt"', 49.99, 'Topshop', 'Одежда для нижней половины тела', NULL, 'cookies8', 99.98),
    ('2023-04-12 13:45:00', 'Свитшот "Hoodie"', 59.99, 'Nike', 'Одежда для верхней половины тела', NULL, 'cookies9', 179.97),
    ('2023-03-12 16:30:00', 'Брюки "Chinos"', 79.99, 'Zara', 'Одежда для нижней половины тела', NULL, 'cookies10', 79.99);


-- Преобразуем данные из RAW и заполняем CORE-слой 

INSERT INTO gender (gender)
SELECT DISTINCT gender
FROM customer_raw;

INSERT INTO customer (customer_id, full_name, gender_id, birthday, email, phone)
SELECT c.customer_id, c.full_name, g.gender_id, c.birthday, c.email, c.phone
FROM customer_raw AS c
JOIN gender AS g USING(gender)
ORDER BY customer_id;

INSERT INTO promo (promo_id, date_start_promo, date_end_promo, discount)
SELECT DISTINCT promo_id, date_start_promo, date_end_promo, discount
FROM promo_raw
ORDER BY promo_id;

INSERT INTO date_time (date_time, "time", "date", day_of_week, "week", "month", "quarter", "year")
SELECT dt.datetime_of_sale,
		CAST(dt.datetime_of_sale AS TIME) AS "time",
		DATE(dt.datetime_of_sale) AS "date",
		EXTRACT(ISODOW FROM dt.datetime_of_sale) AS day_of_week,
        EXTRACT(WEEK FROM dt.datetime_of_sale) AS "week",
		EXTRACT(MONTH FROM dt.datetime_of_sale) AS "month",
		EXTRACT(QUARTER FROM dt.datetime_of_sale) AS "quarter",
		EXTRACT(YEAR FROM dt.datetime_of_sale) AS "year"
FROM (SELECT DISTINCT datetime_of_sale FROM sales_raw) AS dt;

INSERT INTO brand (brand_name)
SELECT DISTINCT brand_name
FROM sales_raw;

INSERT INTO category (category_name)
SELECT DISTINCT category_name
FROM sales_raw;

INSERT INTO product (product_name, brand_id, category_id, price)
SELECT DISTINCT product_name, brand_id, category_id,
				ROUND(price_of_sale * 100 / (100 - discount_of_sale), 2) AS price
FROM view_sales_raw;


INSERT INTO sales_fact (date_time_id, product_id, promo_id, customer_id, amount, price_of_sale, sum_of_sale)
SELECT vs.date_time_id, pr.product_id, vs.promo_id, vs.customer_id,
	   vs.amount, vs.price_of_sale, vs.sum_of_sale
FROM view_sales_raw AS vs
JOIN product AS pr USING(product_name)
ORDER BY vs.order_id;
