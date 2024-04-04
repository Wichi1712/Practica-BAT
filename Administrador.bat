@echo off
REM Creado por Wilfredo Chipana año 2021
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
echo          5._Nuevo documento
echo          6._Cerrar ventana
echo          7._Cerrar programa
echo          8._Libre
echo ***********************************
echo.
echo.
echo  Por favor ingrese una opcion del menu.
SET/p ver= --Opcion:  
if %ver%==1 goto Nuevo
if %ver%==2 goto Esconder
if %ver%==3 ( goto :Mostrar)
if %ver%==4 goto Eliminar
if %ver%==5 goto NuevoDocumento
if %ver%==6 ( exit)
if %ver%==7 ( goto CerrarPrograma)
if %ver%==8 goto menu
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

:NuevoDocumento
REM Aqui se muestra un menu con opciones para navegar en el directorio.
rem tambien una opcion para crear un nuevo documento.
color 30
cls
echo **********************************************************
echo              MOSTRANDO ARCHIVOS DE DIRECTORIO
echo **********************************************************
dir
echo.
echo **********************************************************
echo                   OPCIONES
echo **********************************************************
echo             1._Subir un nivel.
echo             2._Ir a...
echo             3._Crear documento.
echo             4._Volver al menu.
echo             5._Cerrar programa.
echo **********************************************************
echo.
echo Ingrese el numero de opcion.
set/p option=   
if %option%==1 ( cd.. & goto NuevoDocumento)
if %option%==2 goto Ir_A
if %option%==3 goto CrearDocumento
if %option%==4 goto menu
if %option%==5 goto CerrarPrograma
echo %option% no es una opcion.
pause
goto NuevoDocumento


:Ir_A
echo Ir a...
set/p direccion=
if exist %direccion% ( cd %direccion%) else goto MensajeDocumento
goto NuevoDocumento

:CrearDocumento
echo Ingrese nombre del nuevo documento.
set/p nuevoDoc=
echo >>%nuevoDoc%
echo El documento %nuevoDoc% se ha creado correctamente.
echo.
pause
goto NuevoDocumento

:MensajeDocumento
echo ***********DIRECTORIO NO ENCONTRADO*******
echo Desea volver al menu?
echo S = si      N = no ...
set/p retorno=
if %retorno%==s ( goto :menu )
if %retorno%==n goto NuevoDocumento
pause

:CerrarPrograma
taskkill /IM cmd.exe


	






