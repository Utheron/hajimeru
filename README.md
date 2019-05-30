# HAJIMERU
Hajimeru means "to begin" and it's kind of what we're going for with this solution.

This is a collection of Docker stacks that I mainly use for personal projects. Available "as is", those stacks were not fully tested. I have yet to face any major problem that I can't solve myself AKA this is not production ready. The main purpose is to gain some knowledge about Docker and how to set up a working environment.

# ONE ENV FILE TO RULE THEM ALL
**MANDATORY** : Edit the **.env** file as you want and according to your environment.
```
CONTAINER_NAME=
```
This will duplicate through all the containers, easiest way to prevent name conflict and manage your containers

```
SERVER_PORT=
```
From which port you want to acces the "web" container. Usually Port 80 if not already used.

```
DB_ROOT_PWD=
DB_HOST=mysql
DB_NAME=
DB_USER=
DB_PASSWORD=
```
The usual MySQL logins with the **DB_HOST** which must be the SAME as the service name specified in the YML file.

```
PMA_PORT=
```
From which port you want to acces PhpMyAdmin

```
MAILDEV_PORT=
```
From which port you want to access MailDev

# COMMON
- PHP
- Git
- Vim
- XDebug
- NodeJs
- Gulp CLI
- PhpMyAdmin
- MailDev
- Document root /var/www/html

# BUILD YOUR CONTAINERS
```
docker-compose -f STACK_NAME.yml up -d
```
To build your containers, use this command and change the **STACK_NAME** with the one you want to work with.
```
docker-compose -f STACK_NAME.yml up --build -d
```
If you have edited some YML/Dockerfile files, you'll probably need to rebuild the containers. Simply run this command with the **--build** option.

# NAMING CONVENTION
- HLA = Hajimeru LAMP
- HWP = Hajimeru WordPress
- HSF = Hajimeru Symfony
- HLE = Hajimeru LEMP

# LAMP
Your traditionnal stack: Linux, Apache, MySQL, PHP

| Status | Seems to work fine :heavy_check_mark: |

# WORDPRESS
Same as LAMP but delivred with a WordPress image

| Status | Seems to work fine :heavy_check_mark: |

# SYMFONY 
With **Composer** installed by command line from the Dockerfile. This one was tricky (for me) because I had to assign a user to the www-data group. Can't wrap my head around Linux/Docker permissions yet.

```
docker exec -it CONTAINER_HSF-php bash
```
Access your Docker container bash by typing this command line and replace CONTAINER with the container name

```
composer create-project WHATEVER YOU WANT
```
Use Composer to create your Symfony project

```
php bin/console server:run 0.0.0.0:8000
```
Inside your Symfony project folder, run the Symfony server on all interfaces "0.0.0.0". By default, the listening port is 8000.

| Status | Seems to work fine :heavy_check_mark: |

# LEMP
Still under development as I'm new to NGINX.

| Status | Not working :x: |

# CUSTOMIZATION
The defaults versions used in the YML/Dockerfile files can be change easily. Can't guarantee some unwanted side-effects though. You'll have to test it out by yourself ! Happy coding :)