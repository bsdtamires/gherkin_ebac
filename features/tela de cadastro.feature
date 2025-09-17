            #language: pt
            
            Funcionalidade: Cadastro checkout na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página detalhes de faturamento da EBAC SHOP

            Esquema do Cenário: Cadastro com diferentes combinações de dados
            Quando eu preencher os campos obrigatórios: nome <nome>, sobrenome <sobrenome>, país <pais>, endereço <endereco>, cidade <cidade>, CEP <cep>
            endereço de e-mail <email> e telefone <telefone>
            E clicar no botão "Cadastrar"
            Então deve exibir a mensagem <mensagem>

            Exemplos:
            | nome  | sobrenome | pais   | endereco   | cidade    | cep       | email             | telefone    | mensagem                              |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo | 01234-567 | joao@ebac.com.br  | 11999999999 | Cadastro realizado com sucesso        |
            | Maria | Souza     | Brasil | Av. B, 456 | Rio       | 12345-678 | mariaebac.com     | 21988888888 | E-mail em formato inválido            |
            |       | Souza     | Brasil | Av. B, 456 | Rio       | 12345-678 | maria@ebac.com.br | 21988888888 | Preencha todos os campos obrigatórios |
            | João  |           | Brasil | Rua A, 123 | São Paulo | 01234-567 | joao@ebac.com.br  | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     |        | Rua A, 123 | São Paulo | 01234-567 | joao@ebac.com.br  | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     | Brasil |            | São Paulo | 01234-567 | joao@ebac.com.br  | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     | Brasil | Rua A, 123 |           | 01234-567 | joao@ebac.com.br  | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo |           | joao@ebac.com.br  | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo | 01234-567 |                   | 11999999999 | Preencha todos os campos obrigatórios |
            | João  | Silva     | Brasil | Rua A, 123 | São Paulo | 01234-567 | joao@ebac.com.br  |             | Preencha todos os campos obrigatórios |