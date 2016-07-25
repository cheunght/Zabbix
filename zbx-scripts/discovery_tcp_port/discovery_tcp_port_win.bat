@echo off
echo {
echo         "data":[
for /F "tokens=2 delims= " %%i IN ('netstat -anp tcp^|find /i "LISTENING"') DO for /F "tokens=2 delims=:" %%j IN ("%%i") DO echo                 {"{#TCP_PORT}":"%%j"},
echo                 {"{#TCP_PORT}":"10050"}
echo         ]
echo }
