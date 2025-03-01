.. contents::

Mathematical Functions
======================

``ABS(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Absolute value.

**Examples**

.. code-block:: sql

  SELECT ABS(1.2);
  -- 1.2
  
  SELECT ABS(-1.23);
  -- 1.23

``ACOS(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Inverse (arc) cosine.

**Examples**

.. code-block:: sql

  SELECT ACOS(0.2);
  -- COL1: 1.369438

``ASIN(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Inverse (arc) sine.

**Examples**

.. code-block:: sql

  SELECT ASIN(0.2);
  -- COL1: 0.201358

``ATAN(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Inverse (arc) tangent.

**Examples**

.. code-block:: sql

  SELECT ATAN(0.2);
  -- COL1: 0.197396

``CEIL(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Round up to the nearest integer.

**Examples**

.. code-block:: sql

  SELECT CEIL(3.7);
  -- COL1: 4

  SELECT CEIL(3.3);
  -- COL2: 4

  SELECT CEIL(-3.7);
  -- COL3: -3

  SELECT CEIL(-3.3);
  -- COL4: -3

  SELECT CEILING(3.7);
  -- COL1: 4

``CEILING(DOUBLE PRECISION) DOUBLE PRECISION``
----------------------------------------------

`CEILING` is an alias of `CEIL`.

``COS(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Cosine.

**Examples**

.. code-block:: sql

  SELECT COS(1.2);
  -- COL1: 0.362358

``COSH(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Hyperbolic cosine.

**Examples**

.. code-block:: sql

  SELECT COSH(1.2);
  -- COL1: 1.810656

``EXP(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Exponential.

**Examples**

.. code-block:: sql

  SELECT EXP(3.7);
  -- COL1: 40.447304

``FLOOR(DOUBLE PRECISION) DOUBLE PRECISION``
--------------------------------------------

Round down to the nearest integer.

**Examples**

.. code-block:: sql

  SELECT FLOOR(3.7);
  -- COL1: 3

  SELECT FLOOR(3.3);
  -- COL1: 3

  SELECT FLOOR(-3.7);
  -- COL1: -4

  SELECT FLOOR(-3.3);
  -- COL1: -4

``LN(DOUBLE PRECISION) DOUBLE PRECISION``
-----------------------------------------

Natural logarithm (base e).

**Examples**

.. code-block:: sql

  SELECT LN(13.7);
  -- COL1: 2.617396

``LOG(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Logarithm in base 2.

**Examples**

.. code-block:: sql

  SELECT LOG(13.7);
  -- COL1: 3.776104

``LOG10(DOUBLE PRECISION) DOUBLE PRECISION``
--------------------------------------------

Logarithm in base 10.

**Examples**

.. code-block:: sql

  SELECT LOG10(13.7);
  -- COL1: 1.136721

``MOD(DOUBLE PRECISION, DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------------------------

Modulus.

**Examples**

.. code-block:: sql

  SELECT MOD(232, 3);
  -- COL1: 1

  SELECT MOD(10.7, 0.8);
  -- COL1: 0.3

``POWER(DOUBLE PRECISION, DOUBLE PRECISION) DOUBLE PRECISION``
--------------------------------------------------------------

Power.

**Examples**

.. code-block:: sql

  SELECT POWER(3.7, 2.5);
  -- COL1: 26.333241

``SIN(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Sine.

**Examples**

.. code-block:: sql

  SELECT SIN(1.2);
  -- COL1: 0.932039

``SINH(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Hyperbolic sine.

**Examples**

.. code-block:: sql

  SELECT SINH(1.2);
  -- COL1: 1.509461

``SQRT(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Square root.

**Examples**

.. code-block:: sql

  SELECT SQRT(3.7);
  -- COL1: 1.923538

``TAN(DOUBLE PRECISION) DOUBLE PRECISION``
------------------------------------------

Tangent.

**Examples**

.. code-block:: sql

  SELECT TAN(1.2);
  -- COL1: 2.572152

``TANH(DOUBLE PRECISION) DOUBLE PRECISION``
-------------------------------------------

Hyperbolic tangent.

**Examples**

.. code-block:: sql

  SELECT TANH(1.2);
  -- COL1: 0.833655
