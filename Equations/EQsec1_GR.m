(* Created with the Wolfram Language : www.wolfram.com *)
3*hubbleC[]^2*pertpsi[LI[2]] + (density[]*pertdensity[LI[2]]*scale[]^2)/
  (2*Mpl^2) - source1[LI[2]] + 3*hubbleC[]*timevec[h$152738]*
  PD[-h$152738][pertphi[LI[2]]] + 
 hubbleC[]*metric\[Delta][p$152734, p$152735]*
  PD[-p$152735][PD[-p$152734][pertB[LI[2]]]] - 
 metric\[Delta][p$152734, p$152735]*PD[-p$152735][
   PD[-p$152734][pertphi[LI[2]]]] - 
 hubbleC[]*metric\[Delta][p$152734, p$152735]*timevec[h$152738]*
  PD[-p$152735][PD[-p$152734][PD[-h$152738][pertE[LI[2]]]]]
