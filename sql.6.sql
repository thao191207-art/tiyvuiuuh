--------------------------------------------------------
-- 1. Tìm sách xuất bản từ năm 1990 đến năm 2000
--------------------------------------------------------
SELECT *
FROM Sach
WHERE NamXuatBan >= 1990 AND NamXuatBan <= 2000;

-- Hoặc viết gọn bằng BETWEEN
SELECT *
FROM Sach
WHERE NamXuatBan BETWEEN 1990 AND 2000;

--------------------------------------------------------
-- 2. Tìm sách có tên chính xác là 2 cuốn Harry Potter (dùng OR)
--------------------------------------------------------
SELECT *
FROM Sach
WHERE TenSach = 'Harry Potter và Hòn đá Phù thủy'
   OR TenSach = 'Harry Potter và Phòng chứa Bí mật';

--------------------------------------------------------
-- 3. Tìm sách của tác giả MaTacGia = 1 và xuất bản sau năm 2000
--------------------------------------------------------
SELECT *
FROM Sach
WHERE MaTacGia
