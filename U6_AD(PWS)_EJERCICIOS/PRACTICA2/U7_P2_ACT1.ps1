#ACTIVIDAD 1

# 1 VISUALIZAR CARPETAS
Write-Host "VISUALIZANDO CARPETAS COMPARTIDAS (EXCLUIDAS ESPECIALES)"
Get-SmbShare | Where-Object { $_.Name -notin 'NETLOGON', 'SYSVOL' } |  Where-Object { $_.Name -notlike '*$' }

# 2 CREAR CARPETA ASO
Write-Host "CREANDO NUEVA CARPETA..."
 New-Item -Path C:\ASO -ItemType Directory

 # 3 COMPARTIR LA CARPETA ASO 
 Write-Host "COMPARTIENDO LA CARPETA ASO"
 New-SmbShare -Path C:\ASO -Name aso

 # 4 
 #Al compartir la carpeta aso, los permisos por defecto asignados son:
 #-Grupo "Todos" (Everyone): Se otorgan permisos de lectura para todos los usuarios. Esto permite que cualquier usuario pueda acceder a la carpeta en modo de solo lectura, pero no realizar modificaciones.
 #-Administrador local: Los usuarios con privilegios administrativos en el sistema tienen acceso total a la carpeta, lo que incluye lectura, escritura y control total.
 #-Sistema: El sistema operativo tiene acceso total para gestionar operaciones necesarias en la carpeta.

 # 5 PERMISOS DE ASO 
 Revoke-SmbShareAccess -Name ASO -AccountName Todos -Force
 Grant-SmbShareAccess -Name ASO -AccountName profesores -AccessRight Full -Force
 Grant-SmbShareAccess -Name ASO -AccountName alumnos -AccessRight Read -Force  