use lab2
select 'zaimplementuj perspektywę (VIEW) Obsada, która będzie przechowywała imiona i nazwiska aktorów przypisane do imion i nazwisk postaci, w które aktorzy się wcieli.' as '';

CREATE VIEW obsada as
SELECT distinct aktorzy.imie, aktorzy.nazwisko, role.imie as 'imie postaci', role.nazwisko as 'nazwisko postaci', role.pseudonim
FROM role inner join aktorzy on aktorzy.id = role.aktor_id;


select 'select * from obsada' as '';

select * from obsada;
