use lab2
SELECT DISTINCT Aktorzy.Imię, Aktorzy.Nazwisko
FROM (Aktorzy
INNER JOIN Role ON Aktorzy.ID = Role.aktor_ID);


-----------------------------------------------------------

SELECT DISTINCT Filmy.Tytul
FROM (( Role
INNER JOIN Filmy ON Role.Film_ID = Filmy.ID)
INNER JOIN Aktorzy ON Role.Aktor_ID = Aktorzy.ID);


-----------------------------------------------------------

SELECT DISTINCT Filmy.Tytul
FROM (Ciekawostki
INNER JOIN Filmy ON Ciekawostki.Film_ID = Filmy_ID)
WHERE;

-----------------------------------------------------------

SELECT DISTINCT Role.Pseudonim
FROM ((Role
INNER JOIN Cytaty ON Role.ID = Cytaty.Rola_ID)
INNER JOIN Filmy ON Role.Filmy_ID = Filmy_ID)
WHERE Filmy.rok <2000;

-----------------------------------------------------------

SELECT DISTINCT Aktorzy.Imie, Aktorzy.Naziwsko
FROM ((Role
INNER JOIN Cytaty ON Role.ID = Cytaty.Rola_ID)
INNER JOIN Aktorzy ON Role.Aktor_ID = Aktorzy.ID)
WHERE Aktorzy.Narodowość = "Polish";

------------------------------------------------------------
