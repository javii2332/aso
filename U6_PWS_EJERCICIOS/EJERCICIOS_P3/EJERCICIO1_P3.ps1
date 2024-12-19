[Int]$num = Read-Host "Introduce un numero"

if ($num % 2 -eq 0) {
        Write-Host "El numero $num es Par"
}Else {
        Write-Host "El numero $num es Impar"
} 