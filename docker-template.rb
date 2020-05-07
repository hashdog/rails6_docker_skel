# Docker Rails Template
# command: rails new app_name -m docker-template.rb
# Download Docker Skel
########################################
run 'rm -rf docker'
run 'rm -rf docker-compose.yml docker-compose.override.yml'
run 'curl -L https://github.com/hashdog/rails6_docker_skel/archive/master.zip > docker-skel.zip'
run 'unzip docker-skel.zip && cp -af rails6_docker_skel-master/* . && rm -f docker-template.rb &&rm -rf rails6_docker_skel-master && rm docker-skel.zip'
run 'cp docker-compose.override.yml-sample docker-compose.override.yml'
run 'cp Procfile-sample Procfile'
run 'cp env-sample .env'

# Git ignore
########################################
append_file '.gitignore', <<-TXT
# Ignore .env file containing credentials.
.docker-compose.override.yml
.Procfile
.env
TXT

# Git
########################################
# git :init
# git add: '.'
# git commit: "-m 'Initial commit with docker skel template'"