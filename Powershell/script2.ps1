# Title of script
# Author of script
# This script should be run as Administrator

# Set execution policy to Bypass

# Create a new Alias
New-Alias -Name Pause -Value "Read-Host"

# Verify new Alias
Get-Alias

# Test new Alias
Pause -prompt "Hit any key to continue..."

