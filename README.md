# Desavio para Dev Rails - NetShow
[Link para o projeto no heroku](http://rach-netshow.herokuapp.com/)

## Desafio Proposto
```
O desafio consiste em que você crie uma estrutura de visualização de vídeos.

* Para realizar o desafio é necessário implementar uma autenticação, você pode utilizar uma Gem para isso (Ex: Devise).
* É necessário criar um `usuário` que poderá criar `vídeos`;
* O vídeo deve ter `nome` e `url` (url com um .m3u8);
* Um usuário somente poderá realizar o CRUD de seus próprios vídeos;
* Criar uma tela para visualização do acervo de vídeos do usuário;
* Criar uma tela para a visualização do vídeo que poderá ser acessada por qualquer usuário e deverá conter um player, o nome e a quantidade de visualizações do vídeo;
* Contabilizar o view do vídeo quando o player disparar o evento 'start' (incrementar a contagem dos videos view).

* Deve ser desenvolvido utilizando Rails;
* Utilizar base de dados Postgres;
* Deve ter cobertura de testes;
* Projeto tem que ser entregue no Github ou Gitlab;
* Precisamos de um link do projeto rodando no Heroku;
* Utilizar bootstrap ou outro framework semelhante.
```
## Desafio entregue
### Ferramentas usadas: 
* Rails 5.2.3
* Ruby 2.6.1
* Postgres 9.6.12

* Para o front foi usado [Semanti UI](http://semantic-ui.com/)

### Gems utilizadas
#### Devise
Foi usado o devise para autenticação 

#### Semantic-ui-sass
Estilização do front

#### jquery-rails
É uma dependencia do Semantic UI

#### rails-i18n
Usado para localização das mensagens de erro do rails/active record.
Como optei por deixar o devise em português, e a aplicação em português, optei por traduzir também as mensagens de erro.

#### rspec-rails
Configura o rspec

#### factory_bot_rails
Cria factories que facilitam a criação de entidades na hora de testar

#### awesome-print
Facilita o debug. a digitar `ap Entidade.all` elas me retornam com uma formatação mais legível, como um json.

#### pry e pry-byebug
Me permitem usar binding.pry para debugar

#### database_cleaner
Limpa o banco de dados de teste antes deles rodarem

### Decisões tomadas e fluxo de desenvolvimento
Quando o usuário cadastra um video, permiti apenas que ele salvasse url com extensões iguals a `m3u8`

Para desenvolver o projeto, procurei fazer uma branch para cada feature implementada, e gerei pull requests, onde eu descrevo algumas decisões tomadas.

## Setup do projeto
Caso você não possua ruby e/ou rails, é possivel instalar utilizando [esse guia](https://gorails.com/setup)

### Inicializar o projeto
1. Clone esse repositório na sua máquina
2. Entre no diretório clonado e digite `bundle install`
3. É importante criar o banco e rodar as migrações. Gerei um arquivo seed que já possui alguns usuários e videos criados. para rodar o comando, use `rails db:create && rails db:migrate && rals db:seed`
4. O projeto já está configurado. Para acessar na sua máquina, digite `rails s` e, no seu navegador vá para `http://localhost:3000`

### Coisas que eu gostaria de ter melhorado no projeto.
1. Testes de integração usando o capybara (a idéia seria ver se quando o video começa e verificar a contagem de views)
2. Ter levado o código de script da view para um arquivo separado.