USE restaurant_management;

-- ============================================================
-- RESTAURANT MANAGEMENT SYSTEM
-- SAMPLE / REALISTIC DATA
-- ============================================================


-- ============================================================
-- 1. CUSTOMERS
-- ============================================================

INSERT INTO customers
(first_name, last_name, phone, email)
VALUES
('Ramtanay', 'Chakraborty', '9876500001', 'ramtanay@gmail.com'),
('Rahul', 'Das', '9876500002', 'rahul.das@gmail.com'),
('Priya', 'Ghosh', '9876500003', 'priya.ghosh@gmail.com'),
('Arjun', 'Sen', '9876500004', 'arjun.sen@gmail.com'),
('Sneha', 'Roy', '9876500005', 'sneha.roy@gmail.com'),
('Amit', 'Banerjee', '9876500006', 'amit.banerjee@gmail.com'),
('Ananya', 'Mukherjee', '9876500007', 'ananya.m@gmail.com'),
('Sourav', 'Dutta', '9876500008', 'sourav.dutta@gmail.com'),
('Neha', 'Sharma', '9876500009', 'neha.sharma@gmail.com'),
('Kunal', 'Bose', '9876500010', 'kunal.bose@gmail.com'),
('Ishita', 'Sen', '9876500011', 'ishita.sen@gmail.com'),
('Abhishek', 'Roy', '9876500012', 'abhishek.roy@gmail.com');


-- ============================================================
-- 2. EMPLOYEES
-- ============================================================

INSERT INTO employees
(first_name, last_name, role, phone, hire_date)
VALUES
('Amit', 'Roy', 'Manager', '9001000001', '2022-04-15'),
('Sneha', 'Das', 'Waiter', '9001000002', '2023-06-10'),
('Arjun', 'Sen', 'Chef', '9001000003', '2022-11-20'),
('Priya', 'Ghosh', 'Waiter', '9001000004', '2024-01-12'),
('Rahul', 'Saha', 'Chef', '9001000005', '2023-03-18'),
('Ananya', 'Paul', 'Cashier', '9001000006', '2024-07-05'),
('Sourav', 'Dey', 'Waiter', '9001000007', '2025-02-14'),
('Neha', 'Basu', 'Chef', '9001000008', '2025-05-21');


-- ============================================================
-- 3. CATEGORIES
-- ============================================================

INSERT INTO categories
(category_name)
VALUES
('Starters'),
('Main Course'),
('Breads'),
('Rice & Biryani'),
('Desserts'),
('Beverages'),
('Fast Food'),
('Chinese');


-- ============================================================
-- 4. RESTAURANT TABLES
-- ============================================================

INSERT INTO restaurant_tables
(table_number, capacity, status)
VALUES
('T01', 2, 'Available'),
('T02', 2, 'Available'),
('T03', 4, 'Reserved'),
('T04', 4, 'Occupied'),
('T05', 4, 'Available'),
('T06', 6, 'Reserved'),
('T07', 6, 'Available'),
('T08', 8, 'Occupied'),
('T09', 4, 'Available'),
('T10', 10, 'Reserved');


-- ============================================================
-- 5. MENU ITEMS
-- ============================================================

INSERT INTO menu_items
(category_id, item_name, description, price, availability)
VALUES

-- Starters
(1, 'Paneer Tikka', 'Grilled cottage cheese with spices', 220.00, TRUE),
(1, 'Chicken Tikka', 'Grilled chicken pieces with Indian spices', 280.00, TRUE),
(1, 'Veg Spring Rolls', 'Crispy rolls filled with vegetables', 160.00, TRUE),
(1, 'Chicken Wings', 'Spicy crispy chicken wings', 260.00, TRUE),

-- Main Course
(2, 'Butter Chicken', 'Chicken cooked in creamy tomato gravy', 320.00, TRUE),
(2, 'Paneer Butter Masala', 'Paneer in rich tomato butter gravy', 260.00, TRUE),
(2, 'Dal Makhani', 'Slow cooked black lentils', 190.00, TRUE),
(2, 'Mixed Vegetable Curry', 'Seasonal vegetables in Indian gravy', 180.00, TRUE),

-- Breads
(3, 'Butter Naan', 'Soft naan topped with butter', 70.00, TRUE),
(3, 'Garlic Naan', 'Naan topped with garlic and coriander', 90.00, TRUE),
(3, 'Tandoori Roti', 'Traditional clay oven roasted roti', 40.00, TRUE),

-- Rice & Biryani
(4, 'Chicken Biryani', 'Aromatic basmati rice with chicken', 250.00, TRUE),
(4, 'Mutton Biryani', 'Aromatic basmati rice with mutton', 350.00, TRUE),
(4, 'Veg Biryani', 'Basmati rice cooked with vegetables', 200.00, TRUE),
(4, 'Jeera Rice', 'Basmati rice tempered with cumin', 150.00, TRUE),

-- Desserts
(5, 'Gulab Jamun', 'Soft milk dumplings in sugar syrup', 100.00, TRUE),
(5, 'Brownie with Ice Cream', 'Chocolate brownie served with ice cream', 180.00, TRUE),
(5, 'Rasmalai', 'Soft cottage cheese dumplings in sweet milk', 140.00, TRUE),

-- Beverages
(6, 'Coca Cola', 'Chilled soft drink', 60.00, TRUE),
(6, 'Fresh Lime Soda', 'Fresh lime with soda', 90.00, TRUE),
(6, 'Mango Lassi', 'Traditional mango yogurt drink', 120.00, TRUE),
(6, 'Masala Tea', 'Indian spiced tea', 70.00, TRUE),

-- Fast Food
(7, 'Veg Burger', 'Vegetable patty burger', 180.00, TRUE),
(7, 'Chicken Burger', 'Crispy chicken burger', 220.00, TRUE),
(7, 'French Fries', 'Crispy salted potato fries', 120.00, TRUE),

-- Chinese
(8, 'Veg Hakka Noodles', 'Stir fried noodles with vegetables', 190.00, TRUE),
(8, 'Chicken Hakka Noodles', 'Stir fried noodles with chicken', 240.00, TRUE),
(8, 'Veg Fried Rice', 'Chinese style vegetable fried rice', 180.00, TRUE),
(8, 'Chicken Fried Rice', 'Chinese style chicken fried rice', 230.00, TRUE);


-- ============================================================
-- 6. RESERVATIONS
-- ============================================================

INSERT INTO reservations
(customer_id, table_id, reservation_date, reservation_time, number_of_guests, status)
VALUES
(1, 3, '2026-08-20', '19:30:00', 4, 'Confirmed'),
(2, 6, '2026-08-20', '20:00:00', 5, 'Confirmed'),
(3, 10, '2026-08-21', '19:00:00', 8, 'Confirmed'),
(4, 5, '2026-08-21', '20:30:00', 3, 'Confirmed'),
(5, 7, '2026-08-22', '18:30:00', 5, 'Confirmed'),
(6, 3, '2026-08-22', '20:00:00', 4, 'Confirmed'),
(7, 9, '2026-08-23', '19:30:00', 4, 'Cancelled'),
(8, 6, '2026-08-24', '20:00:00', 6, 'Confirmed'),
(9, 10, '2026-08-24', '19:00:00', 9, 'Confirmed'),
(10, 5, '2026-08-25', '18:00:00', 4, 'Confirmed');


-- ============================================================
-- 7. ORDERS
-- ============================================================

INSERT INTO orders
(customer_id, employee_id, table_id, order_date, order_status)
VALUES

-- Order 1
(1, 2, 4, '2026-08-18 19:15:00', 'Completed'),

-- Order 2
(2, 4, 8, '2026-08-18 20:10:00', 'Completed'),

-- Order 3
(3, 7, 1, '2026-08-18 18:30:00', 'Completed'),

-- Order 4
(4, 2, 5, '2026-08-18 21:00:00', 'Completed'),

-- Order 5
(5, 4, 2, '2026-08-19 12:45:00', 'Completed'),

-- Order 6
(6, 7, 7, '2026-08-19 13:10:00', 'Completed'),

-- Order 7
(7, 2, 4, '2026-08-19 19:20:00', 'Preparing'),

-- Order 8
(8, 4, NULL, '2026-08-19 19:45:00', 'Completed'),

-- Order 9
(9, 7, 9, '2026-08-19 20:00:00', 'Pending'),

-- Order 10
(10, 2, 3, '2026-08-19 20:15:00', 'Completed'),

-- Order 11
(11, 4, 6, '2026-08-19 20:30:00', 'Completed'),

-- Order 12
(12, 7, NULL, '2026-08-19 21:00:00', 'Completed');


-- ============================================================
-- 8. ORDER ITEMS
-- ============================================================

INSERT INTO order_items
(order_id, item_id, quantity, unit_price)
VALUES

-- Order 1
(1, 2, 2, 280.00),
(1, 9, 2, 70.00),
(1, 12, 1, 250.00),
(1, 18, 2, 60.00),

-- Order 2
(2, 1, 1, 220.00),
(2, 5, 1, 320.00),
(2, 10, 2, 90.00),
(2, 16, 1, 180.00),

-- Order 3
(3, 3, 1, 160.00),
(3, 6, 1, 260.00),
(3, 14, 1, 200.00),
(3, 19, 1, 90.00),

-- Order 4
(4, 4, 2, 260.00),
(4, 13, 1, 350.00),
(4, 15, 1, 150.00),
(4, 17, 2, 100.00),

-- Order 5
(5, 7, 1, 190.00),
(5, 9, 2, 70.00),
(5, 12, 1, 250.00),
(5, 20, 1, 120.00),

-- Order 6
(6, 8, 1, 180.00),
(6, 10, 1, 90.00),
(6, 25, 1, 190.00),
(6, 28, 1, 230.00),

-- Order 7
(7, 1, 2, 220.00),
(7, 5, 1, 320.00),
(7, 18, 2, 60.00),

-- Order 8 - Takeaway
(8, 23, 2, 220.00),
(8, 24, 1, 120.00),
(8, 27, 1, 180.00),
(8, 19, 2, 90.00),

-- Order 9
(9, 2, 1, 280.00),
(9, 12, 2, 250.00),
(9, 16, 1, 180.00),
(9, 20, 2, 120.00),

-- Order 10
(10, 6, 2, 260.00),
(10, 9, 4, 70.00),
(10, 14, 1, 200.00),
(10, 21, 2, 70.00),

-- Order 11
(11, 4, 1, 260.00),
(11, 13, 1, 350.00),
(11, 26, 1, 190.00),
(11, 17, 2, 100.00),

-- Order 12 - Takeaway
(12, 22, 2, 180.00),
(12, 23, 1, 180.00),
(12, 28, 1, 230.00),
(12, 18, 2, 60.00);


-- ============================================================
-- 9. PAYMENTS
-- ============================================================

INSERT INTO payments
(order_id, payment_date, amount, payment_method, payment_status)
VALUES

(1, '2026-08-18 20:05:00', 950.00, 'UPI', 'Completed'),

(2, '2026-08-18 21:00:00', 900.00, 'Card', 'Completed'),

(3, '2026-08-18 19:20:00', 710.00, 'Cash', 'Completed'),

(4, '2026-08-18 21:50:00', 1120.00, 'UPI', 'Completed'),

(5, '2026-08-19 13:30:00', 770.00, 'Card', 'Completed'),

(6, '2026-08-19 14:00:00', 690.00, 'UPI', 'Completed'),

(7, '2026-08-19 20:00:00', 880.00, 'Card', 'Pending'),

(8, '2026-08-19 20:15:00', 920.00, 'UPI', 'Completed'),

(9, '2026-08-19 20:45:00', 1080.00, 'Cash', 'Pending'),

(10, '2026-08-19 21:20:00', 760.00, 'UPI', 'Completed'),

(11, '2026-08-19 21:40:00', 1000.00, 'Card', 'Completed'),

(12, '2026-08-19 21:45:00', 830.00, 'Cash', 'Completed');


-- ============================================================
-- VERIFY DATA
-- ============================================================

SELECT * FROM customers;

SELECT * FROM employees;

SELECT * FROM categories;

SELECT * FROM restaurant_tables;

SELECT * FROM menu_items;

SELECT * FROM reservations;

SELECT * FROM orders;

SELECT * FROM order_items;

SELECT * FROM payments;