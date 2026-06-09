#import "../../template.typ": *

= Data Integration -- Continuation

== Tools for Data Integration

The slides group tools into several categories.

*Data preparation tools:*

- text editors
- csvkit
- DuckDB
- Excel
- OpenRefine
- Open Data Editor

*Workflow orchestration tools:*

- Apache Airflow
- Apache NiFi

*Transformation tools:*

- IBM DataStage
- OpenRefine
- dbt
- Looker Studio

*Hybrid tools:*

- KNIME
- Microsoft SSIS
- Apache Hop
- FME
- Informatica PowerCenter

== Tool Selection

When choosing a tool, the slides recommend considering:

- tool category
- existing company ecosystem
- available know-how
- commercial support
- specific requirements such as geodata support

For geodata, tools like FME, Apache Hop, KNIME and Looker Studio may be relevant.

== Data Wrangling and Data Cleaning

*Data integration* combines data from different sources into a common schema.

*Data wrangling* is part of data integration and includes cleaning, transformation and enrichment of raw data.

*Data cleaning* focuses on detecting and correcting faulty, inconsistent or incomplete data.

== Data Errors

The slides distinguish:

- *Simple errors:* visible from one row, for example wrong format.
- *Difficult errors:* only visible when comparing several rows.
- *Systematic errors:* occur regularly and can often be corrected more easily.
- *Unsystematic errors:* irregular and harder to detect.

== Data Cleaning Techniques

Important techniques include:

- format conversion
- normalisation
- duplicate detection
- attribute comparison
- domain-specific cleaning
- rule-based checks
- filtering
- correction

== DuckDB and DBeaver

DuckDB is useful for data cleaning and preparation because it can read and write many formats, including CSV, Parquet, PostgreSQL, MySQL, SQLite, HTTP, S3 and GitHub.

It supports modern SQL, CTEs and window functions.

== Duplicate Detection

Duplicate detection identifies different rows that represent the same real-world object. Exact matching can be done with SQL, for example using `row_number()` over grouped attributes.

== String Matching

When data contains typing errors or variations, exact matching is not enough. Similarity measures are needed.

The slides mention:

- *Levenshtein distance:* measures edit distance.
- *Smith-Waterman:* finds similar substrings.
- *Jaro / Jaro-Winkler:* useful for short strings such as names.
- *Jaccard:* compares sets of tokens.
- *TF/IDF:* compares terms based on information retrieval ideas.
- *Soundex:* compares phonetic similarity.

The two main challenges are accuracy and scalability.

== Data Matching

Data matching searches for structured data elements that refer to the same real entity. It is more complex than string matching because it compares whole records, not only strings.

Techniques include:

- rule-based matching
- learning-based matching
- clustering
- probabilistic approaches

== Data Enrichment

Data enrichment means adding external data to existing data through common linking attributes.

Examples of linking attributes are:

- place names
- birth dates
- coordinates

Open data is important here:

- *Open Government Data:* official public data.
- *Open Public Data:* volunteered or crowdsourced data, such as Wikipedia, Wikidata, Flickr and OpenStreetMap.
- *Open Corporate Data:* open company data, for example Google Earth Engine.

== Synthetic Data

Synthetic data means artificially generated data. It can be useful when real data is limited, sensitive or difficult to share. However, it must be generated carefully so that it is useful and does not create misleading patterns.
