[string]$user = gc user.txt
$PC = Read-Host '№ PC'
invoke-command -ComputerName $PC -Credential $user -ScriptBlock {
Get-ComputerInfo}