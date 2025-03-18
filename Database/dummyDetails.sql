-- Insert dummy data into user table
INSERT INTO user (u_firstname, u_lastname, u_email, u_password, u_address, u_phone, u_type, u_image) VALUES
('Sunil', 'Fernando', 'user1@example.com', 'password123', 'Colombo', '0753456789', 'Customer', 'user_image_1.jpg'),
('Amara', 'Silva', 'user2@example.com', 'password123', 'Anuradhapura', '0727890123', 'Customer', 'user_image_2.jpg'),
('Dilini', 'Perera', 'user3@example.com', 'password123', 'Colombo', '0799012345', 'Customer', 'user_image_3.jpg'),
('Kamal', 'Silva', 'user4@example.com', 'password123', 'Badulla', '0764567890', 'Admin', 'user_image_4.jpg'),
('Chathura', 'Senanayake', 'user5@example.com', 'password123', 'Galle', '0748901234', 'Admin', 'user_image_5.jpg'),
('Amara', 'Jayasinghe', 'user6@example.com', 'password123', 'Kurunegala', '0727890123', 'Customer', 'user_image_6.jpg'),
('Kamal', 'Silva', 'user7@example.com', 'password123', 'Kurunegala', '0764567890', 'Customer', 'user_image_7.jpg'),
('Amara', 'Fernando','user8@example.com','password123','Kurunegala','0785678901','Admin','user_image_8.jpg'),
('Amara','Silva','user9@example.com','password123','Kurunegala','0727890123','Admin','user_image_9.jpg'),
('Chathura','Ratnayake','user10@example.com','password123','Ratnapura','0764567890','Customer','user_image_10.jpg');

-- Insert dummy data into product table (High-performance vehicle spare parts)
INSERT INTO product (p_name, p_category, p_price, p_quantity, p_description, p_image) VALUES
('Brembo GT Brake Kit','Brakes','250000.00','10','High-performance Brembo brake kit for sports cars.','brembo_brake.jpg'),
('Nismo Coilovers','Coilovers','180000.00','8','Adjustable Nismo coilovers suitable for Nissan performance cars.','nismo_coilovers.jpg'),
('Bridgestone Potenza RE003 225/45 R17','Wheels','45000.00','20','High-grip Bridgestone Potenza performance tires.','bridgestone_potenza.jpg'),
('HKS Super Power Flow Intake','Engine','75000.00','15','High-performance air intake system from HKS Japan.','hks_intake.jpg'),
('Exedy Racing Clutch Kit','Transmission','120000.00','12','Exedy racing clutch kit suitable for high torque applications.','exedy_clutch.jpg'),
('NGK Iridium IX Spark Plugs Set','Ignition','15000.00','30','NGK Iridium spark plugs for improved combustion and efficiency.','ngk_sparkplugs.jpg'),
('Cusco Front Strut Bar','Suspension','40000.00','18','Cusco front strut bar to enhance chassis rigidity.','cusco_strutbar.jpg'),
('GReddy Evolution GT Exhaust System','Exhaust','200000.00','7','GReddy exhaust system offering increased horsepower and sporty sound.','greddy_exhaust.jpg'),
('Mishimoto Aluminum Radiator','Cooling System','85000.00','9','Mishimoto radiator providing superior cooling performance. ','mishimoto_radiator.jpg'),
('K&N Performance Oil Filter ','Engine Maintenance ','10000.00 ','25 ','High-flow K&N oil filter ensuring maximum engine protection. ','kn_oilfilter.jpg');

-- Insert dummy data into orders table
INSERT INTO orders (o_date,o_name,o_address,o_phone,ordered_quantity,unit_price,total_price,payment_slip,o_status,p_id,u_id) VALUES
('2025-02-15 ','Kasun Perera ','Kurunegala ','0764567890 ',1 ,250000.00 ,250000.00 ,'payment_slip_1.jpg ','Completed ',1 ,1 ),
('2025-02-25 ','Nuwan Silva ','Matara ','0764567890 ',2 ,180000.00 ,360000.00 ,'payment_slip_2.jpg ','Pending ',2 ,2 ),
('2025-02-25 ','Amali Fernando ','Kandy ','0712345678 ',4 ,45000.00 ,180000.00 ,'payment_slip_3.jpg ','Cancelled ',3 ,3 ),
('2025-01-03 ','Ruwan Jayasinghe ','Trincomalee ','0712345678 ',1 ,75000.00 ,75000.00 ,'payment_slip_4.jpg ','Pending ',4 ,4 ),
('2025-02-08' ,'Ishani Bandara' ,'Colombo' ,'0753456789' ,2 ,120000.00 ,240000.00 ,'payment_slip_5.jpg' ,'Completed' ,5 ,5 ),
('2024-12-17' ,'Saman Ekanayake' ,'Kurunegala' ,'0727890123' ,3 ,15000.00 ,45000.00 ,'payment_slip_6.jpg' ,'Completed' ,6 ,6 ),
('2025-03-12' ,'Nadeeka Wijesinghe' ,'Kandy' ,'0730123456' ,1 ,40000.00 ,40000.00 ,'payment_slip_7.jpg' ,'Pending'   ,7 ,7 ),
('2025-01-24' ,'Tharindu Gunawardena' ,'Jaffna' ,'0764567890' ,1 ,200000.00 ,200000.00 ,'payment_slip_8.jpg' ,'Cancelled' ,8 ,8 ),
('2025-01-09' ,'Dilini Ratnayake' ,'Colombo' ,'0727890123' ,1 ,85000.00 ,85000.00,'payment_slip_9.jpg' ,'Pending ',9 ,9 ),
('2025-01-09' ,'Janith Senanayake' ,'Anuradhapura' ,'0764567890' ,2,10000.00,20000.00,'payment_slip_10.jpg ','Pending ',10,10);

-- Insert dummy data into delivery table
INSERT INTO delivery (d_date,d_status,o_id,u_id) VALUES
('2025-02-11 ','Delivered ',1  ,1 ),
('2025-03-11 ','Pending ',2  ,2 ),
('2025-03-04 ','Cancelled ',3  ,3 ),
('2025-02-22 ','In Transit ',4  ,4 ),
('2025-03-16 ','Delivered ',5  ,5 ),
('2025-02-18 ','Delivered ',6  ,6 ),
('2025-02-20 ','Pending ',7  ,7 ),
('2025-02-25 ','Cancelled ',8  ,8 ),
('2025-03-02 ','In Transit ',9  ,9 ),
('2025-01-29 ','Pending ',10  ,10 );

-- Insert dummy data into message table
INSERT INTO message (m_name,m_date,m_email,message,m_status) VALUES
('Kasun Perera ','2025-02-23 ','user1@example.com ','I have an issue with my order.'                 ,'Unread'),
('Nuwan Silva ','2025-02-19 ','user2@example.com ','Can you provide more details about the product? ','Read'),
('Amali Fernando ','2025-03-10 ','user3@example.com ','I want to return my order.'                   ,'Read'),
('Ruwan Jayasinghe ','2025-02-24 ','user4@example.com ','Thank you for the excellent service!'       ,'Unread'),
('Ishani Bandara ','2025-03-06 ','user5@example.com ','I need help with the payment process.'        ,'Read');
