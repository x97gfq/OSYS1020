 # Create new group

New-Localgroup –name "PSGroup" 

 # Assign PSGroup Modify permssions to new PowerShell folder 

$Acl = Get-Acl "C:\Repos\OSYS1020\PowerShell"

$Ar = New-Object system.security.accesscontrol.filesystemaccessrule("PSGroup","Modify","Allow")

$Acl.SetAccessRule($Ar)

Set-Acl "C:\Repos\OSYS1020\" $Acl

 # Creates a variable and outputs information to screen.

$name = Get-Content env:username

Pause –prompt "Great practice PowerShell script, $name. Press any key to continue…"