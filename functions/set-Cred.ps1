function set-Cred{
    Param($file)
        $username = $env:username
        $domain = $env:userdomain 
        $fullU = "$domain\$username"
        #$pw = (Get-Credential $fullU).Password
        $Credential = Get-Credential $fullU
        $credential.Password | ConvertFrom-SecureString | Set-Content $File
        $username | Add-Content $file
}
