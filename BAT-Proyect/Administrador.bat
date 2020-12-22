@echo off

:menu
cls
title Administrador de carpetas
color 20
echo      Administrador de Carpetas
echo ***********************************
echo          1.-Crear carpeta
echo          2._Esconder carpeta
echo          3._Mostrar carpeta oculta
echo          4._Eliminar carpeta
echo          5._Libre
echo          6._Cerrar ventana
echo          7._Cerrar programa
echo ***********************************
echo.
echo.
echo  Por favor ingrese una opcion del menu.
SET/p ver= --Opcion:  
if %ver%==1 goto Nuevo
if %ver%==2 goto Esconder
if %ver%==3 ( goto :Mostrar)
if %ver%==4 goto Eliminar
if %ver%==5 goto menu
if %ver%==6 ( exit)
if %ver%==7 ( goto CerrarPrograma)
echo.
echo %ver% no es una opcion correcta.
echo PULSE ENTER...
pause>nul
goto menu

:Nuevo
set/p carpeta= Ingrese nombre de nueva carpeta:
MD %carpeta%
echo Desea ocultar su carpeta ahora?
set/p esconder=S = si  N = no ...
if %esconder%==s ( attrib +h %carpeta% & echo Carpeta %carpeta% oculta) else echo Carpeta %carpeta% no oculta
pause
goto menu

:Esconder
set/p nombre=Nombre de carpeta que desea esconder:
if exist %nombre% ( attrib +h %nombre% & echo Carpeta %nombre% oculta) else echo Carpeta %nombre% no existe
echo %nombre% NO ES UNA APCION.
pause
goto menu

:Mostrar
set/p recuperar=Nombre de carpeta que desea mostrar:
if exist %recuperar% ( set/p passWord=Ingrese contrasena:) else echo No se encontro carpeta & pause & goto menu
if %passWord%==1234 ( attrib -h %recuperar% & echo Carpeta %recuperar% mostrada) else echo Contrasena no valida & msg * Contrasena no coincide.
echo PULSE ENTER...
pause>nul
goto menu

:Eliminar
set/p eliminar= Ingrese nombre de carpeta a eliminar:
if exist %eliminar% ( RMDIR %eliminar% & echo Carpeta %eliminar% eliminada & pause & goto menu) else echo Carpeta %eliminar% no encontrada. & pause & goto menu
echo %eliminar% NO ES UNA APCION.
pause
goto menu

:CerrarPrograma
taskkill /IM cmd.exe









