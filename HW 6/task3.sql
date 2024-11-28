--1
SELECT first_name
FROM reststaff
JOIN restbill
ON reststaff.staff_no = restbill.waiter_no
WHERE cust_name LIKE 'Tanya Singh';

--2
SELECT room_date
FROM restRoom_management
WHERE room_date LIKE "1602%" AND headwaiter LIKE "10";

--3
SELECT first_name, surname
FROM reststaff
WHERE headwaiter LIKE "5";

--4
SELECT cust_name, bill_total, first_name
FROM restbill
JOIN reststaff
ON restbill.waiter_no = reststaff.staff_no
ORDER BY bill_total desc;

--5
SELECT first_name, surname
FROM reststaff
WHERE headwaiter LIKE "5" OR headwaiter LIKE "10"


--6
SELECT DISTINCT first_name, surname
FROM reststaff
JOIN restBill
ON restBill.waiter_no = reststaff.staff_no
WHERE bill_date LIKE "160312" AND table_no <= 3;

