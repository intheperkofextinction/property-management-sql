--Simulate a Bug Report
--"Tenant Ravi is not showing in the monthly report."

-- Debug checklist:
--Are you using INNER JOIN where LEFT JOIN is needed?
--Are you filtering by date like WHERE date = '2025-04-01' and missing other dates?
--Are you accidentally joining on wrong columns?
--Is there a duplicate or overwritten property?

SELECT 
    r.name, 
    p.address, 
    pay.date AS payment_date, 
    COALESCE(pay.amount, 0) AS amount_paid
FROM 
    residents r
JOIN 
    properties p ON r.property_id = p.id
LEFT JOIN 
    payments pay ON r.id = pay.resident_id AND pay.date >= '2025-04-01';


--Bug Fix Report
--Problem: Tenant Ravi missing from monthly report.
--Suspected Causes:
--Used INNER JOIN and Ravi had no payment for the given month.
--Date filter too strict.
--Fix:

--Use LEFT JOIN instead of INNER JOIN.

--Filter date range using BETWEEN or >=.
