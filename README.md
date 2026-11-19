# ตารางจ่ายหนี้

เว็บแอพวางแผนจ่ายบัตร/หนี้รายเดือน ใช้ได้ทั้งมือถือ แท็บเล็ต คอม (ติดตั้งเป็น PWA ได้)

## ใช้งานแบบไม่ล็อกอิน
เปิด index.html ได้เลย ข้อมูลเก็บในเบราว์เซอร์เครื่องนั้น (ส่งออก/นำเข้า JSON ได้ในหน้า ตั้งค่า)

## เปิดใช้หลายเครื่อง (Supabase ฟรี)
1. supabase.com > New project
2. SQL Editor > วางไฟล์ `supabase.sql` > Run
3. Authentication > Providers: เปิด Email (magic link) และ/หรือ Google
4. Authentication > URL Configuration: Site URL = ลิงก์ GitHub Pages ของคุณ
5. Project Settings > API: คัดลอก Project URL และ anon key ใส่ใน `config.js`
6. commit แล้วรอ Pages อัพเดต

ข้อมูลของแต่ละคนเก็บแยกด้วย Row Level Security (อ่าน/เขียนได้เฉพาะแถวของตัวเอง)

## เผยแพร่ด้วย GitHub Pages
Settings > Pages > Deploy from branch > main / root
