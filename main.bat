@echo off
rem включаем поддержку локальных переменных
SETLOCAL ENABLEDELAYEDEXPANSION 

rem i меняется от 2 до 100
for /L %%i in (2, 1, 100) do (
	set /a b = 0
	rem так-то надо цикл от 2 до корень из i, но
	rem т.к. тут нет корня поэтому до кореня из 100
	for /L %%j in (2, 1, 10) do (
		rem в а сохраняем остаток от деления i на j
		call :mod %%i %%j
		if !a! == 0 set /a b = b + 1
	)
	rem только для простых чисел n кол-во остатков от деления n на 
	rem все числа меньшие n равно нулю
	if !b! == 0 echo %%i
)

goto :end

:mod
	set /a a = %1 - (%1 / %2) * %2
	if %1 == %2 set /a a = 1
goto :eof

:end
pause