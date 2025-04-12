--summary report
SELECT 
    p.address, 
    SUM(pay.amount) AS total_collected
FROM 
    properties p
JOIN 
    residents r ON p.id = r.property_id
JOIN 
    payments pay ON r.id = pay.resident_id
GROUP BY 
    p.address;