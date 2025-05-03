-- Create the database
CREATE DATABASE autoelite_db;

USE autoelite_db;

-- User Table
CREATE TABLE user (
    u_id INT PRIMARY KEY AUTO_INCREMENT,
    u_firstname VARCHAR(100) NOT NULL,
    u_lastname VARCHAR(100) NOT NULL,
    u_email VARCHAR(150) UNIQUE NOT NULL,
    u_password VARCHAR(255) NOT NULL,
    u_type VARCHAR(50) NOT NULL,
    u_image VARCHAR(255)
);

-- Admin Table
CREATE TABLE admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    u_id INT,
    FOREIGN KEY (u_id) REFERENCES user(u_id) ON DELETE CASCADE
);

-- Manager Table
CREATE TABLE manager (
    manager_id INT PRIMARY KEY AUTO_INCREMENT,
    u_id INT,
    phone VARCHAR(20) NOT NULL,
	FOREIGN KEY (u_id) REFERENCES user(u_id) ON DELETE CASCADE
);

-- Delivery Person Table
CREATE TABLE delivery_person (
    delivery_person_id INT PRIMARY KEY AUTO_INCREMENT,
    u_id INT,
    address VARCHAR(200) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    FOREIGN KEY (u_id) REFERENCES user(u_id) ON DELETE CASCADE
);

-- Customer Table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    u_id INT,
    address VARCHAR(200) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    FOREIGN KEY (u_id) REFERENCES user(u_id) ON DELETE CASCADE
);

-- Product Table
CREATE TABLE product (
    p_id INT PRIMARY KEY AUTO_INCREMENT,
    p_name VARCHAR(150) NOT NULL,
    p_category VARCHAR(100) NOT NULL,
    p_price DECIMAL(10,2) NOT NULL,
    p_quantity INT NOT NULL,
    p_description TEXT,
    p_image VARCHAR(255)
);

-- Payment Table
CREATE TABLE payment (
    pay_id INT PRIMARY KEY AUTO_INCREMENT,
    card_number BIGINT NOT NULL,
    expiry_date DATE NOT NULL,
    cvc_value SMALLINT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    customer_id INT,
    o_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);
-- Orders Table
CREATE TABLE orders (
    o_id INT PRIMARY KEY AUTO_INCREMENT,
    o_date DATE ,
    o_address TEXT NOT NULL,
    o_phone VARCHAR(20) NOT NULL,
    o_status VARCHAR(50) DEFAULT 'Pending',
    paid_status VARCHAR(50) DEFAULT 'Unpaid',
    customer_id INT,
    p_id INT,
    pay_id INT, 
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (p_id) REFERENCES product(p_id) ON DELETE CASCADE,
    FOREIGN KEY (pay_id) REFERENCES payment(pay_id) ON DELETE CASCADE
);

-- Message Table 
CREATE TABLE Message (
    m_id INT PRIMARY KEY AUTO_INCREMENT,
    m_name VARCHAR(150),
    m_date DATE,
    m_email VARCHAR(150),
    message TEXT,
    m_status VARCHAR(50)
);


-- Full Data Insert Script for autoelite_db
-- Assumes tables have been created already as per your schema

-- 1. Insert Users
INSERT INTO user (u_firstname, u_lastname, u_email, u_password, u_type, u_image) VALUES
('Kamal', 'Perera', 'kamal.perera@example.com', 'password123', 'admin', NULL),
('Nadeesha', 'Fernando', 'nadeesha.fernando@example.com', 'password123', 'admin', NULL),
('Suresh', 'De Silva', 'suresh.desilva@example.com', 'password123', 'manager', NULL),
('Anjali', 'Gunasekara', 'anjali.gunasekara@example.com', 'password123', 'manager', NULL),
('Ruwan', 'Jayasinghe', 'ruwan.jayasinghe@example.com', 'password123', 'manager', NULL),
('Dilani', 'Senanayake', 'dilani.senanayake@example.com', 'password123', 'delivery', NULL),
('Chathura', 'Bandara', 'chathura.bandara@example.com', 'password123', 'delivery', NULL),
('Nirmala', 'Wijesinghe', 'nirmala.wijesinghe@example.com', 'password123', 'delivery', NULL),
('Pradeep', 'Ratnayake', 'pradeep.ratnayake@example.com', 'password123', 'delivery', NULL),
('Ishara', 'Kumari', 'ishara.kumari@example.com', 'password123', 'delivery', NULL),
('Sunil', 'Abeywardena', 'sunil.abeywardena@example.com', 'password123', 'delivery', NULL),
('Thilini', 'Dias', 'thilini.dias@example.com', 'password123', 'delivery', NULL),
('Harsha', 'Ekanayake', 'harsha.ekanayake@example.com', 'password123', 'delivery', NULL),
('Menaka', 'Karunaratne', 'menaka.karunaratne@example.com', 'password123', 'delivery', NULL),
('Lakmal', 'Wickramasinghe', 'lakmal.wickramasinghe@example.com', 'password123', 'delivery', NULL),
('Sanduni', 'Herath', 'sanduni.herath@example.com', 'password123', 'customer', NULL),
('Kasun', 'Rajapaksha', 'kasun.rajapaksha@example.com', 'password123', 'customer', NULL),
('Nadeeka', 'Jayalath', 'nadeeka.jayalath@example.com', 'password123', 'customer', NULL),
('Tharindu', 'Perera', 'tharindu.perera@example.com', 'password123', 'customer', NULL),
('Ishani', 'Silva', 'ishani.silva@example.com', 'password123', 'customer', NULL);

-- 2. Admins
INSERT INTO admin (u_id) VALUES (1), (2);

-- 3. Managers
INSERT INTO manager (u_id, phone) VALUES
(3, '0771234567'),
(4, '0772345678'),
(5, '0773456789');

-- 4. Delivery Persons
INSERT INTO delivery_person (u_id, address, phone) VALUES
(6, 'Colombo 01', '0711111111'),
(7, 'Kandy', '0712222222'),
(8, 'Galle', '0713333333'),
(9, 'Matara', '0714444444'),
(10, 'Negombo', '0715555555'),
(11, 'Kurunegala', '0716666666'),
(12, 'Anuradhapura', '0717777777'),
(13, 'Ratnapura', '0718888888'),
(14, 'Badulla', '0719999999'),
(15, 'Jaffna', '0710000000');

-- 5. Customers
INSERT INTO customer (u_id, address, phone) VALUES
(16, 'Nugegoda', '0721111111'),
(17, 'Maharagama', '0722222222'),
(18, 'Battaramulla', '0723333333'),
(19, 'Dehiwala', '0724444444'),
(20, 'Moratuwa', '0725555555');

-- 6. Products
INSERT INTO product (p_name, p_category, p_price, p_quantity, p_description, p_image) VALUES
('McLaren 720S Carbon Fiber Hood', 'Body Parts', 1501647.00, 5, 'Genuine carbon fiber replacement hood for McLaren 720S, reduces weight and enhances aerodynamics', 'mclaren_hood.jpg'),
('Lamborghini Aventador SVJ Brake Kit', 'Braking System', 1051152.00, 8, 'High-performance ceramic brake kit for Lamborghini Aventador SVJ with improved stopping power', 'lambo_brakes.jpg'),
('Ferrari Performance ECU', 'Electronics', 840921.00, 3, 'Programmable engine control unit for Ferrari models with custom mapping capabilities', 'ferrari_ecu.jpg'),
('Bugatti Chiron Oil Filter Set', 'Engine Components', 150162.00, 15, 'Premium oil filtration system specifically designed for Bugatti Chiron W16 engine', 'bugatti_filter.jpg'),
('Porsche 911 GT2 RS Exhaust System', 'Exhaust', 1591746.00, 4, 'Titanium full exhaust system for Porsche 911 GT2 RS with valve control', 'porsche_exhaust.jpg'),
('Koenigsegg Jesko Carbon Fiber Spoiler', 'Aerodynamics', 2402637.00, 2, 'Authentic carbon fiber rear spoiler for Koenigsegg Jesko with adjustable angle', 'koenigsegg_spoiler.jpg'),
('Aston Martin DBS Superleggera Wheel Set', 'Wheels', 1952142.00, 6, 'Forged aluminum wheel set for Aston Martin DBS Superleggera, 20-inch front, 21-inch rear', 'aston_wheels.jpg'),
('Ford GT Performance Suspension Kit', 'Suspension', 1171284.00, 7, 'Adjustable coilover suspension kit for Ford GT with track-focused setup options', 'fordgt_suspension.jpg'),
('Pagani Huayra Interior Trim Kit', 'Interior', 2702967.00, 3, 'Handcrafted carbon fiber and leather interior trim kit for Pagani Huayra', 'pagani_interior.jpg'),
('Rimac Nevera Battery Management System', 'Electric Components', 1381515.00, 4, 'Advanced battery management system for Rimac Nevera electric hypercar', 'rimac_bms.jpg');

-- Insert Payments
INSERT INTO payment (card_number, expiry_date, cvc_value, total_price, customer_id, o_id)
VALUES
(4580951102997836, '2026-04-25', 873, 1500.00, 1, NULL),
(4651919564275245, '2026-04-25', 796, 500.00, 2, NULL),
(4096341360461940, '2026-04-25', 697, 3500.00, 3, NULL),
(4744315724816126, '2026-04-25', 952, 800.00, 4, NULL),
(4819854657936428, '2026-04-25', 408, 2500.00, 5, NULL),
(4490262216291838, '2026-04-25', 461, 12000.00, 1, NULL),
(4157823963841826, '2026-04-25', 583, 300.00, 2, NULL),
(4576404497758737, '2026-04-25', 921, 1000.00, 3, NULL),
(4996832099668250, '2026-04-25', 726, 2000.00, 4, NULL),
(4767828767363101, '2026-04-25', 107, 1800.00, 5, NULL);


-- 9. Orders
-- Insert Orders (with valid pay_id references)
INSERT INTO orders (o_date, o_address, o_phone, o_status, paid_status, customer_id, p_id, pay_id)
VALUES
('2025-04-20', 'Nugegoda', '0721111111', 'Pending', 'Paid', 1, 1, 1),
('2025-04-21', 'Maharagama', '0722222222', 'Shipped', 'Paid', 2, 2, 2),
('2025-04-22', 'Battaramulla', '0723333333', 'Delivered', 'Paid', 3, 3, 3),
('2025-04-23', 'Dehiwala', '0724444444', 'Cancelled', 'Paid', 4, 4, 4),
('2025-04-24', 'Moratuwa', '0725555555', 'Pending', 'Paid', 5, 5, 5),
('2025-04-20', 'Nugegoda', '0721111111', 'Delivered', 'Paid', 1, 6, 6),
('2025-04-21', 'Maharagama', '0722222222', 'Shipped', 'Paid', 2, 7, 7),
('2025-04-22', 'Battaramulla', '0723333333', 'Pending', 'Paid', 3, 8, 8),
('2025-04-23', 'Dehiwala', '0724444444', 'Pending', 'Paid', 4, 9, 9),
('2025-04-24', 'Moratuwa', '0725555555', 'Delivered', 'Paid', 5, 10, 10);

-- 10. Messages
INSERT INTO Message (m_name, m_date, m_email, message, m_status) VALUES
('Kamal Perera', '2025-04-20', 'kamal.perera@example.com', 'Inquiry about product availability.', 'unread'),
('Nadeesha Fernando', '2025-04-20', 'nadeesha.fernando@example.com', 'Need assistance with login.', 'read'),
('Suresh De Silva', '2025-04-21', 'suresh.desilva@example.com', 'Feedback about delivery time.', 'read'),
('Anjali Gunasekara', '2025-04-22', 'anjali.gunasekara@example.com', 'Query on order cancellation.', 'unread'),
('Ruwan Jayasinghe', '2025-04-23', 'ruwan.jayasinghe@example.com', 'Suggestion to add new products.', 'read'),
('Dilani Senanayake', '2025-04-24', 'dilani.senanayake@example.com', 'Request for invoice.', 'unread'),
('Chathura Bandara', '2025-04-24', 'chathura.bandara@example.com', 'Product review submission.', 'read'),
('Nirmala Wijesinghe', '2025-04-24', 'nirmala.wijesinghe@example.com', 'Feedback on product packaging.', 'read'),
('Pradeep Ratnayake', '2025-04-25', 'pradeep.ratnayake@example.com', 'Inquiry on returns policy.', 'unread'),
('Ishara Kumari', '2025-04-25', 'ishara.kumari@example.com', 'Technical support request.', 'read');

-- 1. Select all data from user table
SELECT * FROM user;

-- 2. Select all data from admin table
SELECT * FROM admin;

-- 3. Select all data from manager table
SELECT * FROM manager;

-- 4. Select all data from delivery_person table
SELECT * FROM delivery_person;

-- 5. Select all data from customer table
SELECT * FROM customer;

-- 6. Select all data from product table
SELECT * FROM product;

-- 7. Select all data from payment table
SELECT * FROM payment;

-- 8. Select all data from orders table
SELECT * FROM orders;

-- 9. Select all data from Message table
SELECT * FROM Message;