CREATE database Phone;
CREATE TABLE products(
                         id SERIAL PRIMARY KEY,
                         product_name VARCHAR(30) NOT NULL,
                         manufacturer VARCHAR(20) NOT NULL,
                         product_count INTEGER DEFAULT 0,
                         price NUMERIC NOT NULL,
                         isDiscounted bool
);
INSERT INTO products (product_name, manufacturer, product_count, price, isDiscounted)
VALUES
    ('iPhone X', 'Apple', 3, 76000, false),
    ('iPhone 8', 'Apple', 2, 71000, true),
    ('iPhone 7', 'Apple', 5, 42000, true),
    ('Galaxy S9', 'Samsung', 2, 46000, false),
    ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
    ('Desire 12', 'HTC', 5, 28000, true),
    ('Nokia 9', 'HMD Global', 6, 38000, true);

-- 1. HTC компаниясынан башка компаниянын продуктуларын алыныз
-- 2. Apple компаниясынын 75000минден томонку баадагы продуктуларын алыныз.
-- 3. Баасы 46000 жана андан ойдоку продуктулардын баарын алыныз
-- 4. Эн кымбат эки продукту алыныз
-- 5. Баасы минимальный болгон продуктун атын алыныз
-- 6. Дискоунт болгон продуктуларды чыгарыныз.
-- 7. Дискоунт болбогон продуктуларды чыгарыныз.
-- 8. Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
-- 9. Баардык продуктулардын суммасын(баасын) чыгарыныз.
-- 10. Эки жана андан аз продуктусу бар компанияларды алыныз

SELECT * from products where manufacturer!='HTC';
select * from products where manufacturer='Apple' and price<75000;
select * from products where price>=46000;
select * from products order by price desc limit 2;
select product_name ,min(price) from products group by product_name;
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM products where product_count <= 2;
SELECT * FROM products where isDiscounted = true;
SELECT * FROM products where isDiscounted != true;
SELECT SUM(price) as sum_Price FROM products;