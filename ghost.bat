@echo off
cls

title [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
net stop PanGPS /y
timeout /t 3000 /nobreak >nul
cls

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
echo [2] Reiniciando servicio de GlobalProtect...
net start PanGPS
timeout /t 3000 /nobreak >nul
cls

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
echo [2] Reiniciando servicio de GlobalProtect...
echo [3] Limpiando caché de DNS...
ipconfig /flushdns
timeout /t 3000 /nobreak >nul
cls

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
echo [2] Reiniciando servicio de GlobalProtect...
echo [3] Limpiando caché de DNS...
echo [4] Renovando configuración de red...
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int ip reset
timeout /t 3000 /nobreak >nul
cls

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
echo [2] Reiniciando servicio de GlobalProtect...
echo [3] Limpiando caché de DNS...
echo [4] Renovando configuración de red...
echo [5] Terminando procesos de GlobalProtect...
taskkill /F /IM PanGPA.exe /T >nul
taskkill /F /IM PanGPS.exe /T >nul
timeout /t 2 /nobreak >nul

echo ================================================================
echo [ GHOST ] 😈💻 Global-Protect Host Offline Support Tool 
echo ================================================================
echo [1] Deteniendo servicio PanGPS...
echo [2] Reiniciando servicio de GlobalProtect...
echo [3] Limpiando caché de DNS...
echo [4] Renovando configuración de red...
echo [5] Terminando procesos de GlobalProtect...
echo [6] Reiniciando GlobalProtect...
start "" "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPA.exe" >nul
timeout /t 3 /nobreak >nul


cls
echo =======================================
echo Proceso finalizado con exito.
echo Reintenta la conexion a GlobalProtect.
echo =======================================
echo.
pause
exit
