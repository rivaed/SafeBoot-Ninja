
# 🥷 SafeBoot Ninja – Controle Rápido do Modo de Segurança no Windows

**⚠️ AVISO LEGAL:**  
Este script é fornecido com fins técnicos e educacionais.  
Use apenas em sistemas sob sua responsabilidade. Alterar as configurações de boot pode impactar o funcionamento do sistema operacional.

---

## 🧠 Sobre o Projeto

**SafeBoot Ninja** é um utilitário simples, leve e 100% offline que permite:

- Ativar o **Modo de Segurança** no Windows (com ou sem rede)
- Desativar o modo seguro e retornar ao boot normal

Tudo via terminal ou PowerShell, sem precisar acessar msconfig ou pressionar F8 freneticamente.

---

## 🖥️ Compatível com:

- Windows 7  
- Windows 8 / 8.1  
- Windows 10  
- Windows 11

---

## 🚀 Como Usar

### 1. Ativar o Modo de Segurança

**Modo Seguro (sem rede):**

```cmd
bcdedit /set {current} safeboot minimal
```

**Modo Seguro com Rede:**

```cmd
bcdedit /set {current} safeboot network
```

---

### 2. Desativar o Modo de Segurança

```cmd
bcdedit /deletevalue {current} safeboot
```

---

## 💡 Script Automatizado (SafeBootNinja.ps1)

Você pode executar o script interativo abaixo:

```powershell
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
```

> Execute o PowerShell como **Administrador**

---

## 📌 Dicas e Cuidados

- Após ativado, o sistema continuará entrando em Modo Seguro até que seja desativado manualmente.
- Ideal para suporte remoto, diagnóstico, limpeza de malware e testes de ambiente.
- Evite aplicar em servidores de produção ou máquinas de usuários sem confirmação.

---

## 🛡️ Ética Profissional

Este script foi criado com finalidade técnica e ética.  
**Nunca use em sistemas de terceiros sem autorização expressa.**

---

## 📄 Licença

Distribuído sob a licença [MIT](LICENSE).  
Conteúdo livre para uso, modificação e redistribuição com os devidos créditos.

---

**Feito por [rivaed](https://github.com/rivaed) – agilidade ninja na hora do boot.**
