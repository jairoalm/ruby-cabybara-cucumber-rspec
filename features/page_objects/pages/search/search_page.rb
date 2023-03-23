require_relative '../../sections/products/products_list'
module Pages
    class SearchPage < SitePrism::Page
        set_url ''
        sections :products, Sections::ProductsList, '.ajax_block_product'
    end
end