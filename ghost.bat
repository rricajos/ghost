@echo off
cls
color 0A
title Reparación GlobalProtect - Estilo Hacker

echo.
echo ================================
echo      [REPARANDO VPN]
echo ================================
echo.

:: Introducción estilo hacker
echo Conectando a la red... 
ping 127.0.0.1 -n 1 >nul
echo >> Conexion establecida...
timeout /t 1 >nul
cls
echo Iniciando proceso de reparación...
echo =======================================
echo Analizando paquetes y servicios...

:: 1. Detener el servicio de GlobalProtect
echo [*] Deteniendo servicio de GlobalProtect...
net stop PanGPS /y
timeout /t 2 /nobreak >nul

:: 2. Reiniciar el servicio de GlobalProtect
echo [*] Reiniciando servicio de GlobalProtect...
net start PanGPS
timeout /t 2 /nobreak >nul

:: 3. Limpiar caché de DNS y renovar configuración de red
echo [*] Limpiando caché de DNS...
ipconfig /flushdns
timeout /t 1 /nobreak >nul
echo [*] Renovando configuración de red...
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int ip reset
timeout /t 2 /nobreak >nul

:: 4. Finalizar proceso de GlobalProtect y reiniciarlo
echo [*] Terminando procesos de GlobalProtect...
taskkill /F /IM PanGPA.exe /T >nul
taskkill /F /IM PanGPS.exe /T >nul
timeout /t 2 /nobreak >nul

:: 5. Reiniciar GlobalProtect
echo [*] Reiniciando GlobalProtect...
start "" "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPA.exe" >nul
start "" "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPS.exe" >nul
timeout /t 3 /nobreak >nul

:: Mensaje final
cls
echo =======================================
echo Proceso finalizado con exito.
echo Reintenta la conexion a GlobalProtect.
echo =======================================
echo.
pause
exit
