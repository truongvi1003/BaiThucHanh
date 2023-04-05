-- CAU 1 --
create function fn_Timhang(@masp nvarchar(10))
returns nvarchar(20)
as
begin
declare @ten nvarchar(20)
set @ten = (select tenhang from hangsx inner join sanpham
on hangsx.mahangsx = sanpham.mahangsx
where masp = @masp)
return @ten
end

GO
-- CAU 2 --
create function fn_thongkenhaptheonam(@x int,@y int)
returns int
as
begin
declare @tongtien int
select @tongtien = sum(soluongN*dongia)
from nhap
where year(ngaynhap) between @x and @y
return @tongtien
end

GO
-- CAU 3 --
create function fn_thongketongsoluong(@x nchar(10), @y int)
returns nchar(10)
as
begin
declare @tongsoluong int
SELECT @tongsoluong = (SUM(NHAP.SOLUONGN - XUAT.SOLUONGX))
from XUAT inner join NHAP on XUAT.MASP = NHAP.MASP
WHERE XUAT.MASP = @x AND YEAR(NGAYNHAP) = @y
return @tongsoluong
end

GO
-- CAU 4 --
create function fn_tongnhaptheongay(@x nchar(10), @y nchar(10))
returns nchar(10)
as
begin
declare @tongsoluongN int
SELECT @tongsoluongN = SUM(SOLUONGN)
from NHAP
WHERE NGAYNHAP BETWEEN @x AND @y
return @tongsoluongN
end

GO
-- CAU 5 --
create function fn_tongxuattheohang(@A nchar(10), @x nchar(10))
returns nchar(10)
as
begin
declare @tongtienX int
SELECT @tongtienX = SUM(XUAT.SOLUONGX * SANPHAM.GIABAN)
from XUAT inner join SANPHAM on XUAT.MASP = SANPHAM.MASP
WHERE SANPHAM.MAHANGSX = @A AND YEAR(XUAT.NGAYXUAT) = @x
return @tongtienX
end

GO
-- CAU 6 --
create function fn_tongnvtheophong(@x nvarchar(20))
returns nvarchar(20)
as
begin
declare @SoLuongNV int
SELECT @SoLuongNV = COUNT(MANV)
from NHANVIEN
WHERE PHONG = @x
GROUP BY PHONG
return @SoLuongNV
end

-- CAU 7 --
GO
create function fn_tongsanpham(@x nvarchar(20), @y nchar(20))
returns nvarchar(20)
as
begin
declare @TongSP int
SELECT @TongSP = SUM(XUAT.SOLUONGX)
from XUAT inner join SANPHAM on XUAT.MASP = SANPHAM.MASP
WHERE TENSP = @x AND NGAYXUAT = @y
return @TongSP
end

-- CAU 8 --
GO
create function fn_TimSODTNV(@x nchar(10))
returns nchar(10)
as
begin
declare @SODT nvarchar(20)
SELECT @SODT = SODT
from XUAT inner join NHANVIEN on XUAT.MANV = NHANVIEN.MANV
WHERE SOHDX = @x 
return @SODT
end

-- CAU 9 GIONG CAU 3 --

-- CAU 10 --