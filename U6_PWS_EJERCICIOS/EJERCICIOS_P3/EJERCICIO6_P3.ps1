$fd = Read-Host "PORFAVOR INTRODUZCA UN FICHERO O UNA CARPETA"

$comp = Test-Path $fd -PathType container

If ($comp -ieq $True) {
    Write-Host "El directorio introducido existe"
    Get-ChildItem -Path $fd -Recurse
}Else {
    Write-Host "El directorio que ha introducido no existe"
} 

