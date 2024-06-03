@echo off

:menu
cls
title Vice CIty  //Creado por Wilfredo Chipana
color 1f
echo               VICE CITY
echo ***********************************
echo          1.-Abrir claves de ViceCity
echo          2._Abrir Vice City
echo          3._Libre
echo          4._Libre
echo          5._Libre
echo          6._Cerrar ventana
echo          7._Cerrar programa
echo ***********************************
echo.
echo.
echo  Por favor ingrese una opcion del menu.
SET/p ver= --Opcion:  
if %ver%==1 goto Claves
if %ver%==2 goto Vice
if %ver%==3 ( goto menu)
if %ver%==4 goto menu
if %ver%==5 goto menu
if %ver%==6 ( exit )
if %ver%==7 ( goto CerrarPrograma)
echo.
echo %ver% no es una opcion correcta.
echo PULSE ENTER...
pause>nul
goto menu

:Claves
start /d "D:\proyectos\BAT_proyectos" CLAVES_gta_vice.txt
goto menu

:Vice
start /d "D:\gta" gta_sa.exe
goto menu

:CerrarPrograma
taskkill /IM cmd.exe