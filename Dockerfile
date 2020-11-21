FROM mediawiki:stable-fpm

LABEL maintainer="Michael Nival <docker@mn-home.fr>" \
	name="docker-mediawiki" \
	description="mediawiki:stable-fpm with package rsync and extension mediawiki PCRGUIInserts" \
	docker.cmd="docker run -d -p 9000:9000 mediawiki-fpm mnival/docker-mediawiki"

RUN apt update && \
	apt full-upgrade -y && \
	apt install -y --no-install-recommends rsync && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/alternatives.log /var/log/dpkg.log /var/log/apt/ /var/cache/debconf/*-old

RUN git clone https://github.com/wikimedia/mediawiki-extensions-PCRGUIInserts.git /var/www/html/extensions/PCRGUIInserts

COPY docker-php-entrypoint /usr/local/bin/

COPY mediawiki.exclude /
