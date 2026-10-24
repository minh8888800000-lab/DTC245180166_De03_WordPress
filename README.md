# Đề tài 3: Website Quảng bá Sản phẩm (WordPress)
- Sinh viên: Nguyễn Văn Minh - MSV: DTC245180166 - Lớp: KTPM K23C
- Stack: WordPress + MySQL 8.0 + phpMyAdmin + Nginx + Prometheus + Grafana + Loki + Promtail.

## Khởi chạy:
1. Chạy website và database:
   `sudo docker compose -p wordpress_product -f compose.yaml up -d`
2. Cấp quyền tài khoản giám sát:
   `bash scripts/setup-monitor-user.sh`
3. Khởi chạy toàn bộ hệ thống:
   `sudo docker compose -p wordpress_product -f compose.yaml -f compose.monitoring.yaml -f compose.logging.yaml up -d`
