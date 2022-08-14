        #language: pt

        Funcionalidade: Configurar produto
        Como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
        Para depois inserir no carrinho

        Contexto:
        Dado que eu acesse a página da EBAC-SHOP

        Cenário: Selecionar a cor do produto e o tamanho
        Quando eu selecionar a cor do produto e o tamanho
        Então deve mudar a foto do produto com a cor selecionada e o tom mais escuro dos referido botões de cor e tamanho

        Cenário: Permitir até 10 produtos por venda
        Quando eu selecionar a quantidade de até 10 produtos
        Então o produto deverá ser inserido no carrinho

        Esquema do Cenário: Validar termos de compra de produtos
        Quando eu escolher a <cor>, <tamanho>
        E <quantidade> de até 10 produtos por venda
        Então deve ser permitido inserir ao carrinho de compras

        Examples:
            | Cor    | tamanho | quantidade |
            | Orange | S       | 5          |
            | Blue   | L       | 2          |
            | Red    | M       | 10         |