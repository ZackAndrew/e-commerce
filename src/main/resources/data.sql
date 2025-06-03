DROP TABLE IF EXISTS product;

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    brand VARCHAR(255),
    price DECIMAL(10, 2),
    category VARCHAR(255),
    release_date DATE,
    product_available BOOLEAN,
    stock_quantity INT,
    image_name VARCHAR(255),
    image_type VARCHAR(50),
    image_data LONGBLOB
);


INSERT INTO product (name, description, brand, price, category, release_date, product_available, stock_quantity, image_name, image_type, image_data)
VALUES
('Smartphone X100', 'High-end smartphone with 128GB storage and 8GB RAM', 'TechBrand', 699.99, 'Electronics', PARSEDATETIME('15-05-23', 'dd-MM-yy'), TRUE, 50, 'smartphone_x100.jpg', 'image/jpeg', NULL),
('Wireless Headphones', 'Noise-cancelling over-ear wireless headphones', 'SoundMaster', 199.99, 'Audio', PARSEDATETIME('01-03-23', 'dd-MM-yy'), TRUE, 150, 'headphones.jpg', 'image/jpeg', NULL),
('Gaming Laptop Pro', 'Powerful gaming laptop with RTX 3070 GPU', 'GameTech', 1499.00, 'Computers', PARSEDATETIME('20-12-22', 'dd-MM-yy'), TRUE, 20, 'gaming_laptop_pro.png', 'image/png', NULL),
('Coffee Maker', 'Automatic coffee maker with timer and grinder', 'HomeBrew', 89.50, 'Home Appliances', PARSEDATETIME('10-01-23', 'dd-MM-yy'), TRUE, 75, 'coffee_maker.jpg', 'image/jpeg', NULL);
