do {
Write-Host "
a) Crear una carpeta

b) Crear un fichero nuevo

c) Cambiar el nombre de un fichero o carpeta

d) Borrar un archivo o carpeta

e) Verificar si existe un fichero o carpeta

f) Mostrar el contenido de un directorio.

g) Mostar la fecha y hora actuales

x) Salir"

Write-Host "¿Que desea hacer? Elige una opcion"

$opcion = Read-Host "OPCION ELEGIDA"

#Bloque Switch
switch ($opcion) { 
	a {
		#CREAR NUEVA CARPETA
        $c = Read-Host "NOMBRE ELEGIDO PARA LA CARPETA CON SU RESPECTIVA RUTA"
		New-Item -Path $c -ItemType Directory 
        Write-Host "Carpeta '$c' creada exitosamente"
	}
	b {
		#CREAR NUEVO ARCHIVO
        $f = Read-Host "NOMBRE ELEGIDO PARA EL ARCHIVO CON SU RESPECTIVA RUTA"
		New-Item -Path $f -ItemType file 
        Write-Host "Archivo '$f' creado exitosamente."
	}
	c {
		#RENOMBRAR ARCHIVO O CARPETA
        $nomp = Read-Host "RUTA Y NOMBRE DEL ARCHIVO/CARPETA A RENOMBRAR"
        $ren = Read-Host "NOMBRE ELEGIDO PARA RENOMBRAR EL ARCHIVO/CARPETA"
		Rename-Item -Path $nomp -NewName $ren
        Write-Host "Archivo/carpeta renombrado exitosamente."
	}
	d {
		#BORRAR ARCHIVO O CARPETA
        $rm = Read-Host "RUTA Y NOMBRE DEL ARCHIVO/CARPETA A BORRAR"
        Remove-Item -Path $rm -Recurse
        Write-Host "Archivo/carpeta eliminado exitosamente."
	}
    e {
		#VERIFICAR SI UN ARCHIVO EXISTE O NO
        $fd = Read-Host "Por favor, introduzca un fichero o una carpeta"
        if (Test-Path -Path $fd) {
                Write-Host "El fichero o directorio introducido EXISTE."
            } else {
                Write-Host "El fichero o directorio introducido NO EXISTE."
            }
        }
    f {
		#MOSTRAR CONTENIDO DEL DIRECTORIO 
        $ruta = Read-Host "RUTA DEL DIRECTORIO A VISUALIZAR"
		Get-ChildItem -Path $ruta -Recurse
	}
    g {
		#MOSTRAR FECHA Y HORA ACTUALES 
		$fecha = Get-Date
        Write-Host "Fecha y hora actuales: $fecha"
	}
    x {
		#SALIR
        Write-Host "Saliendo del programa. ¡Adiós!"
	}
 }
} while ($opcion -ne "x")