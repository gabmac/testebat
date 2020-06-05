
C:

cd C:\Users\Gabriel\Documents\teste


for /F "tokens=1-4 delims=: " %%i in ("%time%") do (set /a H=%%i%%j 2>NUL)

for /F "skip=1" %%I in ('wmic path win32_localtime get dayofweek') do (set /a dow=%%I 2>NUL)

echo O horario e %H%
echo O dia da semana e %dow%

set /a H=830 2>NUL
set /a dow=5 2>NUL
set call=0
echo o valor de CAll inicializado %call%

echo O horario e %H%
echo O dia da semana e %dow%L



if 800 Leq %H% if %H% Leq 1600 (set /a call=1)
if 1600 Leq %H% if %H% Leq 2000 if %dow% Equ 7 (set /a call=1)
if 2000 Leq %H% if %dow% (set /a call=2)
if 1600 Leq %H% if %dow% NEQ 7 (set /a call=2)
if 800 Geq %H% if %dow% (set /a call=2)


echo %call%

