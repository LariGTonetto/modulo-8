            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a Tela de Cadastro da Plataforma EBAC-SHOP

            Cenário: Preencher todos os Campos obrigatórios
            Quando eu preencher os campos nome
            E Sobrenome
            E País
            E Endereço
            E Cidade
            E CEP
            E Telefone
            E Endereço de e-mail
            Então devo ser Cadastrado na Plataforma EBAC-SHOP

            Cenário: Deixar algum Campo obrigatório sem preencher
            Quando eu deixar em branco o campo nome
            Ou Sobrenome
            Ou País
            Ou Endereço
            Ou Cidade
            Ou CEP
            Ou Telefone
            Ou Endereço de e-mail
            Então deve exibir uma mensagem de alerta: "Campos obrigatórios não preenchidos"

            Esquema do Cenário: Não autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a mensagem de erro: "Usuário ou senha inválidos"

            Exemplos:
            | usuario               | senha     |
            | "larissa@ebac.com.br" | "xxx123"  |
            | "larissa.ebac.com"    | "lari123" |
            | "larissa.ebac.com"    | "xxx123"  |
            
            Cenário: Preencher o Campo E-mail com formato válido e senha válida
            Quando eu digitar o usuário "larissa@ebac.com.br"
            E senha "lari123"
            Então devo ser redirecionado para a tela de Checkout