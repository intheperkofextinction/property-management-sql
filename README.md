
# 🏠 Property Management SQL Project

This mini project simulates a basic property management system using SQL.  
It tracks tenants (residents), properties, and payment history — and generates insights like rent collection reports.

## 📊 Schema

- **Residents**: Resident info linked to a property
- **Properties**: Address, type, rent
- **Payments**: Payment history by resident

## 📁 Files

- `schema.sql` – Table creation
- `data.sql` – Dummy data
- `queries.sql` – Intermediate queries & bug fixing
- `summary-report.sql` – Final working query for rent collected per property

## ✅ Sample Query: Summary Report

```sql
SELECT 
    p.address, 
    SUM(pay.amount) AS total_collected
FROM 
    properties p
JOIN 
    residents r ON p.id = r.property_id
JOIN 
    payments pay ON r.id = pay.tenant_id
GROUP BY 
    p.address;
