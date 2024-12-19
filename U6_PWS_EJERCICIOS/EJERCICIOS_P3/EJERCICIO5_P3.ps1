[string]$fd = Read-Host "PORFAVOR INTRODUZCA UN FICHERO O UNA CARPETA"

$comp = Test-Path $fd 

If ($comp -ieq $True) {
    Write-Host "El fichero o directorio introducido existe"
}Else {
    Write-Host "El fichero o directorio que ha introducido no existe"
} 

