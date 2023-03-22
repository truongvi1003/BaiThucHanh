create table PHONGBAN
(
MaPhg varchar(2) Primary Key,
TenPhg nvarchar(20)
)

create table NHANVIEN
(
MaNV varchar(9) Primary Key,
HoNV nvarchar(15),
TenLot nvarchar(30),
TenNV nvarchar(30),
NgSinh smalldatetime,
DiaChi nvarchar(150),
Phai nvarchar(3),
Luong numeric(18, 0),
Phong varchar(2) Foreign Key References PHONGBAN(MaPhg)
)

GO

create table THANNHAN
(
TenTN varchar(20) Primary Key,
NgSinh smalldatetime,
TEN varchar(10),
Phai nvarchar(3),
QuanHe varchar(15),
MaNV varchar(9) Foreign Key References NHANVIEN(MaNV) not null
)

GO

create table DEAN
(
MaDA varchar(2) Primary Key,
TenDA nvarchar(50),
DDiemDA varchar(20),
)

GO

create table PHANCONG
(
MaNV varchar(9) Foreign Key References NHANVIEN(MaNV) not null,
MaDA varchar(2) Foreign Key References DEAN(MaDA) not null,
ThoiGian numeric(18, 0)
)