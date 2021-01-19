

Read-Host -Prompt "This may delete all your previous ubuntu settings..Press Enter to Continue or Ctrl+C to exit" 
Get-AppxPackage *ubuntu* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}