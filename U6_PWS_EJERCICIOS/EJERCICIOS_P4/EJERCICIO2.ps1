$edad = Read-Host "Escribe tu edad porfavor" 

for ($a = 1; $a -le $edad; $a++)
{
    Write-Host "AÑOS QUE HA CUMPLIDO $a"
}