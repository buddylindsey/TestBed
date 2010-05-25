$files = get-childitem "C:\Documents and Settings\buddyl\My Documents\YodleeData\*.txt"
foreach($file in $files)
{
	sc $file.fullname $( gc $file.fullname | select -skip 1 )
}