USE dronepay_db;

INSERT INTO users (name, phone_number, email, status) VALUES
('Ravi', '9876543210', 'ravi@gmail.com', 'ACTIVE'),
('Sita', '9876543211', 'sita@gmail.com', 'ACTIVE'),
('Kumar', '9876543212', 'kumar@gmail.com', 'ACTIVE'),
('Rahul', '9876543213', 'rahul@gmail.com', 'ACTIVE'),
('Priya', '9876543214', 'priya@gmail.com', 'ACTIVE'),
('Anjali', '9876543215', 'anjali@gmail.com', 'ACTIVE'),
('Arjun', '9876543216', 'arjun@gmail.com', 'ACTIVE'),
('Sneha', '9876543217', 'sneha@gmail.com', 'ACTIVE'),
('Vikram', '9876543218', 'vikram@gmail.com', 'ACTIVE'),
('Neha', '9876543219', 'neha@gmail.com', 'ACTIVE');

INSERT INTO accounts (user_id, acc_number, balance) VALUES
(1, 'ACC1001', 50000.00),
(2, 'ACC1002', 30000.00),
(3, 'ACC1003', 75000.00),
(4, 'ACC1004', 25000.00),
(5, 'ACC1005', 60000.00),
(6, 'ACC1006', 40000.00),
(7, 'ACC1007', 90000.00),
(8, 'ACC1008', 30000.00),
(9, 'ACC1009', 55000.00),
(10, 'ACC1010', 20000.00);

INSERT INTO categories (category_name, description) VALUES
('Food', 'Restaurants and food purchases'),
('Shopping', 'Online and offline shopping'),
('Bills', 'Electricity, water and other bills'),
('Recharge', 'Mobile and DTH recharge'),
('Travel', 'Travel and transportation'),
('Education', 'Education-related payments');

INSERT INTO beneficiaries (user_id, beneficiary_name, account_number) VALUES
(1, 'Sita', 'ACC1002');
