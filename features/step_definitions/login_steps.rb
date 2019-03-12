Dado("que esteja na tela de Login") do
  page = LoginScreen.new
  page.is_on_page "Login"
end

Quando("informar credencias válidas") do
  page = LoginScreen.new
  page.informe_credentials_valid
end

Quando("acessar a opção de Login") do
  page = LoginScreen.new
  page.click_button_login
end

Então("posso fazer meu login com sucesso") do
  page = LoginScreen.new
  page.is_on_page "Samples List"
end
