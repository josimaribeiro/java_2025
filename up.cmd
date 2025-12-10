

@echo off


:: Captura informações
set "HOSTNAME=%COMPUTERNAME%"
set "DATA=%date%"
set "HORA=%time:~0,8%"

:: Cria o README.md
(
echo # 🚀 Projeto Atualizado **%DATA% %HORA%** ⚙️
echo.
echo.
echo ^<img width="300" src="https://media.licdn.com/dms/image/v2/D5612AQGKYHDBZ5TSsQ/article-cover_image-shrink_720_1280/B56ZXgoCPAGoAM-/0/1743230357920?e=2147483647&v=beta&t=0pojjG98v9aleVMOSCWaGAuES7IoSf2wWIfO4j0gIRE" alt="CRUD PHP Laravel" style="border: 5px solid #333; border-radius: 10px;" /^>
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
git branch -M main
git remote add origin git@github.com:josimaribeiro/java_2025.git
git push -u origin main