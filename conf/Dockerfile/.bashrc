# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should Not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls` to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# php bin/console
# alias sf='php bin/console'
# alias sfrun='php bin/console server:run'
# alias sfdev='php bin/console --env=dev'
# alias sfprod='php bin/console --env=prod'

# Symfony CLI
alias sf='symfony'
alias sf:start='symfony server:start'
alias sf:new='symfony new'

# Symfony Helpers
alias sf:mm='php bin/console make:migration'
alias sf:mc='php bin/console make:controller'
alias sf:me='php bin/console make:entity'
alias sf:mf='php bin/console make:form'
alias sf:mfx='php bin/console make:fixtures'
alias sf:ma='php bin/console make:auth'
alias sf:cc='php bin/console cache:clear'
alias sf:gb='php bin/console generate:bundle'
alias sf:rd='php bin/console router:debug'
alias sf:dsd='php bin/console doctrine:schema:update'
alias sf:dmd='php bin/console doctrine:migrations:diff'
alias sf:dmm='php bin/console doctrine:migrations:migrate'
alias sf:dfxl='php bin/console doctrine:fixtures:load'

# Laravel Helpers
alias lr:new='composer create-project laravel/laravel --prefer-dist'
alias lr:serve='php artisan serve'
alias lr:mml='php artisan make:model'
alias lr:dbs='php artisan db:seed'
alias lr:mmg='php artisan make:migration'
alias lr:mg='php artisan migrate'
alias lr:mgr='php artisan migrate:rollback'