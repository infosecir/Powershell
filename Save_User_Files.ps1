###############################
#
# EDIT THESE VARIABLES BEFORE RUNNING
#
###############################

$user = "dthomas2"

###############################
#
# DO NOT EDIT BELOW THIS LINE UNLESS YOU NEED TO SAVE EXTRA FOLDERS
#
# SECOPS SAVES OFF THE FOLLOWING FOLDERS BY DEFAULT:
#    Desktop, Documents, Favorites
#
# DON'T FORGET TO VIRUSSCAN THE ZIP FILES BEFORE GIVING BACK TO USER.  PASSWORD PROTECT THEM.
#
###############################

$proceed = $true

if (Test-Path ("C:\temp\"+$user+"-Desktop.zip"))
{
  echo ("DELETE C:\temp\"+$user+"-Desktop.zip and RERUN POWERSHELL SCRIPT")
  $proceed = $false
}
elseif (Test-Path ("C:\temp\"+$user+"-Documents.zip"))
{
  echo ("DELETE C:\temp\"+$user+"-Documents.zip and RERUN POWERSHELL SCRIPT")
  $proceed = $false
}
elseif (Test-Path ("C:\temp\"+$user+"-Favorites.zip"))
{
  echo ("DELETE C:\temp\"+$user+"-Favorites.zip and RERUN POWERSHELL SCRIPT")
  $proceed = $false
}

if ($proceed = $true)
{
 Add-Type -Assembly System.IO.Compression.FileSystem
 $compressionLevel = [System.IO.Compression.CompressionLevel]::Optimal
 #[System.IO.Compression.ZipFile]::CreateFromDirectory("C:\users\"+$user+"\Desktop\", "C:\temp\"+$user+"-Desktop.zip", $compressionLevel, $true)
 #[System.IO.Compression.ZipFile]::CreateFromDirectory("C:\users\"+$user+"\Documents\", "C:\temp\"+$user+"-Documents.zip", $compressionLevel, $true)
 [System.IO.Compression.ZipFile]::CreateFromDirectory("C:\users\"+$user+"\Favorites\", "C:\temp\"+$user+"-Favorites.zip", $compressionLevel, $true)

 echo ("DONE.  FILES SAVED IN c:\temp.  VIRUS SCAN ZIP FILES, PASSWORD PROTECT THEM, AND GIVE TO USER")
}
else 
{
  echo ("Try again")
}