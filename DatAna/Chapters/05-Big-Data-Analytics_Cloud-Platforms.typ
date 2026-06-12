#import "../../template.typ": *

= Big Data Analytics & Cloud Platforms

== Big Data

Big Data describes data that is too large, too complex, too fast-moving or too weakly structured for traditional processing methods.

It can be described with the *4 V’s*:
- *Volume:* amount of data.
- *Variety:* different forms of data.
- *Velocity:* speed of data creation and processing.
- *Veracity:* uncertainty or quality of data.

Sometimes a fifth V is added:
- *Value:* usefulness of the data.

== Small, Medium and Big Data

- *Small Data:* fits into memory, for example many Pandas dataframes.
- *Medium Data:* fits on disk, but not in memory.
- *Big Data:* does not fit on one machine and needs distributed systems.

== Big Data Examples

- Internet of Things data
- Lidar point clouds
- satellite images
- air photos
- large-scale geodata

== Scaling Up vs. Scaling Out

- *Scaling up:* using a stronger single machine, often with in-memory column stores.
- *Scaling out:* distributing the work across many machines using a shared-nothing architecture.

== In-Memory Column Stores

Column stores save data by columns instead of rows. This is useful for analytical queries because only needed columns must be read.

*Advantages:*
- very fast analytical reads
- better compression
- better indexing

*Disadvantages:*
- slower updates
- less suitable for write-heavy OLTP systems

== Processing Tools

- *Pandas:* single-machine Python standard.
- *Polars:* faster single-machine tool with lazy and eager execution.
- *DuckDB:* embedded OLAP engine.
- *Dask / Ray / Modin:* parallel Python workloads.
- *Hadoop:* older MapReduce-based system.
- *Spark:* modern distributed engine for batch and streaming.
- *Flink:* stream-first processing.
- *Databricks, Snowflake, BigQuery, Redshift:* cloud analytics platforms.

== MapReduce

MapReduce is a programming model originally developed by Google. It splits work into two phases:

- *Map:* creates intermediate key-value pairs.
- *Reduce:* groups values with the same key and summarises them.

It was important in Hadoop environments but is less dominant today because newer technologies like Spark are often faster and more flexible.

== Apache Spark

Apache Spark is an open-source Big Data framework for distributed processing. It supports batch processing, real-time streaming, SQL, machine learning and graph analysis. Spark is faster than classic MapReduce because it can use in-memory computing.

== Spark DataFrames

Spark uses DataFrames as a central abstraction. A DataFrame is like a distributed table with rows and columns.\
Important concepts:

- *schema:* column names and types.
- *immutability:* transformations create new DataFrames.
- *lazy evaluation:* computation runs only when an action is called.
- *Catalyst Optimizer:* Spark optimises query plans automatically.
- *partitioning:* data is split and processed across the cluster.
