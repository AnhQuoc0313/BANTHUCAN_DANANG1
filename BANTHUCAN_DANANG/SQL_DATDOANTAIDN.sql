﻿CREATE DATABASE DATDOTHUCANDN
GO
USE DATDOTHUCANDN
GO
CREATE TABLE TAIKHOAN(IDTK INT PRIMARY KEY IDENTITY, TENDANGNHAP VARCHAR(200) UNIQUE, MATKHAU VARCHAR(200))
GO
INSERT TAIKHOAN(TENDANGNHAP, MATKHAU) VALUES ('ADMIN', '123')
GO
CREATE TABLE DANHMUC(IDDM INT PRIMARY KEY IDENTITY, TENDM NVARCHAR(200) UNIQUE)
GO
INSERT INTO DANHMUC (TENDM)
VALUES 
(N'Món chính'),
(N'Đồ uống');
GO
CREATE TABLE SANPHAM(IDSP INT PRIMARY KEY IDENTITY, IMG NVARCHAR(255), TENSP NVARCHAR(200), MOTASP NVARCHAR(200), GIASP DECIMAL(18, 0), IDDM INT FOREIGN KEY (IDDM) REFERENCES DANHMUC(IDDM))
GO
INSERT INTO SANPHAM (IMG, TENSP, MOTASP, GIASP, IDDM)
VALUES 
(NULL, N'Phở bò', N'Phở bò truyền thống với nước dùng đậm đà', 50000, 1),
(NULL, N'Cơm gà xối mỡ', N'Cơm gà chiên giòn với nước mắm chua ngọt', 45000, 1),
(NULL, N'Trà sữa trân châu', N'Trà sữa với trân châu đen dai ngon', 30000, 2),
(NULL, N'Nước ép cam', N'Nước ép cam tươi nguyên chất', 25000, 2);
GO






SELECT * FROM TAIKHOAN

SELECT [IMG], [TENSP], [MOTASP], [GIASP] FROM [SANPHAM] WHERE IDDM = 1