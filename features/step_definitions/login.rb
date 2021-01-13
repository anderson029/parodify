Dado("que acesso a página Login") do
  visit "http://parodify.qaninja.com.br/"
  find("a[href='/users/sign_in']").click
end

Quando("submeto minhas crendenciais com: {string} e senha {string}") do |email, senha|
  find("input[id='user_email']").set email
  find("input[id='user_password']").set senha
  find("input[value='Log in']").click
end

Então("devo ver a mensagem de erro {string}") do |message_error|
  message_error = find(".message-body").text
  expect(message_error).to eql (message_error)
end
