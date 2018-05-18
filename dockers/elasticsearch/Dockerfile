FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.4

WORKDIR /usr/share/elasticsearch

RUN ./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.2.4/elasticsearch-analysis-ik-6.2.4.zip

ENV PATH=$PATH:/usr/share/elasticsearch/bin

CMD ["elasticsearch"]

