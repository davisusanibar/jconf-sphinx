# Sphinx + Java/Maven Support
FROM sphinxdoc/sphinx
WORKDIR /docs
RUN apt-get update && apt-get -y install maven openjdk-17-jdk
