function MonthNumber($month)
{
    if($month -lt 10)
    {
        return "0yy" + $month.ToString()
    }
    else
    {
        return $month
    }
}

$a = Get-Date

write-output $a.Month
write-output $a.Year
write-output $a.Day

write-output MonthNumber($a.Month.ToString())

$b =  $a.Year.ToString() + "0" + MonthNumber($a.Month) + "0" + $a.Day

write-output $b

