-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  gender TEXT NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');
-- fetch some values
SELECT * FROM students WHERE gender = 'F';



CREATE TABLE aeroporto (
    citta TEXT NOT NULL,
    italia TEXT NOT NULL,
    numpiste TEXT NOT NULL
);

/*
DROP TABLE AEROPORTO

INSERT INTO AEROPORTO VALUES (1, 'PARMA', '1');
INSERT INTO AEROPORTO VALUES (2, 'LINATE', '2');
SELECT * FROM AEROPORTO WHERE NUMPISTE = '1';

*/


CREATE TABLE volo (
    idvolo INTEGER PRIMARY KEY,
    giornosett TEXT NOT NULL,
    cittapart TEXT NOT NULL,
    orapart TEXT NOT NULL, 
    cittarr TEXT NOT NULL,
    oraarr TEXT NOT NULL,
    tipoaereo TEXT NOT NULL
);

/*

CREATE TABLE volo (
INSERT INTO volo VALUES (1, 'lx1617', '1');
INSERT INTO volo VALUES (2, 'mer20', '2');
INSERT INTEGER volo VALUES (3, 'bologna', '3');
INSERT INTO volo VALUES (4, '14:45', '4');
INSERT INTO volo VALUES (5, 'zurich', '5');
INSERT INTO volo VALUES (6, '16:00', '6');
INSERT INTO volo VALUES (7, 'airbus320', '7')
SELECT * FROM volo WHERE tipoaereo = '7';

*/


/*
SELECT * FROM aeroporto;
SELECT * FROM volo;
SELECT citta
FROM volo
WHERE numpiste IS NULL;

*/

