            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login na Plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de Login da Plataforma EBAC-SHOP

            Esquema do Cenário: Não autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a mensagem de erro: "Usuário ou senha inválidos"

            Exemplos:
            | usuario               | senha     |
            | "larissa@ebac.com.br" | "xxx123"  |
            | "larissa.ebac.com"    | "lari123" |
            | "larissa.ebac.com"    | "xxx123"  |

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha      | mensagem     |
            | "joao@ebac.com.br"  | "joao123"  | "Olá João!"  |
            | "maria@ebac.com.br" | "maria123" | "Olá Maria!" |
            | "jose@ebac.com.br"  | "jose123"  | "Olá José!"  |