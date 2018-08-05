@echo off
FOR /f "usebackq tokens=*" %%i in (`certutil -hashfile "%~1" SHA1 ^| find /v ":"`) DO (
  set sha1=%%i
)
echo %~1のSHA1ハッシュ値は下記です。
echo %sha1: =%
pause
