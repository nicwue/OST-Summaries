#import "../../template.typ": *

= Big Data & Cloud Platforms -- Continuation

== Cloud vs. On-Premise

*On-premise* means hardware and systems are operated by the organisation itself. The organisation has more control, but also more maintenance and update work.

*Cloud-based systems* are hosted by a provider. Users access the service and usually pay by subscription or usage.

== XaaS: IaaS, PaaS, SaaS

The slides show different levels of responsibility:

- *IaaS:* infrastructure as a service.
- *PaaS:* platform as a service.
- *SaaS:* software as a service.

== Hybrid-First / Workload-First

The slides argue that the question is no longer simply “cloud-first”. Instead, organisations should ask:

Which workload belongs where, for cost, performance and legal reasons?

== Requirements for Cloud Platforms

A good cloud analytics platform should offer:

- fast setup
- secure access
- scalable storage
- scalable compute power
- elastic resource use
- easy operation
- good SQL support
- backup options
- support for different data types

== Elasticity

Elasticity means that resources can be added or removed depending on workload. Ideally, the system uses only the resources that are actually needed.

== Scalability

Scalability means that the system can grow with increasing demands.

- *Scale up:* stronger machine.
- *Scale out:* more machines working together.

== Data Warehouse vs. Data Lake

A *Data Warehouse* usually stores structured, prepared and cleaned data for analysis.

A *Data Lake* stores raw or less structured data in different formats. It is more flexible, but requires good metadata and governance.

The slides also mention *Data Lakehouses*, which combine ideas from Data Warehouses and Data Lakes.

== Cloud Analytics Services

Examples discussed include:

- *Amazon Redshift*
- *Snowflake*
- *Databricks*
- *Google BigQuery*
- *Google Earth Engine*

== Snowflake

Snowflake separates storage and compute. Users can run virtual warehouses independently on shared data.

Advantages include:

- elasticity
- simple SaaS setup
- support for JSON data
- isolated compute resources
- separate cost control for storage and compute

== Data Lakes and Lakehouse Formats

The slides mention open table formats:

- *Apache Iceberg*
- *Delta Lake*
- *Apache Hudi*

The trend goes towards open data lakehouses.

== Raster Data and Spatial Big Data

Raster data represents space as pixels or grid cells. It is used for satellite images, aerial images, orthophotos, temperature data and elevation models.

== Urban Heat Islands

Satellite data can be used to analyse where cities are warmer than their surroundings. This can support planning strategies for health, energy and climate adaptation.
