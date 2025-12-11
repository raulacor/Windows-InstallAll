@ECHO OFF
:: Sets batch file script path as default working path
CD /d %~dp0
ECHO ================================================================================= 

    :: This executes al files in folders as well as subfolders silently, one at a time and in theri own respective order.
    FOR /r "." %%a in (*.exe) do "%%~fa" -s

    ECHO Complete. 
    ECHO Remember to reboot if needed
    ECHO Monitor Task Manager Processes to ensure installations complete
        TIMEOUT 120