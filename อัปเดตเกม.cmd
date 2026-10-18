@echo off
chcp 65001 >nul
cd /d C:\TaeGames

echo กำลังก๊อปเกมเวอร์ชันล่าสุดจาก C:\Tae ...
for %%F in (game.html fishing.html fishing3d.html racing.html zombie.html) do (
  copy /y "C:\Tae\%%F" "C:\TaeGames\%%F" >nul
)

git add -A
git diff --cached --quiet && (
  echo ไม่มีอะไรเปลี่ยน เกมบนเว็บเป็นเวอร์ชันล่าสุดอยู่แล้ว
) || (
  git commit -m "อัปเดตเกมเวอร์ชันล่าสุด" >nul
  echo กำลังส่งขึ้นเว็บ ...
  git push
  echo เสร็จแล้ว! เปิดดูได้ที่ https://taeza2558.github.io/tae-games/
)

echo.
pause
