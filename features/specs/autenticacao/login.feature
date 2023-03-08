#language: pt
@login
Funcionalidade: Autenticação - Validar o Login no Ecommerce
    Como um usuário do Ecommerce
    Quero realizar login na página de autenticação do Ecommerce
    Para finalizar compras ou guardar produtos para comprar mais tarde no Ecommerce

    # Sendo um usuário do Ecommerce fake AutomationPractice
    # Gostaria de poder me autenticar
    # Para poder finalizar compras ou guardar produtos para comprar mais tarde

    Contexto: que o usuário esteja na página de autenticação        
        * estar na página de autenticação

    @login_com_sucesso
    Cenário: Validar o login de usuário pela tela de autenticação do Ecommerce
        Dado possuir um usuário "existente"
        # Dado possuir um usuário existente no Ecommerce
        Quando realizar o login com e-mail na tela de autenticação
        Então validar que o login foi realizado com sucesso
    @login_com_falha
    Esquema do Cenário: Validar a tentativa de autenticação de usuários pela tela de autenticação do Ecommerce
        Dado possuir um usuário "<tipo_usuario>"    
        Quando realizar o login com e-mail na tela de autenticação
        Então validar que o login não foi realizado 

        Exemplos:
            |tipo_usuario|
            |sem_cadastro|
            |existente_e-mail_invalido|
            |existente_senha_invalida|
    
    # Cenário: Validar a tentativa de login com usuário inexistente pela tela de autenticação do Ecommerce
    #     Dado possuir usuário "sem_cadastro" no Ecommerce
    #     # Dado possuir um usuário sem cadastro no Ecommerce
    #     Quando realizar o login com e-mail no Ecommerce
    #     Então validar que o login não foi realizados no Ecommerce
    
    #  Cenário: Validar a tentativa de login com senha incorreta pela tela de autenticação
    #     Dado possuir um usuário "existente_senha_invalida" no Ecommerce
    #     # Dado possuir um usuário existente no Ecommerce
    #     # E possuir uma senha inválida no Ecommerce
    #     Quando realizar o login com e-mail no Ecommerce
    #     Então validar que o login não foi realizado no Ecommerce

