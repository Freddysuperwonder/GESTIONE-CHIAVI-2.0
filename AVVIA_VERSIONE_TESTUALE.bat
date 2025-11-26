@echo off
REM Avvio applicazione Gestione Chiavi Case Vacanza
title Gestione Chiavi Case Vacanza

REM Cambia directory alla cartella del programma
cd /d "%~dp0"

REM Avvia l'applicazione Python
python main.py

REM Pausa finale in caso di errore
if errorlevel 1 (
    echo.
    echo Errore durante l'esecuzione del programma!
    pause
)
