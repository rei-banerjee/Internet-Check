@ECHO off
:begin

ping google.com

REM error level = 0 indicates that the task has succeded, thus we loop until we acheive that

if %ERRORLEVEL% NEQ 0 (
    ECHO "Internet is still down, retrying in a minute"
    REM ping command here allows us to wait a minute
    ping 127.0.0.1 -n 61 > nul
    GOTO :begin
) else (
    ECHO "====================================="
    ECHO "The internet is up, sending email"
    ECHO "====================================="
    
    GOTO :email

)

:email
REM email.ps1 is a generic way of sending emails through powershell. 

powershell.exe -File "email.ps1"

