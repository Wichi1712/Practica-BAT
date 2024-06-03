@echo off
@echo title off
set col=01

rem Este es el Main menu
:: Este es un comentario

:mainMenu
cls
title Main Batch by Wichi
:: Este echo permite hacer un salto de linea 
echo.
echo        Main menu
echo *************************
echo   1. Opciones varias
echo   2. About
echo   3. Cerrar esta ventana
echo   4. Cerrar todas las ventanas
echo *************************
echo.
echo Por favor ingrese un numero de opcion del menu.

SET/p ver= _Option :

if %ver% == 1 goto varios
if %ver% == 2 goto about
if %ver% == 3 goto cerrar
if %ver% == 4 goto cerrarTodo
pause >nul
goto mainMenu

:varios
cls
start "D:\proyectos\BAT_proyectos" Test.bat
goto mainMenu

:about
echo ********************************************************
echo                      ABOUT
echo ********************************************************
echo    Desarrollado por Wilfredo Chipana
echo    como practica
echo    *     -------
echo    *   ---O--O----
echo    *    -_______--
echo           ------
echo.
echo Pulse Enter para volver al menu y seleccionar otra opcion.
pause>nul
goto mainMenu


:cerrar
exit

:cerrarTodo
echo ********************************************************
echo                      CERRAR PROGRAMA
echo ********************************************************
echo        Esta opcion cerrara todo el programa, es decir cerrara
echo        todas las ventanas.
echo        pulse Y para Cerrar o N para volver al menu.
echo.

SET/p cerrar= __Cerrar_?? :
if %cerrar% == y goto aceptar
if %cerrar% == Y goto aceptar
if %cerrar% == n goto mainMenu
echo.
echo --%cerrar% no es una opcion correcta.
echo PULSE ENTER...
pause >nul
cls
goto cerrarTodo

:aceptar
msg * /time:3 Gracias por usar este programa. Se cerrara en 3 segundos.
taskkill /IM cmd.exe






