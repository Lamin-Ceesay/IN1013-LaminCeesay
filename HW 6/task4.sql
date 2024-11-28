--1
SELECT DISTINCT cust_name
FROM restBill
WHERE bill_total > 450.00 AND waiter_no IN (
SELECT staff_no
FROM restStaff
WHERE headwaiter = (
SELECT staff_no
FROM restStaff
WHERE first_name = 'Charles')
);

--2
SELECT first_name, surname
FROM restStaff
WHERE staff_no = (
SELECT headwaiter
FROM restStaff
WHERE staff_no = (
SELECT waiter_no
FROM restBill
WHERE cust_name = 'Nerida Smith'AND bill_date = 160111)
);

--3
SELECT cust_name
FROM restbill
WHERE bill_total IN(
SELECT MIN(bill_total)
FROM restbill
);

--4
SELECT first_name
FROM reststaff
WHERE NOT EXISTS(SELECT *
FROM restbill
WHERE waiter_no = staff_no);

--5
SELECT first_name, surname
FROM restStaff
WHERE staff_no = (
SELECT headwaiter
FROM restRoom_management
WHERE room_name = (
SELECT room_name
FROM restRest_table
WHERE table_no = (
SELECT table_no
FROM restBill
WHERE bill_total = (
SELECT MAX(bill_total)
FROM restBill
)LIMIT 1)LIMIT 1)LIMIT 1);