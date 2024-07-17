@echo off

echo **********************************************************************
echo ************************BY PEZCORAL***********************************
echo **********************************************************************
echo ***************ARREGLAR MYSQL ERROR XAMPP*****************************
echo **********************************************************************
echo **********************************************************************
echo Attempting to start MySQL app...
echo Status change detected: running
echo Status change detected: stopped
echo Error: MySQL shutdown unexpectedly.
echo This may be due to a blocked port, missing dependencies, 
echo improper privileges, a crash, or a shutdown by another method.
echo Press the Logs button to view error logs and check
echo the Windows Event Viewer for more clues
echo If you need more help, copy and post this
echo entire log window on the forums
echo **********************************************************************
echo **********************************************************************
echo **********************************************************************
echo.
echo.
echo Hola, vas a arreglar el problema de XAMPP.
pause

REM Obtener la ruta del directorio actual
set "basePath=%~dp0"

REM Construir las rutas relativas
set "dataPath=%basePath%..\mysql\data"
set "backupPath=%basePath%..\mysql\backup"

echo.
echo.

REM Obtener la fecha y hora actual
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "datetime=%%a"
set "datetime=%datetime:~0,8%_%datetime:~8,6%"

REM Construir la ruta de respaldo con la fecha y hora actual
set "oldDataPath=%basePath%..\mysql\data_old_%datetime%"

echo.
echo.
echo (1/4) Renombrar la carpeta data a data_old con la marca de tiempo 
ren "%dataPath%" "data_old_%datetime%"
echo.
echo Completado (1/4) - Renombrada carpeta actual a data_old_%datetime%.
echo.
echo.
echo (2/4) Duplicar la carpeta backup con el nuevo nombre data 
xcopy /E /I "%backupPath%" "%dataPath%"
echo.
echo Completado (2/4) - Copiada la carpeta backup a data.
echo.
echo.
echo (3/4) Restableciendo la carpeta data desde la copia de seguridad. 
echo.
copy "%oldDataPath%\ibdata1" "%dataPath%"
echo Completado (3/4) - Restablecida la estructura con ibdata1
echo.
echo.
echo (4/4) Copiar las carpetas que no se llamen ni "mysql", ni "performance_schema", ni "phpmyadmin", ni "test"
echo.
for /D %%G in ("%oldDataPath%\*") do (
    if not "%%~nxG"=="mysql" if not "%%~nxG"=="performance_schema" if not "%%~nxG"=="phpmyadmin" if not "%%~nxG"=="test" (
        xcopy /E /I "%%G" "%dataPath%\%%~nxG"
        echo Restableciendo la base de datos: %%~nxG
    )
)
echo.
echo.
echo -----------------------------------------------------------------------
echo Completado (4/4) - Restablecimiento completado. 
echo Regrese a XAMPP y vuelva a iniciar el servicio.  Pulsa Enter para salir.
pause
