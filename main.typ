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

$
pi(X^+) = mat(0,1;0,0), quad pi(X^-) = mat(0,0;1,0), quad pi(K) = mat(q,0;0,q^(-1))
$

$K=q^H$とすれば，$pi(H)=mat(1,0;0,-1)$となる．
$
K = q^H = e^(epsilon H) = E + epsilon H + 1/2 epsilon^2 H^2 + ...
$
$
pi(K) =& pi(E) + epsilon pi(H) + 1/2 epsilon^2 pi(H^2) + ...\
lim_(epsilon -> 0) d/(d epsilon) pi(K) =& lim_(epsilon -> 0) (pi(H) + epsilon pi(H^2) + ...)\
=& pi(H)
$
$
d/(d epsilon) pi(K) =& lim_(h -> 0) (mat(e^epsilon,0;0,e^(-epsilon)) - mat(e^(epsilon - h),0;0,q^(epsilon - h)))/h \
=& lim_(h -> 0) mat((e^epsilon - e^(epsilon - h))/h,0;0,(e^(-epsilon) - q^(epsilon - h))/h) \
=& mat(e^epsilon,0;0,-e^(-epsilon))
$
つまり，
$
pi(H) = lim_(epsilon -> 0) d/(d epsilon) pi(K) = mat(1,0;0,-1)
$
$
pi(X^+) + pi(X^-) = mat(0,1;0,0) + mat(0,0;1,0) = mat(0,1;1,0)\
pi(X^+ + X^-)
$