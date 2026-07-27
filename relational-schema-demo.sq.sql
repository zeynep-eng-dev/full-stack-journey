-- Önce varsa eski tabloları siliyoruz
DROP TABLE IF EXISTS ADDRESS;
DROP TABLE IF EXISTS USERS;

-- Şimdi sıfırdan USERS tablosunu oluşturuyoruz
CREATE TABLE USERS (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NAMESURNAME VARCHAR(100),
    EMAIL VARCHAR(100),
    GENDER CHAR(1),
    BIRTHDATE DATE
);

-- Şimdi ADDRESS tablosunu oluşturuyoruz
CREATE TABLE ADDRESS (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    USERID INT,
    ADDRESSTEXT VARCHAR(500),
    FOREIGN KEY (USERID) REFERENCES USERS(ID)
);


INSERT INTO USERS (NAMESURNAME, EMAIL, GENDER, BIRTHDATE) 
VALUES 
('Emirhan SELIM', 'E_SELIM@sqlegtimbtk.com', 'E', '1993-01-21'),
('zeynep nuh', 'zeynep.12@gmail.com', 'K', '1993-01-21');

INSERT INTO ADDRESS (USERID, ADDRESSTEXT) 
VALUES 
(1, 'YALINTAŞ-ATATÜRK MAH. 51. SOKAK NO:694 86730 MUSTAFAKEMALPAŞA/BURSA'),
(1, 'erzurum.palandoken  mah :halıl ibrahım  no:234'),
(1, ' ağrı patnos '),
(2, 'erzurum.palandoken mah :halıl ibrahım no:234'),
(2, 'ağrı patnos ');

-- Listeleme
SELECT 
    U.NAMESURNAME, 
    U.EMAIL, 
    U.GENDER, 
    U.BIRTHDATE, 
    A.ADDRESSTEXT 
FROM 
    USERS U, 
    ADDRESS A 
WHERE 
    U.ID = A.USERID 

