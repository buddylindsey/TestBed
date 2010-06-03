$files = Get-ChildItem -rec

if(!$files.PSIsContainer)
{
    foreach($file in $files)
    {
        $newName = $file.Name.Substring(0, $file.Name.Length - $file.Extension.Length).Replace("_", " ")
        
        $newName = $newName -Replace "\s*\[[^\]]*\]\s*"," "
        $newName = $newName -Replace "\s*\([^\)]*\)\s*"," "
        $newName = $newName -Replace "^\s+",""
        $newName = $newName.Trim()
        
        ##$newName = $file.Extension
        $newName = [IO.Path]::Combine($file.Directory.FullName, $newName) + $file.Extension

        ##Write-Output $newName
        ##Move-Item $file $newName -whatif
        $file | Move-Item -dest $newName
    }
}