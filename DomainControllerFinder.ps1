function global:Get-DomainController { 
#Requires -Version 2.0             
[CmdletBinding()]             
 Param              
   ( 
    #$Name, 
    #$Server, 
    #$Site, 
    [String]$Domain, 
    #$Forest 
    [Switch]$CurrentForest  
    )#End Param 
 
Begin             
{             
                
}#Begin           
Process             
{ 
 
if ($CurrentForest -or $Domain) 
   { 
    try 
        { 
            $Forest = [system.directoryservices.activedirectory.Forest]::GetCurrentForest()     
        } 
    catch 
        { 
            "Cannot connect to current forest." 
        } 
    if ($Domain) 
       { 
        # User specified domain OR Match 
        $Forest.domains | Where-Object {$_.Name -eq $Domain} |  
            ForEach-Object {$_.DomainControllers} | ForEach-Object {$_.Name} 
       } 
    else 
       { 
        # All domains in forest 
        $Forest.domains | ForEach-Object {$_.DomainControllers} | ForEach-Object {$_.Name} 
       } 
   } 
else 
   { 
    # Current domain only 
    [system.directoryservices.activedirectory.domain]::GetCurrentDomain() | 
        ForEach-Object {$_.DomainControllers} | ForEach-Object {$_.Name} 
   } 
 
}#Process 
End 
{ 
 
}#End 
 
}