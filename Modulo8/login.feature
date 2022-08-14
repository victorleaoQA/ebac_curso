            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            # Quando se colocar um Contexto no Gherkin, o "Dado" de cada cenário de ser retirado
            Contexto:
            Dado que eu acesse a página de Autenticação do Portal EBAC

            Cenário: Autenticação válida
            # Dado que eu acesse a página de Autenticação do Portal EBAC
            Quando eu digitar o usuário "leaovic@icloud.com"
            E a senha "marinha010"
            Então deve exibir uma mensagem de boas vindas "Olá Victor"

            Cenário: Usuário inexistente
            # Dado que eu acesse a página de Autenticação do portal EBAC
            Quando eu digitar o usuário "xyz@icloud.com"
            E a senha "marinha010"
            Então deve exibir uma mensagem de alerta: "Usuário não inexistente"

            Cenário: Usuário com senha inválida
            # Dado que eu acesse a página de Autenticação do portal EBAC
            Quando eu digitar o usuário "leaovic@icloud.com"
            E a senha "xyzError"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


            Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario              | senha        | mensagem     |
            | "leaovic@icloud.com" | "marinha010" | "Olá Victor" |