(* Created with the Wolfram Language : www.wolfram.com *)
(3*hubbleC[]*pertpressure[LI[1]])/(density[]*scale[]) - 
 (3*hubbleC[]*pertdensity[LI[1]]*pressure[])/(density[]*scale[]) + 
 (timevec[h$2655945]*PD[-h$2655945][pertdensity[LI[1]]])/scale[] - 
 (3*timevec[h$2655945]*PD[-h$2655945][pertphi[LI[1]]])/scale[] - 
 (3*pressure[]*timevec[h$2655945]*PD[-h$2655945][pertphi[LI[1]]])/
  (density[]*scale[]) - (metric\[Delta][p$2657150, p$2657927]*
   PD[-p$2657150][PD[-p$2657927][pertB[LI[1]]]])/scale[] - 
 (metric\[Delta][p$2657150, p$2657931]*pressure[]*
   PD[-p$2657150][PD[-p$2657931][pertB[LI[1]]]])/(density[]*scale[]) + 
 (metric\[Delta][p$2657150, p$2657935]*PD[-p$2657150][
    PD[-p$2657935][pertvelocity[LI[1]]]])/scale[]^2 + 
 (metric\[Delta][p$2657150, p$2657939]*pressure[]*
   PD[-p$2657150][PD[-p$2657939][pertvelocity[LI[1]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$2657150, p$2657943]*
   timevec[h$2655945]*PD[-p$2657150][PD[-p$2657943][
     PD[-h$2655945][pertE[LI[1]]]]])/scale[] + 
 (metric\[Delta][p$2657150, p$2657947]*pressure[]*timevec[h$2655945]*
   PD[-p$2657150][PD[-p$2657947][PD[-h$2655945][pertE[LI[1]]]]])/
  (density[]*scale[])
