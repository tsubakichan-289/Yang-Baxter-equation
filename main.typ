#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge
#import "@preview/polylux:0.3.1": *

#set page(paper: "presentation-16-9", fill: black)
#set text(fill: white)

#polylux-slide[
  #diagram(
    let V1 = node("V"),
    let V2 = node("V'"),
    let V3 = node("V"),
    let V4 = node("V'"),
    
    $
    V1 edge("rr",->, stroke: #white, f) edge("dd",->, stroke: #white, pi(a)) & & V2 #edge("->", "dd", $pi'(a)$, label-side: left, stroke: white) \
    & arrow.cw & \
    V3 edge("rr", ->, stroke: #white, f) & & V4 \
    $
  )
]