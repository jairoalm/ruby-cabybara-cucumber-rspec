require_relative '../../sections/authentication/form_login'
module Pages

class AutenticationPage < SitePrism::Page
    set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

    section :form_login, Sections::FormLogin, '#login_form'  
    element :alert_error, '.alert-danger:not([style="display:none"])'    
end