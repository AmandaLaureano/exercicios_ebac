#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página do produto escolhido da loja EBAC-SHOP

Cenário: Seleção da cor, tamanho e quantidade do produto
Quando eu escolher a cor, tamanho e quantidade do produto
Então o produto deve ser inserido no carrinho

Cenário: Seleção somente de 1 variação do produto
Quando eu escolher somente 1 variação do produto
Então o sistema deve emitir uma mensagem de alerta "Selecione todas as variações"

Cenário: Permitir até 10 produtos por venda
Quando eu escolher 5 produtos por venda
Então o sistema deve permitir adicionar ao carrinho

Cenário: Não deve permitir mais de 10 produtos por venda
Quando eu tentar selecionar mais de 10 produtos
Então o sistema deve emitir uma mensagem de alerta "Quantidade máxima selecionada!"

Cenário: Clicar no botão limpar para o produto voltar ao estado original
Quando eu clicar no botão limpar
Então o sistema deve retornar o produto em seu estado original