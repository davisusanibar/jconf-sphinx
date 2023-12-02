# JConf 2023 - Documenta tu aplicacion Java usando Sphinx

## Sphinx

This branch contains the changes to default template by adding test code documentation into `index.rst` file
```
Este es un ejemplo que declara su código a ejecutar usando la directiva ``testcode`` y
valida la salida del programa con lo que se declara en la directiva ``testoutput``.

.. testcode::

   print('JConf Python')

.. testoutput::

   JConf Python
```

### Creating documentation

```
$ make doctest                                                                                              2 ✘  base   at 00:49:33  
making output directory... done
loading pickled environment... done
building [mo]: targets for 0 po files that are out of date
writing output... 
building [doctest]: targets for 1 source files that are out of date
updating environment: [extensions changed ('sphinx.ext.doctest')] 1 added, 0 changed, 0 removed
reading sources... [100%] index
looking for now-outdated files... none found
pickling environment... done
checking consistency... done
running tests...

Document: index
---------------
1 items passed all tests:
   1 tests in default
1 tests in 1 items.
1 passed and 0 failed.
Test passed.

Doctest summary
===============
    1 test
    0 failures in tests
    0 failures in setup code
    0 failures in cleanup code
build succeeded.

Testing of doctests in the sources finished, look at the results in build/doctest/output.txt.

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