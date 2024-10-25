            #language: pt

            Funcionalidade: Concluir cadastro na plataforma
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Dado que eu escolha um produto e acesse a página de checkout dele

            Cenário: Deve ser feito o cadastro com todos os dados obrigatórios
            Quando eu preencher todos os campos obrigatórios
            Então o sistema deve permitir o cadastro

            Esquema do Cenário: Verificação de campos obrigatórios não preenchidos
            Quando eu clicar em finalizar o cadastro
            E não tiver preenchido os campos obrigatórios
            Então o sistema deve emitir uma mensagem de alerta "Preencha todos os campos obrigatórios!"

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido
            Quando eu digitar o e-mail <e-mail>
            Então o sistema deve emitir a mensagem de erro <mensagem>

            Exemplo de dados:
            | e-mail                  | mensagem                     |
            | "fulano.com.br"         | "Formato de e-mail inválido" |
            | "@fulano2.org.br"       |                              |
            | "Fulano3.@gmail.com"    |                              |
            | "fulano4@.yahoo.br.com" |                              |