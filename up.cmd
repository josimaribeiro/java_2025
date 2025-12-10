@echo off
setlocal

set "filename=README.md"

:: Informações básicas
set "HOSTNAME=%COMPUTERNAME%"
set "DATA=%date%"
set "HORA=%time:~0,8%"

:: Cria o README.md (SEM >> interno)
(
echo # 🚀 Projeto Atualizado **%DATA% %HORA%** ⚙️
echo.
echo ^<img width="300" src="https://dl.flathub.org/media/com/jetbrains/IntelliJ-IDEA-Ultimate/a545fa563e482739d97669b1c1b8a40c/icons/128x128/com.jetbrains.IntelliJ-IDEA-Ultimate.png" alt="Projeto Java" /^>
echo.
echo ## 📋 Informações do sistema
echo - Data e hora: %DATA% %HORA%
echo - Usuário: %USERNAME%
echo - Computador: %COMPUTERNAME%
echo - Diretório atual: %CD%
for /f "delims=" %%g in ('git --version 2^>nul') do echo - %%g
echo.
for /f "skip=1 delims=" %%a in ('wmic os get Version') do if not "%%a"=="" echo - Versão do Windows: %%a
for /f "skip=1 delims=" %%a in ('wmic os get BuildNumber') do if not "%%a"=="" echo - Build: %%a
for /f "skip=1 delims=" %%a in ('wmic os get OSArchitecture') do if not "%%a"=="" echo - Arquitetura: %%a
echo.
echo ---
echo.
echo ## 📌 Histórico
echo Este projeto é atualizado automaticamente via script.
echo.
echo ✔️ Commits enviados diretamente para o repositório remoto
echo ✔️ Registro de data e hora no README.md
echo.
echo ---
echo.
echo 💻🧠✅✏️❌🔍📦
) > "%filename%"

:: Inicializa o Git apenas se não existir
if not exist .git (
    git init
)

git add . -v

git commit -m "Atualização automática em %DATA% %HORA%"

:: Configura remote apenas se não existir
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin git@github.com:josimaribeiro/java_2025.git
)

git push -u origin main

endlocal

start https://github.com/josimaribeiro/java_2025.git