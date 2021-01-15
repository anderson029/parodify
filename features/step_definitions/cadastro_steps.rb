Dado("que acesso a página de cadastro") do
  page_cadastro
end

Quando("submeto o meu cadastro com:") do |table|
  cadastro(table)
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end
Então("devo ver a {string}") do |mensagem_saida|
  notification = find(".message-body p").text
  expect(notification).to eql mensagem_saida
end

Quando("acesso a página de cadastro") do
  #antes de implemntar app actions, tinha que chamar o steps para reaproveitar
  #steps %(
  # Dado que acesso a página de cadastro
  #)
  page_cadastro
end

Então("deve exibir o seguinte css:{string}") do |expect_css|
  expect(page).to have_css expect_css
end
