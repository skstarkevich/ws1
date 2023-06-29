

$computers = @(Get-Content C:\Users\skstarkeevich\Downloads\del_ws1_vdi.txt)

if (!$cred) {$cred = Get-Credential -UserName pc-skstarkeevich -Message 'enter password'}

foreach ($computer in $computers){
Invoke-Command -ComputerName $computer -Credential $cred -ScriptBlock { 
$a = Get-WmiObject -Class Win32_Product -Filter {name = "Workspace ONE Intelligent Hub Installer"} | Select -ExpandProperty IdentifyingNumber

Start-Process "msiexec.exe" -ArgumentList "/x $($a)","/q" -Wait
}
}
