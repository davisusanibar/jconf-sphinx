# JConf 2023 - Documenta tu aplicacion Java usando Sphinx

## Sphinx Docker Image with Java Maven support

```
$cat Dockerfile
# Sphinx + Java/Maven Support
FROM sphinxdoc/sphinx
WORKDIR /docs
RUN apt-get update && apt-get -y install maven openjdk-17-jdk

$ docker build . -t sphinx-jconf:v1

$ cd ..

$ docker run -it --rm -v ./jconf:/docs sphinx-jconf:v1 make html 

$ docker run -it --rm -v ./jconf:/docs sphinx-jconf:v1 make javadoctest 
Doctest summary
===============
   11 tests
    0 failures in tests
    0 failures in setup code
    0 failures in cleanup code
build succeeded.
```

## Sphinx

This branch contains the changes to default template by adding code documentation into `index.rst` file
```
- Python

.. code-block:: python

   print('Hi JConf 2023 by Python')

- Java

.. code-block:: java

   System.out.println("Hi JConf 2023 by Java");
```

### Creating documentation

```
$ make html
Running Sphinx v7.2.6
loading pickled environment... done
building [mo]: targets for 0 po files that are out of date
writing output... 
building [html]: targets for 0 source files that are out of date
updating environment: 0 added, 0 changed, 0 removed
reading sources... 
looking for now-outdated files... none found
no targets are out of date.
build succeeded.

The HTML pages are in build/html.

$ open build/html/index.html
```