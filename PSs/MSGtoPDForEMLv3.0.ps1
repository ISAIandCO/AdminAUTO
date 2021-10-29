$dir = "$Home\Downloads"
$filter="*.msg"
$latest = Get-ChildItem -Path $dir -Filter $filter | Sort-Object LastAccessTime -Descending | Select-Object -First 1
function HTMLtoPDF {
    (Get-Item "$dir\$latest.html") | % {
        Write-Host "[convert]" $_.Name
        $srcPath = $_.FullName
        $dstPath = "$dir\" + $_.Name.Substring(0, $_.Name.length-4) + "pdf"
        $args = @('--headless','--disable-gpu','--no-margins','--enable-logging',('--print-to-pdf=' + '"' + $dstPath + '"'),('"' + $srcPath + '"'))
        Start-Process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' `
            -ArgumentList ($args -join " ") `
            -Wait
    }
}
try {
    $routlook = New-Object -COM Redemption.RDOSession
    $routlook.Logon()
    $msg = $routlook.GetMessageFromMsgFile("$dir\$latest")
    $path = "$dir\$latest.html"
    $msg.HTMLBody | Set-Content $path
    HTMLtoPDF
}
catch {
    Rename-Item -path $dir\$latest -NewName $dir\$latest.eml
    Import-Module -Name $PSScriptRoot\EmlUtility -Verbose
    ConvertFrom-EmlToHtml *
    ConvertFrom-EmlToHtml $dir\$latest.eml
    HTMLtoPDF
}