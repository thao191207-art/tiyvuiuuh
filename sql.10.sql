--------------------------------------------------------
-- 1. Kiểm tra xem độc giả MaDocGia = 1 có phiếu mượn chưa trả
--------------------------------------------------------
SELECT *
FROM PhieuMuon
WHERE MaDocGia = 1 AND NgayTra IS NULL;

--------------------------------------------------------
-- 2. Xóa tất cả phiếu mượn của độc giả MaDocGia = 1
--------------------------------------------------------
DELETE FROM PhieuMuon
WHERE MaDocGia = 1;

--------------------------------------------------------
-- 3. Xóa độc giả MaDocGia = 1 khỏi bảng DocGia
--------------------------------------------------------
DELETE FROM DocGia
WHERE MaDocGia = 1;
