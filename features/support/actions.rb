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

  def tocando_music
    find("a", text: @parody[:banda]).click
    find("[class='fas fa-play-circle fa-2x']").click
  end
end
