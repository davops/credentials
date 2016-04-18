function get-Cred{
    Param($file)
    $password = (Get-Content $file)[0] | ConvertTo-SecureString 
    $username = (Get-Content $file)[1]
    $credential = New-Object System.Management.Automation.PsCredential($username,$password)
    return($credential)
}
