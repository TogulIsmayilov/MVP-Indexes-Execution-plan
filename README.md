# SQL Query Performance Test Project

This project tests the performance of different SQL queries and demonstrates how to optimize them.  
Goal: **Track Logical/Physical Reads, CPU time, and Elapsed time** and show the impact of using indexes.

---

## 1. Test Environment
- SQL Server Version: (insert version)  
- Tables: `CUSTOMERS`, `ORDERS`, etc.  
- Sample query: `SELECT * FROM CUSTOMERS WHERE CustomerID = 123;`

---

## 2. Enabling Statistics
Before running queries, the following commands were used:

```sql
SET STATISTICS IO ON;
SET STATISTICS TIME ON;

# SQL Query Performance Test Project

Bu layihədə müxtəlif sorğuların performansını ölçmək və optimallaşdırmaq üçün testlər aparılmışdır. Məqsəd: **Logical/Physical Reads, CPU və Elapsed Time** göstəricilərini izləmək və index istifadəsinin faydasını göstərmək.

---

## 1. Test mühiti
- SQL Server versiyası: (buraya yaz)  
- Table-lar: `CUSTOMERS`, `ORDERS` və s.  
- Sorğu nümunəsi: `SELECT * FROM CUSTOMERS WHERE CustomerID = 123;`

---

## 2. Statistikaların aktiv edilməsi
Sorğu icra olunmazdan əvvəl aşağıdakı komandalar istifadə edildi:

```sql
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
