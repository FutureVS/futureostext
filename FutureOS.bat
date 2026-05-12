@echo off
color 1b
cls

:bootscreen
cls
echo enter your password
set /p password= Password:
if %password% == desktop goto desktop
if not %password% == desk2 goto bootscreentwo

:desktop
cls
color 0a
cls
echo  Hello User!
echo.
echo Date: %date% Time: %time%
echo 
echo 1)Write text file.
echo 2)Documents...
echo 3)Calculator...
echo 4)Exit And Close
set /p menuselect=
if %menuselect% == 1 goto write
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator
if %menuselect% == 4 goto version

:write
cls
echo Welcome to Write, an application which let's you write text files...
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created. Have fun!
pause
cls
set /p textone=
pause
echo Ok, now your done, you will be redirected to the desktop...
pause
goto desktop

:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop

:browse
cls
echo 1)%writeone%
echo 2)%writetwo%
echo 3)%writethree%
set /p browse= 
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree

:textone
cls
echo %writeone%
echo %textone%
pause
goto desktop

:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop

:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop


:bootscreentwo
cls
echo ~That was the wrong password~
echo 1)Admin Login!
echo 2)Guest login!
set /p logintype=
if %logintype% == 1 goto bootscreen
if %logintype% == 2 goto ltddesktop

:ltddesktop
cls
echo Hello there, you are logged in as a guest, you do not have permission to create or browse through text files...
echo.
echo You can use the standard tools such as: The calculator and the clock...
echo.
echo Have fun!
pause
cls
echo 1)Calculator!
echo 2)Clock
set /p ltdmenu=
if %ltdmenu% == 1 goto ltdcalculator
if %ltdmenu% == 2 goto clock

:clock 
cls
echo %date% %time%
pause
goto ltddesktop

:ltdcalculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto ltddesktop
goto ltddesktop

:version
echo futureos 3k edition
echo this is a official licenced copy