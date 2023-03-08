require_relative '../../sections/header/header'
module Pages
    class MyAccountPage < SitePrism::Page
        set_url ''
        section :header, Sections::Header, '.primary_header'        
    end
end