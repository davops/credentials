. "c:\test\functions\set-cred.ps1"  
. "c:\test\functions\get-cred.ps1" 

$file = "c:\test\credential_file_for_" + $env:username + ".xml"
if(!(Test-Path $file)){set-Cred $file}

$credential = get-Cred $file
$password = ($credential.GetNetworkCredential()).Password
$username = $credential.username

#####################################################################################################
#Your code goes here. The code in this section would reference the $username and $password variables#
#####################################################################################################   
 
#cleanup
$password = "thepassword"
$credential = "thepassword"
remove-variable password -force
remove-variable credential -force

