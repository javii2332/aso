# Solicitar al usuario su nombre y sexo
$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (Hombre/Mujer)"

# Obtener la primera letra del nombre
$primerCaracter = $nombre[0]

# Verificar si el usuario es Mujer con nombre anterior a la M
if ($sexo -eq "Mujer" -and $primerCaracter -lt "M") {
    $grupo = "A"
}
# Verificar si el usuario es Hombre con nombre posterior a la N
elseif ($sexo -eq "Hombre" -and $primerCaracter -gt "N") {
    $grupo = "A"
}
# En cualquier otro caso el grupo será B
else {
    $grupo = "B"
}

# Mostrar el resultado
Write-Host "Te corresponde el grupo: $grupo"
