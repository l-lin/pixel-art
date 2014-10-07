@echo off
SETLOCAL EnableDelayedExpansion

SET CURRENT_DIR=%~dp0

echo pixel-art > README.md
echo ========= >> README.md
echo/ >> README.md

for /r %%f in (*.png) do (
    SET IMG=%%~nf
    SET FILE=%%f
    SET FILE_WITH_DIR=!FILE:%CURRENT_DIR%=!
    SET FINAL_FILE_NAME=!FILE_WITH_DIR:\=/!

    echo ^^![!IMG!]^(!FINAL_FILE_NAME!^) >> README.md
)

ENDLOCAL
