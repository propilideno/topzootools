graph [
  DateObtained "20/07/11"
  GeoLocation "Georgia"
  GeoExtent "Country"
  Network "GRENA"
  Provenance "Secondary"
  Access 0
  Source "http://www.porta-optica.org/publications/POS-Deliverable1.2v3_NREN_status_and_development_plans.pdf"
  Version "1.0"
  Type "REN"
  DateType "Historic"
  Backbone 0
  Commercial 0
  label "Grena"
  ToolsetVersion "0.3.34dev-20120328"
  Customer 0
  IX 0
  SourceGitVersion "e278b1b"
  DateModifier "="
  DateMonth 0
  LastAccess "20/07/11"
  Layer "IP"
  Creator "Topology Zoo Toolset"
  Developed 0
  Transit 0
  NetworkDate 2008
  DateYear 2008
  LastProcessed 20110901
  Testbed 0
  node [
    id 0
    label "0"
    Country "Georgia"
    Longitude 42.33517
    Internal 1
    Latitude 42.1537
    type "Router"
  ]
  node [
    id 1
    label "1"
    Country "Georgia"
    Longitude 41.63593
    Internal 1
    Latitude 41.64159
    type "Router"
  ]
  node [
    id 2
    label "2"
    Country "Georgia"
    Longitude 42.69974
    Internal 1
    Latitude 42.24961
    type "Router"
  ]
  node [
    id 3
    label "3"
    Country "Georgia"
    Longitude 42.69974
    Internal 1
    Latitude 42.24961
    type "Router"
  ]
  node [
    id 4
    label "4"
    Country "Georgia"
    Longitude 41.67197
    Internal 1
    Latitude 42.14616
    type "Router"
  ]
  node [
    id 5
    label "5"
    Country "Georgia"
    Longitude 41.87088
    Internal 1
    Latitude 42.5088
    type "Router"
  ]
  node [
    id 6
    label "6"
    Country "Georgia"
    Longitude 43.59994
    Internal 1
    Latitude 41.99414
    type "Router"
  ]
  node [
    id 7
    label "7"
    Internal 1
    type "Router"
  ]
  node [
    id 8
    label "8"
    Country "Georgia"
    Longitude 44.83368
    Internal 1
    Latitude 41.69411
    type "MAN"
  ]
  node [
    id 9
    label "9"
    Internal 1
    type "Router"
  ]
  node [
    id 10
    label "10"
    Country "Georgia"
    Longitude 44.99323
    Internal 1
    Latitude 41.54949
    type "Router"
  ]
  node [
    id 11
    label "11"
    Country "Georgia"
    Longitude 45.47315
    Internal 1
    Latitude 41.91978
    type "Router"
  ]
  node [
    id 12
    label "12"
    Internal 1
    type "Router"
  ]
  node [
    id 13
    label "13"
    Country "Georgia"
    Longitude 44.99323
    Internal 1
    Latitude 41.54949
    type "Router"
  ]
  node [
    id 14
    label "14"
    Country "Georgia"
    Longitude 44.11578
    Internal 1
    Latitude 41.98422
    type "Router"
  ]
  node [
    id 15
    label "15"
    Country "Georgia"
    Longitude 42.69974
    Internal 1
    Latitude 42.24961
    type "Router"
  ]
  edge [
    source 0
    target 4
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 0
    target 15
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 1
    target 4
    LinkLabel "IPIP Tunnel"
  ]
  edge [
    source 2
    target 3
    LinkLabel "Green Link (No label)"
  ]
  edge [
    source 3
    target 7
    LinkLabel "Green Link (No label)"
  ]
  edge [
    source 3
    target 15
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 4
    target 5
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 6
    target 14
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 6
    target 15
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 8
    target 11
    LinkLabel "IPIP Tunnel"
  ]
  edge [
    source 8
    target 13
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 8
    target 14
    LinkLabel "IPIP Tunnel"
  ]
  edge [
    source 9
    target 10
    LinkLabel "Green Link (No label)"
  ]
  edge [
    source 10
    target 13
    LinkType "E1"
    LinkLabel "E1"
  ]
  edge [
    source 12
    target 13
    LinkLabel "Green Link (No label)"
  ]
]
