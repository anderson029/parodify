Dado('que acesso a página de cadastro:') do
    visit 'http://parodify.qaninja.com.br'
    click_on'EXPERIMENTE AGORA'
end
  
Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash

    delorean user[:email]

    find('input[placeholder="Seu melhor email"]').set user[:email] 
    find('[id="user_password"]').set user[:senha]
    find('[id="user_password_confirmation"]').set user[:senha_confirma]
    click_button 'Cadastrar'
end
  
Então('devo ser redirecionado para a área logada') do
    expect(page).to have_css '.dashboard'
end