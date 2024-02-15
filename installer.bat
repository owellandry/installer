@echo off

REM Detectar el idioma del sistema operativo
for /f "tokens=2 delims==" %%I in ('wmic os get locale ^| find /i "locale"') do set "locale=%%I"

REM Verificar el idioma y establecer la carpeta de Descargas correspondiente
if "%locale%"=="es-ES" (
    set "downloads_folder=%USERPROFILE%\Descargas"
) else (
    set "downloads_folder=%USERPROFILE%\Downloads"
)

REM Crear la carpeta "installer" si no existe en la carpeta de Descargas
if not exist "%downloads_folder%\installer" mkdir "%downloads_folder%\installer"

REM Entrar en la carpeta "installer"
cd /d "%downloads_folder%\installer"

REM Descargar todos los programas usando curl
curl -o "Visual-Studio-Code.exe" -L "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
curl -o "Discord-Setup.exe" -L "https://discord.com/api/download?platform=win"
curl -o "PSeInt-Installer.exe" -L "https://netactuate.dl.sourceforge.net/project/pseint/20240122/pseint-w64-20240122.exe"
curl -o "Git-Installer.exe" -L "https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe"
curl -o "GitHub-Desktop-Setup.exe" -L "https://desktop.githubusercontent.com/github-desktop/releases/3.3.8-48bb7059/GitHubDesktopSetup-x64.exe"
curl -o "Python-Installer.exe" -L "https://www.python.org/ftp/python/3.9.9/python-3.9.9-amd64.exe"
curl -o "get-pip.py" -L "https://bootstrap.pypa.io/get-pip.py"
curl -o "Postman-Installer.exe" -L "https://dl.pstmn.io/download/latest/win64"
curl -o "Insomnia-Setup.exe" -L "https://updates.insomnia.rest/downloads/windows/latest"
curl -o "MongoDB-Installer.msi" -L "https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.6-rc0-signed.msi"
curl -o "MongoShell-Installer.msi" -L "https://downloads.mongodb.com/compass/mongosh-2.1.4-x64.msi"
curl -o "MySQL-Installer.msi" -L "https://dev.mysql.com/get/Downloads/MySQL-8.3/mysql-8.3.0-winx64.msi"
curl -o "MySQLWorkbench-Installer.msi" -L "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.36-winx64.msi"
curl -o "DBeaver-Setup.exe" -L "https://dbeaver.io/download/files/dbeaver-ce-latest-x86_64-setup.exe"
curl -o "Postgres-Installer.exe" -L "https://sbp.enterprisedb.com/getfile.jsp?fileid=1258259"
curl -o "PGAdmin-Installer.exe" -L "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v8.3/windows/pgadmin4-8.3-x64.exe"
curl -o "Java-Installer.exe" -L "https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.exe"
curl -o "NetBeans-Installer.exe" -L "https://dlcdn.apache.org/netbeans/netbeans-installers/20/Apache-NetBeans-20r1-bin-windows-x64.exe"
curl -o "Composer-Setup.exe" -L "https://getcomposer.org/Composer-Setup.exe"
curl -o "Notion-Setup.exe" -L "https://www.notion.so/desktop/windows/download"
curl -o "Termius-Installer.exe" -L "https://termi.us/win"
curl -o "Chrome-Setup.exe" -L "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=win64&lang=en-US"
curl -o "Typora-Setup.exe" -L "https://download.typora.io/windows/typora-setup-x64.exe"
curl -o "OBS-Installer.exe" -L "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.0.2-Full-Installer-x64.exe"
curl -o "Packet-tracer.exe" -L "https://archive.org/download/cisco-packet-tracer-820-windows-64bit-1048513af-2/Cisco_Packet_Tracer_820_Windows_64bit_1048513af2.exe"

@REM curl -o "StarUML-Setup.exe" -L "https://staruml.io/api/download/releases-v6/StarUML%20Setup%206.0.1.exe"
@REM curl -o "Docker-Desktop-Installer.exe" -L "https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe"

echo Todos los programas han sido descargados correctamente.
pause
