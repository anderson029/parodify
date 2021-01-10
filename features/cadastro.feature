#language: pt
#enconding: utf-8

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    Contexto: Login parodify
        Dado que acesso a página de cadastro

    @happy
    Cenário: cadastro
        Quando submeto o meu cadastro com:
            | email          | andersonoliveira@gmail.com |
            | senha          | senha123                   |
            | senha_confirma | senha123                   |
        Então devo ser redirecionado para a área logada

    @negativo
    Esquema do Cenário: Tentativas de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a "<mensagem_saida>"

        Exemplos:
            | email                 | senha    | confirma_senha | mensagem_saida                       |
            |                       | Senha123 | Senha123       | Oops! Informe seu email.             |
            | teste.teste@gamil.com |          |                | Oops! Informe sua senha.             |
            | teste.teste@gamil.com | Senha123 | Senha1234      | Oops! Senhas não são iguais.         |
            |                       |          |                | Oops! Informe seu email e sua senha. |
    @tec
    Cenário: Validação do campo e-mail
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css:"input[type=email]"