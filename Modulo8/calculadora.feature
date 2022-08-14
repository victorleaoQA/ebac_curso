            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de dois numeros
            Dado que eu acesse a calculadora
            Quando eu somar 2+2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de dois números em tabela
            Dado que eu acessa a calculadora
            Quando eu somar <valor1> + <valor2>
            Então o resultado deve ser <resultado>

            Exemplos:
            | valor1 | valor2 | resultado |
            | 2      | 2      | 4         |
            | 1      | 1      | 2         |