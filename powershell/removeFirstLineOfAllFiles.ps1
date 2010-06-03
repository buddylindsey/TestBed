#used to remove first line of a file

$files = get-childitem "C:\Documents and Settings\buddyl\My Documents\Data\*.txt"
foreach($file in $files)
{
	sc $file.fullname $( gc $file.fullname | select -skip 1 )
}