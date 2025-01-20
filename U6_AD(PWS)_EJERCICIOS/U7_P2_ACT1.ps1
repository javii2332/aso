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

 # 5 PERMISOS DE ASO 