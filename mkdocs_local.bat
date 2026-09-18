@ECHO OFF
REM Vista previa local: deja esta ventana abierta; al guardar en docs/ o mkdocs.yml el sitio se regenera (si Click < 8.3).
cd /d "%~dp0"
call .venv\Scripts\mkdocs.exe serve
pause
