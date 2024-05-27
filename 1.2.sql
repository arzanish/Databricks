-- Databricks notebook source
CREATE TABLE employees
(id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

INSERT INTO employees
VALUES
(1,"Adam",3500.0),
(2,"Sarah",4020.5),
(3,"John",2999.3),
(4,"Thomas",4000.3),
(5,"Anna",2500.0),
(6,"Kim",6200.3)

-- COMMAND ----------

DESCRIBE DETAIL employees;

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

UPDATE employees
SET salary=salary+100
WHERE name LIKE "A%"

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees/_delta_log'

-- COMMAND ----------

DESCRIBE detail employees

-- COMMAND ----------

select * from employees

-- COMMAND ----------

DESCRIBE HISTORY employees

-- COMMAND ----------


