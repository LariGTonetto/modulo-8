            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login na Plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de Login da Plataforma EBAC-SHOP

            Cenário: Usuário e Senha válidos
            Quando eu digitar o usuário "larissa@ebac.com.br"
            E senha "lari123"
            Então devo ser redirecionado para a tela de Checkout

            Cenário: Usuário inválido
            Quando eu digitar o usuário "xxxx@ebac.com.br"
            E senha "lari123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Senha inválida
            Quando eu digitar o usuário "larissa@ebac.com.br"
            E senha "xxx123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha      | mensagem     |
            | "joao@ebac.com.br"  | "joao123"  | "Olá João!"  |
            | "maria@ebac.com.br" | "maria123" | "Olá Maria!" |
            | "jose@ebac.com.br"  | "jose123"  | "Olá José!"  |