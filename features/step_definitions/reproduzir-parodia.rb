Dado("Login com {string} e a senha {string}") do |email, senha|
  login_go
  login_with(email, senha)
end

Dado("que eu gosto de {string}") do |categoria|
  selection_music(categoria)
end

Quando("toco a seguinte canção:") do |table|
  tocando_music(table)
end

Então("essa paródia deve ficar em modo de reprodução") do
  expect(page.assert_all_of_selectors("i[class='fas fa-2x fa-pause-circle']")).to include ("i[class='fas fa-2x fa-pause-circle']")
end
