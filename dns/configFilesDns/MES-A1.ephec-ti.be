$ORIGIN MES-A1.ephec-ti.be.
$ttl 1H
@          IN      SOA     ns.MES-A1.ephec-ti.be. root.MES-A1.ephec-ti.be (
                                        2011041902 ; Serial
                                        604800   ; Refresh
                                        86400 ; Retry
                                        2419200 ; Expire
                                        604800 ; Minimum TTL
                                        )
           IN      NS              ns.MES-A1.ephec-ti.be.
           IN      MX              10 mail
ns         IN      A               176.96.231.223

;VoIP
VoIP       IN      A               176.96.231.223
_sip._tcp	86400	IN	SRV	10	100	5060	voip.MES-A1.ephec-ti.be.
_sip._udp	86400	IN	SRV	10	100	5060	voip.MES-A1.ephec-ti.be.

;MAIL
mail       IN      A               176.96.231.222

;WEB
www        IN      A               176.96.231.222
b2b        IN      A               176.96.231.222
