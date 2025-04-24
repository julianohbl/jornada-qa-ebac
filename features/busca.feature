Funcionalidade: Busca de filmes

Como usuário de um website de cinema
Quero buscar filmes usando uma palavra-chave
Para encontrar e explorar filmes de meu interesse

Contexto:
Dado que o usuário está na página de busca de filmes

Cenário: Busca de filmes com palavra-chave válida
Quando o usuário digita uma palavra-chave válida
Então o sistema exibe os filmes que correspondem à palavra-chave

Cenário: Busca de filmes sem resultados
Quando o usuário digita uma palavra-chave que não corresponde a nenhum filme
Então o sistema informa que não há filmes correspondentes

Cenário: Limpar a busca de filmes
E o usuário realizou uma busca
Quando o usuário clica no botão "Limpar Busca"
Então a lista de filmes é resetada para o estado inicial

Cenário: Paginação ou rolagem infinita nos resultados
E o usuário realiza uma busca que retorna mais de 10 filmes
Quando o usuário rola a página até o final
Então o sistema carrega automaticamente os próximos filmes