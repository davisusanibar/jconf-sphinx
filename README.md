# JConf 2023 - Documenta tu aplicacion Java usando Sphinx

## Sphinx

This branch contains the initial changes to default template by adding documentation into `index.rst` file
```
Expositores
-----------

1. Carlos Zela
2. Victor Mandujano
3. David Susanibar

Carlos Zela
^^^^^^^^^^^

- C++
- Python
- Java

Redes Sociales
""""""""""""""

- X
- Linkedin
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