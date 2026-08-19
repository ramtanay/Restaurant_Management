# 🍽️ Restaurant Management System — MySQL

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/SQL-Relational%20Database-F29111?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Schema-Normalized-2E8B57?style=for-the-badge" alt="Normalized Schema">
  <img src="https://img.shields.io/badge/Tables-9-6C63FF?style=for-the-badge" alt="9 Tables">
  <img src="https://img.shields.io/badge/CRUD-Implemented-00A67E?style=for-the-badge" alt="CRUD">
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Completed">
</p>

<p align="center">
  <img src="https://img.icons8.com/fluency/96/restaurant.png" width="90" alt="Restaurant">
</p>

<h1 align="center">🍴 Restaurant Management & SQL Analytics Database</h1>

<p align="center">
  <b>A complete relational database project built with MySQL to model and manage real-world restaurant operations.</b>
</p>

<p align="center">
  Customers • Employees • Tables • Menu • Reservations • Orders • Payments
</p>

<br>

<p align="center">
  <b>Designed from scratch • Properly normalized • Constraint-driven • Realistic data • SQL analysis</b>
</p>

---

# 📌 Table of Contents

- [📖 About the Project](#-about-the-project)
- [🎯 Project Objectives](#-project-objectives)
- [✨ Features](#-features)
- [🏗️ Database Architecture](#️-database-architecture)
- [🔗 Entity Relationships](#-entity-relationships)
- [🗃️ Database Tables](#️-database-tables)
- [🔐 Constraints & Data Integrity](#-constraints--data-integrity)
- [📊 Dataset](#-dataset)
- [💻 SQL Operations](#-sql-operations)
- [📈 SQL Analytics](#-sql-analytics)
- [🧠 Normalization](#-normalization)
- [💡 Important Design Decisions](#-important-design-decisions)
- [📁 Project Structure](#-project-structure)
- [🚀 Installation & Setup](#-installation--setup)
- [🔍 Verification Queries](#-verification-queries)
- [🗺️ Roadmap](#️-roadmap)
- [🎓 Learning Outcomes](#-learning-outcomes)
- [👨‍💻 Author](#-author)

---

# 📖 About the Project

The **Restaurant Management System** is a practical relational database project developed using **MySQL 8.0+**.

The purpose of this project is to model the day-to-day operations of a restaurant using a properly structured relational database.

Instead of storing everything in one large table, the system separates information into **9 interconnected entities**, each responsible for a specific business function.

The database manages:

- 👥 Customers
- 👨‍🍳 Employees
- 🪑 Restaurant tables
- 🗂️ Menu categories
- 🍔 Menu items
- 📅 Reservations
- 🛒 Orders
- 🍽️ Order items
- 💳 Payments

The project focuses heavily on **database design, relationships, constraints, normalization, CRUD operations, and analytical SQL queries**.

---

# 🎯 Project Objectives

The main objectives of this project are to:

- Design a realistic relational database from scratch
- Convert real-world restaurant requirements into database entities
- Establish meaningful relationships between entities
- Apply normalization principles
- Maintain data integrity using SQL constraints
- Implement primary and foreign keys
- Implement composite primary keys
- Implement one-to-many relationships
- Implement many-to-many relationships
- Populate the database with realistic restaurant data
- Perform CRUD operations
- Filter and sort data
- Group and aggregate data
- Use `HAVING` for grouped filtering
- Use conditional logic with `CASE`
- Use string and date functions
- Perform practical business-oriented SQL analysis

---

# ✨ Features

<table>
<tr>
<td width="50%">

## 🗄️ Database Design

- 9 relational tables
- Normalized schema
- Primary keys
- Foreign keys
- Composite primary key
- Referential integrity
- One-to-many relationships
- Many-to-many relationship

</td>

<td width="50%">

## 🔐 Data Integrity

- `PRIMARY KEY`
- `FOREIGN KEY`
- `UNIQUE`
- `NOT NULL`
- `CHECK`
- `DEFAULT`
- Business-rule validation

</td>
</tr>

<tr>
<td>

## 📊 SQL Querying

- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `CASE`

</td>

<td>

## 🛠️ Data Manipulation

- `INSERT`
- `UPDATE`
- `DELETE`
- String functions
- Date functions
- Data verification
- Business analysis

</td>
</tr>
</table>

---

# 🏗️ Database Architecture

The database consists of **9 interconnected tables**.

| # | Table | Responsibility |
|---:|---|---|
| 1 | `customers` | Customer information |
| 2 | `employees` | Restaurant staff |
| 3 | `categories` | Menu categories |
| 4 | `restaurant_tables` | Physical restaurant tables |
| 5 | `menu_items` | Food and beverage items |
| 6 | `reservations` | Customer reservations |
| 7 | `orders` | Customer orders |
| 8 | `order_items` | Individual items within orders |
| 9 | `payments` | Payment records |

---

# 🔗 Entity Relationships

The database uses **primary keys and foreign keys** to connect related entities.

## 📐 Relationship Diagram

```text
                         ┌────────────────────────┐
                         │       CUSTOMERS        │
                         ├────────────────────────┤
                         │ PK customer_id         │
                         │ first_name             │
                         │ last_name              │
                         │ phone                  │
                         │ email                  │
                         └───────────┬────────────┘
                                     │
                                  1  │  N
                                     │
                                     ▼
                         ┌────────────────────────┐
                         │      RESERVATIONS      │
                         ├────────────────────────┤
                         │ PK reservation_id      │
                         │ FK customer_id         │
                         │ FK table_id            │
                         │ reservation_date       │
                         │ reservation_time       │
                         │ number_of_guests       │
                         │ status                 │
                         └───────────┬────────────┘
                                     │
                                  N  │  1
                                     │
                                     ▼
                         ┌────────────────────────┐
                         │   RESTAURANT_TABLES    │
                         ├────────────────────────┤
                         │ PK table_id            │
                         │ table_number           │
                         │ capacity               │
                         │ status                 │
                         └────────────────────────┘


┌────────────────────────┐
│       EMPLOYEES        │
├────────────────────────┤
│ PK employee_id         │
│ first_name             │
│ last_name              │
│ role                   │
│ phone                  │
│ hire_date              │
└───────────┬────────────┘
            │
         1  │  N
            │
            ▼
┌────────────────────────┐
│         ORDERS         │
├────────────────────────┤
│ PK order_id            │
│ FK customer_id         │◄────────────── CUSTOMERS
│ FK employee_id         │
│ FK table_id            │
│ order_date             │
│ order_status           │
└──────────┬─────────────┘
           │
      ┌────┴─────┐
      │          │
   1  │  N    1  │  N
      │          │
      ▼          ▼
┌─────────────┐  ┌────────────────────────┐
│ ORDER_ITEMS │  │        PAYMENTS        │
├─────────────┤  ├────────────────────────┤
│ PK order_id │  │ PK payment_id          │
│ PK item_id  │  │ FK order_id            │
│ quantity    │  │ payment_date           │
│ unit_price  │  │ amount                 │
└──────┬──────┘  │ payment_method         │
       │         │ payment_status         │
    N  │  1      └────────────────────────┘
       │
       ▼
┌────────────────────────┐
│       MENU_ITEMS       │
├────────────────────────┤
│ PK item_id             │
│ FK category_id         │
│ item_name              │
│ description            │
│ price                  │
│ availability           │
└───────────┬────────────┘
            │
         N  │  1
            │
            ▼
┌────────────────────────┐
│       CATEGORIES       │
├────────────────────────┤
│ PK category_id         │
│ category_name          │
└────────────────────────┘
```

---

# 🔑 Relationship Summary

| Parent Table | Cardinality | Child Table |
|---|:---:|---|
| `customers` | **1 : N** | `reservations` |
| `restaurant_tables` | **1 : N** | `reservations` |
| `customers` | **1 : N** | `orders` |
| `employees` | **1 : N** | `orders` |
| `restaurant_tables` | **1 : N** | `orders` |
| `orders` | **1 : N** | `order_items` |
| `menu_items` | **1 : N** | `order_items` |
| `categories` | **1 : N** | `menu_items` |
| `orders` | **1 : N** | `payments` |

---

# ⭐ Many-to-Many Relationship

The most important many-to-many relationship in the database is:

```text
             N                         M
      ┌────────────┐             ┌────────────┐
      │   ORDERS   │─────────────│ MENU_ITEMS │
      └────────────┘             └────────────┘
             \                       /
              \                     /
               \                   /
                ▼                 ▼
                  ┌─────────────┐
                  │ ORDER_ITEMS │
                  └─────────────┘
```

An order can contain many menu items.

A menu item can belong to many different orders.

Therefore:

```text
ORDERS N : M MENU_ITEMS
```

is resolved using the junction table:

```text
ORDER_ITEMS
```

This is a fundamental relational database design pattern.

---

# 🗃️ Database Tables

## 👥 1. `customers`

Stores customer information.

| Column | Type | Constraint |
|---|---|---|
| `customer_id` | `INT` | PK, Auto Increment |
| `first_name` | `VARCHAR(50)` | NOT NULL |
| `last_name` | `VARCHAR(50)` | NOT NULL |
| `phone` | `VARCHAR(15)` | NOT NULL, UNIQUE |
| `email` | `VARCHAR(100)` | UNIQUE |

---

## 👨‍🍳 2. `employees`

Stores restaurant employee information.

| Column | Type | Constraint |
|---|---|---|
| `employee_id` | `INT` | PK, Auto Increment |
| `first_name` | `VARCHAR(50)` | NOT NULL |
| `last_name` | `VARCHAR(50)` | NOT NULL |
| `role` | `VARCHAR(30)` | NOT NULL |
| `phone` | `VARCHAR(15)` | NOT NULL, UNIQUE |
| `hire_date` | `DATE` | NOT NULL |

Example roles:

```text
Manager
Chef
Waiter
Cashier
```

---

## 🗂️ 3. `categories`

Stores menu categories.

| Column | Type | Constraint |
|---|---|---|
| `category_id` | `INT` | PK, Auto Increment |
| `category_name` | `VARCHAR(50)` | NOT NULL, UNIQUE |

Categories include:

```text
Starters
Main Course
Breads
Rice & Biryani
Desserts
Beverages
Fast Food
Chinese
```

---

## 🪑 4. `restaurant_tables`

Stores restaurant table information.

| Column | Type | Constraint |
|---|---|---|
| `table_id` | `INT` | PK, Auto Increment |
| `table_number` | `VARCHAR(10)` | NOT NULL, UNIQUE |
| `capacity` | `INT` | NOT NULL, CHECK |
| `status` | `VARCHAR(20)` | NOT NULL, DEFAULT |

Typical statuses:

```text
Available
Occupied
Reserved
```

---

## 🍔 5. `menu_items`

Stores restaurant food and beverage items.

| Column | Type | Constraint |
|---|---|---|
| `item_id` | `INT` | PK, Auto Increment |
| `category_id` | `INT` | FK, NOT NULL |
| `item_name` | `VARCHAR(100)` | NOT NULL |
| `description` | `VARCHAR(255)` | NULL |
| `price` | `DECIMAL(10,2)` | NOT NULL, CHECK |
| `availability` | `TINYINT(1)` | NOT NULL, DEFAULT |

Relationship:

```text
CATEGORIES
     │
     │ 1 : N
     ▼
MENU_ITEMS
```

---

## 📅 6. `reservations`

Stores customer table reservations.

| Column | Type | Constraint |
|---|---|---|
| `reservation_id` | `INT` | PK, Auto Increment |
| `customer_id` | `INT` | FK, NOT NULL |
| `table_id` | `INT` | FK, NOT NULL |
| `reservation_date` | `DATE` | NOT NULL |
| `reservation_time` | `TIME` | NOT NULL |
| `number_of_guests` | `INT` | NOT NULL, CHECK |
| `status` | `VARCHAR(20)` | NOT NULL, DEFAULT |

Reservation statuses:

```text
Confirmed
Completed
Cancelled
```

---

## 🛒 7. `orders`

Stores customer orders.

| Column | Type | Constraint |
|---|---|---|
| `order_id` | `INT` | PK, Auto Increment |
| `customer_id` | `INT` | FK, NOT NULL |
| `employee_id` | `INT` | FK, NOT NULL |
| `table_id` | `INT` | FK, NULL |
| `order_date` | `DATETIME` | NOT NULL, DEFAULT |
| `order_status` | `VARCHAR(20)` | NOT NULL, DEFAULT |

Order statuses:

```text
Pending
Preparing
Completed
Cancelled
```

### 🥡 Takeaway Support

`table_id` is nullable.

Therefore:

```text
Dine-in
    │
    └── table_id = restaurant table

Takeaway
    │
    └── table_id = NULL
```

This allows one order table to support both dine-in and takeaway orders.

---

## 🍽️ 8. `order_items`

Stores the individual menu items belonging to an order.

| Column | Type | Constraint |
|---|---|---|
| `order_id` | `INT` | PK, FK |
| `item_id` | `INT` | PK, FK |
| `quantity` | `INT` | NOT NULL |
| `unit_price` | `DECIMAL(10,2)` | NOT NULL |

### Composite Primary Key

```sql
PRIMARY KEY (order_id, item_id)
```

The combination of:

```text
order_id + item_id
```

uniquely identifies an item inside an order.

---

## 💳 9. `payments`

Stores payment information.

| Column | Type | Constraint |
|---|---|---|
| `payment_id` | `INT` | PK, Auto Increment |
| `order_id` | `INT` | FK, NOT NULL |
| `payment_date` | `DATETIME` | NOT NULL, DEFAULT |
| `amount` | `DECIMAL(10,2)` | NOT NULL, CHECK |
| `payment_method` | `VARCHAR(20)` | NOT NULL |
| `payment_status` | `VARCHAR(20)` | NOT NULL, DEFAULT |

Payment methods:

```text
Cash
Card
UPI
```

Payment statuses:

```text
Pending
Completed
Failed
Refunded
```

---

# 🔐 Constraints & Data Integrity

The database uses multiple SQL constraints to maintain consistency and prevent invalid data.

## 🔑 Primary Key

Every major entity has a unique identifier.

```text
customers.customer_id
employees.employee_id
categories.category_id
restaurant_tables.table_id
menu_items.item_id
reservations.reservation_id
orders.order_id
payments.payment_id
```

`order_items` uses:

```sql
PRIMARY KEY (order_id, item_id)
```

---

## 🔗 Foreign Key

Foreign keys enforce relationships between tables.

Examples:

```text
menu_items.category_id
        ↓
categories.category_id
```

```text
orders.customer_id
        ↓
customers.customer_id
```

```text
orders.employee_id
        ↓
employees.employee_id
```

```text
orders.table_id
        ↓
restaurant_tables.table_id
```

```text
payments.order_id
        ↓
orders.order_id
```

---

## ⭐ UNIQUE

The following fields are protected against duplicate values:

- Customer phone
- Customer email
- Employee phone
- Table number
- Category name

Example:

```sql
phone VARCHAR(15) NOT NULL UNIQUE
```

---

## 🚫 NOT NULL

Required information cannot be omitted.

Examples:

```text
Customer first name
Customer last name
Customer phone
Employee role
Menu item price
Order customer
Payment amount
```

---

## ✅ CHECK

Business rules are enforced at database level.

Examples:

```sql
CHECK (capacity > 0)
```

```sql
CHECK (price > 0)
```

```sql
CHECK (number_of_guests > 0)
```

```sql
CHECK (amount > 0)
```

---

## ⚙️ DEFAULT

Default values are used for operational fields.

Examples:

```sql
status DEFAULT 'Available'
```

```sql
status DEFAULT 'Confirmed'
```

```sql
order_status DEFAULT 'Pending'
```

```sql
payment_status DEFAULT 'Completed'
```

```sql
availability DEFAULT TRUE
```

---

# 📊 Dataset

The supplied population script contains realistic sample records.

| Table | Records |
|---|---:|
| 👥 `customers` | **12** |
| 👨‍🍳 `employees` | **8** |
| 🗂️ `categories` | **8** |
| 🪑 `restaurant_tables` | **10** |
| 🍔 `menu_items` | **28** |
| 📅 `reservations` | **10** |
| 🛒 `orders` | **12** |
| 🍽️ `order_items` | **47** |
| 💳 `payments` | **12** |

### 🍴 Example Menu Items

The dataset includes realistic restaurant items such as:

- Chicken Biryani
- Butter Chicken
- Paneer Tikka
- Mutton Biryani
- Gulab Jamun
- Coca Cola
- Veg Hakka Noodles
- Chicken Fried Rice

---

# 💻 SQL Operations

The project demonstrates the fundamental SQL operations required for practical database management.

---

## 🟢 INSERT

Used to add new records.

```sql
INSERT INTO customers
(first_name, last_name, phone, email)
VALUES
('Ramtanay', 'Chakraborty',
 '9876500001',
 'ramtanay@gmail.com');
```

---

## 🟡 UPDATE

Used to modify existing records.

```sql
UPDATE customers
SET phone = '9876500099'
WHERE customer_id = 12;
```

Example of updating menu pricing:

```sql
UPDATE menu_items
SET price = 270.00
WHERE item_name = 'Chicken Biryani';
```

---

## 🔴 DELETE

Used to remove records.

```sql
DELETE FROM customers
WHERE phone = '9999999999';
```

---

## 🔵 SELECT

Retrieve data from tables.

```sql
SELECT *
FROM customers;
```

---

## 🔎 WHERE

Filter records.

```sql
SELECT
    item_name,
    price
FROM menu_items
WHERE price BETWEEN 150 AND 300;
```

---

## ↕️ ORDER BY

Sort query results.

```sql
SELECT
    item_name,
    price
FROM menu_items
ORDER BY price DESC;
```

---

## 📦 GROUP BY

Group records for analysis.

```sql
SELECT
    category_id,
    COUNT(*) AS number_of_items
FROM menu_items
GROUP BY category_id;
```

---

## 🎯 HAVING

Filter grouped results.

```sql
SELECT
    payment_method,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_method
HAVING SUM(amount) > 2000;
```

### WHERE vs HAVING

```text
WHERE
  ↓
Filters individual rows

GROUP BY
  ↓
Creates groups

HAVING
  ↓
Filters groups
```

---

# 📈 Aggregate Functions

The project demonstrates:

```text
COUNT()
SUM()
AVG()
MIN()
MAX()
```

### Count Customers

```sql
SELECT
    COUNT(*) AS total_customers
FROM customers;
```

### Total Completed Revenue

```sql
SELECT
    SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Completed';
```

### Average Menu Price

```sql
SELECT
    AVG(price) AS average_price
FROM menu_items;
```

### Cheapest Item

```sql
SELECT
    MIN(price) AS minimum_price
FROM menu_items;
```

### Most Expensive Item

```sql
SELECT
    MAX(price) AS maximum_price
FROM menu_items;
```

---

# 🧠 CASE Expression

`CASE` is used to implement conditional logic.

Example:

```sql
SELECT
    item_name,
    price,
    CASE
        WHEN price < 150 THEN 'Budget'
        WHEN price BETWEEN 150 AND 250 THEN 'Moderate'
        ELSE 'Premium'
    END AS price_category
FROM menu_items;
```

This converts numerical prices into useful business categories.

---

# 🔤 String Functions

The project demonstrates string manipulation.

## CONCAT()

```sql
SELECT
    CONCAT(first_name, ' ', last_name) AS customer_name,
    phone
FROM customers;
```

## UPPER()

```sql
SELECT
    UPPER(item_name) AS item_name
FROM menu_items;
```

## LOWER()

```sql
SELECT
    LOWER(email) AS email
FROM customers;
```

---

# 📅 Date Functions

The database contains several date/time fields:

- Reservation date
- Reservation time
- Employee hire date
- Order date/time
- Payment date/time

### YEAR()

```sql
SELECT
    order_id,
    YEAR(order_date) AS order_year
FROM orders;
```

### MONTH()

```sql
SELECT
    order_id,
    MONTH(order_date) AS order_month
FROM orders;
```

---

# 🔎 Practical SQL Analytics

## 💰 Total Completed Revenue

```sql
SELECT
    SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Completed';
```

---

## 💳 Revenue by Payment Method

```sql
SELECT
    payment_method,
    SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Completed'
GROUP BY payment_method
ORDER BY total_revenue DESC;
```

---

## 🍔 Menu Items by Category

```sql
SELECT
    c.category_name,
    COUNT(m.item_id) AS item_count
FROM categories c
JOIN menu_items m
    ON c.category_id = m.category_id
GROUP BY
    c.category_id,
    c.category_name
ORDER BY item_count DESC;
```

---

## 👥 Customers with Multiple Orders

```sql
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING COUNT(o.order_id) > 1;
```

---

## 🛒 Order Total

```sql
SELECT
    order_id,
    SUM(quantity * unit_price) AS order_total
FROM order_items
GROUP BY order_id
ORDER BY order_total DESC;
```

---

# 🧠 Normalization

The database follows a structured relational design intended to reduce redundancy.

## 1️⃣ First Normal Form — 1NF

Each field stores an atomic value.

Instead of:

```text
Order_ID | Item_1 | Item_2 | Item_3
```

the project uses:

```text
order_id
item_id
quantity
```

inside `order_items`.

---

## 2️⃣ Second Normal Form — 2NF

Data that belongs to a specific entity is separated into its appropriate table.

For example:

```text
MENU_ITEMS
├── item_id
├── item_name
├── description
└── price
```

while order-specific information is stored separately:

```text
ORDER_ITEMS
├── order_id
├── item_id
├── quantity
└── unit_price
```

---

## 3️⃣ Third Normal Form — 3NF

Category information is separated from menu item information.

Instead of:

```text
MENU_ITEMS
├── item_id
├── item_name
├── category_id
└── category_name
```

the project uses:

```text
CATEGORIES
├── category_id
└── category_name
```

and:

```text
MENU_ITEMS
├── item_id
├── category_id
├── item_name
└── price
```

This minimizes repeated category information.

---

# 💡 Important Design Decisions

## 🍽️ Why `order_items` Exists

A restaurant order can contain many menu items.

A menu item can appear in many different orders.

Therefore:

```text
ORDERS N : M MENU_ITEMS
```

requires a junction table:

```text
ORDER_ITEMS
```

This avoids creating columns such as:

```text
item_1
item_2
item_3
item_4
...
```

and makes the system scalable.

---

## 💰 Why `unit_price` Exists in `order_items`

There are two different prices:

```text
menu_items.price
        ↓
Current menu price
```

and:

```text
order_items.unit_price
        ↓
Price charged when the order was created
```

This preserves historical pricing.

For example:

```text
Current Chicken Biryani Price
₹300

Historical Order Price
₹250
```

The old order should still show ₹250 even after the menu price changes.

---

## 🥡 Why `table_id` Can Be NULL

Not every restaurant order is a dine-in order.

The database supports:

```text
Dine-in
   ↓
table_id = 5
```

and:

```text
Takeaway
   ↓
table_id = NULL
```

This makes the order model more flexible.

---

# 📁 Project Structure

```text
Restaurant-Management-SQL/
│
├── SQL_PROJECT.sql
│   ├── Database creation
│   ├── Table creation
│   ├── Primary keys
│   ├── Foreign keys
│   ├── UNIQUE constraints
│   ├── NOT NULL constraints
│   ├── CHECK constraints
│   └── DEFAULT values
│
├── POPULATE.sql
│   ├── Sample data
│   ├── INSERT
│   ├── UPDATE
│   ├── DELETE
│   ├── SELECT
│   ├── WHERE
│   ├── ORDER BY
│   ├── GROUP BY
│   ├── HAVING
│   ├── Aggregate functions
│   ├── CASE
│   ├── String functions
│   └── Date functions
│
└── README.md
    └── Project documentation
```

---

# 🚀 Installation & Setup

## Prerequisites

Make sure you have:

- MySQL 8.0+
- MySQL Shell or MySQL Workbench
- Git

Check MySQL:

```bash
mysql --version
```

---

## 1️⃣ Create the Database

Open MySQL and execute:

```sql
SOURCE path/to/SQL_PROJECT.sql;
```

The script creates:

```text
restaurant_management
```

and the complete table structure.

---

## 2️⃣ Populate the Database

After creating the tables:

```sql
SOURCE path/to/POPULATE.sql;
```

This inserts the sample restaurant data and runs the included SQL demonstrations.

---

## 3️⃣ Select the Database

```sql
USE restaurant_management;
```

---

## 4️⃣ Verify the Tables

```sql
SHOW TABLES;
```

Expected:

```text
categories
customers
employees
menu_items
order_items
orders
payments
reservations
restaurant_tables
```

---

# 🔍 Verification Queries

## View Customers

```sql
SELECT *
FROM customers;
```

## View Employees

```sql
SELECT *
FROM employees;
```

## View Menu

```sql
SELECT *
FROM menu_items;
```

## View Reservations

```sql
SELECT *
FROM reservations;
```

## View Orders

```sql
SELECT *
FROM orders;
```

## View Order Items

```sql
SELECT *
FROM order_items;
```

## View Payments

```sql
SELECT *
FROM payments;
```

---

# 🧪 Inspect Table Definitions

Use:

```sql
DESCRIBE customers;
```

```sql
DESCRIBE employees;
```

```sql
DESCRIBE categories;
```

```sql
DESCRIBE restaurant_tables;
```

```sql
DESCRIBE menu_items;
```

```sql
DESCRIBE reservations;
```

```sql
DESCRIBE orders;
```

```sql
DESCRIBE order_items;
```

```sql
DESCRIBE payments;
```

For complete constraint information:

```sql
SHOW CREATE TABLE orders;
```

```sql
SHOW CREATE TABLE order_items;
```

```sql
SHOW CREATE TABLE payments;
```

---

# 🗺️ Roadmap

## ✅ Completed

- [x] Database requirements analysis
- [x] Entity identification
- [x] Relationship design
- [x] 9 relational tables
- [x] Primary keys
- [x] Foreign keys
- [x] Composite primary key
- [x] UNIQUE constraints
- [x] NOT NULL constraints
- [x] CHECK constraints
- [x] DEFAULT values
- [x] Realistic sample data
- [x] INSERT operations
- [x] UPDATE operations
- [x] DELETE operations
- [x] SELECT queries
- [x] WHERE filtering
- [x] ORDER BY sorting
- [x] GROUP BY
- [x] HAVING
- [x] Aggregate functions
- [x] CASE expressions
- [x] String functions
- [x] Date functions
- [x] Data verification queries

## 🚧 Future Improvements

- [ ] Advanced JOIN queries
- [ ] Subqueries
- [ ] Common Table Expressions (CTEs)
- [ ] Window functions
- [ ] SQL Views
- [ ] Stored Procedures
- [ ] SQL Functions
- [ ] Triggers
- [ ] Index optimization
- [ ] Query performance analysis
- [ ] Advanced revenue analysis
- [ ] Best-selling item analysis
- [ ] Customer segmentation
- [ ] Employee performance analysis
- [ ] Reservation trend analysis
- [ ] Python integration
- [ ] Power BI dashboard
- [ ] Restaurant analytics dashboard

---

# 🎓 Learning Outcomes

This project demonstrates practical understanding of:

### 🗄️ Database Design

- Entity identification
- Relational modeling
- Normalization
- One-to-many relationships
- Many-to-many relationships
- Junction tables
- Composite keys
- Referential integrity

### 💻 SQL

- DDL
- DML
- DQL
- CRUD operations
- Constraints
- Filtering
- Sorting
- Grouping
- Aggregation
- Conditional expressions
- String manipulation
- Date manipulation

### 🔐 Data Integrity

- Primary key enforcement
- Foreign key enforcement
- Unique constraints
- Required fields
- Check constraints
- Default values
- Business-rule validation

---

# 💡 Future Business Questions

This database can be extended to answer real-world restaurant business questions.

## 🍔 Menu Analytics

- Which menu items are ordered most frequently?
- Which category contains the most items?
- Which menu items generate the highest revenue?
- Which menu items are unavailable?
- What is the average menu price?

## 💰 Revenue Analytics

- What is the total completed revenue?
- Which payment method generates the most revenue?
- What is the average order value?
- Which orders have the highest value?
- What is the revenue by category?

## 👥 Customer Analytics

- Which customers place the most orders?
- Which customers spend the most?
- Which customers make the most reservations?
- Which customers are returning customers?

## 🪑 Restaurant Analytics

- Which tables are currently occupied?
- Which tables are reserved?
- Which tables have the highest capacity?
- Which tables are used most frequently?

## 👨‍🍳 Employee Analytics

- Which employees handle the most orders?
- Which employees are waiters?
- Which employees are chefs?
- Which employees have the longest tenure?

---

# 🛠️ Technology Stack

<p align="center">

<img src="https://img.shields.io/badge/MySQL-8.0%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
<img src="https://img.shields.io/badge/SQL-Database-F29111?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">
<img src="https://img.shields.io/badge/Git-Version%20Control-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
<img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">

</p>

| Technology | Purpose |
|---|---|
| 🐬 **MySQL 8.0+** | Relational Database Management System |
| 📜 **SQL** | Database design, manipulation and analysis |
| 🐙 **Git** | Version control |
| 🐙 **GitHub** | Repository hosting |

---

# 🌟 Why This Project Matters

This project goes beyond simply creating tables.

It demonstrates the complete database-design thought process:

```text
                 REAL-WORLD PROBLEM
                         │
                         ▼
                BUSINESS ENTITIES
                         │
                         ▼
                  RELATIONSHIPS
                         │
                         ▼
                    NORMALIZATION
                         │
                         ▼
                 DATABASE SCHEMA
                         │
                         ▼
                    CONSTRAINTS
                         │
                         ▼
                    SAMPLE DATA
                         │
                         ▼
                   SQL QUERIES
                         │
                         ▼
                  BUSINESS INSIGHTS
```

The project therefore demonstrates both **database engineering fundamentals** and **practical SQL analysis**.

---

# 👨‍💻 Author

<p align="center">

## Ramtanay Chakraborty

**Computer Science & Engineering**

`Python` • `SQL` • `Data Analytics` • `AI/ML`

<br>

<a href="https://github.com/ramtanay">
  <img src="https://img.shields.io/badge/GitHub-ramtanay-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</a>

</p>

---

# ⭐ Support

If you found this project useful or interesting, consider giving the repository a ⭐ on GitHub.

---

<p align="center">

## 🍽️ Restaurant Management System

### Designed with SQL • Built with MySQL • Driven by Data

<br>

<i>Turning real-world restaurant operations into a structured relational database.</i>

</p>
