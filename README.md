# Digital Payment System - SQL Project

## Project Overview

This project is a MySQL database implementation of a digital payment system. It is designed to demonstrate practical SQL and database concepts used in real-world payment applications.

The project focuses on managing users, accounts, beneficiaries, payment categories, and account-to-account transactions while maintaining data consistency.

## Key Features

- User management
- Bank/account management
- Beneficiary management
- Payment categories
- Account-to-account money transfers
- Sender balance deduction
- Receiver balance update
- Transaction history
- Successful and failed transaction handling
- COMMIT and ROLLBACK
- SQL JOINs
- Subqueries
- Aggregate functions
- CASE expressions
- Primary and foreign key relationships
- UNIQUE, NOT NULL, DEFAULT and CHECK constraints

## Database Design

The main entities are:

- **Users** - stores customer information
- **Accounts** - stores account numbers and balances
- **Transactions** - records money transfers between accounts
- **Beneficiaries** - stores saved payment beneficiaries
- **Categories** - classifies payment transactions

### Relationships

```text
Users
  |
  +---- Accounts
  |       |
  |       +---- Transactions
  |
  +---- Beneficiaries

Transactions ---- Categories
```

## Transaction Flow

A typical transfer works as follows:

1. A sender initiates a transfer.
2. The sender's account balance is reduced.
3. The receiver's account balance is increased.
4. The transaction is recorded in the transaction table.
5. `COMMIT` permanently saves the changes.
6. `ROLLBACK` can cancel changes when a transaction needs to be reverted.

Example:

```text
Sender:   ACC1001
Receiver: ACC1002
Amount:   ₹5,000

Sender Balance:   ₹50,000 → ₹45,000
Receiver Balance: ₹30,000 → ₹35,000
```

## SQL Concepts Demonstrated

### DDL
- CREATE DATABASE
- CREATE TABLE

### DML
- INSERT
- UPDATE
- SELECT

### Constraints
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- DEFAULT
- CHECK

### Query Concepts
- INNER JOIN
- LEFT JOIN
- Subqueries
- AVG()
- SUM()
- CASE
- ORDER BY
- WHERE

### Transaction Management
- START TRANSACTION
- COMMIT
- ROLLBACK

## Project Structure

```text
Digital-Payment-System/
│
├── README.md
│
├── 01_create_database.sql
├── 02_create_tables.sql
├── 03_insert_data.sql
├── 04_transactions.sql
└── 05_queries.sql
```

## How to Run

1. Install MySQL and MySQL Workbench.
2. Open MySQL Workbench.
3. Run `01_create_database.sql`.
4. Run `02_create_tables.sql`.
5. Run `03_insert_data.sql`.
6. Run `04_transactions.sql`.
7. Run `05_queries.sql`.

Run the scripts in the above order because later scripts depend on the database objects and sample data created earlier.

## Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## Learning Outcomes

This project helped me practice relational database design, SQL querying, table relationships, transaction management, data integrity, and writing queries for real-world payment-system scenarios.

## Author

**Kalva Shanmukesh**

Computer Science Engineering
