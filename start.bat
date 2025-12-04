@echo off
chcp 65001 >nul
cls
echo.
echo ╔════════════════════════════════════════╗
echo ║     LANCEMENT DU BOT                   ║
echo ║   Bot Ultra-Rapide + Tracking         ║
echo ╚════════════════════════════════════════╝
echo.
echo Démarrage dans 3 secondes...
echo.
echo CONTRÔLES:
echo   [P] - Pause/Reprise du bot
echo   [$] - Quitter le programme
echo.

python bot.py

if %errorlevel% neq 0 (
    echo.
    echo ✗ Erreur lors de l'exécution du bot
    echo Assurez-vous que les dépendances sont installées
    echo Exécutez d'abord: install.bat
    echo.
    pause
)
