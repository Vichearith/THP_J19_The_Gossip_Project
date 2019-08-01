# The Gossip Project

* 
_Creation des models_
```
rails g model User first_name:string last_name:string description:text email:string age:integerzip_code:string
rails g model City name:string zip_code:string
rails g model Gossip title:string content:text
rails g model Tag title:string
rails g model JoinTableGossipsTags
rails g model PrivateMessage content:text
rails g model Like
rails g model Comment content:text
```


_Creation des relations_
Modification des fichiers dans _app/models_
Création d'un seed qui va générer des infos

_Ajout de migrations Commentsofcomment et Retrait de gossip.id_
```
rails g migration Commentsofcomment 
```

_Added gem_
```
gem 'faker'
gem 'activerecord-reset-pk-sequence'
gem 'table_print'
```