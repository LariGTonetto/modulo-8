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

            Cenário: Preencher o Campo E-mail com formato válido e senha válida
            Quando eu digitar o usuário "larissa@ebac.com.br"
            E senha "lari123"
            Então devo ser redirecionado para a tela de Checkout

            Cenário: Preencher o Campo E-mail com formato válido e senha inválida
            Quando eu digitar o usuário "larissa@ebac.com.br"
            E senha "xxx123"
            Então deve exibir uma mensagem de erro: "Usuário ou senha inválidos"

            Cenário: Preencher o Campo E-mail com formato inválido e senha válida
            Quando eu digitar o usuário "larissa.ebac.com"
            E senha "lari123"
            Então deve exibir uma mensagem de erro: "Usuário ou senha inválidos"

            Cenário: Preencher o Campo E-mail com formato inválido e senha inválida
            Quando eu digitar o usuário "larissa.ebac.com"
            E senha "xxx123"
            Então deve exibir uma mensagem de erro: "Usuário ou senha inválidos"
