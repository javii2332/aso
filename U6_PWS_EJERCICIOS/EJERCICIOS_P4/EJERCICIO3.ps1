$num = Read-Host "Escribe un num positivo porfavor" 

for ($a = $num; $a -ge 0; $a--) {
    Write-Host -NoNewline "$a"  # Imprime sin saltar de línea
    if ($a -ne 0) {
        Write-Host -NoNewline ", "  # Agrega una coma después de cada número excepto el último
    }
}
Write-Host  # Salto de línea final
