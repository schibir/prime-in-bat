@echo off
rem �������� ��������� ��������� ����������
SETLOCAL ENABLEDELAYEDEXPANSION 

rem i �������� �� 2 �� 100
for /L %%i in (2, 1, 100) do (
	set /a b = 0
	rem ���-�� ���� ���� �� 2 �� ������ �� i, ��
	rem �.�. ��� ��� ����� ������� �� ������ �� 100
	for /L %%j in (2, 1, 10) do (
		rem � � ��������� ������� �� ������� i �� j
		call :mod %%i %%j
		if !a! == 0 set /a b = b + 1
	)
	rem ������ ��� ������� ����� n ���-�� �������� �� ������� n �� 
	rem ��� ����� ������� n ����� ����
	if !b! == 0 echo %%i
)

goto :end

:mod
	set /a a = %1 - (%1 / %2) * %2
	if %1 == %2 set /a a = 1
goto :eof

:end
pause