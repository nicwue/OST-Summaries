#import "../template.typ": *


#show: project.with(
  authors: ("Nic Wüger",),
  fach: "CN2",
  fach-long: "Computernetze 2",
  semester: "FS26",
  language: "en",
  font-size: 6pt,
  column-count: 5,
  display-title-footer: true
) 

// One double-sided A4 paper is allowed
#include "Chapters/OSPF.typ"
#include "Chapters/IS-IS.typ"


= BGP

= Nework Design

= Multicast

= MPLS

= Overlay Technologies

= EVPN

= VXLAN

= CDN

= QOS
