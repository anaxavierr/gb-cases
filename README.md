**ESTE CASE POSSUI APENAS DADOS FICTICIOS**

Cases Grupo Boticário no Data Hackers
Este repositório contém soluções para os casos propostos pelo Grupo Boticário no evento Data Hackers.


Instruções:

Item 1 (arquitetura_gb.pdf):
Neste item, foi definida uma arquitetura de referência com tecnologias de nuvem pública, preferencialmente AWS ou GCP. Os requisitos considerados foram:

Permear as camadas de ingestão, processamento, armazenamento, consumo, análise, segurança e governança;
Substituição gradual do cenário on-premises atual;
Incorporação de componentes e tecnologias para análise de dados em tempo real;
Capacidade de organizar e fornecer dados para diferentes fins, como Analytics, Data Science, APIs e serviços para integrações com aplicações. Ressaltando que necessariamente precisaremos manter a comunicação on-premises x cloud para diversas finalidades.

Item 2 (dag_etl.py):
Neste item, realizou-se a importação dos dados dos 3 arquivos em uma tabela criada no banco de dados de escolha. Posteriormente, foram modeladas 4 novas tabelas e implementados processos para transformações necessárias e inserção das seguintes visões nas tabelas:

Tabela 1: Consolidado de vendas por ano e mês;
Tabela 2: Consolidado de vendas por marca e linha;
Tabela 3: Consolidado de vendas por marca, ano e mês;
Tabela 4: Consolidado de vendas por linha, ano e mês.

Item 3 (spotify_podcasts):
Neste item, foram realizados os seguintes passos:

Passo 1: Criação de um método para realizar uma pesquisa no Spotify via requests e trazer os primeiros 50 resultados referente a podcasts procurando pelo termo “data hackers” e criação de uma tabela com os campos especificados.
Passo 2: Extração de dados de todos os episódios lançados pelos Data Hackers via requests.
Passo 3: Ingestão do resultado do Passo 2 em duas tabelas seguindo os critérios especificados.
Passo 4: Inclusão apenas dos campos necessários para as tabelas do Passo 3.


Como executar:

Para executar os scripts e soluções fornecidos neste repositório, siga as instruções fornecidas em cada item e verifique os requisitos de ambiente e configuração necessários. Certifique-se de ter as credenciais adequadas e as permissões necessárias para acessar os serviços da nuvem pública escolhida.
