$num = Read-Host "Escribe un numero positivo porfavor" 

Write-Host "TODOS LOS NUMEROS IMPARES"

for ($a = 1; $a -le $num; $a++)
{
    if ($a % 2 -ne 0) {
    Write-Host -NoNewline "$a" ","
}

}