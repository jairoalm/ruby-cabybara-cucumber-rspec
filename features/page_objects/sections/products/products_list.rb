module Sections
    class ProductsList < SitePrism::Section
        element :image, 'img'
        element :name, '.product-name'
        element :price, '.product-price:not(.old-price)'
    end
end