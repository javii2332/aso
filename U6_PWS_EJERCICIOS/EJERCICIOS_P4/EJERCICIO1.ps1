$nombre = Read-Host "Escribe tu nombre porfavor" 
[int]$num = Read-Host "Número de veces que quiere repetir el nombre" 

for ($a = 1; $a -le $num; $a++)
{
    Write-Host $nombre
} 