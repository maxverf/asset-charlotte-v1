@echo off
echo ========================================
echo   Push vers GitHub - asset-charlotte-v1
echo ========================================

cd /d "%~dp0"

echo Initialisation Git...
git init

echo Connexion au repo GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/maxverf/asset-charlotte-v1.git

echo Recuperation du repo existant...
git pull origin main --allow-unrelated-histories

echo Ajout de tous les fichiers...
git add .

echo Commit...
git commit -m "Ajout asset description, photo et texte"

echo Push vers GitHub...
git push origin main

echo ========================================
echo   DONE ! Verifie ton GitHub :)
echo ========================================
pause