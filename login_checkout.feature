#language: pt

Funcionalidade: Autenticação na Plataforma
Como cliente da EBAC-SHOP
Quero fazer me autenticar na Plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da plataforma

Cenário: Autenticação válida deve direcionar a página de checkout
Quando eu digitar o usuário "fulano@gmail.com"
E a senha "123456"
Então o sistema deve direcionar automaticamente para a página de checkout

Cenário: Autenticação inválida
Quando eu digitar o usuário "fulano2@gmail.com"
E a senha "54321"
Então o sistema deve emitir uma mensagem de alerta "Usuário ou senha inválidos"
