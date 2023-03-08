Então('estar na home page do Ecommerce') do
    @home_page = Pages::HomePage.new
    @home_page.load
end

Dado('possuir um produto do tipo {string} cadastro') do |product|
    @product = product
end
  
Quando('realizar a busca pelo produto no campo de busca do header') do
    @header = @home_page.header
    @header.search_for(@product)
end
  
Então('validar que são trazidos resultados na página de busca') do
    @search_page = Pages::SearchPage.new
    # binding.pry
    expect(@search_page).to have_products
    expect(@search_page.products.first).to have_name
    expect(@search_page.products.first).to have_image
    expect(@search_page.products.first).to have_price
    expect(@search_page.products.first.all_here?).to be true
end