            #language: pt

            Funcionalidade: Autenticação do cliente na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Esquema do Cenário: Login do usuário
            Quando eu digitar o usupario <username> e a senha <password>
            E clicar no botão "Login"
            Então deve exibir a mensagem <mensagem>

            Exemplos:
            | username                  | password    | mensagem                              |
            | joao@ebac.com.br          | senha@123   | "Olá Joao"                            |
            | maria@ebac.com.br         | senha@456   | "Olá Maria"                           |
            | joao@ebac.com.br          | senhaerrada | Usuário ou senha inválidos            |
            | usuarioerrado@ebac.com.br | senha@123   | Usuário ou senha inválidos            |
            |                           | senha@123   | Usuário ou senha inválidos            |
            | joao@ebac.com.br          |             | Usuário ou senha inválidos            |
