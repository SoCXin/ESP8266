@ECHO OFF
cls

echo - [1] Flash Generic Firmware
echo - [2] Flash Qitas Firmware
echo - [3] Erase the Firmware by flashing empty file
echo - [4] Flash Generic DEBUG Firmware

set /p opt=Please choose an option eg. 1: 

2>NUL CALL :%opt%
IF ERRORLEVEL 1 CALL :DEFAULT_CASE

:1
  set /p com=Enter which COM Port your ESP is connected eg. COM8: 
  esptool.exe -vv -cd nodemcu -cb 460800 -cp %com% -ca 0x00000 -cf generic.bin
  GOTO EXIT_CASE   
:2
  set /p com=Enter which COM Port your ESP is connected eg. COM12: 
  esptool.exe -vv -cd nodemcu -cb 460800 -cp %com% -ca 0x00000 -cf qitas.bin
  GOTO EXIT_CASE
:3
  set /p com=Enter which COM Port your ESP is connected eg. COM5: 
  esptool.exe -vv -cd nodemcu -cb 460800 -cp %com% -ca 0x00000 -cf blank4mb.bin
  GOTO EXIT_CASE
:4
  set /p com=Enter which COM Port your ESP is connected eg. COM7: 
  esptool.exe -vv -cd nodemcu -cb 460800 -cp %com% -ca 0x00000 -cf debug.bin
  GOTO EXIT_CASE
:DEFAULT_CASE
  ECHO Unknown option "%opt%"
  GOTO END_CASE
:END_CASE
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL
:EXIT_CASE
  exit


