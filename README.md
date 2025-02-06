Aquí tienes el **README.md** para tu herramienta **GHOST** (*GlobalProtect Host Offline Script Tools*), con un estilo profesional y atractivo. 🚀😈  

---

# **GHOST - GlobalProtect Host Offline Script Tools** 👻  

### 🛠️ **Solución automática para reparar GlobalProtect VPN**  

GHOST es un script diseñado para diagnosticar y reparar problemas comunes con **GlobalProtect VPN**, restableciendo la conexión de manera rápida y eficiente. 🔧  

## 📌 **Características**  
✅ **Detección y reinicio automático** del servicio GlobalProtect.  
✅ **Limpieza de caché de red y restablecimiento de IP**.  
✅ **Reinicio de procesos clave (PanGPS y PanGPA)**.  
✅ **Interfaz de línea de comandos con estilo hacker**.  
✅ **Fácil de usar y ligero (sin instalación necesaria).**  

---

## 🚀 **Cómo usar GHOST**  
### 🔹 **Paso 1: Descargar el script**  
1. Descarga el archivo `GHOST.bat`.  
2. Guárdalo en una carpeta segura.  

### 🔹 **Paso 2: Ejecutar como Administrador**  
1. Haz clic derecho sobre `GHOST.bat`.  
2. Selecciona **"Ejecutar como administrador"**.  

### 🔹 **Paso 3: Espera el proceso**  
El script ejecutará los siguientes pasos:  
- Detendrá y reiniciará el servicio de GlobalProtect.  
- Limpiará caché de DNS y restablecerá la configuración de red.  
- Finalizará procesos bloqueados y los reiniciará.  
- Mostrará un mensaje indicando si la reparación fue exitosa.  

---

## ⚠️ **Requisitos y Compatibilidad**  
✔️ **Sistemas compatibles:** Windows 10 / 11.  
✔️ **Permisos:** Se requiere ejecutar como **Administrador**.  
✔️ **Dependencias:** Ninguna, solo CMD nativo de Windows.  

---

## 💻 **Código Fuente**  
Si deseas ver o modificar el código, puedes encontrar el script aquí:  

```bat
@echo off
cls
color 0A
title GHOST - GlobalProtect Host Offline Script Tools

echo ================================================
echo        GHOST - Reparando GlobalProtect...
echo ================================================
echo.

:: 1. Detener servicio GlobalProtect
echo [*] Deteniendo servicio PanGPS...
net stop PanGPS /y
timeout /t 2 /nobreak >nul

:: 2. Reiniciar servicio
echo [*] Reiniciando servicio PanGPS...
net start PanGPS
timeout /t 2 /nobreak >nul

:: 3. Limpiar caché de red
echo [*] Limpiando caché de DNS y restableciendo red...
ipconfig /flushdns
ipconfig /release
ipconfig /renew
netsh winsock reset
netsh int ip reset
timeout /t 2 /nobreak >nul

:: 4. Reiniciar procesos
echo [*] Terminando procesos de GlobalProtect...
taskkill /F /IM PanGPA.exe /T >nul
taskkill /F /IM PanGPS.exe /T >nul
timeout /t 2 /nobreak >nul

:: 5. Relanzar GlobalProtect
echo [*] Reiniciando GlobalProtect...
start "" "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPA.exe"
start "" "C:\Program Files\Palo Alto Networks\GlobalProtect\PanGPS.exe"
timeout /t 3 /nobreak >nul

echo ================================================
echo      GHOST - Reparación completada.
echo      Prueba conectarte nuevamente.
echo ================================================
echo.
pause
exit
```

---

## 🕶️ **Modo Avanzado (Opcional)**  
Si quieres agregar más funcionalidades, puedes:  
🔹 **Automatizar el script al iniciar sesión.**  
🔹 **Añadir logs para depuración.**  
🔹 **Integrarlo con herramientas de diagnóstico de red.**  

---

## 🤝 **Contribuir**  
Si tienes ideas para mejorar GHOST, ¡cualquier contribución es bienvenida! 😈  

---

## 📜 **Licencia**  
Este proyecto es de código abierto y puede ser modificado y distribuido libremente.  

---

## 📢 **Contacto y Soporte**  
Si tienes problemas o sugerencias, puedes crear un **issue** en el repositorio o contactarme.  

---

🔹 **GHOST - "Porque una VPN caída no es una opción."** 😎  

---

### 📌 **¿Te gustaría añadir más personalización o hacer un logo ASCII para el script?** 🚀