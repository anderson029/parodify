#language: pt

Funcionalidade: Login
  Sendo um usuário  previamente cadastrado
  Quero acessar o sistema com meu email e a senha123
  Para que eu possa ter acesso as playlist do paradify

Contexto:
  * que acesso a página Login

@login
Cenário: Login do usuário

  Quando submeto minhas crendenciais com: "andersonoliveira@gmail.com" e senha "senha123"
  Então devo ser redirecionado para a área logada

@login_negativo
Esquema do Cenário: Tentativas de Login

  Quando submeto minhas crendenciais com: "<email>" e senha "<senha>"
  Então devo ver a mensagem de erro "Opps! Dados de acesso incorretos!"

  Exemplos:
  | email                      | senha    |
  | qalead@123.com             | senha123 |
  |                            |          |
  | andersonoliveira@gmail.com |          |
  | qalead@123.com             |          |