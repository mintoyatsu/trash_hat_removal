@echo off

echo blacklisting models
call dev\generators\models_null.bat dev\lists\model_blacklist.txt >nul 2> nul
echo done
pause