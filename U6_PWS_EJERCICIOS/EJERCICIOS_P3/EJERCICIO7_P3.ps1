[String]$passwd = "contraseña"

[String]$prueba = Read-Host "INTRODUZCA LA CONTRASEÑA CORRECTA"

If ($passwd -ieq $prueba) {
    Write-Host "LA CONTRASEÑA INTRODUCIDA ES CORRECTA"
}else{
    Write-Host "LO SENTIMOS LA CONTRASEÑA INTRODUCIDA NO ES CORRECTA"
}    




