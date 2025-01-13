$usuarios = import-CSV C:\Users\Administrador\Desktop\usuarios.csv
foreach($usu in $usuarios) {
	Write-Host "Usuario -> $($usu.nombre) $($usu.apellidos) $($usu.grupo)"
}
