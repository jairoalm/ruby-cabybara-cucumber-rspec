#language: pt

Funcionalidade: Busca no Google

Cenário: Buscar por um termo na busca do Google
    Dado estar na página home do Google Brasil
    Quando pesquisa pelo termo "Livelo"
    Então validar que foram retornados resultados