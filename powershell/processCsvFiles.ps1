$files = get-childitem "c:\documents and settings\buddyl\desktop\*.csv"
foreach($file in $files)
{

	copy $file.fullname "\\Intranet-server\Techfiles\SUPPORT\Qwest\data\temp"
	
	sc $file.fullname $( gc $file.fullname | ?{$_[0] -ne " " -and $_[0] -ne "N" -and $_[0] -ne "D" -and $_.length -gt 0} )
	
	copy $file.fullname \\Intranet-server\Techfiles\SUPPORT\Qwest\data\ReadyFiles

	write-output $file.fullname
}

