$IPS= Get-Content "O:\Scripts\Server_IPs.txt"

$FormattedQuery = @()

foreach ($IP in $IPS)
    {
    $FormattedQuery += $IP
    }



Foreach ($IP in $FormattedQuery)
    {
    $Query += "( addr.src in $IP ) or (addr.dst in $IP ) or "
    }

$Query > "O:\Scripts\Panorama_IP_Query.txt"