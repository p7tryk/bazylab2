use lab2;

SELECT DISTINCT aktorzy.imie, aktorzy.nazwisko
FROM (aktorzy
INNER JOIN role ON aktorzy.id = role.aktor_id);



SELECT DISTINCT filmy.tytul
FROM (( role
INNER JOIN filmy ON role.film_id = filmy.id)
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id);



SELECT DISTINCT filmy.tytul
FROM (ciekawostki
INNER JOIN filmy ON ciekawostki.film_id = filmy.id)
WHERE 1=1;



SELECT DISTINCT role.pseudonim
FROM ((role
INNER JOIN cytaty ON role.id = cytaty.rola_id)
INNER JOIN filmy ON role.film_id = filmy.id)
WHERE filmy.rok <2000;



SELECT DISTINCT aktorzy.Imie, aktorzy.Naziwsko
FROM ((role
INNER JOIN cytaty ON role.id = cytaty.rola_id)
INNER JOIN aktorzy ON role.aktor_id = aktorzy.id)
WHERE aktorzy.narodowosc = "polska";


