with trans_grouped as ( -- common table expression (cte)
	select sum(importotransazione) importo
		, year(datatransazione) anno
        , month(DataTransazione) mese
		from transazioni 
		group by year(datatransazione), month(datatransazione)
), 
analisi as ( -- altra common table expression
select 
    anno, 
    mese, 
    importo,
	(select importo 
		from trans_grouped g 
        where g.mese = t.mese -1
	) mese_precedente,
    convert(importo / (select importo 
		from trans_grouped g 
        where g.mese = t.mese -1
	), decimal(10,2)) percentuale
from trans_grouped t 
order by anno, mese
)
select anno, mese, importo, mese_precedente, percentuale, 
case when percentuale is null then '▬' when percentuale >= 1 then '▲' else '▼' end andamento 
from analisi;

SELECT * FROM anno
ORDER BY mese_precedente;

SELECT * FROM importo
ORDER BY percentuale DESC;

-- 
SELECT count(QuantitaDisponibile), SUM(Prezzo)
FROM prodotti
WHEREDataSpedizione
GROUP BY Categoria
ORDER BY NomeProdotto;

-- Analisi delle Vendite Mensili: Domanda: Trova il totale delle vendite per ogni mese.
SELECT count(DataSpedizione), monthname(DataSpedizione)
FROM spedizioni
WHEREDataSpedizione
GROUP BY MetodoSpedizione 
ORDER BY StatusConsegna;

-- 
SELECT count(TransazioneID), monthname(DataSpedizione)
FROM transazioni
WHERE DataTransazione 
GROUP BY monthname(DataSpedizione)
ORDER BY ClienteID;

SELECT SUM(Prezzo), date(DataSpedizione)
FROM transazioni
ORDER BY SpedizioneID; 

SELECT (DataRegistrazione)AS MESE, AVG(COALESCE(ClienteID)) AS mediaclienti
FROM clienti
GROUP BY mese;

SELECT 
    MONTH(DataRegistrazione) AS mese,
    COUNT(ClienteID) / (SELECT COUNT(*) FROM clienti) AS mediaclienti
FROM clienti
GROUP BY MONTH(DataRegistrazione);

SELECT 
    MONTH(DataRegistrazione) AS mese,
    AVG(COALESCE(ClienteID, 0)) AS mediaclienti
FROM clienti
GROUP BY mese;

-- Domanda: Calcola la variazione percentuale nelle vendite rispetto al mese precedente:
SELECT count(TransazioneID), monthname(DataSpedizione)
FROM transazioni
WHERE DataTransazione 
GROUP BY monthname(DataSpedizione)
ORDER BY ClienteID;


SELECT count(QuantitaDisponibile), SUM(Prezzo)
FROM prodotti
WHEREDataSpedizione
GROUP BY Categoria
ORDER BY NomeProdotto;