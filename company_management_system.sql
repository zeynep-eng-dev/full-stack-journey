-- 1. TABLOLARIN OLUŞTURULMASI
DROP TABLE IF EXISTS EQUIPMENTS;
DROP TABLE IF EXISTS EMPLOYEE_PROJECTS;
DROP TABLE IF EXISTS EMPLOYEES;
DROP TABLE IF EXISTS PROJECTS;
DROP TABLE IF EXISTS DEPARTMENTS;

CREATE TABLE DEPARTMENTS(
    department_ID INT IDENTITY(1,1) PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE PROJECTS(
    project_ID INT IDENTITY(1,1) PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(10,2)
);

CREATE TABLE EMPLOYEES(
    employed_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    department_ID INT, -- Departman ilişkisini kurabilmek için bu sütun eklendi
    project_ID INT,

);

CREATE TABLE EMPLOYEE_PROJECTS(
    employed_id INT,
    project_ID INT,
    assigned_date DATE NOT NULL,
 
);

CREATE TABLE EQUIPMENTS(
    equipment_ID INT IDENTITY(1,1) PRIMARY KEY,
    equipment_name VARCHAR(100),
    serial_number VARCHAR(100),
    employed_id INT,
    FOREIGN KEY (employed_id) REFERENCES EMPLOYEES(employed_id)
);


-- 2. VERİLERİN EKLENMESİ

INSERT INTO DEPARTMENTS (department_name, location) VALUES 
('Yazılım Geliştirme', 'Ankara'),
('Yapay Zeka Ar-Ge', 'İstanbul'),
('Veri Tabanı Yönetimi', 'İzmir'),
('Sistem ve Ağ', 'Bursa');

INSERT INTO PROJECTS (project_name, budget) VALUES 
('E-Ticaret Platformu', 150000.00),
('Otonom Araç Görüntü İşleme', 350000.00),
('Bulut Veri Ambarı', 200000.00),
('Siber Güvenlik Denetimi', 90000.00);

-- Not: İlk çalışanda departman ID (1) olarak eklendi
INSERT INTO EMPLOYEES (first_name, last_name, email, salary, department_ID, project_ID) VALUES 
('Ahmet', 'Yılmaz', 'ahmet.yilmaz@firma.com', 45000.00, 1, 1),
('Ayşe', 'Demir', 'ayse.demir@firma.com', 52000.00, 2, 2),
('Mehmet', 'Kaya', 'mehmet.kaya@firma.com', 38000.00, 1, 1),
('Zeynep', 'Çelik', 'zeynep.celik@firma.com', 60000.00, 3, 3),
('Can', 'Arslan', 'can.arslan@firma.com', 41000.00, NULL, NULL);

INSERT INTO EMPLOYEE_PROJECTS (employed_id, project_ID, assigned_date) VALUES 
(1, 1, '2026-01-10'),
(1, 3, '2026-03-15'),
(2, 2, '2026-02-01'),
(3, 1, '2026-01-12'),
(4, 3, '2026-04-05');

INSERT INTO EQUIPMENTS (equipment_name, serial_number, employed_id) VALUES 
('MacBook Pro M3', 'MAC-98765', 1),
('Dell UltraSharp Monitör', 'DEL-11223', 1),
('NVIDIA RTX Workstation', 'NV-55443', 2),
('ThinkPad X1 Carbon', 'LEN-77889', 4),
('Yedek Sunucu Diski', 'DISK-0099', NULL);


-- 3. JOIN SORGULARI

-- 1. INNER JOIN Sorgusu
SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name, 
    eq.equipment_name, 
    p.project_name
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d ON e.department_ID = d.department_ID
INNER JOIN EQUIPMENTS eq ON e.employed_id = eq.employed_id
INNER JOIN EMPLOYEE_PROJECTS ep ON e.employed_id = ep.employed_id
INNER JOIN PROJECTS p ON ep.project_ID = p.project_ID;

-- 2. LEFT JOIN Sorgusu 
SELECT 
    e.first_name, 
    e.last_name 
FROM EMPLOYEES e
LEFT JOIN DEPARTMENTS d ON e.department_ID = d.department_ID
LEFT JOIN EQUIPMENTS eq ON e.employed_id = eq.employed_id;

-- 3. RIGHT JOIN Sorgusu
SELECT 
    p.project_name, 
    p.budget 
  
FROM EMPLOYEE_PROJECTS ep
RIGHT JOIN PROJECTS p ON ep.project_ID = p.project_ID
LEFT JOIN EMPLOYEES e ON ep.employed_id = e.employed_id;

-- 4. FULL OUTER JOIN (UNION)
SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM EMPLOYEES e
LEFT JOIN DEPARTMENTS d ON e.department_ID = d.department_ID



SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM EMPLOYEES e
RIGHT JOIN DEPARTMENTS d ON e.department_ID = d.department_ID;








