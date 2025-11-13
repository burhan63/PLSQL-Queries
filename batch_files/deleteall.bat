


for /F "tokens=1-3 delims=/ " %%i in ('date /t') do set ddmmyyyy=%%i%%j%%k
echo Date: %ddmmyyyy%

