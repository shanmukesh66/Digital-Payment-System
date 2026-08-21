USE dronepay_db;

-- Successful transfer: Ravi sends 5,000 to Sita
START TRANSACTION;

UPDATE accounts
SET balance = balance - 5000.00
WHERE acc_id = 1 AND balance >= 5000.00;

UPDATE accounts
SET balance = balance + 5000.00
WHERE acc_id = 2;

INSERT INTO transactions
(sender_account_id, receiver_account_id, amount, transaction_type, status, category_id)
VALUES
(1, 2, 5000.00, 'TRANSFER', 'SUCCESS', 2);

COMMIT;

-- Rollback example: attempted deduction is cancelled
START TRANSACTION;

UPDATE accounts
SET balance = balance - 2000.00
WHERE acc_id = 1;

SELECT acc_id, acc_number, balance
FROM accounts
WHERE acc_id = 1;

ROLLBACK;

-- Check final balances
SELECT acc_id, acc_number, balance
FROM accounts
ORDER BY acc_id;
