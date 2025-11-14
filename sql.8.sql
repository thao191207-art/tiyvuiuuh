--------------------------------------------------------
-- 1. Thêm cột TrangThai vào bảng Sach
--------------------------------------------------------
ALTER TABLE Sach
ADD TrangThai VARCHAR(50);

--------------------------------------------------------
-- 2. Cập nhật TrangThai = "Còn hàng" cho sách xuất bản trước năm 2000
--------------------------------------------------------
UPDATE Sach
SET TrangThai = 'Còn hàng'
WHERE NamXuatBan < 2000;

--------------------------------------------------------
-- 3. Cập nhật TrangThai = "Mới nhập" cho sách xuất bản từ năm 2000 trở về sau
--------------------------------------------------------
UPDATE Sach
SET TrangThai = 'Mới nhập'
WHERE NamXuatBan >= 2000;
