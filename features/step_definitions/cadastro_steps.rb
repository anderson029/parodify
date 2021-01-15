Dado("que acesso a página de cadastro") do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  deletando_por_api user[:email]

  find('input[placeholder="Seu melhor email"]').set user[:email]
  find('[id="user_password"]').set user[:senha]
  find('[id="user_password_confirmation"]').set user[:senha_confirma]
  click_button "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end
Então("devo ver a {string}") do |mensagem_saida|
  notification = find(".message-body p").text
  expect(notification).to eql mensagem_saida
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
 )
end

Então("deve exibir o seguinte css:{string}") do |expect_css|
  expect(page).to have_css expect_css
end
