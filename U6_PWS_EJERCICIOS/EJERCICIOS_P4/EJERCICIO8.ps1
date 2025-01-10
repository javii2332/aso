$num = Read-Host "Escribe un número entero por favor"

for ($a = 1; $a -le $num; $a++) {
    for ($b = $a; $b -ge 1; $b--) {
        Write-Host -NoNewline "$(($b * 2 - 1)) "  # Calcula directamente el número impar
    }
    Write-Host ""  # Salto de línea para la siguiente fila
}
