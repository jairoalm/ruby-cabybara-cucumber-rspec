require_relative '../../sections/header/header'
module Pages
    class HomePage < SitePrism::Page
        set_url '/inventory.html'
        section :header, Sections::Header, '.primary_header' 
    end
end
