#language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
            Para depois inserir no Carrinho

            Contexto: Dado que eu acesse a Tela de Configurar produtos na Plataforma EBAC-SHOP

            Cenário: Seleção de Cor, Tamanho e Quantidade
            Quando eu escolher a cor
            E o Tamanho
            E a Quantidade
            Então deve ser possível inserir no Carrinho

            Cenário: Não selecionar um ou mais dos Campos obirgatórios
            Quando eu escolher a cor
            Ou o Tamanho
            Ou a Quantidade
            Então deve aparecer uma mensagem de alerta: "Campos obirgatórios não preenchidos."

            Esquema do Cenário: Selecionar Cor, Tamanho e Quantidade de um produto
            Quando eu escolher a <cor>
            E o <tamanho>
            E a <quantidade>
            Então deve ser possível inserir no Carrinho o <produto>

            Exemplos:
            | cor      | tamanho | quantidade | produto        |
            | "blue"   | "XS"    | 1          | "blue, XS, 1"  |
            | "orange" | "S"     | 2          | "orange, S, 2" |
            | "red"    | "M"     | 3          | "red,  M, 3"   |



            Cenário: Selecionar de 1 a 10 Produtos
            Quando eu escolher de 1 a 10 produtos
            Então deve ser possível concluir a venda

            Cenário: Selecionar 11 ou mais Produtos
            Quando eu escolher 11 ou mais produtos
            Então deve aparecer mensagem de erro: "Permitido até 10 produtos por venda. Retire produtos do carrinho. A EBAC-SHOP agradece!"

            Cenário: Clicar no botão "Limpar"
            Quando eu clicar no botão "Limpar"
            Então deve voltar ao estado original