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
