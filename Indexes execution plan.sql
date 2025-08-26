-- 20 milyon sətirlik məlumatı oxuyuruq.
select * from CUSTOMERS

-- Index olmadan.
set statistics io on;
select * from CUSTOMERS
where NAMESURNAME = 'Zeki Doğukan ÖZGÖREN'

select 555485*8 as 'without index(kb)' --4443880


-- Sorğunu işlətdikdə RAM və disk oxumalarının (Logical və Physical Reads) statistikalarını göstərir.
set statistics io on;


-- Index ilə.
set statistics io on;
select * from CUSTOMERS
where NAMESURNAME = 'Zeki Doğukan ÖZGÖREN'

select 8*8 as 'with index(kb)' -- 64kb


-- Index vasitəsi ilə sorğumuz 70 min qat data sürətli işləyir.
select 4443880/64kb --69435


-- Sorğunu işlədikdə CPU və real vaxtın statistikalarını göstərir.
set statistics time on;



set statistics time on;
select * from CUSTOMERS
where NAMESURNAME = 'Zeki Doğukan ÖZGÖREN'

