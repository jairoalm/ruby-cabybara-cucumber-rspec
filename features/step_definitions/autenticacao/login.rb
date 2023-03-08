Dado('estar na página de autenticação') do
    @autentication_page = Pages::AutenticationPage.new
    @autentication_page.load
end

Dado('possuir um usuário {string}') do |user_type|    
    if user_type == 'existente'
        @user = { email: 'standard_user', password: 'secret_sauce'}
    elsif user_type == 'sem_cadastro'
        @user = { email: 'semcadastro@testezap.com', password: '123'}
    elsif user_type == 'existente_e-mail_invalido'
        @user = { email: 'semcadastro@testezap.com', password: 'secret_sauce'}
    elsif user_type == 'existente_senha_invalida'
        @user = { email: 'standard_user', password: '12345'}
    end
end

Quando('realizar o login com e-mail na tela de autenticação') do
    @autentication_page.form_login.login_with(@user)
end

Então('validar que o login foi realizado com sucesso') do
    @my_account_page = Pages::MyAccountPage.new
    expect(@my_account_page.header).to have_shopping_cart
end

Então('validar que o login não foi realizado') do   
    aggregate_failures do
        expect(@autentication_page).to have_alert_error
        expect(@autentication_page.alert_error.text).to have_content 'Epic sadface: Username and password do not match any user in this service'
    end   
end