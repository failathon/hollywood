FROM jess/hollywood

USER root

RUN apt-get update \
 && apt-get install -y wget newsbeuter rsstail ticker w3m jp2a caca-utils \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ADD ./bin/wallstreet /usr/bin/wallstreet
ADD ./lib/wallstreet /usr/lib/wallstreet
ADD ./share/wallstreet /usr/share/wallstreet

USER user

CMD ["/usr/bin/wallstreet"]
