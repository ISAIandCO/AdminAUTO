$dir = "$Home\Downloads"
$filter="*.msg"
$latest = Get-ChildItem -Path $dir -Filter $filter | Sort-Object LastAccessTime -Descending | Select-Object -First 1
$var = Read-Host 'EML? (Ввод "1" - EML)'
if (1 -eq $var)
{
Rename-Item -path $dir\$latest -NewName $dir\$latest.eml
}
else
{
    try
    {
        $routlook = New-Object -COM Redemption.RDOSession
        $routlook.Logon()
        $msg = $routlook.GetMessageFromMsgFile("$dir\$latest")
        $path = "$dir\$latest.html"
        $msg.HTMLBody | Set-Content $path
    }
    catch
    {
        Rename-Item -path $dir\$latest -NewName $dir\$latest.eml
        Import-Module -Name $PSScriptRoot\EmlUtility -Verbose
        ConvertFrom-EmlToHtml *
        ConvertFrom-EmlToHtml $dir\$latest.eml
    }
}