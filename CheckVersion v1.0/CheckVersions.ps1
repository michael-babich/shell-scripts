$path=$args[0]
$version=$args[1]


$NameToFind = "openlegacy\"

$MyVariable = (Get-ChildItem $path -Recurse) | Where-Object { $_.PSIsContainer -and $_.FullName.Contains($NameToFind) } 

Write-Host "$MyVariable" -ForegroundColor Yellow

if($MyVariable.FullName -like "*"+$version+"*")
{
	echo true
}
else
{
  echo false
}
