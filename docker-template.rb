# Docker Rails Template
# command: rails new app_name -m docker-template.rb
# Download Docker Skel
########################################
run 'rm -rf docker'
run 'rm -rf docker-compose.yml docker-compose.override.yml'
run 'curl -L https://github.com/hashdog/rails6_docker_skel/archive/master.zip > docker-skel.zip'
run 'unzip docker-skel.zip && cp -af rails6_docker_skel-master/* . && rm -f docker-template.rb && rm -rf rails6_docker_skel-master && rm docker-skel.zip'
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

# append_file 'env-sample', <<-TXT
# RAILS_PORT=3000
# DATABASE_URL=postgresql://postgres@db
# RAILS_ENV=development
# WEBPACKER_DEV_SERVER_HOST=0.0.0.0
# NODE_ENV=development
# WEB_CONCURRENCY=0
# SECRET_KEY_BASE=5e1e813f2f5b3a7493c2e2451e887c930d2edc978aec7061ab7823d0b126f28e9c80d14b3858419fd4e805ddb038188bd6ffa58f2cc5112eeb33b9dca764f973
# TXT

# run 'cp env-sample .env'
