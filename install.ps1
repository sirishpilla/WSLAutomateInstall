$a=Test-Path -Path C:\Users\$([Environment]::UserName)\AppData\Local\Microsoft\WindowsApps\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\ubuntu1804.exe
If($a -eq $True)
{
# Create Shortcuts
#invoke-expression -Command C:\Users\$([Environment]::UserName)\Desktop\shortcut.ps1
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Ubuntu.lnk")
$Shortcut.TargetPath = "C:\Users\$([Environment]::UserName)\AppData\Local\Microsoft\WindowsApps\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\ubuntu1804.exe"
$Shortcut.IconLocation="C:\Users\$([Environment]::UserName)\Downloads\os_ubuntu_alt.ico, 0"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut2 = $WshShell.CreateShortcut("$Home\Desktop\UbuntuReinstall.lnk")
$Shortcut2.TargetPath = "C:\Users\$([Environment]::UserName)\Desktop\reinstallbypass.bat"
$Shortcut2.IconLocation="C:\Users\$([Environment]::UserName)\Downloads\reinstall.ico, 0"
$Shortcut2.Save()
}
ElseIf($a -eq -$False)
{

#invoke-expression -Command "C:\Users\$([Environment]::UserName)\Desktop\install_ubuntu_new.ps1"
$b=Test-Path -Path C:\Users\$([Environment]::UserName)\Downloads\CanonicalGroupLimited.Ubuntu18.04onWindows_1804.2019.522.0_x64__79rhkp1fndgsc.Appx
# Test the file path before running the following command
If($b -eq $True)
{

Add-AppxPackage -Path "C:\Users\$([Environment]::UserName)\Downloads\CanonicalGroupLimited.Ubuntu18.04onWindows_1804.2019.522.0_x64__79rhkp1fndgsc.Appx"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Ubuntu.lnk")
$Shortcut.TargetPath = "C:\Users\$([Environment]::UserName)\AppData\Local\Microsoft\WindowsApps\CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc\ubuntu1804.exe"
$Shortcut.IconLocation="C:\Users\$([Environment]::UserName)\Downloads\os_ubuntu_alt.ico, 0"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut2 = $WshShell.CreateShortcut("$Home\Desktop\UbuntuReinstall.lnk")
$Shortcut2.TargetPath = "C:\Users\$([Environment]::UserName)\Desktop\reinstallbypass.bat"
$Shortcut2.IconLocation="C:\Users\$([Environment]::UserName)\Downloads\reinstall.ico, 0"
$Shortcut2.Save()
}
# If no file exists at the path, then do nothing!

}


