#import "../../template.typ": *

= Spatial Data Analytics

== What Spatial Data Analytics Means

Spatial Data Analytics analyses data with a geographical or spatial component. It asks questions such as:

- Where does something happen?
- How are objects distributed in space?
- Where are clusters, hotspots or patterns?
- How do spatial patterns change over time?

== Geoinformation and GIS

Geoinformation is data with a location reference. This can include addresses, coordinates, place names, points, lines, areas, pixels or voxels.

A GIS, or Geographic Information System, is used to capture, manage, analyse and present such data.

The slides summarise this with *EVAP*:

- *Eingabe / Erfassung:* input and data collection.
- *Verwaltung:* management and storage.
- *Analyse:* analysis.
- *Präsentation:* presentation and visualisation.

== Application Areas

Spatial data is used in many fields:

- journalism and communication
- tourism
- marketing
- navigation
- autonomous vehicles
- energy supply
- emergency management
- eGovernment
- city planning
- health
- logistics
- agriculture
- environmental monitoring

== Geodata

Geodata is digital information with a location reference. It can be represented through points, lines, polygons, pixels, grids, addresses or geographical names.

Geodata is special because it often has complex structures, many formats, large data volumes and important metadata.

== Coordinate Reference Systems

Because the Earth is curved but maps and screens are flat, coordinates need a reference system and often a projection.

Important examples:

- *WGS84 / EPSG:4326:* GPS coordinates using latitude and longitude.
- *Web Mercator / EPSG:3857:* often used for online maps.
- *CHLV95 / EPSG:2056:* Swiss coordinate system.

== Metadata

Metadata means “data about data”. For geodata, metadata is especially important. It includes coordinate system, units, resolution, quality, source, contact point and meaning of attributes.

== Layers

GIS often works with layers. Each layer contains a specific type of spatial information, for example roads, buildings, rivers, restaurants or temperature zones.

== Vector and Raster Data

*Vector data* represents objects as points, lines and polygons.

*Raster data* represents space as pixels or grid cells, often used for satellite images, temperature maps or elevation models.
