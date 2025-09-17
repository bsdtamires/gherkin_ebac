            #language: pt
            
            Funcionalidade: Configurar produto na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar um produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de visualização do produto

            Esquema do Cenário: Seleção obrigatória e quantidade máxima
            Quando seleciono a cor <Color>, o  tamanho <Size> e a quantidade <quantidade>
            E clico em comprar
            Então deve exibir a <mensagem>

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                               |
            | azul     | M       | 1          | Produto adicionado ao carrinho         |
            |          | G       | 2          | Selecione a cor                        |
            | vermelho |         | 3          | Selecione o tamanho                    |
            | preto    | P       |            | Selecione a quantidade                 |
            | verde    | G       | 11         | Limite máximo de 10 produtos por venda |
            | amarelo  | G       | 10         | Produto adicionado ao carrinho         |
            | branco   | P       | 0          | Selecione a quantidade                 |

Cenário: Botão “limpar” retorna ao estado original
Dado que selecionei cor, tamanho e quantidade para um produto
Quando clico no botão "limpar"
Então todas as seleções devem ser desfeitas e o formulário deve voltar ao estado original

Cenário: Não permitir adicionar ao carrinho sem todas as seleções
Quando tento adicionar ao carrinho sem selecionar cor, tamanho ou quantidade
Então deve exibir uma mensagem informando que todas as seleções são obrigatórias