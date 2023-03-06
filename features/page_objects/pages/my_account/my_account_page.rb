module Pages
class MyAccountPage < SitePrism::Page
    set_url ''

    element :btn_sign_out, 'a.logout'
end