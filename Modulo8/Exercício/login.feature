        #language: pt

        Funcionalidade: Login na plataforma
        Como cliente EBAC-SHOP
        Queo fazer login na plataforma
        Para visualizar meus pedidos

        Contexto:
        Dado que eu acesse a plataforma da EBAC-SHOP

        Cenário: Fazer login válido na plataforma
        Quando eu inserir meu username
        E senha válidos
        Então devo ser direcionado para a página de checkout

        Cenário: inserir usuário inválido
        Quando eu digitar o usuario "invalido@ebac.com.br"
        E a senha "senhavalida123"
        Então deverá aparecer a mensagem "Usuário ou senha inválidos"

        Cenário: Inserir senha inválida
        Quando eu digitar o usuário "valido@ebac.com.br"
        E a senha "invalida123"
        Então deverá aparecer a mensagem "Usuário ou senha inválidos"

        # Poderemos fazer desse jeito tbm

        Esquema do Cenário: Usando usuario válidos, inválidos, senhas válidas e inválidas
        Quando eu digitar <usuario>
        E <senha>
        Então deverá aparecer a <mensagem>

        Examples:
            | Usuario                | Senha            | Mensagem                     |
            | "usuario@ebac.com.br"  | senhavalida123   | "Olá usuário"                |
            | "invalido@ebac.com.br" | senhavalida123   | "Usuário ou senha inválidos" |
            | "usuario@ebac.com.br"  | senhainvalida123 | "Usuário ou senha inválidos" |


