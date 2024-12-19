[Int]$num1 = Read-Host "PORFAVOR INTRODUZCA UN NÚMERO"
[Int]$num2 = Read-Host "PORFAVOR INTRODUZCA OTRO NÚMERO"


if ($num1 -eq $num2) {
        Write-Host "$num1 ES IGUAL QUE $num2"
}ElseIf ($num1 -gt $num2) {
        Write-Host "$num1 ES MAYOR QUE $num2"
}ElseIf ($num1 -lt $num2) {
        Write-Host "$num1 ES MENOR QUE $num2"
}