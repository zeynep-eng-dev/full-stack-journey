
 DELETE FROM Table_2
 SELECT *FROM Table_2
 INSERT  INTO  Table_2
 (NAME,WRİTER,DURİN_THE_YEAR,PRİCE)
 VALUES
 ('1984', 'George Orwell', '1949', '3850'),
('Kucuk Prens', 'Antoine de Saint-Exupery', '1943', '2500'),
('Simyaci', 'Paulo Coelho', '1988', '3275'),
('Beyaz Zambaklar Ulkesinde', 'Grigory Petrov', '1923', '2990')
DELETE FROM Table_2 WHERE ID  BETWEEN 5 AND 8
SELECT* FROM Table_2 WHERE DURİN_THE_YEAR>'2015-01-01'
UPDATE Table_2 set PRİCE=127 WHERE NAME='1984'
DELETE FROM Table_2 WHERE NAME='1984'
SELECT* FROM Table_2 ORDER BY PRİCE