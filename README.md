# unbox_movies
# Laravel API Click Bus + React frontend

Para rodar o sistema corretamente deve-se seguir os seguintes passos:

#BACKEND

1- Dentro de um terminal, acessar a pasta "backend" e rodar o comando: composer install

2- Restaurar o backup disponibilizado com o nome(unbox_movies.sql) no banco de dados MySQL

3- Configuar a conexão com o banco no arquivo .env que fica dentro do projeto "backend"
  
  Exemplo das linhas que devem ser alteradas
  DB_CONNECTION=mysql
  DB_HOST=127.0.0.1
  DB_PORT=3306
  DB_DATABASE=unbox_movies
  DB_USERNAME=root
  DB_PASSWORD= 

4- Em um terminal de comando dentro da pasta "backend" rodar o comando: php artisan serve

5- Testar a API com a URL disponibilizada no próprio terminal. Ex: "http://127.0.0.1:8000/api/movies", caso obtenha como resultado uma lista de filmes, é sinal que 
a API está funcionando corretamente.

#FRONTEND

1- Dentro de um terminal, acessar a pasta chamada "frontend" e rodar o comando: yarn install

2- Rodar o comando: yarn start


PS: Caso deseje testar a API no aplicativo Insomnia [https://insomnia.rest/download/], segue o arquivo que deve ser carregado no mesmo para testes.


Se tudo ocorrer como o esperado, o sistema carregará no browser corretamente. :)