#language: pt

Funcionalidade: Reproduzir Paródia
Sendo um usuário cadastrado
Quero reproduzir músicas no Player do Parodify
Para que eu possa ouvir as paródias das minhas bandas favoritas

Contexto: Login

  * Login com "andersonoliveira@gmail.com" e a senha "senha123"

@tst
Cenário: Ouvir Paródia

  Dado que eu gosto de "Rock"
  Quando toco a seguinte canção:
    | parodia | sprints de luta sprints de glória |
    | banda   | Charlie Brown Bug                 |
  Então essa paródia deve ficar em modo de reprodução