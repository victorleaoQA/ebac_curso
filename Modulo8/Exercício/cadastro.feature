#language: pt

Funcionalidade: Concluir cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra 

Contexto:
Dado que esteja no checkout da compra


Cenário: Inserindo dados corretamente
Quando eu digitar corretamente todos os dados obrigatórios marcados com asteriscos
E clicar em finalizar compra
Então deverá aparecer uma mensagem de compra finalizada

Cenário: Inserindo e-mail no formato inválido
Quando eu inserir um email <email> inválido
Então deverá aparecer uma mensagem de erro 

Cenário: Deixando campos vazios
Quando eu deixar um campo vazio
Então deverá aparecer uma mensagem de alerta

#Não ví a possibiidade de usar esquema do cenário baseado no critério de aceitação
#Estou ansioso pra saber se existe