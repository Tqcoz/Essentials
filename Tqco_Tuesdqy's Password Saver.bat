@echo off
:start
cls
echo Welcome to Tqco_Tuesdqy's Password Saver.
echo.
echo Are you tired of forgetting passwords?
echo.
echo Are you tired of giving your Password to a software?
echo.
echo You think your private passwords are in unsafe hands right now?
echo.
echo Well choose us and save your Password safely.
echo.
echo We will be securely hiding your Password from 
echo people!
echo.
echo It requires no internet and no nothing.
echo.
echo You aren't sure what your password is? Well,
echo Use our Checker, just put in your password and it will know if 
echo the password you put in the checker matches your password!
echo.
echo To create a Password type "create"
echo To Check a Password type "check"
echo To generate a Password type "generate"
echo.
set /p PROGRAM= [Saver] Create a Password or Check Password or Generate a Password?: 
goto %PROGRAM%




:create
cls
set /p PASSWORD= What is the password you want to save?: 
echo %PASSWORD% >> passwords.txt
pause
goto start




:generate
cls
set /p FUN= Password is now generating. Are you sure you want to generate a Password? Type Yes or No.
echo Your Password has been generated use the password that pops up for anything you would like.
echo Remember this password is not getting saved in our saver. You have to manually do it by creating a new password.
echo and inputting the password that pops up there.
pause

if %FUN%==Yes echo x=msgbox("%random%%random%", 8+48, "Your Password") > generator.vbs
start generator.vbs
timeout 15
xdel generator.vbs
exit



:check
cls
set /p PASSWORD1= What is your password?

for /f "Delims=" %%a in (passwords.txt) do (

set TEXT=%%a

)

if %PASSWORD1%==%TEXT% goto correct
echo Our System says the password you put in the checker didn't match the password you created!
pause
goto start



:correct
echo Nice Memory Skills, You were correct on guessing what your password was!
pause
goto end


:end 
cls
echo Would you like to restart or quit: type quit or restart?
set /p EXIT= Would you like to quit?
if %EXIT%==quit exit
goto start

