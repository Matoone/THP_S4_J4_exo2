# Le Airbnb des promenades de chien

À priori, les models sont simples : il y a un model dogsitter et un model dog (on te laisse choisir au moins un attribut chacun). Un dogsitter peut promener plusieurs dog lors d'une stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dogsitter via les stroll.

Maintenant tu veux préciser la ville des promeneurs et des chiens pour faire un super algorithme de matching. Tu devras donc créer un model City avec comme attribut city_name. Chaque ville contient plusieurs promeneurs et plusieurs chiens mais un chien et un promeneur ne peuvent appartenir qu'a une ville.


* Ruby version
- ruby '2.5.1'
- rails '~> 5.2.4', '>= 5.2.4.1'

* Deployment instructions

  - clone repo or download .zip
  - $ bundle install at root directory
  - $ rails db:seed to execute the tests
