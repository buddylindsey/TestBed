#used to remove first line of a file

$files = get-childitem "C:\Documents and Settings\buddyl\My Documents\YData\*.txt"
foreach($file in $files)
{
	sc $file.fullname $( gc $file.fullname | select -skip 1 )
}