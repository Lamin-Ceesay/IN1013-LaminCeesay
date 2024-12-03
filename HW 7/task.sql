--1
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restStaff
JOIN restbill
ON staff_no = waiter_no
WHERE staff_no = 4;

--2
SELECT *
FROM samsBills
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals
AS SELECT room_name, SUM(bill_total) AS total_sum
FROM restrest_table
JOIN restbill
ON restbill.table_no = restrest_table.table_no
GROUP BY room_name;

--4
CREATE VIEW teamTotals
AS SELECT CONCAT(headwaiter.first_name, ' ', headwaiter.surname) AS headwaiter_name, SUM(bill_total) AS total_sum
FROM reststaff
JOIN restbill
ON reststaff.staff_no = restbill.waiter_no
JOIN restStaff AS headwaiter
ON restStaff.headwaiter = headwaiter.staff_no
GROUP BY headwaiter.first_name, headwaiter.surname ;