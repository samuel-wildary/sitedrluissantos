@echo off
chcp 65001 >nul

echo 1. A preparar a pasta de assets (imagens)...
if not exist "assets" mkdir "assets"

echo 2. A copiar as imagens geradas para a pasta do projeto...
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_wellness_1779155602428.png" "assets\wellness_hero.png"
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\wellness_support_1779156846528.png" "assets\wellness_support.png"
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\wellness_neurosonic_1779156862891.png" "assets\wellness_neurosonic.png"
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_team_1779155630628.png" "assets\team_hero.png"
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_kids_1779155616693.png" "assets\kids_hero.png"
copy /Y "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_hero_logo_1779193430230.png" "assets\hero_logo.png"
copy /Y "..\Design sem nome.png" "assets\logo_dark.png"
copy /Y "..\Design sem nome (1).png" "assets\logo_light.png"

echo 3. A criar o README...
echo # Clinica Luis Santos > README.md

echo 4. A inicializar e a enviar para o GitHub...
git init
git config user.name "Samuel Wildary"
git config user.email "samuel@wildary.com"
git add .
git commit -m "first commit: Site completo com imagens geradas e Dockerfile"
git branch -M main

REM Remove a origem se ja existir, ignora erros se nao existir
git remote remove origin 2>nul
git remote add origin https://github.com/samuel-wildary/sitedrluissantos.git

git push -u origin main

echo.
echo Processo concluido! O codigo ja deve estar no GitHub, pronto para o Easypanel!
pause
