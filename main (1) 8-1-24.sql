CREATE TABLE ecommerce (
    transazion_id INTEGER PRIMARY KEY,
    categoria TEXT NOT NULL,
    subcategoria TEXT NOT NULL,
    prezzo DECIMAL (10,2) NOT NULL, 
    sconto DECIMAL (10,2) NOT NULL
);

-- insert some values
INSERT INTO ecommerce (transazion_id, categoria, subcategoria, prezzo, sconto) VALUES
(1, 'calzature', 'zeppa', 100, 11.75, 0.20 ),
(2, 'calzature', 'ballerine', 100, 45.50, 0.15),
(3, 'calzature', 'stivali', 60, 55.55, 0.15),
(4, 'calzature', 'mocassini', 70, 35.87, 0.20),
(5, 'calzature', 'sneakers', 500, 46.30, 0.50),
(6, 'calzature', 'sandali', 80, 40.00, 0.45),
(7, 'calzature', 'ciabatte', 70, 9.99, 0.05),
(8, 'calzature', 'lacci', 90, 5.60, 0.30),
(9, 'calzature', 'decollete', 300, 46.30, 0.40),
(10, 'abbigliamento', 'jeans', 400, 25.50, 0.30),
(11, 'abbigliamento', 'corsetto', 150, 30.05, 0.10),
(12, 'abbigliamento', 'felpa', 60, 30.05, 0.10),
(13, 'abbigliamento', 'tuta', 40, 35.87, 0.25),
(14, 'abbigliamento', 'top', 700, 9.99, 0.05),
(15, 'abbigliamento', 'cardigan', 300, 11.75, 0.40),
(16, 'abbigliamento', 'giacca', 450, 40.00, 0.70),
(17, 'abbigliamento', 'maglietta', 500, 27.20, 0.20),
(18, 'abbigliamento', 'shorts', 600, 30.05, 0.15),
(19, 'abbigliamento', 'camicia', 700, 35.87, 0.35),
(20, 'intimo', 'pijamas', 1000, 33.00, 0.10),
(21, 'intimo', 'reggiseno', 2000, 15.50, 0.05),
(22, 'intimo', 'tanga', 5000, 10.00, 0.02),
(23, 'intimo', 'calze', 900, 7.50, 0.3),
(24, 'intimo', 'vestaglia', 650, 27.20, 0.15),
(25, 'accessori', 'anelli', 150, 45.50, 0.60),
(26, 'accessori', 'cappello', 35, 32.40, 0.70),
(27, 'accessori', 'sciarpa', 60, 25.60, 0.60),
(28, 'accessori', 'bracciali', 80, 9.99, 0.15),
(29, 'accessori', 'orologi', 70, 25.60, 0.35),
(30, 'accessori', 'occhiali', 50, 10.99, 0.90);


-- SELECT * FROM ecommerce; 

-- CREATE TABLE Descrizione (
     transazion_id INTEGER PRIMARY KEY,
     Descrizione TEXT);

INSERT INTO ecommerce (categoria, subcategoria) VALUES
('calzature'),
('abbigliamento'),
('intimo'),
('accessori');

SELECT * FROM vendite ORDER BY ID;

/*
#Inner join
#SELECT e.transazion_id, e.categoria, e.subcategoria, e.prezzo, c.sconto
#FROM ecommerce e
#INNER JOIN categorie c ON v.Categoria = c.NomeCategoria;

#Left join con vendite a sx
SELECT e.transazion_id, e.categoria, e.subcategoria, e.prezzo, c.sconto
FROM ecommerce e
LEFT JOIN categorie c ON v.Categoria = c.NomeCategoria;

#Left join con categorie a sx
SELECT e.transazion_id, e.categoria, e.subcategoria, e.prezzo, c.sconto
FROM ecommerce c
LEFT JOIN vendite v ON c.NomeCategoria = v.Categoria;

#Right join
SELECT e.transazion_id, e.categoria, e.subcategoria, e.prezzo, c.sconto
FROM ecommerce e
RIGHT JOIN categorie c ON v.Categoria = c.NomeCategoria;


