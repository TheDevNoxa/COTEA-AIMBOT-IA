# COTTER — Clicker & Tracking Bot

COTTER est un petit bot de détection d'image et de clic automatique (Windows) conçu pour être rapide et configurable. Il détecte une image modèle à l'écran, choisit la cible la plus proche (tracking) et clique automatiquement.

**Fonctionnalités principales**
- Détection d'image avec OpenCV
- Tracking : clique la cible la plus proche de la dernière cible ou du centre
- Latence optimisée (paramètre `DELAY`) et redimensionnement pour accélérer le matching
- Menu interactif dans le terminal pour configurer les touches (Pause/Resume, Quitter)
- Interface terminal centrée avec ASCII art

**Fichiers importants**
- `bot.py` — script principal
- `install.bat` — installe les dépendances requises (Windows)
- `start.bat` — lance le bot
- `bot.bat` — script d'aide / lancement (optionnel)
- `assets/1.png` — image modèle que le bot cherche (à remplacer selon votre usage)

Prérequis
- Windows (tested)
- Python 3.8+
- Modules Python : `opencv-python`, `numpy`, `pyautogui`, `pillow`, `pynput`

Installation rapide (Windows PowerShell)

```powershell
# Depuis le dossier du projet
.\install.bat
```

ou manuellement :

```powershell
python -m pip install --upgrade pip
pip install opencv-python numpy pyautogui pillow pynput
```

Exécution

- Pour lancer via le script d'assistance :

```powershell
.\start.bat
```

- Ou lancer directement le script Python :

```powershell
python bot.py
```

Menu et configuration
- Au démarrage le menu s'affiche centré. Tu peux :
  - Lancer le bot
  - Changer la touche Pause/Reprise
  - Changer la touche Quitter
  - Voir les touches actuelles

- Le prompt de sélection est affiché centré et commence par `:>`.
- Tu peux aussi modifier par défaut les touches au début de `bot.py` en changeant :

```python
KEY_TOGGLE = 'p'   # touche Pause/Reprise
KEY_EXIT = '$'     # touche Quitter
```

Optimisation et tuning
- `DELAY` (défini dans `main()` et passé au constructeur) contrôle la fréquence de détection (valeurs faibles → plus rapide mais plus CPU). Valeur recommandée : `0.001` à `0.05`.
- Le script redimensionne l'écran et le template (écart 0.5) pour accélérer la détection. Si la précision baisse, augmentez le `THRESHOLD` (entre `0.6` et `0.9`).
- Le mouvement de souris est instantané (`pyautogui.click(x,y)`), si vous souhaitez un mouvement visible, changez `move_and_click`.

Permissions & conseils
- `pyautogui` contrôle la souris — certaines applications (jeux, apps en mode administrateur) peuvent empêcher les clics. Exécutez le script avec les mêmes privilèges que l'application cible.
- Évitez d'utiliser le bot sur des interfaces où des actions automatiques violent des conditions d'utilisation.

Dépannage rapide
- Erreur `Image non trouvée`: vérifiez `assets/1.png` et le chemin au script.
- Latence élevée : vérifiez CPU, fermez applications lourdes, réduisez `DELAY` si possible.
- Problème de permissions : lancez le terminal en administrateur si l'app ciblée en a besoin.

Contribuer
- Suggestions d'amélioration bienvenues. Ouvre une issue ou propose une PR sur le dépôt GitHub.
