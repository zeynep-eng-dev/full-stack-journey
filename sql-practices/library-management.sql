-- 1. Yazarlar tablosuna veri ekleyelim
INSERT INTO dbo.[yazarlar-tablosu] (first_name, last_name) 
VALUES ('Ahmet', 'Ümit'), ('Yaşar', 'Kemal');

-- 2. Kitaplar tablosuna veri ekleyelim
INSERT INTO dbo.[kıtapla-tablosu] (title, isbn, author_id) 
VALUES ('İstanbul Hatırası', '9789750812345', 1),
       ('İnce Memed', '9789750854321', 2);

-- 3. Üyeler tablosuna veri ekleyelim
INSERT INTO dbo.UYELER_TABLOSU (full_name, membership_date) 
VALUES ('Zeynep Nuh', '2026-02-12');

-- 4. Ödünç işlemler tablosuna veri ekleyelim
INSERT INTO dbo.[ödünç-işlemler-tablosu] (book_id, member_id, borrow_date, return_date) 
VALUES (1, 1, '2026-07-06', '2026-08-02')
-- 1. Yazarları listele
SELECT * FROM dbo.[yazarlar-tablosu]
DELETE FROM dbo.[yazarlar-tablosu] WHERE  ID BETWEEN  3 AND 8

-- 2. Kitapları listele (Tablo adını sol taraftakine göre güncelleyebilirsin)
SELECT * FROM dbo.[kıtapla-tablosu];

-- 3. Üyeleri listele
SELECT * FROM dbo.UYELER_TABLOSU;

-- 4. Ödünç işlemlerini listele
SELECT * FROM dbo.[ödünç-işlemler-tablosu];
