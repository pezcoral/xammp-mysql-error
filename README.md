ES/

# Script para Arreglar MySQL en XAMPP
----------------------------------------------
SOLUCION AL ERROR:
----------------------------------------------
Attempting to start MySQL app...
Status change detected: running
Status change detected: stopped
Error: MySQL shutdown unexpectedly.
This may be due to a blocked port, missing dependencies, 
improper privileges, a crash, or a shutdown by another method.
Press the Logs button to view error logs and check
the Windows Event Viewer for more clues
If you need more help, copy and post this
entire log window on the forums


----------------------------------------------
IMPORTANTE LEER PRIMERO: 
----------------------------------------------

## Descripción

Este script en batch (`.bat`) está diseñado para solucionar problemas comunes de MySQL en XAMPP, específicamente cuando MySQL no se inicia debido a errores inesperados. Estos errores pueden ser causados por un puerto bloqueado, dependencias faltantes, privilegios incorrectos, un bloqueo o un apagado forzado.

## Instrucciones de Uso

1. **Descarge y Prepare el Script**:
   - Descarge el archivo `fix_mysql_xampp.bat` dentro de la carpeta de XAMMP donde van los sitios web que comunmente es C:/xampp/htdocs/

2. **Ejecución del Script**:
   - Haga doble clic en el archivo `fix_mysql_xampp.bat` para ejecutarlo.
   - Siga las instrucciones en pantalla. El script realizará las siguientes acciones:

    **Detección de Problemas**: El script inicia con una serie de mensajes que describen el estado de MySQL y los posibles problemas.
   
    **Respaldo de Datos**: Realiza un respaldo de la carpeta `data` actual, renombrándola con una marca de tiempo para conservar una copia de seguridad.
   
    **Restauración desde Respaldo**: Copia los archivos de la carpeta `backup` de MySQL a una nueva carpeta `data`.
   
    **Restauración de Archivos Críticos**: Copia el archivo `ibdata1` necesario para MySQL desde la carpeta de respaldo.
   
    **Restauración de Bases de Datos**: Copia todas las bases de datos, excepto las carpetas del sistema (`mysql`, `performance_schema`, `phpmyadmin`, `test`), desde la carpeta de respaldo a la nueva carpeta `data`.


4. **Reiniciar MySQL**:
   - Una vez completado el script, regrese a la consola XAMPP y reinicie el servicio de MySQL.

## ESTE SCRIPT ES DE USO LIBRE POR LO QUE DEBE VERIFICAR SU FUNCIONAMIENTO ANTES DE EJECUTARLO, USTED ES RESPONSABLE DE ELLO. 


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

EN/

# Script to Fix MySQL in XAMPP
----------------------------------------------
SOLUTION TO THE ERROR:
----------------------------------------------
Attempting to start MySQL app...
Status change detected: running
Status change detected: stopped
Error: MySQL shutdown unexpectedly.
This may be due to a blocked port, missing dependencies, 
improper privileges, a crash, or a shutdown by another method.
Press the Logs button to view error logs and check
the Windows Event Viewer for more clues.
If you need more help, copy and post this
entire log window on the forums.

----------------------------------------------
IMPORTANT TO READ FIRST:
----------------------------------------------

## Description

This batch script (`.bat`) is designed to solve common MySQL issues in XAMPP, specifically when MySQL fails to start due to unexpected errors. These errors can be caused by a blocked port, missing dependencies, improper privileges, a crash, or a forced shutdown.

## Usage Instructions

1. **Download and Prepare the Script**:
   - Download the `fix_mysql_xampp.bat` file and place it in the XAMPP folder where the websites are usually located, typically C:/xampp/htdocs/.

2. **Running the Script**:
   - Double-click the `fix_mysql_xampp.bat` file to execute it.
   - Follow the on-screen instructions. The script will perform the following actions:

    **Problem Detection**: The script starts with a series of messages describing the status of MySQL and possible issues.
    **Data Backup**: It creates a backup of the current `data` folder, renaming it with a timestamp to preserve a copy.
    **Restoration from Backup**: It copies the files from the MySQL `backup` folder to a new `data` folder.
    **Restoration of Critical Files**: It copies the necessary `ibdata1` file for MySQL from the backup folder.
    **Database Restoration**: It copies all databases, except the system folders (`mysql`, `performance_schema`, `phpmyadmin`, `test`), from the backup folder to the new `data` folder.

3. **Restart MySQL**:
   - Once the script is completed, return to the XAMPP console and restart the MySQL service.

## THIS SCRIPT IS FREE TO USE, SO YOU MUST VERIFY ITS FUNCTIONALITY BEFORE RUNNING IT. YOU ARE RESPONSIBLE FOR ITS USE.

