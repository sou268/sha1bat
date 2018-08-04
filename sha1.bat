@echo off
FOR /f "usebackq tokens=*" %%i in (`certutil -hashfile "%~1" SHA1 ^| find /v ":"`) DO (
  set item=%%i
)
echo %~1のSHA1ハッシュ値は下記です。
echo %item: =%
pause
