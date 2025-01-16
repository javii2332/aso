New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"

$departamentos = import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$usuarios = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

foreach ($dep in $departamentos) {
    New-ADOrganizationalUnit -Name "$($dep.departamento)" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "$($dep.descripcion)"
}


$usuarios = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

foreach ($dep in $departamentos) {
    New-ADGroup -Name "GR-$($dep.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach ($usu in $usuarios) {
    New-ADUser -Name "$($usu.nombre)" -Path "OU=$($usu.departamento), OU=Empresa ,DC=Empresa,DC=Local" -SamAccountName "$($usu.nombre)" -UserPrincipalName "$($usu.nombre)@EMPRESA.LOCAL" -AccountPassword (ConvertTo-SecureString "aso2023." -AsPlainText -Force) -GivenName "$($usu.nombre)" -Surname "$($usu.apellido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "GR-$($usu.departamento)" -Members $($usu.nombre)
}

Set-ADOrganizationalUnit -Identity "OU=Empresa ,DC=EMPRESA,DC=LOCAL" -ProtectedFromAccidentalDeletion $false
Remove-ADOrganizationalUnit -Identity  "OU=Empresa ,DC=EMPRESA,DC=LOCAL" -Recursive -Confirm:$False