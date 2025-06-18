# AT da disciplina Pipelines de CI/CD e DevOps da graduação de Engenharia de Software do Infnet.

![CI Status](https://img.shields.io/github/actions/workflow/status/luisanselmobd/appmonitor-pipeline/ci.yml?branch=main)

## Git, branches e tags e Entregas Contínuas
Em um processo de entregas contínuas, o git desempenha papel fundamental ao registrar as mudanças que os arquivos de determinado repositorio sofrem e ao servir como estrutura para a ativação de pipelines automáticos, permitindo que sejam feitas verificações, testes e demais integrações de maneira automatizada e com segurança. 

Nesse sentido, as branches permitem não apenas a melhor organização dos processos envolvendo aqueles documentos como também a criação de "áreas isoladas" que dificultam possíveis erros e conflitos que surgem do trabalho em conjunto de grandes equipes. As tags são bandeiras que sinalizam aspectos daquele projeto, ancoradas em determinado ponto histórico do desenvolvimento, permitindo rollbacks e facilitando a compreensão daqueles que estão se familiarizando com o projeto.

## env, vars e secrets
Variáveis de ambiente (env): variáveis que armazenam valores úteis para configurar ambientes de execução, como paths, parâmetros de execução e etc.

Variáveis de contexto (vars): variáveis que armazenam valores compartilhados em diferentes partes do código, como determinados tipos de dados, urls e outros.

Segredos (secrets): variáveis que armazenam valores que não podem ser expostos e precisam ser armazenados de forma segura, como senhas, chaves e etc.

Em conjunto, essas variáveis tornam o pipeline flexível e seguro, evitando a exposição de dados sensíveis e evitando más práticas de codificação, como duplicação de código.

## Logs, summaries e depuração
No processo de depuração de pipelines, os logs servem para que possamos acompanhar detalhadamente os processos executados e seus resultados. Essa é a fonte de informação que vai ajudar com que possamos identificar o local de determinados eventos, o valor de determinadas variáveis e demais informações úteis no processo.

Em pipelines com muitos eventos, o acompanhamento detalhado passo a passo pode se tornar um problema. Nesse sentido, é possível utilizar o recurso summary, onde obtemos um resumo de tudo que aconteceu, com destaque naqueles eventos considerados mais importantes.
