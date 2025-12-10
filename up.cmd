

@echo off

set "filename=README.md"
:: Captura informações
set "HOSTNAME=%COMPUTERNAME%"
set "DATA=%date%"
set "HORA=%time:~0,8%"

:: Cria o README.md
(
echo # 🚀 Projeto Atualizado **%DATA% %HORA%** ⚙️
echo.
echo.
echo ^<img width="300" src="https://dl.flathub.org/media/com/jetbrains/IntelliJ-IDEA-Ultimate/a545fa563e482739d97669b1c1b8a40c/icons/128x128/com.jetbrains.IntelliJ-IDEA-Ultimate.png" alt="CRUD PHP Laravel" style="border: 5px solid #333; border-radius: 10px;" /^>

echo. >> %filename%
echo ## Informações do sistema >> %filename%
echo - Data e hora: %date_time% >> %filename%
echo - Usuário: %USERNAME% >> %filename%
echo - Computador: %COMPUTERNAME% >> %filename%
echo - Diretório atual: %CD% >> %filename%
for /f "tokens=* delims=" %%g in ('git --version') do echo - %%g >> %filename%
echo. >> %filename%


echo. >> %filename%
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get Version') do if not "%%a"=="" echo - Versao do Windows: %%a >> "%filename%"
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get BuildNumber') do if not "%%a"=="" echo - Build: %%a >> "%filename%"
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get OSArchitecture') do if not "%%a"=="" echo - Arquitetura: %%a >> "%filename%"

echo.
echo 📅 Última atualização: **%DATA% %HORA%**
echo.
echo Diretório atual: %CD%
echo.
echo Hostname da máquina: %HOSTNAME%
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
) > README.md

git init
git add . -v
git commit -m "first commit"
:: git branch -M main
git remote add origin git@github.com:josimaribeiro/java_2025.git
git push -u origin main