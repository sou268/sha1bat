@echo off
FOR /f "usebackq tokens=*" %%i in (`certutil -hashfile "%~1" SHA1 ^| find /v ":"`) DO (
  set item="%%i"
  echo %item%
)
pause
