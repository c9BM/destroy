#!/bin/bash
# ==========================================
# MÔ PHỎNG CHIA THỪA KẾ NHÀ ĐẤT
# inheritance.sh
# ==========================================
echo "======================================="
echo " HỆ THỐNG MÔ PHỎNG CHIA THỪA KẾ "
echo "======================================="
# Giá trị tài sản
HOUSE_VALUE=3000000000
LAND_VALUE=2000000000
SAVINGS_VALUE=1000000000
TOTAL_ASSETS=$((HOUSE_VALUE + LAND_VALUE + SAVINGS_VALUE))
echo ""
echo "Tài sản để lại:"
echo "- Nhà ở:      $HOUSE_VALUE VND"
echo "- Đất đai:    $LAND_VALUE VND"
echo "- Tiết kiệm:  $SAVINGS_VALUE VND"
echo "--------------------------------"
echo "Tổng tài sản: $TOTAL_ASSETS VND"
echo ""
echo "Số người thừa kế:"
read HEIRS
if [ "$HEIRS" -le 0 ]; then
    echo "Số người thừa kế không hợp lệ."
    exit 1
fi
SHARE=$((TOTAL_ASSETS / HEIRS))
echo ""
echo "======================================="
echo "KẾT QUẢ PHÂN CHIA"
echo "======================================="
for ((i=1; i<=HEIRS; i++))
do
    echo "Người thừa kế $i nhận: $SHARE VND"
done
REMAIN=$((TOTAL_ASSETS % HEIRS))
echo ""
echo "Giá trị còn dư: $REMAIN VND"
echo ""
echo "======================================="
echo "PHÂN TÍCH TÀI SẢN"
echo "======================================="
echo "1. Nhà ở trị giá: $HOUSE_VALUE VND"
echo "2. Đất đai trị giá: $LAND_VALUE VND"
echo "3. Tiền tiết kiệm: $SAVINGS_VALUE VND"
echo ""
echo "Ví dụ thực tế:"
echo "- Người A có thể nhận nhà."
echo "- Người B có thể nhận đất."
echo "- Người C nhận tiền mặt."
echo "- Nếu chênh lệch giá trị thì thanh toán bù."
echo ""
echo "======================================="
echo "KẾT THÚC MÔ PHỎNG"
echo "======================================="