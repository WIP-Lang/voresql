CREATE TABLE foo (a FLOAT);
INSERT INTO foo (a) VALUES (1.23);
-- msg: CREATE TABLE 1
-- msg: INSERT 1

CREATE TABLE foo (a FLOAT);
INSERT INTO foo (a) VALUES (101);
INSERT INTO foo (a) VALUES (102);
SELECT * FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- msg: INSERT 1
-- A: 101
-- A: 102

CREATE TABLE foo (b BOOLEAN);
INSERT INTO foo (b) VALUES (true);
INSERT INTO foo (b) VALUES (false);
INSERT INTO foo (b) VALUES (unknown);
SELECT * FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- msg: INSERT 1
-- msg: INSERT 1
-- B: TRUE
-- B: FALSE
-- B: UNKNOWN

CREATE TABLE foo (b BOOLEAN);
INSERT INTO foo (b) VALUES (123, 456);
-- msg: CREATE TABLE 1
-- error 42601: syntax error: INSERT has more values than columns

CREATE TABLE foo (b BOOLEAN, c INT);
INSERT INTO foo (b, c) VALUES (123);
-- msg: CREATE TABLE 1
-- error 42601: syntax error: INSERT has less values than columns

INSERT INTO foo (b) VALUES (123);
-- error 42P01: no such table: FOO

CREATE TABLE foo (b BOOLEAN);
INSERT INTO foo (c) VALUES (true);
-- msg: CREATE TABLE 1
-- error 42703: no such column: C

CREATE TABLE foo (b BOOLEAN);
INSERT INTO foo (b) VALUES (123);
-- msg: CREATE TABLE 1
-- error 42804: data type mismatch for column B: expected BOOLEAN but got INTEGER

CREATE TABLE t1 (f1 CHARACTER VARYING(10) NULL, f2 FLOAT NOT NULL);
INSERT INTO t1 (f1, f2) VALUES ('a', 1.23);
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- F1: a F2: 1.23

CREATE TABLE t1 (f1 CHARACTER VARYING(10) NULL, f2 FLOAT NOT NULL);
INSERT INTO t1 (f1, f2) VALUES ('a', NULL);
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- error 23502: violates non-null constraint: column F2

CREATE TABLE t1 (f1 CHARACTER VARYING(10) NULL, f2 FLOAT NOT NULL);
INSERT INTO t1 (f1, f2) VALUES (NULL, 1.23);
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- F1: NULL F2: 1.23

CREATE TABLE t1 (f1 CHARACTER VARYING(10), f2 FLOAT);
INSERT INTO t1 (f1, f2) VALUES (NULL, NULL);
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- F1: NULL F2: NULL

CREATE TABLE t1 (f1 VARCHAR(10) NULL, f2 FLOAT NOT NULL);
INSERT INTO t1 (f2) VALUES (1.23);
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- F1: NULL F2: 1.23

CREATE TABLE t1 (f1 CHARACTER VARYING(10) NULL, f2 FLOAT NOT NULL);
INSERT INTO t1 (f1) VALUES ('a');
SELECT * FROM t1;
-- msg: CREATE TABLE 1
-- error 23502: violates non-null constraint: column F2
