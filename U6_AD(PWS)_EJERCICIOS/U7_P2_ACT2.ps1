$departamentos = import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$usuarios = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

# CREACIÓN DE EMPRESA
New-Item -Path "C:\Empresa2" -ItemType Directory

# CREACIÓN DEL RECURSO COMPARTIDO EMPRESA
New-SmbShare -Path C:\Empresa2 -Name Empresa2

# DAR PERMISOS DE ACCESO PARA TODOS 
Grant-SmbShareAccess -Name Empresa2 -AccountName Todos -AccessRight Full -Force 

# PERMISOS NTFS PARA USUARIOS PUEDAN LEER PERO NO MODIFICAR
$acl = Get-Acl -Path C:\Empresa2
$acl.SetAccessRuleProtection($true, $true)

# Permisos para Todos (Lectura)
$permisoAdd = @('Todos', 'Read', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$aceTodos = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoAdd
$acl.SetAccessRule($aceTodos)

# Permisos para Administradores (Control Total)
$adminsAdd = @('Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$aceAdmins = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $adminsAdd
$acl.SetAccessRule($aceAdmins)

# Aplicar ACL Modificada a la Carpeta Raíz
$acl | Set-Acl -Path C:\Empresa2

Write-Host "LA HERENCIA HA SIDO DESACTIVADA Y SE HAN ESTABLECIDO PERMISOS EN EMPRESA2"

# COMPROBAR QUE SE HA REALIZADO CORRECTAMENTE
(Get-Acl -Path "C:\Empresa2").AreAccessRulesProtected
icacls "C:\Empresa2"

# CREACIÓN DE LAS CARPETAS PARA CADA DEPARTAMENTO
foreach ($dep in $departamentos) {
    # Crear carpeta del departamento
    $rutaDep = "C:\Empresa2\$($dep.departamento)"
    New-Item -Name "$($dep.departamento)" -Path "C:\Empresa2\" -ItemType Directory -Force

    # Obtener ACL actual de la carpeta
    $aclDep = Get-Acl -Path $rutaDep
    $aclDep.SetAccessRuleProtection($true, $false)

    # Permisos para Administradores (Control Total)
    $aceAdmins = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $adminsAdd
    $aclDep.SetAccessRule($aceAdmins)

    # Permisos para Grupo del Departamento (Modificar)
    $gruposAdd = @("GR-$($dep.departamento)", 'Modify', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $aceGrupo = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $gruposAdd
    $aclDep.SetAccessRule($aceGrupo)

    # Aplicar ACL Modificada a la Carpeta del Departamento
    $aclDep | Set-Acl -Path $rutaDep
}

Write-Host "TODAS LAS CARPETAS HAN SIDO CREADAS Y SE HAN ASIGNADO LOS PERMISOS CORRECTAMENTE"




#ELIMINAR SI HACE FALTA
Remove-Item -Path "C:\Empresa2" 

Remove-SmbShare -Name Empresa2 -Force

$acl = Get-Acl -Path C:\Empresa2
$deletePerm = @('Todos', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$aceDelete = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $deletePerm
$acl.SetAccessRule($aceDelete)
$acl | Set-Acl -Path C:\Empresa2


takeown /f "C:\Empresa" /r /d y
icacls "C:\Empresa" /grant Administradores:F /t

Remove-Item -Path "C:\Empresa2" -Recurse -Force