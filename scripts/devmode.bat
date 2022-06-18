@echo off
setlocal EnableDelayedExpansion
set reg_keys="HKEY_LOCAL_MACHINE\Software\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0"^
    ^ "HKEY_CURRENT_USER\SOFTWARE\Classes\VirtualStore\MACHINE\SOFTWARE\WOW6432Node\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0"^
    ^ "HKEY_CURRENT_USER\SOFTWARE\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0"^
    ^ "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0"


:: Require admin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

:: Set dev mode
for %%a in (%reg_keys%) do (
    reg query %%a > nul 2>&1
    if !errorlevel! equ 0 (
        call :set_dev_mode %%a
    )
)

Exit /b 0

:set_dev_mode
    echo.
    echo Setting devmode for regkey: "%~1"
    reg add "%~1" /v "Start Mode" /t REG_DWORD /d 2 /f
    exit /b 0
