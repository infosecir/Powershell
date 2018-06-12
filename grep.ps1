$PathToSearch = "C:\Users\dthomas2\Desktop\*.txt"
#-patern is case insensitive by default
$Pattern = "arcsight"
 
Get-ChildItem -Path $PathToSearch -Recurse | Select-String -pattern $Pattern