# DronePayIn - SQL Project

A MySQL database project for a digital payment system. The project models users, bank accounts, beneficiaries, payment categories, and account-to-account transactions.

## Features

- User and account management
- Beneficiary management
- Payment categories
- Account-to-account money transfer
- Sender balance deduction and receiver balance update
- Transaction history
- COMMIT and ROLLBACK examples
- JOINs, subqueries, aggregate functions and CASE expressions
- Primary keys, foreign keys, UNIQUE, NOT NULL, DEFAULT and CHECK constraints

## Database

MySQL / MySQL Workbench

## SQL Files

- `01_create_database.sql` - creates the database
- `02_create_tables.sql` - creates all tables and relationships
- `03_insert_data.sql` - inserts sample data
- `04_transactions.sql` - demonstrates a real transfer and rollback
- `05_queries.sql` - reporting and interview-level queries

## Main Relationships

`users -> accounts -> transactions`

`users -> beneficiaries`

`transactions -> categories`

## Example Transfer

Ravi (ACC1001) sends ₹5,000 to Sita (ACC1002).

The transaction updates both account balances and records the transfer in the `transactions` table inside a database transaction.
