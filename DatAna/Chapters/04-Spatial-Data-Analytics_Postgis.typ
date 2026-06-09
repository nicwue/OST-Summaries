#import "../../template.typ": *

= Spatial Data Analytics -- Continuation / PostGIS

== Geo Data Types

The slides distinguish three main geodata types:

- *Vector data:* points, lines and polygons.
- *Raster data:* pixels or grid cells, for example GeoTIFF.
- *Topology data:* relationships between nodes and edges, for example networks.

== Geometry Types

Important geometry types are:

- *POINT:* one coordinate.
- *LINESTRING:* ordered sequence of points forming a line.
- *POLYGON:* area enclosed by lines.
- *MULTIPOINT, MULTILINESTRING, MULTIPOLYGON:* collections of several geometries.
- *GEOMETRYCOLLECTION:* mixed geometry collection.

== OpenStreetMap Data Model

OpenStreetMap uses a special data model:

- *Nodes:* points with coordinates.
- *Ways:* ordered lists of nodes, used for lines or closed areas.
- *Relations:* complex structures, for example multipolygons.

OSM data uses tags, which are key-value pairs, for example `amenity=restaurant`.

== PostGIS

PostGIS is an extension for PostgreSQL that adds support for spatial data. It provides geometry data types, spatial functions, spatial indexes and coordinate transformations.

A table can contain a geometry column, for example:

```sql
geom GEOMETRY('LINESTRING', 2056)
```

== Spatial Indexes

Spatial indexes make spatial queries faster. PostGIS often uses a *GIST index*, which works like an R-tree and is suitable for multi-dimensional spatial data.

== Spatial Relationships

Spatial analysis is not only about location, but also about relationships between objects.

Important relationships include:

- *distance:* how far apart objects are.
- *adjacency:* whether objects touch or border each other.
- *containment:* whether one object lies inside another.
- *intersection:* whether objects overlap.

== Spatial Functions

Typical PostGIS functions include:

- `ST_AsText()`
- `ST_GeomFromText()`
- `ST_Transform()`
- `ST_Distance()`
- `ST_Intersects()`
- `ST_DWithin()`
- `ST_Buffer()`
- `ST_Intersection()`
- `ST_Union()`

== Spatial Analysis Examples

The slides mention several spatial analysis operations:

- *Point-in-polygon:* checks which points lie inside an area.
- *Buffer:* creates a zone around a point, line or polygon.
- *Overlay / Intersect:* combines layers and finds overlaps.
- *Network analysis:* useful for routing or flows.
- *Measurement:* lengths, distances and areas.

== Geo Standards

Important geodata standards and formats include:

- *GeoJSON*
- *GeoPackage*
- *Shapefile*
- *KML*
- *WFS / OGC API Features*
- *GeoTIFF*
- *WMS / OGC API Maps*
