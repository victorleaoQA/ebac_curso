            #language: pt

            Funcionalidade: Autenticação da EBAC
            Como aluno do portal EBAC
            Quero me autenticar
            Para que eu possa visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de login da EBAC

            Cenário: Autenticação válida
            # Dado que eu acesse a página de login da EBAC
            Quando eu inserir usuário "leaovic@icloud.com"
            E senha "marinha010"
            Então deve direcionar para o Dashboard

            # Cenário: Usuário inexistente
            # # Dado que eu acesse a página de login da EBAC
            # Quando eu inserir usuário inexistente
            # Então deve exibir uma mensagem de erro: "Usuário não cadastrado em nossa base de dados"

            # Cenário: Usuário com senha inválida
            # # Dado que eu acesse a página de login da EBAC
            # Quando eu inserir usuário inexistente
            # Então deve exibir uma mensagem de erro: "Usuário ou senha inválidos"

            Esquema do Cenário: Validadar autenticação inválidas
            Quando eu inserir <usuario> e <senha>
            Então deve exibir uma <mensagem> de erro

            Exemplos:
            | usuario              | senha      | mensagem                                       |
            | "leaovic@icloud.com" | "marinha0" | "Usuário ou senha inválidos"                   |
            | "leac@icloud.com"    | "marinha0" | "Usuário nãocadastrado em nossa base de dados" |

