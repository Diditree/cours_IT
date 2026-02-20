$users = Get-ADUser -filter * -Properties description, city
$banned = "Administrator", "Administrateur", "Guest", "Invité", "krbtgt"
$password = "P@ssw0rd"

foreach ($user in $users) {
    for ($i = 0; $i -lt $banned.Count; $i++) {
        if ($user.name -ne $banned[$i]) {
            Set-ADAccountPassword -Identity $user.DistinguishedName -Reset -newPassword (ConvertTo-SecureString -AsPlainText $password -Force)
        }
    }
    if ($user.Enabled -eq $False) {
        Write-Host $user.name
        set-ADuser -Identity $user.DistinguishedName -Enabled $True
    }
    $userCity = $user.city
    if (!$userCity) {
        $userCity = "Lieu non indiqué"
    }
    Set-AdUser -Identity $user.DistinguishedName -Description "Utilisateur de $userCity"
    Write-Host $user.description
}


function nikaMangeDesDouceurs {

    douceurs="douceurs du lidl"

}