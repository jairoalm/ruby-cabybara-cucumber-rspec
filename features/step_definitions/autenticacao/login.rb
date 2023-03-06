Dado('estar na página de autenticação') do
    @autentication_page = Pages::AutenticationPage.new
    @autentication_page.load
end

Dado('possuir um usuário {string}') do |user_type|    
    if user_type == 'existente'
        @user = { email: 'potato@testezap.com', password: '123456&'}
    elsif user_type == 'sem_cadastro'
        @user = { email: 'semcadastro@testezap.com', password: '123'}
    elsif user_type == 'existente_senha_invalida'
        @user = { email: 'potato@testezap.com', password: '12345'}
    end
end

Quando('realizar o login com e-mail na tela de autenticação') do
    @autentication_page.form_login.login_with(@user)
end

Então('validar que o login foi realizado com sucesso') do
    @my_account_page = Pages::MyAccountPage.new
    expect(@my_account_page).to have_btn_sign_out
end

Então('validar que o login não foi realizado') do   
    aggregate_failures do
        expect(@autentication_page).to have.alert.error
        expect(@autentication_page.alert_error.text).to have_content 'There is 1 error'
    end   
end