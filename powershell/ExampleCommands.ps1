# Add something to environment variables.
$env:path += ";c:\program files\blah\"

# Get deatiled information about a command
# Pipe to more so you can scroll through
get-help get-command -detailed | more

# Get directory listing and exclude some file
Get-ChildItem -exclude "*.bmp" c:\windows

# Gets all executables from specific location 
# and outputs the name
Get-ChildItem -path C:\windows -filter *.exe -name

# Gets all executables from specific location 
# and outputs the name it also hits all subfolders 
# too
Get-ChildItem -path C:\windows -filter *.exe -name -recurse

# Get actuall cmdlet that alias is mapped to
$alias:ls

# List all aliases on the system
dir alias:

# List all aliases for a specfic cmdlet
Get-Alias | Where-Object {$_.Definition -eq "Get-ChildItem"}

# Create your own alias
Set-Alias edit notepad.exe

# Output object to html
# {object} | ConvertTo-*sometype* | Out-File filename.ext
Get-Process | ConvertTo-Html | Out-File test.htm

