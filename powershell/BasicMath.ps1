$n = 5000
$l = 1000
$p = 20000

for($i=0; $i -le 30; $i++)
{
    $n = ($n + 5000)*1.1
    $l = ($l + 1000)*1.1	
    $p = ($p + 20000)*1.1		
}

write-host $n
write-host $l
write-host $p

write-host ($l / $n)
write-host ($p / $l)
write-host ($p / $n)