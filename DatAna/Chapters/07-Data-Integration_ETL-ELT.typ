#import "../../template.typ": *

= Data Integration: ETL / ELT

== Data Integration

Data integration means combining data from different, heterogeneous sources into one structured information set.

It includes:
- data import
- conversion
- validation
- cleaning
- transformation
- fusion
- aggregation
- filtering
- calculation
- enrichment
- anonymisation
- generation

== Why Data Integration Matters

Data scientists and data engineers spend a large part of their work finding, cleaning and integrating data. Data preparation is therefore a central part of data analytics.

== Data Integration for Data Warehouses vs. Machine Learning

For *Data Warehouses*, the goal is usually reporting, historical analysis and consistency. The process is often schema-driven and batch-oriented.

For *Machine Learning*, the goal is often exploration, model training and feature engineering. The process can be more flexible, iterative and focused on data quality, bias and feature usefulness.

== Important Functions

- *Data cleaning:* remove duplicates, invalid values or missing values.
- *Data transformation:* change structure or data types.
- *Data aggregation:* summarise data from several sources.
- *Data filtering:* select relevant rows.
- *Data calculation:* add calculated columns.
- *Data enrichment:* add external data, for example geocoding.
- *Data anonymisation:* protect sensitive information.
- *Synthetic data generation:* create artificial data.

== Integration Approaches

- *Top-down:* a target schema is given first, and source data is mapped to it.
- *Bottom-up:* existing source schemas are analysed first, and an integrated target schema is built from them.

== Integration Conflicts

- *Semantic conflicts:* different meanings or object concepts.
- *Description conflicts:* different attributes, names, datatypes or units.
- *Heterogeneity conflicts:* different schemas or modelling languages.
- *Structural conflicts:* missing attributes or different modelling assumptions.
- *Data conflicts:* wrong, outdated or differently coded values.

== Data Warehouses vs. Virtual Data Integration

In a *Data Warehouse*, data is physically copied and integrated into one system.

*Advantages:*
- queries do not disturb source systems
- complex calculations or cleaning are possible

*Disadvantages:*
- designing the warehouse is time-consuming
- data may not always be fully current

In *virtual data integration*, data remains in the sources and is fetched when needed.

== ETL

- *Extract:* select and provide data from source systems.
- *Transform:* clean and adapt data to schema and quality requirements.
- *Load:* load the data into the Data Warehouse.

== ELT

- *Extract:* get data from sources.
- *Load:* load it into a database or staging area.
- *Transform:* transform it inside the database, usually with SQL.

== Reverse ETL

Reverse ETL copies data from a central Data Warehouse back into operational systems, for example CRM or marketing tools.
