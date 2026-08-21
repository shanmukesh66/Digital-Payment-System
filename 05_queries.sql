USE dronepay_db;

-- 1. View all users
SELECT * FROM users;

-- 2. View all accounts
SELECT * FROM accounts;

-- 3. Users with account balances above the average balance
SELECT u.name, a.acc_number, a.balance AS current_balance
FROM users u
JOIN accounts a ON u.user_id = a.user_id
WHERE a.balance > (SELECT AVG(balance) FROM accounts);

-- 4. Transaction history for a user
SELECT
    u.name,
    a.acc_number,
    t.amount,
    t.transaction_type,
    t.status,
    CASE
        WHEN a.acc_id = t.sender_account_id THEN 'SENT'
        WHEN a.acc_id = t.receiver_account_id THEN 'RECEIVED'
    END AS transaction_direction
FROM users u
JOIN accounts a ON u.user_id = a.user_id
JOIN transactions t
    ON a.acc_id = t.sender_account_id
    OR a.acc_id = t.receiver_account_id
WHERE u.user_id = 1;

-- 5. Complete account and transaction report
SELECT
    u.user_id,
    u.name,
    a.acc_number,
    a.balance,
    t.transaction_id,
    t.amount,
    t.transaction_type,
    t.status,
    c.category_name,
    t.created_at
FROM users u
JOIN accounts a ON u.user_id = a.user_id
LEFT JOIN transactions t
    ON a.acc_id = t.sender_account_id
    OR a.acc_id = t.receiver_account_id
LEFT JOIN categories c
    ON t.category_id = c.category_id
ORDER BY u.user_id, t.created_at;

-- 6. Successful transactions
SELECT * FROM transactions
WHERE status = 'SUCCESS';

-- 7. Total successful transfer amount
SELECT SUM(amount) AS total_successful_amount
FROM transactions
WHERE status = 'SUCCESS';
