@echo off

:: starting
echo preparing folder structure
mkdir trash_hat_removal > nul 2> nul
move models trash_hat_removal\ > nul 2> nul

:: creating vpk
echo creating vpk
..\..\..\bin\vpk.exe -M trash_hat_removal > nul 2> nul

:: moving vpk files
echo moving vpk files
move trash_hat_removal_*.vpk ..

:: regenerating folder structure
echo regenerating folder structure
move trash_hat_removal\models .\ > nul 2> nul
rmdir trash_hat_removal > nul 2> nul

:: done
echo done
pause