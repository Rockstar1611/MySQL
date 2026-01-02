SELECT CURDATE();                               -- Current date
SELECT DATE(NOW());                             -- Extract date from current timestamp
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);         -- Add 1 day
SELECT DATE_SUB(NOW(), INTERVAL 1 DAY);         -- Subtract 1 day
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');          -- Format date
SELECT YEAR(NOW());                             -- Extract year
SELECT ADDDATE(NOW(), INTERVAL 1 MONTH);        -- Add 1 month
SELECT ADDDATE(NOW(), INTERVAL 1 YEAR);         -- Add 1 year
SELECT TIMESTAMPDIFF(MONTH, '2025-01-01', '2026-01-01');
