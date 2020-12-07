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

# Laravel Helpers
alias lr='php artisan'
alias lr:new='composer create-project laravel/laravel --prefer-dist'
alias lr:route='php artisan route:list'
alias lr:mml='php artisan make:model'
alias lr:mc='php artisan make:controller'
alias lr:dbs='php artisan db:seed'
alias lr:mmg='php artisan make:migration'
alias lr:mg='php artisan migrate'
alias lr:mgr='php artisan migrate:rollback'
alias lr:mgfs='php artisan migrate:fresh --seed'

alias c:dump="composer dump-autoload"