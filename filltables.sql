use lab2;

insert into filmy (tytul,rok,czas_trwania,budzet,gatunek) values ("auta",2006,117,666420123,"animowany");
insert into filmy (tytul,rok,czas_trwania,budzet,gatunek) values ("terminator",1984,107,777420123,"akcja");
insert into filmy (tytul,rok,czas_trwania,budzet,gatunek) values ("seksmisja",1984,117,20123,"komedia");


insert into aktorzy (imie,nazwisko,data_ur,narodowosc,wzrost,biografia) values ("arnold","schwarzeneger","1924-05-04","austria",181,"test");
insert into aktorzy (imie,nazwisko,data_ur,narodowosc,wzrost,biografia) values ("Jerzy","Stuhr","1969-02-15","polska",181,"test");

insert into role (film_id,aktor_id,imie,nazwisko,pseudonim) values (2,1,"imie","nazwisko","terminator");
insert into role (film_id,aktor_id,imie,nazwisko,pseudonim) values (3,2,"Maksymilian","Paradys","Maks");

insert into cytaty (rola_id,tresc) values (1,"I ll be back");
insert into cytaty (rola_id,tresc) values (2,"Kobieta mnie bije");

insert into ciekawostki (film_id,tresc) values (2,"ciekawostka");
