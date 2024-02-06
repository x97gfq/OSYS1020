# Title = First Sample Script
# Author = Author of Script
# This is the description of the script


#Create a password using a secure string

#$passwd = ConvertTo-SecureString "Password" –AsPlainText -force

#Add new user and set password

#New-LocalUser -name "PSUser" –password $passwd –Description "New user"

#Set permissions for PowerShell folder to match the permissions set for C:\Scripts
New-Item -ItemType Directory -Path C:\Repos\OSYS1020\PowerShell\Example1

$Acl = Get-Acl "C:\Repos\OSYS1020\PowerShell"

Set-Acl "C:\Repos\OSYS1020\PowerShell\Example1" $Acl

# View permissions of folder PowerShell

Get-item C:\Repos\OSYS1020\PowerShell | Get-Acl | Format-List 

# Add a pause

Read-Host -Prompt "Press Enter to continue"  
