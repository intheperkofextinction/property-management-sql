SELECT 
    r.id AS resident_id,
    r.name,
    r.phone,
    p.address,
    p.type,
    p.rent,
    pay.date AS last_payment_date,
    pay.amount
FROM 
    residents r
JOIN 
    properties p ON r.property_id = p.id
LEFT JOIN 
    payments pay ON r.id = pay.resident_id;
