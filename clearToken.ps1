# stop service
Stop-Service TokenBroker
 
# Get Current user profile path
$userProfile = [Environment]::GetFolderPath("UserProfile")
$targetPath = Join-Path -Path $userProfile -ChildPath "AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy\AC\TokenBroker\Accounts"
 
# Check If the folder exists
if(Test-Path -Path $targetPath){
    try{
        # Delete all files and subdirectories
        Get-ChildItem -Path $targetPath -Recurse -Force | Remove-Item -Force -Recurse
    }catch{
        Write-EventLog -LogName Application -Source "Powershell Script" -EntryType Error -EventId
    }
}
 
#Start the service
Start-Service TokenBroker
