$BadDomains= Get-Content "O:\Scripts\Server_IPs.txt"

$FormattedQuery = @()

foreach ($domain in $BadDomains)
    {
    $FormattedQuery += $domain
    }

Foreach ($domain in $FormattedQuery)
    {
    $Query += "$domain       ; 2018/06/11 13:30:11 (user) - Talos VPN Filter https://blog.talosintelligence.com/2018/06/vpnfilter-update.html `n     "
    }

$Query > "O:\Scripts\Domain_Blacklist_Format.txt"






