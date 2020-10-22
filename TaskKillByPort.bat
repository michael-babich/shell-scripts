netstat -ano | findstr :%1
powershell -executionpolicy bypass -File .\TaskKillByPort.ps1 -port %1