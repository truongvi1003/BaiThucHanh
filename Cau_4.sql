alter table PHONGBAN 
alter column TenPhg nvarchar(30);

go

alter table DEAN 
alter column DDiemDA nvarchar(20);

go

alter table THANNHAN
alter column TenTN nvarchar(20);

go
alter table THANNHAN
alter column Phai nvarchar(3);

go
alter table THANNHAN
alter column QuanHe nvarchar(15);

go

alter table NHANVIEN
add SoDienThoai varchar(15);

go

alter table NHANVIEN

drop column SoDienThoai;