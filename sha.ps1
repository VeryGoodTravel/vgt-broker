param (
    $password
)

$rand = [System.Security.Cryptography.RandomNumberGenerator]::Create()
$hash = [System.Security.Cryptography.SHA512]::Create()

[byte[]]$salt = New-Object byte[] 4
$rand.GetBytes($salt)

[byte[]]$utf8PasswordBytes = [Text.Encoding]::UTF8.GetBytes($password)

[byte[]]$concatenated = $salt + $utf8PasswordBytes

[byte[]]$saltedHash = $hash.ComputeHash($concatenated)

[byte[]]$concatenatedAgain = $salt + $saltedHash

$base64 = [System.Convert]::ToBase64String($concatenatedAgain)
Write-Host "BASE64"
$base64