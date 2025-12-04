@echo off
chcp 65001 >nul
cls
echo.
echo ╔════════════════════════════════════════╗
echo ║   INSTALLATION DES DÉPENDANCES        ║
echo ╚════════════════════════════════════════╝
echo.
echo Installation en cours...
echo.

pip install opencv-python numpy pyautogui pillow pynput -q

if %errorlevel% equ 0 (
    echo.
    echo ✓ Installation réussie !
    echo.
    pause
) else (
    echo.
    echo ✗ Erreur lors de l'installation
    echo.
    pause
    exit /b 1
)
