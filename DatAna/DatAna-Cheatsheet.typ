#import "../template.typ": *

#show: project.with(
  authors: ("Nic Wüger",),
  fach: "DatAna",
  fach-long: "Data Analytics",
  semester: "FS26",
  language: "en",
  font-size: 6pt,
  column-count: 5,
  display-title-footer: true
) 

#include "Chapters/01-BI_Data-Visualization.typ"
#include "Chapters/02-Data-Warehoused_Data-Marts_OLAP.typ"
#include "Chapters/03-Spatial-Data-Analytics-Introduction.typ"
#include "Chapters/04-Spatial-Data-Analytics_Postgis.typ"
#include "Chapters/05-Big-Data-Analytics_Cloud-Platforms.typ"
#include "Chapters/06-Big-Data_Cloud-Platforms-Continuation.typ"
#include "Chapters/07-Data-Integration_ETL-ELT.typ"
#include "Chapters/08-Data-Integration-Continuation.typ"