$dir = "$Home\Downloads"
$filter="*.msg"
$latest = Get-ChildItem -Path $dir -Filter $filter | Sort-Object LastAccessTime -Descending | Select-Object -First 1
Rename-Item -path $dir\$latest -NewName $dir\$latest.eml
$var = Read-Host '     HTML? (Ввод "1" - HTML)'
if (1 -eq $var)
{
    Import-Module -Name $PSScriptRoot\EmlUtility -Verbose
    ConvertFrom-EmlToHtml *
    ConvertFrom-EmlToHtml $dir\$latest.eml
}