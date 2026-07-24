SELECT* FROM TABLE_12
INSERT INTO TABLE_12
(FİCHENO,CITY,TOTALPRİCE)
VALUES
(1, 'İstanbul', 912),
(2, 'İstanbul', 704),
(3, 'İstanbul', 9373),
(4, 'Yalova', 95),
(5, 'Yalova', 7408),
(6, 'Yalova', 694),
(7, 'Artvin', 2877),
(8, 'Artvin', 312),
(9, 'Elazığ', 131),
(10, 'Elazığ', 228),
(11, 'Rize', 1196),
(12, 'Rize', 056),
(13, 'Trabzon', 22401),
(14, 'Trabzon', 56),
(15, 'Erzincan', 7445),
(16, 'Erzincan', 84),
(17, 'Ordu', 176),
(18, 'Ordu', 16),
(19, 'Antalya', 1495),
(20, 'Antalya', 28),
(21, 'Bingöl', 7281),
(22, 'Bingöl', 57),
(23, 'Adana', 1420),
(24, 'Adana', 19),
(25, 'Kastamonu', 832),
(26, 'Kastamonu', 39),
(27, 'Aydın', 7805),
(28, 'Aydın', 96),
(29, 'Kırıkkale', 798),
(30, 'Kırıkkale', 6),
(31, 'Tunceli', 6045),
(32, 'Tunceli', 12),
(33, 'Uşak', 994),
(34, 'Uşak', 019),
(35, 'Kahramanmaraş', 945),
(36, 'Kahramanmaraş', 312),
(37, 'Muğla', 7551),
(38, 'Muğla', 1);
--GROUPBY KULLANIMI
SELECT MIN(TOTALPRİCE),MAX(TOTALPRİCE), COUNT(*), SUM(TOTALPRİCE),AVG(TOTALPRİCE) FROM TABLE_12 WHERE  CITY='istanbul'--burda saedce istabul şehırı için
--group ise tüm sehırler için istatiksel veriyi bıze gösterir
SELECT   CITY ,
MIN(TOTALPRİCE) AS MİNPRİCE,-- ASTAN SONRA ISİMLERI KENDIMIZ VERİYORUZ
MAX(TOTALPRİCE) AS MAXPRİCE,
COUNT(FİCHENO)  AS FİCHENO,
SUM(TOTALPRİCE) AS  SUMPRİCE,
AVG(TOTALPRİCE) AS  AVGPRİCE 
FROM TABLE_12   
GROUP BY CITY
ORDER BY CITY--  
