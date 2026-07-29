
SELECT * FROM table_3
TRUNCATE TABLE table_3;
INSERT INTO table_3
(NAME,SURNAME,DEPARTMENT,CİTY,GPA)
VALUES
( 'Ahmet', 'Yilmaz', 'Computer Engineering', 'Ankara', 32),
( 'Ayse', 'Demir', 'Electrical-Electronics', 'Istanbul', 28),
( 'Mehmet', 'Kaya', 'Computer Engineering', 'Ankara', 35),
( 'Fatma', 'Celik', 'Mechanical Engineering', 'Izmir', 29),
( 'Can', 'Yildiz', 'Electrical-Electronics', 'Istanbul', 31);

SELECT DISTINCT  DEPARTMENT FROM table_3 --  farklı olan bölümler
SELECT*FROM table_3 ORDER BY GPA --  ortalamaya göre sıralama
UPDATE table_3 
SET NAME = 'ZEYNEP', SURNAME = 'NUH', DEPARTMENT = 'Computer Engineering', CİTY = 'ERZURUM' 
WHERE ID = 2;

