param([int]$port)

if($port -ge 0) {
	$processArray = Get-Process -Id (Get-NetTCPConnection -LocalPort $port).OwningProcess
	
	foreach ($process in $processArray) {
		# throws Win32Exception on pid 0
		Write-Host "Stop process: $process" -ForegroundColor Yellow
		Stop-Process -Id $process.Id -Force
	}
} else {
	Write-Host "Port is not ge 0: $port" -ForegroundColor Red
}