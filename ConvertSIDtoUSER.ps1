   $objSID = New-Object System.Security.Principal.SecurityIdentifier ("<SID>")
   $objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
   $objUser.Value


   Import-Module ActiveDirectory
   Get-ADUser -Identity "<SID>"
