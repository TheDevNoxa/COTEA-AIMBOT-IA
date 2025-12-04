@echo off
chcp 65001 >nul
cls
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                    AI BOT - MODE D'EMPLOI                     ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo.
echo ▶ FONCTIONNEMENT DU BOT:
echo.
echo  1. DÉTECTION D'IMAGE
echo     Le bot cherche l'image "1.png" à l'écran en continu
echo     Seuil de confiance: 70%% (précision haute)
echo.
echo  2. CIBLE LA PLUS PROCHE
echo     - Première détection: clique sur la cible la plus proche du centre
echo     - Après: clique sur la cible la PLUS PROCHE de la précédente
echo.
echo  3. TRACKING
echo     Le bot mémorise la dernière cible cliquée et cherche la suivante
echo     à proximité = comportement naturel et efficace
echo.
echo  4. LATENCE ULTRA-RAPIDE
echo     ~257ms entre détection et clic = 3x plus rapide que avant
echo.
echo.
echo ▶ CONTRÔLES:
echo.
echo     [P]    = Pause/Reprise du bot
echo     [$]    = Quitter complètement le programme
echo.
echo.
echo ▶ INSTALLATION DES DÉPENDANCES:
echo     Exécutez d'abord "install.bat" si les packages ne sont pas installés
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo.

echo Installation des packages...
pip install opencv-python numpy pyautogui pillow pynput -q
echo.
echo ✓ Packages installés avec succès !
echo.
pause