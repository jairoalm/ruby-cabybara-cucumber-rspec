module Sections
    class FormLogin <SitePrism::Section
        element :input_email, '#user-name'
        element :input_password, '#password'
        element :btn_login, '#login-button'

    def login_with(user)        
        input_email.set user[:email]
        input_password.set user[:password]
        btn_login.click
    end
end
end