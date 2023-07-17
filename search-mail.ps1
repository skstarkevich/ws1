<#
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://dc01-mail-02.corp.sbercloud.ru/powershell #-Credential (Get-Credential)
if ($null -eq $Session) {break}
Import-PSSession -Session $Session -AllowClobber -DisableNameChecking
#>

#--------------------------------SETTINGS-----------------------------
$jobName = 'SearchAndReport'

$Sender = 'skstarkeevich@cloud.ru'
$StartTime = '06.01.2023'
$EndTime = '07.01.2023'
$Subject = 'пароль'
$body = 'пароль'

# Query syntax doc: 
# https://docs.microsoft.com/en-us/microsoft-365/compliance/keyword-queries-and-search-conditions?view=o365-worldwide
#AND TO:asaksenov@sbercloud.ru
#$query = "From:iauvarova@sbercloud.ru  AND Subject:'RE: ВАЖНО!Николаева Елена'" 
$query = "sent>=$($StartTime) AND sender:$($Sender) body:$($body)"
#$query = "From:noreply@cdn-video.com"
#--------------------------------SETTINGS-----------------------------




#check and delete previous jobs
#Remove-ComplianceSearch -Identity $jobName -Confirm:$false 


#Create & Start new search query
New-ComplianceSearch -Name $jobName -ExchangeLocation all -ContentMatchQuery $query -Force
Start-ComplianceSearch -Identity $jobName


#Waiting for search finished
do
{
$search = Get-ComplianceSearch -Identity $jobName
Write-Host "Please Wait until the search is completed. Current Status: $($search.Status)" -f Yellow
Start-Sleep -Seconds 1

} while ($search.Status -ne "Completed")

Write-Host "`n`nНайдено элементов = $($search.items)"

#Start purge mails
$answer = Read-Host "Начать операцию очищения? (Y/N)"
if ($answer -eq "Y")
{
New-ComplianceSearchAction -SearchName $jobName -Preview # -Purge -PurgeType SoftDelete -Confirm:$false 
}

#Remove Exchange connection
#Remove-PSSession $Session

