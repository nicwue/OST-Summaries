#import "../../template.typ": *

= Data Warehouses, Data Marts & OLAP

== OLTP vs. OLAP

*OLTP* means Online Transaction Processing. These systems are used for everyday business transactions, such as online orders, flight bookings or webshop purchases. They process many small transactions quickly and must be highly available.

*OLAP* means Online Analytical Processing. These systems are used to analyse data. They usually work with large data volumes and complex queries. Data is mainly read and evaluated, not changed.

A key point is that one database system cannot be perfectly optimised for both OLTP and OLAP at the same time.

== What OLAP Is Used For

OLAP helps analyse key figures from different perspectives, called *dimensions*. Examples are:

- sales by time and product
- profit by product and month
- sales by region
- sales by customer group
- sales by distribution channel

== Data Warehouse

A Data Warehouse is a database system designed for analysis and reporting. It collects decision-relevant data from different operational systems and stores it in a cleaned, integrated and consistent form.

It is mainly used for reporting, analysis, long-term storage, historical comparison and Business Intelligence.

== ETL in Data Warehousing

Data is usually brought into a Data Warehouse through ETL:

- *Extract:* data is taken from source systems.
- *Transform:* data is cleaned, converted and adapted.
- *Load:* data is loaded into the Data Warehouse.

== Star Schema

The Star Schema is a common structure in Data Warehouses. It consists of one large *fact table* in the middle and several smaller *dimension tables* around it.

The fact table contains measurable values, for example sales, quantity or revenue.
The dimension tables describe the facts, for example time, customer, product, shop or region.

== Snowflake Schema

The Snowflake Schema is similar to the Star Schema, but the dimension tables are normalised further. This reduces redundancy, but queries can become more complex.

== Fact Tables

The slides distinguish different kinds of fact tables:

- *Transaction Fact Table:* each row represents one event, for example one sale.
- *Periodic Snapshot Fact Table:* stores values at regular intervals, for example daily stock levels.
- *Accumulating Snapshot Fact Table:* follows a process with several steps, for example order received, delivered and invoiced.

== Slowly Changing Dimensions

Slowly Changing Dimensions describe attributes that change rarely but must sometimes be tracked historically.

Example: a salesperson changes region.

- *SCD Type 1:* old value is overwritten; no history remains.
- *SCD Type 2:* a new row is created, so the history remains visible.
- *SCD Type 3--6:* more complex variants with additional history handling.

== SQL Aggregation

For Data Warehouse analysis, SQL aggregation is central.

Important functions are:

`COUNT()`, `SUM()`, `MIN()`, `MAX()`, `AVG()`

With `GROUP BY`, data can be grouped and summarised.

More advanced grouping is possible with:

- *ROLLUP:* creates subtotals along a hierarchy.
- *CUBE:* creates subtotals for all combinations of dimensions.
- *GROUPING SETS:* allows specific grouping combinations.

== Data Marts, Data Lakes, Data Mesh and Data Spaces

A *Data Mart* is a smaller, focused part of a Data Warehouse, often prepared for a specific department or use case.

A *Data Lake* stores raw or less structured data. It is more flexible, but needs good metadata and governance.

A *Data Mesh* is an organisational approach where data responsibility is distributed across domains.

A *Data Space* focuses on controlled data sharing between organisations or systems.
