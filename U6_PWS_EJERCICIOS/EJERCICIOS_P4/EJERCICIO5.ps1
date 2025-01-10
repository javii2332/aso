$num = Read-Host "PORFAVOR INTRODUCE UN NÚMERO"

Write-Host "TABLA DE MULTIPLICAR DE $num"

for ($a=1; $a -le 10; $a++)
{
    $total= $num * $a
    Write-Host "$num x $a = $total"
} 