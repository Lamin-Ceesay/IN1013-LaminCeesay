-- 1
SELECT SUM(bill_total) AS income
FROM restbill;

-- 2
SELECT SUM(bill_total) AS "Feb income"
FROM restbill
WHERE bill_date LIKE "1602%";

-- 3
SELECT SUM(bill_total) AS "Feb income"
FROM restbill
WHERE bill_date LIKE "1602%";

-- 4
SELECT MIN(no_of_seats) AS Min, MAX(no_of_seats) AS Max, AVG(no_of_seats) AS Avg
FROM restrest_table
WHERE room_name LIKE "Blue";

-- 5
SELECT COUNT( DISTINCT table_no, waiter_no)
FROM restbill
WHERE waiter_no LIKE "2" OR waiter_no LIKE "4";
