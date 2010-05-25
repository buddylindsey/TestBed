$files = Get-ChildItem $args[0]

$i = 12

foreach($file in $files)
{
    $oldName = $file.Name   
    $finalName = ($i -as [string]) + $args[1] + $file.Extension
    
    Rename-Item -path $file.FullName -newName $finalName
    
    Write-host "Renamed: "  $oldname  " to "  $finalName
    
    $i++
}