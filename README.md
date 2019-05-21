## Sobre o projeto
```
O projeto é um CRUD básico com um visualizador de videos.

A url deve ter, obrigatoriamente, a extensão .m3u8

E views devem ser contabilizados cada vez que um video começar a tocar (nesse projeto o video está configurado para  tocar automaticamente)
```
## Sobre o projeto
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

## Setup do projeto
Caso você não possua ruby e/ou rails, é possivel instalar utilizando [esse guia](https://gorails.com/setup)

### Inicializar o projeto
1. Clone esse repositório na sua máquina
2. Entre no diretório clonado e digite `bundle install`
3. É importante criar o banco e rodar as migrações. Gerei um arquivo seed que já possui alguns usuários e videos criados. para rodar o comando, use `rails db:create && rails db:migrate && rals db:seed`
4. O projeto já está configurado. Para acessar na sua máquina, digite `rails s` e, no seu navegador vá para `http://localhost:3000`
