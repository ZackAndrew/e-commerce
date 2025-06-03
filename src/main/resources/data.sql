DROP TABLE IF EXISTS product;

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(1000),
    brand VARCHAR(255),
    price DECIMAL(19,2),
    category VARCHAR(255),
    release_date DATE,
    product_available BOOLEAN,
    stock_quantity INT,
    image_name VARCHAR(255),
    image_type VARCHAR(100),
    image_data BLOB
);

-- Прикладові дані
INSERT INTO product (
    id, name, description, brand, price, category, release_date,
    product_available, stock_quantity, image_name, image_type, image_data
) VALUES
(1, 'Smartphone X1', 'Сучасний смартфон з великим дисплеєм', 'TechBrand', 799.99, 'Electronics',
 DATE '2023-09-15', TRUE, 25, 'smartphone_x1.jpg', 'image/jpeg', NULL),

(2, 'Gaming Laptop Z', 'Потужний ноутбук для ігор та роботи', 'GameTech', 1499.00, 'Computers',
 DATE '2024-03-01', TRUE, 10, 'gaming_laptop_z.png', 'image/png', NULL),

(3, 'Wireless Headphones', 'Безпровідні навушники з шумозаглушенням', 'AudioMax', 199.49, 'Accessories',
 DATE '2022-12-05', TRUE, 50, 'headphones.jpg', 'image/jpeg', NULL),

(4, 'Smartwatch Pro', 'Розумний годинник з фітнес функціями', 'FitTech', 299.99, 'Wearables',
 DATE '2023-06-20', FALSE, 0, 'smartwatch_pro.png', 'image/png', NULL);
