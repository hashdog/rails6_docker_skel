## DOCKER FOR RAILS 6
  
  Template for generate your docker configuration files for:
  
    * Rails 6
    * Redis 6
    * Postgresql 12
  
## HOW TO USE

    $ rails new test_app -d postgresql -m https://raw.githubusercontent.com/hashdog/rails6_docker_skel/master/docker-template.rb

    $ cd test_app

    $ docker-compose up

    $ open page on `localhost:3000`
