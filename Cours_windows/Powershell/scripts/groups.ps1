$groups = get-adgroup -filter 'name -like "G-*"'

Foreach ( $group in $groups) {
    $group.name
    $user = Get-ADGroupMember -Identity $group
    $user.name
    $test += $groupe 
}
$test | Out-file -FilePath C:\Users\Administrateur\Desktop\Membres_GRP-Global.txt