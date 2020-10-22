netstat -ano | findstr :%1
echo ----------
powershell -executionpolicy bypass -File .\TaskKillByPort.ps1 -port %1
