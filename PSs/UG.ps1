Import-module Activedirectory
$User= read-host "Login"
Get-ADPrincipalGroupMembership $User | Sort-Object | select -ExpandProperty name
pause