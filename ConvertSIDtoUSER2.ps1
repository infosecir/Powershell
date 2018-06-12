$objSID = New-Object System.Security.Principal.SecurityIdentifier("S-1-5-21-3496554487-1900509739-3140548133-500")
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value