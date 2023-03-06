module Sections
class FormLogin <SitePrism::Section
    element :input_email, '#email'
    element :input_password, '#password'
    element :btn_login, '#SubmitLogin'

    def login_with(user)        
        input_email.set user[:email]
        input_password.set user[:password]
        btn_login.click
    end
end