# Restaurant Billing Website

This is a restaurant billing website developed using JSP, Java, JDBC, and SQL. It provides functionalities for both users and admins. Users can register, log in, add food items to their cart, and view their total amount. Admins can manage the food items by adding, deleting, or modifying them.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Database Schema](#database-schema)
- [Usage](#usage)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)

## Features
### User Features
- **User Registration**: Users can register themselves by providing their details.
- **User Login**: Users can log in using their credentials.
- **Add Food Items to Cart**: Users can browse and add food items to their cart.
- **View Cart**: Users can view the items in their cart along with the total amount.
- **Checkout**: Users can proceed to checkout or continue adding more items.

### Admin Features
- **Admin Login**: Admins can log in using their credentials.
- **Add Food Items**: Admins can add new food items to the menu.
- **Delete Food Items**: Admins can remove food items from the menu.
- **Modify Food Items**: Admins can update the details of existing food items.

## Technologies Used
- **Frontend**: HTML, CSS, JSP
- **Backend**: Java, JDBC
- **Database**: SQL (MySQL or any other relational database)
- **Web Server**: Apache Tomcat


## Database Schema
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, 
    customer_name VARCHAR(50) NOT NULL,
    customer_emailID VARCHAR(50) NOT NULL UNIQUE,
    customer_password VARCHAR(50) NOT NULL,
    customer_address VARCHAR(200)
);

CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_emailID VARCHAR(50) NOT NULL UNIQUE,
    admin_password VARCHAR(50) NOT NULL
);

CREATE TABLE drinks (
    drink_id INT AUTO_INCREMENT PRIMARY KEY,
    drink_name VARCHAR(40) NOT NULL,
    drink_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE food (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(40) NOT NULL,
    food_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE totalOrder (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_bill DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE drinkOrder (
    DO_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    drink_id INT,
    qty INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES totalOrder(order_id),
    FOREIGN KEY (drink_id) REFERENCES drinks(drink_id)
);

CREATE TABLE foodOrder (
    FO_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    food_id INT,
    qty INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES totalOrder(order_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

## Usage
### User Registration
- Navigate to the registration page.
- Fill in your details and submit the form.
- Log in using your credentials.
### Adding Food Items to Cart
- Browse the menu and add items to your cart.
- View your cart to see the total amount.
- Proceed to checkout or continue adding more items.
### Admin Management
- Log in as an admin.
- Navigate to the admin panel to add, delete, or modify food items.

## Future Enhancements
- Order History: Allow users to view their past orders.
- Payment Integration: Integrate payment gateways for online payments.
- Enhanced Security: Implement password hashing and other security measures.
## Contributins
Contributions are welcome! Please fork the repository and submit a pull request for review.
