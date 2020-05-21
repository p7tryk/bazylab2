use lab2;

select 'wyświetl imiona i nazwiska aktorów, którzy zagrali co najmniej w 1 filmie:' as '';

SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko
FROM (aktorzy
INNER JOIN role ON aktorzy.id = role.aktor_id);

select 'wyświetl filmy, w których wystąpił co najmniej 1 polski aktor:' as '';

SELECT DISTINCT filmy.tytul
FROM (( role
INNER JOIN filmy ON role.film_id = filmy.id)
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id)
WHERE aktorzy.narodowosc="polska";

select 'wyświetl filmy, do których przypisano ciekawostki:' as '';

SELECT DISTINCT filmy.tytul, ciekawostki.tresc
FROM (ciekawostki
INNER JOIN filmy ON ciekawostki.film_id = filmy.id);

select 'wyświetl imiona i nazwiska aktorów, którzy zagrali w filmach wydanych przed rokiem 2000' as '';


SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko
FROM ((role
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id)
INNER JOIN filmy ON role.film_id = filmy.id)
WHERE filmy.rok <2000;

select 'wyświetl aktorów, którzy wypowiedzieli słynne cytaty (wszystkie zapisane w bazie danych), wyniki ogranicz do aktorów o narodowości polskiej' as '';

SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko, cytaty.tresc
FROM ((aktorzy
INNER JOIN role ON role.aktor_id = aktorzy.id)
INNER JOIN cytaty ON cytaty.aktor_id = aktorzy.id)
WHERE aktorzy.narodowosc = "polska";


