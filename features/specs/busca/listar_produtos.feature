#language: pt   
@busca
Funcionalidade: Busca - Validar a busca por produtos no Ecommerce
    Como um usuário do Ecommerce
    Quero poder realizar buscas por produtos específicos no Ecommerce
    Para poder customizar minha compra com diferentes produtos
@buscar_por_termos
Esquema do Cenário: Validar a busca por diferentes termos
    Dado estar na home page do Ecommerce
    E possuir um produto do tipo "<termos>" cadastro
    Quando realizar a busca pelo produto no campo de busca do header
    Então validar que são trazidos resultados na página de busca

    Exemplos: 
    |  termo |
    | blouse |
    | shirt  |
    | dress  |

# para na aula 07  no minuto 9:57