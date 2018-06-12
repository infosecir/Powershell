   $objSID = New-Object System.Security.Principal.SecurityIdentifier ("S-1-5-21-2807171826-104970049-2147198314-1003")
   $objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
   $objUser.Value


   Import-Module ActiveDirectory
   Get-ADUser -Identity "S-1-5-21-2807171826-104970049-2147198314-1003"