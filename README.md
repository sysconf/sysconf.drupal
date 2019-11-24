# /sysconf repository

http://ccksp.gnf.tf/


## Drupal/DKAN install

https://dkan.readthedocs.io/en/latest/installation/basic.html

* /etc/hosts: # /etc/hosts.d/local-domains.hosts --> 127.0.0.1 ccksp.gnf.tf
* /etc/cron.d/drupal
* Apache vhost
* a2enmod rewrite
* Ubuntu packages: see log
* PHP modules: phpenmod pdo_mysql
* mkdir and +w for :www-data on: /var/www/dkan-drops-7/sites/default/files
* copy from default and (during install): +w for :www-data on: /var/www/dkan-drops-7/sites/default/settings.php
* create MariaDB user/database as per https://github.com/sysconf/sysconf.mysql/blob/master/setup.rc
* add to /etc/aliases (then 'newaliases'): "ccksp:         root"
* in /etc/postfix/main.cf: replace "inet_protocols = all" with "inet_protocols = ipv4"


## Git subtrees

git subtree push -P sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree push -P sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree push -P sysconf.nef.common git@github.com:geonef/sysconf.nef.common.git master
git subtree push -P sysconf.nef.machine ggit:sysconf.nef.machine.git master

git subtree pull -P sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree pull -P sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree pull -P sysconf.nef.common git@github.com:geonef/sysconf.nef.common.git master
git subtree pull -P sysconf.nef.machine ggit:sysconf.nef.machine.git master
