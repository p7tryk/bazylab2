use lab2;

select 'wyświetl imiona i nazwiska aktorów, którzy zagrali co najmniej w 1 filmie:' as '';

SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko
FROM (aktorzy
INNER JOIN role ON aktorzy.id = role.aktor_id);

select 'wyświetl filmy, w których wystąpił co najmniej 1 polski aktor:' as '';

SELECT DISTINCT filmy.tytul
FROM (( role
INNER JOIN filmy ON role.film_id = filmy.id)
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id);

select 'wyświetl filmy, do których przypisano ciekawostki:' as '';

SELECT DISTINCT filmy.tytul
FROM (ciekawostki
INNER JOIN filmy ON ciekawostki.film_id = filmy.id)
WHERE 1=1;

select 'wyświetl role, do których przypisano cytaty, wyniki ogranicz do filmów wydanych przed rokiem 2000:' as '';

--https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html
/*
SELECT DISTINCT role.pseudonim
FROM ((role
INNER JOIN cytaty ON role.id = cytaty.rola_id)
INNER JOIN filmy ON role.film_id = filmy.id)
WHERE filmy.rok <2000;
*/
select 'wyświetl aktorów, którzy wypowiedzieli słynne (zapisane w bazie danych) cytaty, wyniki ogranicz do aktorów o narodowości polskiej' as '';
/*
SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko
FROM ((role
INNER JOIN cytaty ON role.id = cytaty.rola_id)
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id)
WHERE aktorzy.narodowosc = "polska";
*/

