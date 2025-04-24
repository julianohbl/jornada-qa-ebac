            Funcionalidade: Cadastro de novos membros

            Como usuário do website de cinema
            Quero me registrar como membro
            Para receber promoções e novidades em primeira mão

            Contexto:
            Dado que o usuário acessa a página de registro

            Cenário: Registro com todos os campos obrigatórios preenchidos
            Quando o usuário preenche "Nome", "Sobrenome", "Email" e "Senha"
            E seleciona clica no botão "Cadastrar"
            Então o sistema exibe uma mensagem de sucesso


            Cenário: Envio de e-mail de confirmação após o registro bem-sucedido
            Quando o usuário completar o registro com sucesso
            Então um e-mail de confirmação é enviado para o endereço de e-mail fornecido

            Cenário: E-mail com formato inválido
            Quando o usuário preenche o campo "Email" com um valor inválido
            E clica no botão "Cadastrar"
            Então o sistema exibe uma mensagem de erro indicando formato de e-mail inválido

            Cenário: Visualização da política de privacidade
            Quando o usuário clica no link da política de privacidade
            Então o sistema abre a página ou modal com a política de privacidade do site

            Cenário: Desinscrição de e-mails promocionais
            Dado que o usuário recebeu um e-mail promocional
            Quando ele clica no link de desinscrição
            Então o sistema confirma que o e-mail foi removido da lista de envio

            Esquema do Cenário: Validação dos campos de registro
            Quando o usuário preenche <Nome>, <Sobrenome>, <Email>, <Telefone> e <Senha>
            Então o sistema valida os campos e retorna <Mensagem>

            Exemplos:
            | Nome  | Sobrenome | Email            | Telefone    | Senha     | Mensagem                                   |
            | Ana   | Silva     | ana@email.com    | 11999887766 | An@1234!  | Cadastro efetuado com sucesso              |
            | João  |           | joao@email.com   |             | João#4321 | Preencha todos os campos obrigatórios      |
            | Maria | Pereira   | mariapereira.com | 21988776655 | Mp3re1ra  | Formato de email inválido                  |
            | Pedro | Alves     | pedro@email.com  |             | Pe@1      | Senha não cumpre os critérios de segurança |
            |       | Santos    | luis@email.com   | 31987654321 | Lu1s*6789 | Preencha todos os campos obrigatórios      |
