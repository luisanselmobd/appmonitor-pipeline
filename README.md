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

## Etapas e Configurações

### Etapa 1

Após iniciar o repositório no github e o repositório local com o comando git init, adicionei o README.md vazio, vinculei ambos entre si e fiz o primeiro commit de inicialização.
Feito o commit inicial, criei a branch ci/setup e fiz os commits seguintes:
Criei o arquivo status-check.sh, fiz o commit e depois dei merge com a branch main.
Atualizei o conteúdo do README.md respondendo à questão proposta sobre o git e as entregas contínuas.

![1](https://github.com/user-attachments/assets/2440e5bc-d05f-4376-b604-352a2f275882)
![2](https://github.com/user-attachments/assets/6c34a342-22b6-4345-b483-911152561e4c)

Por fim, criei a tag v0.1.0, onde apresentei as informações sobre esta versão.
![5](https://github.com/user-attachments/assets/51dbbc79-1419-4c5a-a9b3-d0f09c36dd7b)

---

### Etapa 2
Criei o workflow ci.yml na branch main, configurei para que fosse acionado no push e no pull request e incluí seus três jobs: validate (verificação da sintaxe do script), test (simulação de testes) e package (geração de artefato e seu upload).
Para isso, me servi de duas actions: checkout@v4 e upload-artifact@v4.
Feito isso, pude observar que tudo ocorreu conforme o esperado com o workflow. 
![4](https://github.com/user-attachments/assets/d18f0a8a-9063-4b89-984f-38ad94380ab3)

---

### Etapa 3
Após ir em Settings > Secrets and variables > Actions, defini as variáveis APP_ENV, SUPPORT_EMAIL e o segredo API_KEY.
![2](https://github.com/user-attachments/assets/494fe7cd-aa97-48d4-aa0d-3e7a9c917f84)
![1](https://github.com/user-attachments/assets/de14b628-966e-4adf-8db1-0f90da91a88c)

Em seguida, criei o workflow run-monitor.yml, responsável por colocar a prova a presença de tais variáveis criadas.
![image](https://github.com/user-attachments/assets/0f5370e3-7527-423b-9c16-20d07a375b2d)

Além disso, descrevi no README um capítulo com as diferenças de cada um dos tipos de variáveis (ambiente, contexto e segredos).
![image](https://github.com/user-attachments/assets/c7ad114e-8eaa-47c2-9e86-021340cfac95)

---

### Etapa 4
Atualizei o arquivo ci.yml para incluir a ativação dos logs de debug, mensagens personalizadas com ::warning::, ::error:: e ::notice:: e também um novo job chamado sumamry.
![image](https://github.com/user-attachments/assets/e6dbb7d6-15a7-43df-bbf2-0fc7d171d9eb)
![image](https://github.com/user-attachments/assets/eda63c8d-1162-483f-8e08-8515cafa6fe3)

Além disso, atualizei o README com um badge de status do workflow via shields e um capítulo sobre o papel de logs e summaries na depuração.
![image](https://github.com/user-attachments/assets/9123ad15-d5be-4518-a2a7-cd5a2bce0dbd)
![image](https://github.com/user-attachments/assets/9405a173-d945-46f7-af88-def0388fd451)

---

### Etapa 5
Nessa etapa, após ir em Settings > Environments, criei o ambiente production, com uregra de aprovação manual obrigatória e uma variável PROD_DOMAIN.
![1](https://github.com/user-attachments/assets/5b16361f-8a6c-413c-9b31-23a58cecc094)

Feito isso, criei o workflow deploy.yml para simular um cenário de deploy. Como estava bloqueado devido à configuração anterior, aprovei e observei seu funcionamento bem sucedido.
![3](https://github.com/user-attachments/assets/2d965eb6-1cb3-4916-9227-d634e1e27d35)
![4](https://github.com/user-attachments/assets/c5df8be4-4421-4af9-8f53-6286ccdbaa9d)

---

### Etapa 6
Criei o workflow diagnostic.yml e coletei os resultados relacionados às variáveis APP_ENV e API_KEY.
![image](https://github.com/user-attachments/assets/c80b9ad5-f01d-47d2-b391-3108bb531b22)
