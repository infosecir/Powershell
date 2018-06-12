$URL = "https://notepad-plus-plus.org/repository/7.x/7.5.3/npp.7.5.3.Installer.exe"
$UserAgentString = ([Microsoft.PowerShell.Commands.PSUserAgent]::InternetExplorer)

Invoke-WebRequest -URI $URL -UserAgent $UserAgentString -OutFile C:\Users\dthomas2\Desktop\np.exe

