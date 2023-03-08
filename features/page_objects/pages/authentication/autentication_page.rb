require_relative '../../sections/authentication/form_login'
module Pages
    class AutenticationPage < SitePrism::Page
    set_url '/'

    section :form_login, Sections::FormLogin, '.login-box'  
    element :alert_error, '[data-test=error]'
    # '.alert-danger:not([style="display:none"])' 
    end   
end