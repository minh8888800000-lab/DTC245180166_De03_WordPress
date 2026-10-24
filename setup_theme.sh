#!/bin/bash
# Xoa cac bai viet mau mac dinh
wp post delete $(wp post list --post_type=post --format=ids) --force 2>/dev/null || true

# Tao noi dung trang chu san pham
wp post create --post_type=page --post_title='Trang Chủ' --post_status=publish --post_content='
<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"60px","bottom":"60px","left":"30px","right":"30px"}},"color":{"background":"#0f172a","text":"#ffffff"}}} -->
<div class="wp-block-group alignfull has-text-color has-background" style="background-color:#0f172a;color:#ffffff;padding-top:60px;padding-right:30px;padding-bottom:60px;padding-left:30px">
  <div style="max-width:1100px;margin:0 auto;text-align:center;">
    <h1 style="font-size:2.8rem;font-weight:800;margin-bottom:15px;color:#38bdf8;">TECH STORE VIỆT</h1>
    <p style="font-size:1.2rem;color:#94a3b8;max-width:700px;margin:0 auto 25px;">Hệ thống phân phối thiết bị công nghệ chính hãng hàng đầu. Đột phá hiệu năng - Trải nghiệm đỉnh cao 2026.</p>
    <a href="#san-pham" style="display:inline-block;background:#2563eb;color:#fff;padding:12px 28px;border-radius:8px;text-decoration:none;font-weight:bold;">Khám Phá Sản Phẩm Ngay</a>
  </div>
</div>
<!-- /wp:group -->

<!-- wp:group {"align":"wide","style":{"spacing":{"padding":{"top":"50px","bottom":"50px"}}}} -->
<div id="san-pham" class="wp-block-group alignwide" style="max-width:1200px;margin:0 auto;padding-top:50px;padding-bottom:50px;">
  <h2 style="text-align:center;font-size:2.2rem;margin-bottom:40px;color:#1e293b;">SẢN PHẨM NỔI BẬT</h2>
  
  <div style="display:grid;grid-template-columns:repeat(auto-fit, minmax(280px, 1fr));gap:25px;">
    
    <div style="border:1px solid #e2e8f0;border-radius:12px;padding:20px;box-shadow:0 4px 6px -1px rgba(0,0,0,0.1);background:#fff;">
      <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=500&q=80" style="width:100%;height:200px;object-fit:cover;border-radius:8px;margin-bottom:15px;" alt="Dell XPS 15">
      <span style="background:#e0f2fe;color:#0369a1;padding:4px 10px;border-radius:15px;font-size:0.8rem;font-weight:bold;">LAPTOP CAO CẤP</span>
      <h3 style="margin:12px 0 8px;font-size:1.3rem;">Dell XPS 15 (2026)</h3>
      <p style="color:#64748b;font-size:0.95rem;">Intel Core Ultra 9, 32GB RAM, 1TB SSD, Màn hình 3.5K OLED sắc nét nguyên khối.</p>
      <div style="display:flex;justify-content:space-between;align-items:center;margin-top:15px;">
        <span style="font-size:1.3rem;font-weight:bold;color:#ef4444;">48.990.000₫</span>
        <a href="#" style="background:#0f172a;color:#fff;padding:8px 16px;border-radius:6px;text-decoration:none;font-size:0.9rem;">Xem chi tiết</a>
      </div>
    </div>

    <div style="border:1px solid #e2e8f0;border-radius:12px;padding:20px;box-shadow:0 4px 6px -1px rgba(0,0,0,0.1);background:#fff;">
      <img src="https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5?w=500&q=80" style="width:100%;height:200px;object-fit:cover;border-radius:8px;margin-bottom:15px;" alt="iPhone 17 Pro">
      <span style="background:#fef3c7;color:#b45309;padding:4px 10px;border-radius:15px;font-size:0.8rem;font-weight:bold;">SMARTPHONE</span>
      <h3 style="margin:12px 0 8px;font-size:1.3rem;">iPhone 17 Pro Max 512GB</h3>
      <p style="color:#64748b;font-size:0.95rem;">Khung Titan cấp 5, Chip A19 Pro, Camera tiềm vọng siêu zoom ban đêm.</p>
      <div style="display:flex;justify-content:space-between;align-items:center;margin-top:15px;">
        <span style="font-size:1.3rem;font-weight:bold;color:#ef4444;">36.490.000₫</span>
        <a href="#" style="background:#0f172a;color:#fff;padding:8px 16px;border-radius:6px;text-decoration:none;font-size:0.9rem;">Xem chi tiết</a>
      </div>
    </div>

    <div style="border:1px solid #e2e8f0;border-radius:12px;padding:20px;box-shadow:0 4px 6px -1px rgba(0,0,0,0.1);background:#fff;">
      <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80" style="width:100%;height:200px;object-fit:cover;border-radius:8px;margin-bottom:15px;" alt="Sony WH-1000XM6">
      <span style="background:#dcfce7;color:#15803d;padding:4px 10px;border-radius:15px;font-size:0.8rem;font-weight:bold;">ÂM THANH</span>
      <h3 style="margin:12px 0 8px;font-size:1.3rem;">Tai nghe Sony WH-1000XM6</h3>
      <p style="color:#64748b;font-size:0.95rem;">Chống ồn thích ứng AI, pin 40 giờ, chất lượng âm thanh chuẩn Hi-Res Audio.</p>
      <div style="display:flex;justify-content:space-between;align-items:center;margin-top:15px;">
        <span style="font-size:1.3rem;font-weight:bold;color:#ef4444;">8.490.000₫</span>
        <a href="#" style="background:#0f172a;color:#fff;padding:8px 16px;border-radius:6px;text-decoration:none;font-size:0.9rem;">Xem chi tiết</a>
      </div>
    </div>

  </div>
</div>
<!-- /wp:group -->
'

# Cai dat Trang Chu lam trang mac dinh
PAGE_ID=$(wp post list --post_type=page --post_title='Trang Chủ' --field=ID)
wp option update show_on_front page
wp option update page_on_front $PAGE_ID
echo "Setup giao dien hoan tat!"
