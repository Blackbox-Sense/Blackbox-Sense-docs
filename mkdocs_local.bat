@ECHO OFF
REM Vista previa local: deja esta ventana abierta; al guardar en docs/ o mkdocs.yml el sitio se regenera (si Click < 8.3).
REM Primera vez en esta PC: crea el entorno virtual e instala dependencias solo.
cd /d "%~dp0"

if not exist .venv (
    echo Primera vez en esta PC: creando entorno virtual e instalando dependencias...
    python -m venv .venv
    if not exist .venv (
        echo No se encontro Python. Instalalo desde https://www.python.org/downloads/ y vuelve a correr este archivo.
        pause
        exit /b 1
    )
    call .venv\Scripts\pip.exe install --quiet -r requirements.txt
)

call .venv\Scripts\mkdocs.exe serve
pause
