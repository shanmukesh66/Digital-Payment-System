USE dronepay_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ACTIVE'
);

CREATE TABLE accounts (
    acc_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    acc_number VARCHAR(50) NOT NULL UNIQUE,
    balance DECIMAL(15,2) NOT NULL,
    status VARCHAR(50) DEFAULT 'ACTIVE',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(150)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_account_id INT NOT NULL,
    receiver_account_id INT NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    transaction_type VARCHAR(30) NOT NULL,
    status VARCHAR(20) DEFAULT 'PENDING',
    category_id INT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_account_id) REFERENCES accounts(acc_id),
    FOREIGN KEY (receiver_account_id) REFERENCES accounts(acc_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    CHECK (amount > 0),
    CHECK (status IN ('PENDING', 'SUCCESS', 'FAILED'))
);

CREATE TABLE beneficiaries (
    beneficiary_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    beneficiary_name VARCHAR(100) NOT NULL,
    account_number VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ACTIVE',
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
