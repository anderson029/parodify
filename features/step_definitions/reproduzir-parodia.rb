Dado("Login com {string} e a senha {string}") do |email, senha|
  #steps da feature login
  steps %(
    * que acesso a página Login
     Quando submeto minhas crendenciais com: "#{email}" e senha "#{senha}"
    )
end

Dado("que eu gosto de {string}") do |categoria|
  find("a[href='/search/new']").click
  find("img[src$='#{categoria.downcase}.png']").click
end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash

  find("a", text: @parody[:banda]).click

  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click
end

Então("essa paródia deve ficar em modo de reprodução") do
  song_play = find("playing")
  expect(song_play).to have_text @parody[:parodia]
end
