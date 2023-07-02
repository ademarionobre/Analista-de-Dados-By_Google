# Infinitas possibilidades de SQL

Agora veremos informações mais detalhadas sobre formatação de consultas, uso de condições WHERE, seleção de todas as colunas em uma tabela, adição de comentários e uso de aliases.
Tudo isso torna mais fácil entender (e escrever) consultas para colocar o SQL em ação. Na última seção do texto, apresentamos um exemplo do que um analista de dados faria para extrair
dados de funcionários para um projeto. 

## Uso de letras maiúsculas e minúsculas, recuo e ponto e vírgula
É possível escrever consultas SQL em letras minúsculas, e não é preciso se preocupar com espaços extras entre as palavras. No entanto, usar letras maiúsculas e recuo pode ajudar a ler as
informações com mais facilidade. Mantenha suas dúvidas organizadas e ficará mais fácil revisá-las ou solucioná-las se você precisar verificá-las mais tarde.
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/7fee47a9-acd0-40a3-9851-9c8c2c1bc65a)

Observe que a instrução SQL mostrada acima tem um ponto e vírgula no final. O ponto e vírgula encerra instruções, faz parte da norma SQL-92 do American National Standards Institute (ANSI)
e é uma sintaxe comum recomendada para adoção por todos os bancos de dados SQL. No entanto, nem todos os bancos de dados SQL adotaram ou aplicam o ponto e vírgula. Portanto, é possível
que você encontre algumas instruções SQL que não terminam com ponto e vírgula. Se uma instrução funciona sem ponto e vírgula, não há problema nenhum.

## Condições WHERE
Na consulta mostrada acima, a cláusula SELECT identifica a coluna da qual você quer extrair dados por nome, field1, e a cláusula FROM identifica a tabela em que a coluna está localizada
por nome, table. Por fim, a cláusula WHERE restringe sua consulta para que o banco de dados retorne apenas os dados com correspondência de valor exata ou os dados que correspondem a uma
determinada condição que você quer satisfazer. 

Por exemplo, se você estiver procurando um cliente específico com o sobrenome Chavez, a cláusula WHERE será: 

WHERE field1 = 'Chavez'

No entanto, se você estiver buscando todos os clientes com um sobrenome que comece com as letras “Ch”, a cláusula WHERE será:

WHERE field1 LIKE 'Ch%'

É possível concluir que a cláusula LIKE é muito eficiente, porque permite que você diga ao banco de dados para procurar um determinado padrão! O sinal de porcentagem (%) é usado como 
curinga para corresponder a um ou mais caracteres. No exemplo acima, Chávez e Chen seriam retornados. Observe que, em alguns bancos de dados, o asterisco (*) é usado como curinga em vez
do sinal de porcentagem (%).

SELECT (selecionar) todas as colunas
É possível usar SELECT * ?

No exemplo, se você substituir SELECT field1 por SELECT *, selecionará todas as colunas da tabela, em vez de somente a coluna field1. Do ponto de vista da sintaxe, é uma instrução SQL 
correta, mas você precisa usar o asterisco (*) com moderação e cuidado. Dependendo de quantas colunas uma tabela tem, é possível selecionar uma quantidade enorme de dados. 
Selecionar muitos dados pode fazer com que uma consulta seja executada lentamente.

## Comentários
Algumas tabelas não são projetadas com convenções de nomenclatura descritivas suficientes. No exemplo, **field1** era a coluna do sobrenome de um cliente, mas você não o reconheceria pelo nome.
Um nome melhor seria algo como **last_name**. Nesses casos, é possível colocar comentários ao lado do SQL para ajudar a lembrar o que o nome representa. Comentários são textos colocados entre
certos caracteres, /* e */, ou depois de dois travessões (--), conforme mostrado abaixo.
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/4037ddf7-c704-4200-8429-faa50d4ad4a0)
Comentários também podem ser incluídos fora ou dentro de uma instrução. É possível usar essa flexibilidade para fornecer uma descrição geral do que você vai fazer, observações passo a 
passo sobre como conseguir isso e por que você definiu parâmetros/condições diferentes. 
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/1f74c551-e3a2-4825-a2b4-03853ffbcc9d)
Quanto mais confortável você ficar com o SQL, mais fácil será ler e entender as consultas rapidamente. Ainda assim, nunca é demais ter comentários em uma consulta para lembrar o que você
está tentando fazer. Isso também facilita a compreensão de outras pessoas sobre sua consulta, caso ela seja compartilhada. À medida que suas consultas ficam cada vez mais complexas, 
essa prática economiza muito tempo e energia para entender consultas complexas que você escreveu meses ou anos atrás. 

## Exemplo de uma consulta com comentários
Veja aqui um exemplo de como comentários podem ser escritos no BigQuery:
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/31001181-bbca-4cf4-b95d-60688cd40148)
No exemplo acima, um comentário foi adicionado antes da instrução SQL para explicar o que a consulta faz. Além disso, um comentário foi incluído ao lado de cada um dos nomes das colunas
para descrever a coluna e o uso dela. Geralmente, dois traços (--) são compatíveis. Portanto, é melhor usar e ser consistente nisso. É possível usar # no lugar de -- na consulta acima, 
mas # não é reconhecido em todas as versões de SQL. Por exemplo, o MySQL não reconhece esse caractere.  Se o banco de dados que você está usando for compatível, também será possível 
colocar comentários entre /* e */. 

À medida que você desenvolve suas habilidades profissionalmente, dependendo do banco de dados SQL que usa, é possível escolher os símbolos de delimitação de comentários apropriados de sua
preferência e mantê-los como um estilo consistente. À medida que suas perguntas se tornam cada vez mais complexas, a prática de adicionar comentários úteis ajudará a economizar muito 
tempo e energia para compreender as perguntas que podem ter sido escritas meses ou anos antes.

## Aliases
Também é possível atribuir um novo nome, ou **alias**, aos nomes de colunas ou tabelas para facilitar o trabalho com elas (e evitar a necessidade de comentários). Isso é feito com uma cláusula
SQL AS. No exemplo abaixo, o alias **last_name** foi atribuído a **field1**, e o alias **customers foi atribuído a **table**. Esses aliases são válidos apenas pela duração da consulta. Um alias não altera
o nome real de uma coluna ou tabela no banco de dados.

**Exemplo de uma consulta com aliases**
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/83ce6430-3399-4742-8846-572b4d8e3779)

## Como executar o SQL como analista de dados
Imagine que você é um analista de dados de uma pequena empresa e seu gerente pede alguns dados de funcionários. Você decide escrever uma consulta com SQL para conseguir o que precisa do
banco de dados. 
Você deseja extrair todas as colunas **empID, firstName, lastName, jobCode** e **salary**. Como você sabe que o banco de dados não é tão grande, em vez de inserir cada nome de coluna na cláusula
**SELECT**, você usa **SELECT***.  Isso selecionará todas as colunas da tabela Employee (Funcionário) na cláusula **FROM**.
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/5319df22-c1b0-4d38-a67b-27c9ee3c532a)
Agora é possível ser mais específico sobre os dados que quer na tabela Employee. Se você quer todos os dados sobre os funcionários no código de trabalho **SFI**, pode usar uma cláusula
**WHERE** para filtrar os dados com base nesse requisito adicional. 

Aqui, você usa:
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/5e95a05e-5379-4b78-99c4-efeebd2d5a20)
Uma parte dos dados resultantes retornados da consulta SQL pode ter a seguinte aparência:
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/383c2e02-a4b6-4ad8-ae54-7fcfbfd0c58e)

Suponha que você observe uma grande faixa salarial para o código de trabalho SFI. Talvez você queira sinalizar todos os funcionários de todos os departamentos com salários menores para
o seu gerente. Como os estagiários também estão incluídos na tabela e têm salários inferiores a US$ 30 mil, você quer ter certeza de que os resultados contêm apenas os funcionários em
tempo integral com salários inferiores a US$ 30 mil. Em outras palavras, você quer excluir estagiários com o código de trabalho **INT** que também ganham menos de US$ 30 mil. A cláusula
**AND** permite que você teste as duas condições.

Você cria uma consulta SQL semelhante à abaixo, em que <> significa "não é igual":
![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/35993b66-60c9-4f8a-be5c-8b29b54a6f94)

Os dados resultantes da consulta SQL podem ter a seguinte aparência (estagiários com o código de trabalho INT não são retornados):

![image](https://github.com/ademarionobre/Analista-de-Dados-By_Google/assets/92057489/d24223c5-0f2f-48e8-8679-f826f03d9bfd)

### Recursos para saber mais
Artigos gratuitos SQL
**Tutorial de SQL da W3Schools** https://www.w3schools.com/sql/default.asp
Tutorial detalhado de SQL, inclui exemplos interativos que pode editar, testar e recriar.

**Folha de referências sobre SQL** https://towardsdatascience.com/sql-cheat-sheet-776f8e3189fa
Artigo para ver a sintaxe SQL padrão usada no PostgreSQL.
