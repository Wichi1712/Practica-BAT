@echo off
@title off
set col=02

REM Esto es un comentario	
::Esto tambien es un comentario
:menu
cls
title Menu Principal  //Creado por Wilfredo Chipana
color %col%
echo            MENU PRINCIPAL
echo ***********************************
echo          1.-Saber direcc IP
echo          2._Ir a pagina
echo          3._Cambiar color
echo          4._Ver quien se conecta a mi red
echo          5._Vice City
echo          6._Administrador de Carpetas
echo          7._Salir con mensaje
echo          8._Salir sin mensaje
echo ***********************************
echo.
echo.
echo  Por favor ingrese una opcion del menu.
SET/p ver= --Opcion:
if %ver%==1 goto IP
if %ver%==2 goto pagina
if %ver%==3 ( goto Color)
if %ver%==4 goto RedConeccion
if %ver%==5 goto Vice
if %ver%==6 goto Administrador
if %ver%==7 ( goto Salir)
if %ver%==8 ( exit)
echo.
echo %ver% no es una opcion correcta.
echo PULSE ENTER...
pause>nul
goto menu


:IP
cls
title Saber direccion IP
color F
echo PRESIONE ENTER PARA CONTINUAR
pause>nul
cd..
cd..
ipconfig
echo.
echo.
echo PRESIONE ENTER PARA SALIR
pause >nul
goto menu

:RedConeccion:
cls
title Revisar coneccion de red.
color F
echo PRESIONE ENTER PARA CONTINUAR
pause>nul
cd..
cd..
net view
echo.
echo.
echo PRESIONE ENTER PARA SALIR
pause >nul
goto menu

:Vice
cls
start "C:\Users\CHIPANA\Desktop\Willy\BAT_proyectos" Inicio_GTA_VICE.bat
goto menu

:Administrador
cls
start "C:\Users\CHIPANA\Desktop\Willy\BAT_proyectos" Administrador.bat
goto menu

:pagina
Start http://www.youtube.com
msg * Bienvenidos*
msg * Hola*
echo.
echo PRESIONE ENTER PARA regresar
goto menu

:Color
cls
echo Ingrese dos caracteres sea un numero del 0 al 9 o letra de A hasta F para cambiar de color.	
echo Cualquier otro caracter de mostrara la ayuda.
set/p col="Ingrese dos caracteres: "
color %col%
::if exist %col% ( goto Mensaje2)
goto MensajeColor
pause>nul
cls
goto menu

:MensajeColor
echo Volver al menu  & msg * El valor introducido es %col%
pause
cls
goto menu

:Mensaje
echo Color no cambiado.
pause>nul
cls
goto menu

:Mensaje2
echo COLOR ACTUAL ES %col%
echo Volver al menu  & msg * Color cambiado
pause
cls
goto menu

:Salir
msg * Gracias
exit






