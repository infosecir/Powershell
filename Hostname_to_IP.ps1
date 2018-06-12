function Get-HostToIP($hostname) {     
    $result = [system.Net.Dns]::GetHostByName($hostname)     
    $result.AddressList | ForEach-Object {$_.IPAddressToString } 
} 

Get-Content "O:\Scripts\Servers.txt" | ForEach-Object {(Get-HostToIP($_)) >> O:\Scripts\Server_IPs.txt}