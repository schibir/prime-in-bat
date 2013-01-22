@echo off

for /L %%j in (2, 1, 10) do (
	set flag = false
	call :is_prime %%j
)

pause

:is_prime
	for /L %%i in (2, 1, %1) do (
		call :foo %1 %%i
	)
goto :eof

:foo
	set /a a = %1 / %2
	echo %a% %1 %2
goto :eof

