@echo off

REM Crear la carpeta "installer" si no existe
if not exist "C:\Users\Administrador\Descargas\installer" mkdir "C:\Users\Administrador\Descargas\installer"

REM Entrar en la carpeta "installer"
cd /d C:\Users\Administrador\Descargas\installer

REM Descargar todos los programas usando curl
curl -o "VisualStudioCode.exe" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
curl -o "DiscordSetup.exe" "https://discord.com/api/download?platform=win"
curl -o "PSeIntInstaller.exe" "https://netactuate.dl.sourceforge.net/project/pseint/20240122/pseint-w64-20240122.exe"
curl -o "GitInstaller.exe" "https://objects.githubusercontent.com/github-production-release-asset-2e65be/23216272/a93c7233-5099-4ce1-8597-efb65113b310?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240214%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240214T180139Z&X-Amz-Expires=300&X-Amz-Signature=5c2196a7d3124f13098fe5662b58b08760d5e71c6c0c2aa0dfec84b204b71b5d&X-Amz-SignedHeaders=host&actor_id=81540116&key_id=0&repo_id=23216272&response-content-disposition=attachment%3B%20filename%3DGit-2.43.0-64-bit.exe&response-content-type=application%2Foctet-stream"
curl -o "GitHubDesktopSetup.exe" "https://desktop.githubusercontent.com/github-desktop/releases/3.3.8-48bb7059/GitHubDesktopSetup-x64.exe"
curl -o "PythonInstaller.exe" "https://www.python.org/ftp/python/3.9.9/python-3.9.9-amd64.exe"
curl -o "get-pip.py" "https://bootstrap.pypa.io/get-pip.py"
curl -o "PostmanInstaller.exe" "https://dl.pstmn.io/download/latest/win64"
curl -o "InsomniaSetup.exe" "https://updates.insomnia.rest/downloads/windows/latest"
curl -o "StarUMLSetup.exe" "https://files.staruml.io/releases-v6/StarUML%20Setup%206.0.1.exe"
curl -o "MongoDBInstaller.msi" "https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.6-rc0-signed.msi"
curl -o "MongoShellInstaller.msi" "https://downloads.mongodb.com/compass/mongosh-2.1.4-x64.msi"
curl -o "MySQLInstaller.msi" "https://dev.mysql.com/get/Downloads/MySQL-8.3/mysql-8.3.0-winx64.msi"
curl -o "MySQLWorkbenchInstaller.msi" "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.36-winx64.msi"
curl -o "DBeaverSetup.exe" "https://dbeaver.io/download/files/dbeaver-ce-latest-x86_64-setup.exe"
curl -o "PostgresInstaller.exe" "https://sbp.enterprisedb.com/getfile.jsp?fileid=1258259"
curl -o "PGAdminInstaller.exe" "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v8.3/windows/pgadmin4-8.3-x64.exe"
curl -o "DockerInstaller.exe" "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*7l4223*_ga*MTUwOTYzNjgzMC4xNzA3OTM0NTY3*_ga_XJWPQMJYHQ*MTcwNzkzNDU2Ny4xLjEuMTcwNzkzNDU3NC41My4wLjA."
curl -o "JavaInstaller.exe" "https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.exe"
curl -o "NetBeansInstaller.exe" "https://dlcdn.apache.org/netbeans/netbeans-installers/20/Apache-NetBeans-20r1-bin-windows-x64.exe"
curl -o "ComposerSetup.exe" "https://getcomposer.org/Composer-Setup.exe"
curl -o "NotionSetup.exe" "https://desktop-release.notion-static.com/Notion%20Setup%203.1.1.exe"
curl -o "TermiusInstaller.exe" "https://termi.us/win"
curl -o "ChromeSetup.exe" "https://download.mozilla.org/?product=firefox-devedition-stub&os=win&lang=en-US&attribution_code=c291cmNlPShub3Qgc2V0KSZtZWRpdW09KGRpcmVjdCkmY2FtcGFpZ249KG5vdCBzZXQpJmNvbnRlbnQ9KG5vdCBzZXQpJmV4cGVyaW1lbnQ9KG5vdCBzZXQpJnZhcmlhdGlvbj0obm90IHNldCkmdWE9Y2hyb21lJmNsaWVudF9pZD03MTgyOTYyOTUuMTcwNjY1Mzc2OSZzZXNzaW9uX2lkPTk4NzAwNDI4MzQmZGxzb3VyY2U9bW96b3Jn&attribution_sig=cbe4586e3e7d1871fbd1f5b5284c044e490c368d0817f8cc7e577482f0da9eba"
curl -o "TyporaSetup.exe" "https://download.typora.io/windows/typora-setup-x64.exe"
curl -o "OBSInstaller.exe" "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.0.2-Full-Installer-x64.exe"

echo Todos los programas han sido descargados correctamente.
pause
