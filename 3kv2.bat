@echo off
title scan - andrei3k
cd %APPDATA%\Microsoft\Windows\Recent
echo ================================
echo Lista fisierelor recente 
echo ================================
echo.

:: Sortează fișierele după dată și oră și le afișează
for /f "skip=5 tokens=1-4*" %%A in ('dir /T:W /O:-D /A:-D') do (
    echo %%A %%B %%C %%D - %%E
)

echo.
pause
