# App Specification

* Database Tables
  * Articles
    Columns : ID(rails generated), Title, Description, User_id
  * Users
    Columns : ID(rails generated), username, email
  
* CRUD Operation : create, read, update, delete
 
* Naming Convention:
  
  Model - Singular first letter Uppercase(Article)
  Tablename - Plural, lower case of model name(articles)
  Model name file - all lowercase but singular(article.rb)
  Controller_name - Plural of model(articles_controller.rb)



# Important Notes

* To run server "rails s -b  $IP -p $PORT" 
* gems are ruby programs and libraries.
* bundle install is bundler gem which goes to ruby gems and install all the default gems.
* Routes are in routes.rb
* Helpers are common logic for views.
* database.yml for database configuration.
* seeds.rb for database migrations storage.
* All the logs from server output will be stored in logs.
* Public folder has html pages that are directly available.
* Automated tests happened in test directory.
* In vendor we have all installed gem files.
* README.md contains information which we want to expose about our application.
* By default web server is webrick.
* "rake routes" cmd is for checking what routes are available.
* action means method in controller class.
* for each action we need template in views.
* <% %> for writing ruby code inside template.
* <%= this is going to render what is evaluated.
* Rails use active record pattern to communicate with database.
* "rails generate scaffold Article title:string description:text" will create table named Article and corresponding controller and model routes and all other things which are required.
* "rake db:migrate" for migrating database.
* "rake route | grep articles" to see all the routes for articles.
* "CRUD" operation comes inbuilt!!!
* "rails generate migration create_articles" to generate a migration.
* 


