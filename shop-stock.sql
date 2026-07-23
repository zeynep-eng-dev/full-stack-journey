SELECT* FROM table_4

INSERT INTO table_4 (NAME, CATEGORY, PRİCE, STOCK) VALUES 
('Laptop', 'Electronics', '2003-12-01', 5),
('Mouse', 'Electronics', '2003-12-01', 30),
('Klavye', 'Electronics', '2003-12-01', 15),
('Sandalye', 'Furniture', '2003-12-01', 8),
('Masa', 'Furniture', '2003-12-01', 4)
SELECT* FROM  table_4  ORDER BY STOCK ASC
SELECT* FROM table_4  WHERE CATEGORY='Electronics'
UPDATE table_4 SET PRİCE = '2003-12-20' WHERE ID = 2;
DELETE FROM table_4  WHERE STOCK=4
SELECT DISTINCT CATEGORY FROM table_4
