#import "../../template.typ": *

= OSPF
OSPF (Open Shortest Path First) is an Interior Gateway Protocol (IGP), which is widely used. It supports IPv4 (v1/v2), IPv6 (v3) and ECMP. LSA (Link State Advertisment) is the central building block of the protocol. It is sent by each router in the OSPF domain and helps building the LSDB (Link State Database). LSAs describe the state of the router. That includes: Interfaces, Networks and Adjacencies. 
== Hello Packets
- Usually multicast
- Discover, Build and Maintain the OSPF neighbor adjacencies
- Sent every HelloInterval
- RouterDeadInterval detects failed neighbors
== DBD
- Unicast
- Database Description Packets
- Describes a set of LSAs belonging to the sender's LSDB
- Only LSA headers: link-state types, address of adverising router, link-cost, sequence number
== LSR
- Unicast
- Link State Request
- Typically triggered after DBD
- Requests specific LSAs from neighbors
- Triggered when neighbor has newer entries
== LSU
- Link-State Update
- Multicast for flooding of LSAs
- Unicast when sent als response to LSR
- Are sent as LSA responses to LSRs
- Carries one or more LSAs
- Ensures that all router have the same view.
- Implicit ack
== Link State Acknowledgment
- Multicast to make LSA floding reliable
- Unicast if Ack direct LSU
- Explicitly Ack a received LSA
- Multiple LSA Acks possible

== DR/BDR
Designated Routers and Backup Designated Routers are decided py priority or router ID. 
DR is a centralized and performs LSA forwarding and LSDB syncs for all routers in the broadcast domain.
Each router establishes a full adjacency with the DR and BDR by using the IPv4 multicast addr 224.0.0.6
The BDR takes over when the DR goes down and a new BDR get chosen. When the old DR comes back it doesn't become DR again. DR and BDR only change when 1 or both go down. When a new router joins the domain, nothing changes.

== Passive Int
Used on Ints where no OSPF traffic should be performed. This interface doesn't send or receive OSPF Hello packets.

== Routers
*Area Border Router* - R between areas\
*AS Boundary Router* - R connected to different AS\
*Backbone Router* - Rs in the backbone (Area 0)\
*Internal Router* - Rs in the Areas 1<\
\
ABRs and ASBR can perform route summarization. ABRs summarize the routes of their outer areas and propagates only the summarized route to area 0 and to other areas. It creates it to int Null0 to avoid loops. On ASBRs it will be done before injecting the routes into the OSPF domain.

== LSA Types
*T1 - router LSA* - Describes interfaces connected to the router, stays in area.\
*T2 - network LSA* - Generated for every Non-Broadcast Multi-Access network within area. Is announced to the ABR.\
*T3 - summary LSA* - Announced from ABR to Area 0 and forwared to other areas. \
*T4 - ASBR Summary LSA* - Provides the route to a ASBR. Announced first as T1 with external Bit then translated to T4 by ABR.\
*T5 - External LSA* - Routes to external networks. Propagated by ASBR and flooded to whole OSPF AS.
*T7 - External LSA* - NSSA don't allow T5 so another Type needs to be used. This is T7. It is propagated to the whole OSPF AS but not directly to the NSSA its going through.

== Area Types
*Standard* - All routes distribbuted.\
*Stub area* - No external routes (Also don't contain ASBR).\
*Totally stubby area* - No external and interarea routes.\
*Not-so-stubby area 1* - Allows injection of external routes. But nor default route like stub area.\
*Totally Not-so-stubby areas* - Allows ASBRs but else is like Totally Stubby Area. Means it announces the external routes from the ASBR to the ABR but doesn't get external or interarea routes.

=== LSA Types
#table(columns: (auto, auto, auto, 1.4cm,),
[LSA],[Name],[Contains],[Router Type],
[T1],[Router],[the state and the cost of the routers interface],[All router\ in area],
[T2],[Network],[routers attached to a network segment's Subnet mask],[Only DRs],
[T3],[(Network)\ Summary],[networks external to the area],[Only ABRs],
[T4],[(Router)\ Summary],[ASBRs external to the area],[Only ABRs],
[T5],[External],[networks external to the OSPF domain],[ASBR and ABR(T7)],
[T7],[NSSA],[networks external to the OSPF domain],[ASBRs],
)

=== Area Summary
#table(columns: 7, align: left,
[Area Types],[T1],[T2],[T3],[T4],[T5],[T7],
[Backbone],[#cell-check],[#cell-check],[#cell-check],[#cell-check],[#cell-check],[#cell-cross],
[Nob-Backbone],[#cell-check],[#cell-check],[#cell-check],[#cell-check],[#cell-check],[#cell-cross],
[Stub],[#cell-check],[#cell-check],[#cell-check],[#cell-cross],[#cell-cross],[#cell-cross],
[Tottally Stubby],[#cell-check],[#cell-check],[#cell-cross],[#cell-cross],[#cell-cross],[#cell-cross],
[Not-so-Stubby],[#cell-check],[#cell-check],[#cell-check],[#cell-cross],[#cell-cross],[#cell-check],
)

== Routes
Intra-area - originated and learned in the same local area (O)\
Inter-area - origianted in other areas and inserted into local area (O IA)\
External routes - routes from other AS (O E1 or O E2)\
\
Route calculation = reference bandwith / actual int bandwith\
Default ref bandwith = 100 mbps, should be set to the highest bandwith in the network.\
Inter-Area routes are preffered over Intra-Area routes even if the Intra-Area route has a lower cost.\
OSPF is using ECMP.