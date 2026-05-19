$ErrorActionPreference = "Stop"

Write-Host "1. A preparar a pasta de assets (imagens)..."
if (!(Test-Path "assets")) {
    New-Item -ItemType Directory -Force -Path "assets" | Out-Null
}

Write-Host "2. A copiar as imagens geradas para a pasta do projeto..."
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_wellness_1779155602428.png" -Destination "assets\wellness_hero.png"
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\wellness_support_1779156846528.png" -Destination "assets\wellness_support.png"
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\wellness_neurosonic_1779156862891.png" -Destination "assets\wellness_neurosonic.png"
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_team_1779155630628.png" -Destination "assets\team_hero.png"
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_kids_1779155616693.png" -Destination "assets\kids_hero.png"
Copy-Item -Force "C:\Users\Samuel Wildary\.gemini\antigravity\brain\a8e29365-d44e-44a7-a4ea-dd7e9b7e238b\clinic_hero_logo_1779193430230.png" -Destination "assets\hero_logo.png"
Copy-Item -Force "..\Design sem nome.png" -Destination "assets\logo_dark.png"
Copy-Item -Force "..\Design sem nome (1).png" -Destination "assets\logo_light.png"

Write-Host "3. A criar o README..."
Set-Content -Path "README.md" -Value "# Clínica Luís Santos" -Encoding UTF8

Write-Host "4. A inicializar e a enviar para o GitHub..."
git init
git add .
git commit -m "first commit: Site completo com imagens geradas"
git branch -M main

# Verificar se a origem já existe, se sim remover para evitar erro e adicionar a nova
git remote remove origin 2>$null
git remote add origin git@github.com:samuel-wildary/sitedrluissantos.git

git push -u origin main

Write-Host "`nProcesso concluído! O código já deve estar no GitHub, pronto para o Easypanel!" -ForegroundColor Green
Pause
