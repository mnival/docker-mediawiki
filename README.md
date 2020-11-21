Docker docker-mediawiki
============

Configuration Docker with mediawiki:stable-fpm with package rsync and extension mediawiki PCRGUIInserts

Quick Start
===========
    docker run -d -p 9000:9000 mediawiki-fpm mnival/docker-mediawiki

Interfaces
===========

Ports
-------

* 9000(9000) -- php-fpm

Volumes
-------

* /var/www/wiki -- Wiki file

Maintainer
==========

Please submit all issues/suggestions/bugs via
https://github.com/mnival/docker-mediawiki
