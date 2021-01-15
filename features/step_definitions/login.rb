Dado("que acesso a página Login") do
  login_go
end

Quando("submeto minhas crendenciais com: {string} e senha {string}") do |email, senha|
  login_with(email, senha)
end

Então("devo ver a mensagem de erro {string}") do |message_error|
  expect(login_return).to eql (message_error)
end
