# JConf 2023 - Documenta tu aplicacion Java usando Sphinx

## Sphinx

This branch contains the changes to default template by adding ``Java Maven`` test code documentation into `index.rst` file
```
.. JConf 2023 documentation master file, created by
   sphinx-quickstart on Fri Dec  1 22:05:44 2023.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to JConf 2023's documentation!
======================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

.. contents::

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

Test Java Without Third Dependencies
====================================

In case we need to test documentation for projects that consume only Java native libraries
only is needed to define `conf.py` with flavor `java`.

Simple javadoctest blocks
-------------------------

Without directives:

>>> System.out.println(1+2+3)
6

With directives:

.. javadoctest::
   :skipif: docker == true

    >>> System.out.println("A simple block test inside a directive.")
    A1 simple block test inside a directive.

Special directives
------------------

* javadoctest

.. javadoctest::

    >>> System.out.println(1+4+9)
    14

* javatestcode / javatestoutput

Arithmetic Operators Example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. javatestcode::

    int x = 10_000;
    int y = 23_000;
    int result = x  + y;
    System.out.println(result);

.. javatestoutput::

    33000

Array to List Example
~~~~~~~~~~~~~~~~~~~~~

.. javatestcode::

    import java.util.Arrays
    import java.util.List

    List<String> result = Arrays.asList("Topaya", "Sayan", "Huacho");
    System.out.println(result);

.. javatestoutput::

    [Topaya, Sayan, Huacho]

Streams Example
~~~~~~~~~~~~~~~

.. javatestcode::

    import java.util.Arrays

    int result = Arrays.asList(1, 2, 3, 4, 5, 7).stream().filter(x -> x > 4).findFirst().get();
    System.out.println(result);

.. javatestoutput::

    5

* options for javadoctest / javatestcode / javatestoutput blocks

.. javatestcode::
   :hide:

    System.out.println("Output         text.");

.. javatestoutput::
   :hide:
   :options: +NORMALIZE_WHITESPACE

    Output text.

.. javadoctest::
   :javaversion: >=11, <19

    >>> System.out.println(1728+1)
    1729

.. javadoctest::
   :javaversion: < 11.0

    >>> System.out.println("Ramanujan")
    Ramanujan

.. javatestcode::
   :javaversion: > 11

   System.out.print(6174);

.. javatestoutput::
   :javaversion: > 11

   6174

Handling Escape Sequences
-------------------------

.. note::

    As part of Sphinx Java there is a fixed length assigned from `\t` to `4 blank spaces`, please consider
    that scope as part of your documentation examples.

.. javatestcode::

    System.out.println("Hello. My name is:\tDavid\n");
    System.out.println("Hello. My name is:\nDavid");

.. javatestoutput::

    Hello. My name is:    David
    Hello. My name is:
    David

Non-ASCII result
----------------

>>> System.out.println("umlauts: äöü.")
umlauts: äöü.

>>> System.out.println("Japanese: 日本語")
Japanese: 日本語

TO DO
-----

Handling bad input is not implemented for now. These are examples not supported yet.

.. code-block:: java

    >>> System.out.println(1/0);
    Exception java.lang.ArithmeticException: / by zero
          at (1:1)

    >>> int x = 8 / 0;
    Exception java.lang.ArithmeticException: / by zero
          at (1:1)

    .. javatestcode::

       System.out.println(1+1) 9

    .. javatestoutput::

       Error:
        ';' expected
        System.out.println(1+1) 9
                           ^

```

### Creating documentation

```
$ make javadoctest
Running Sphinx v7.2.6
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
  11 tests in default
11 tests in 1 items.
11 passed and 0 failed.
Test passed.

Doctest summary
===============
   11 tests
    0 failures in tests
    0 failures in setup code
    0 failures in cleanup code
build succeeded.

Java testing of doctests in the sources finished, look at the results in build/javadoctest/output.txt.



$ open build/html/index.html
```