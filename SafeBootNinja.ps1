Write-Host "=== SafeBoot Ninja ==="
Write-Host "1 - Ativar Modo Seguro"
Write-Host "2 - Ativar Modo Seguro com Rede"
Write-Host "3 - Voltar ao modo normal"
$op = Read-Host "Escolha uma opção"

switch ($op) {
  "1" { bcdedit /set {current} safeboot minimal }
  "2" { bcdedit /set {current} safeboot network }
  "3" { bcdedit /deletevalue {current} safeboot }
  default { Write-Host "Opção inválida." }
}
