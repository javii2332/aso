$departamentos = import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$usuarios = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

# CREACIÓN DE EMPRESA
New-Item -Path "C:\Empresa_users" -ItemType Directory

# CREACIÓN DEL RECURSO COMPARTIDO EMPRESA
New-SmbShare -Path C:\Empresa_users -Name Empresa_users$

# DAR PERMISOS DE ACCESO PARA TODOS, ADMINS Y USUARIOS DEL DOMINIO
Grant-SmbShareAccess -Name Empresa_users$ -AccountName 'Usuarios del dominio' -AccessRight Change -Force
Grant-SmbShareAccess -Name Empresa_users$ -AccountName Administradores -AccessRight Full -Force

# PERMISOS NTFS PARA USUARIOS PUEDAN LEER PERO NO MODIFICAR
$acl = Get-Acl -Path C:\Empresa_users
$acl.SetAccessRuleProtection($true, $false)

# Permisos para Usuarios del dominio (Lectura y Ejecución)
$permisoAdd = @('Usuarios del dominio', 'ReadAndExecute', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$aceTodos = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoAdd
$acl.SetAccessRule($aceTodos)

# Permisos para Administradores (Control Total)
$adminsAdd = @('Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
$aceAdmins = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $adminsAdd
$acl.SetAccessRule($aceAdmins)

# Aplicar ACL Modificada a la Carpeta Raíz
$acl | Set-Acl -Path C:\Empresa_users


# CREACIÓN DE LAS CARPETAS PARA CADA USUARIO
foreach ($usu in $usuarios) {
    # Crear carpeta del departamento
    $rutaDep = "C:\Empresa_users\$($usu.nombre).$($usu.apellido)"
    
    # Crear la carpeta del departamento si no existe
    if (-not (Test-Path $rutaDep)) {
        New-Item -Path $rutaDep -ItemType Directory -Force
    }

    # Obtener ACL actual de la carpeta
    $aclDep = Get-Acl -Path $rutaDep
    $aclDep.SetAccessRuleProtection($true, $false)

    # Permisos para Administradores (Control Total)
    $aceAdmins = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $adminsAdd
    $aclDep.SetAccessRule($aceAdmins)

    # Permisos para Usuarios (Pueden leer pero no modificarl)
    $aceUsers = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoAdd
    $aclDep.SetAccessRule($aceUsers)

    #Permisos para cada usuario en su carpeta (CONTROL TOTAL)
    $usuprivAdd = @("$($usu.nombre).$($usu.apellido)", 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow')
    $aceUsupriv = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $UsuprivAdd
    $aclDep.SetAccessRule($aceUsers)


    # Aplicar ACL Modificada a la Carpeta del Departamento
    $aclDep | Set-Acl -Path $rutaDep

    #ASIGNAR UNIDAD Z AL USUARIO 
    Set-ADUser -Identity "$($usu.nombre)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\JAVI-ASO\Empresa_users$\$($usu.nombre).$($usu.apellido)"

}

