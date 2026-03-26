@echo off
setlocal

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set currentDate=%%i

git add price.xls
git add price_poltava.xls
git commit -m "Adding files of price - %currentDate%"
git push
@pause
