@echo off
color 0A
cls

echo.
echo  ====================================================================
echo.
echo              GESTIONE CHIAVI CASE VACANZA
echo              Versione Grafica
echo.
echo  ====================================================================
echo.

cd /d "%~dp0"

REM Chiudi processi Python eventualmente attivi
taskkill /F /IM python.exe /T >nul 2>&1
taskkill /F /IM pythonw.exe /T >nul 2>&1
timeout /t 1 /nobreak >nul

REM Pulisci TUTTA la cache Python ricorsivamente
echo  Pulizia cache in corso...
for /d /r . %%d in (__pycache__) do @if exist "%%d" rd /s /q "%%d"
del /s /q *.pyc >nul 2>&1

echo  Avvio interfaccia grafica...
echo.

python -B gui_main.py

if errorlevel 1 (
    color 0C
    echo.
    echo  ====================================================================
    echo   ERRORE durante l'avvio!
    echo  ====================================================================
    pause
)
