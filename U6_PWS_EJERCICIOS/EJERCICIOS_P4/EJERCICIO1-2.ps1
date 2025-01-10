$nombre = Read-Host "Escribe tu nombre porfavor" 
[int]$num = Read-Host "Número de veces que quiere repetir el nombre" 

$a = 1
do {
        Write-Host $nombre   
        $a++
}while ($a -le $num)