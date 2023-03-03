Dado('estar na página home do Google Brasil') do
    @google_home_page = GoogleHomePage.new
    @google_home_page.load     
end
Quando('pesquisa pelo termo {string}') do |query|
    @google_home_page.search(query)  
    @google_results_page = GoogleResultsPage.new   
end  
Então('validar que foram retornados resultados') do
    sleep 5
    expect(@google_results_page.current_url).to have_content 'q=Livelo'

end