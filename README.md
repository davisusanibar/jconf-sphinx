# JConf 2023 - Documenta tu aplicacion Java usando Sphinx

## Sphinx

This branch contains the changes to default template by adding ``Java`` test code documentation into `index.rst` file
```
Este es un ejemplo que declara su código a ejecutar usando la directiva ``javatestcode`` y
valida la salida del programa con lo que se declara en la directiva ``javatestoutput``.

.. javatestcode::

   System.out.println("JConf Java");

.. javatestoutput::

   JConf Java
```

### Creating documentation

```
$ make javadoctest                                                                                       2 ✘  base   at 00:57:27  
loading pickled environment... done
building [mo]: targets for 0 po files that are out of date
writing output... 
building [javadoctest]: targets for 1 source files that are out of date
updating environment: 0 added, 1 changed, 0 removed
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

Java testing of doctests in the sources finished, look at the results in build/javadoctest/output.txt.

$ make html                                                                                                ✔  base   at 00:58:00  
loading pickled environment... done
building [mo]: targets for 0 po files that are out of date
writing output... 
building [html]: targets for 1 source files that are out of date
updating environment: 0 added, 0 changed, 0 removed
reading sources... 
looking for now-outdated files... none found
preparing documents... done
copying assets... copying static files... done
copying extra files... done
done
writing output... [100%] index
generating indices... genindex done
writing additional pages... search done
dumping search index in English (code: en)... done
dumping object inventory... done
build succeeded.

The HTML pages are in build/html.

$ open build/html/index.html
```