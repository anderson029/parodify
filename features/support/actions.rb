module Actions
  def login_go
    visit "/"
    find("a[href='/users/sign_in']").click
  end

  def login_with(email, senha)
    find("input[id='user_email']").set email
    find("input[id='user_password']").set senha
    find("input[value='Log in']").click
  end

  def login_return
    return find(".message-body").text
  end

  def selection_music(categoria)
    find("a[href='/search/new']").click
    find("img[src$='#{categoria.downcase}.png']").click
  end

  def tocando_music(table)
    @parody = table.rows_hash
    find("a", text: @parody[:banda]).click
    find("[class='fas fa-play-circle fa-2x']").click
  end

  def page_cadastro
    visit "/"
    click_on "EXPERIMENTE AGORA"
  end

  def cadastro(table)
    user = table.rows_hash

    deletando_por_api user[:email]

    find('input[placeholder="Seu melhor email"]').set user[:email]
    find('[id="user_password"]').set user[:senha]
    find('[id="user_password_confirmation"]').set user[:senha_confirma]
    click_button "Cadastrar"
  end
end
