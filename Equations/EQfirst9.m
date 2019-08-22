(* Created with the Wolfram Language : www.wolfram.com *)
(3*hubbleC[]*pertpressure[LI[1]])/(density[]*scale[]) - 
 (3*hubbleC[]*pertdensity[LI[1]]*pressure[])/(density[]*scale[]) + 
 (timevec[h$3238222]*PD[-h$3238222][pertdensity[LI[1]]])/scale[] - 
 (3*timevec[h$3238222]*PD[-h$3238222][pertphi[LI[1]]])/scale[] - 
 (3*pressure[]*timevec[h$3238222]*PD[-h$3238222][pertphi[LI[1]]])/
  (density[]*scale[]) - (metric\[Delta][p$3239518, p$3240541]*
   PD[-p$3240541][PD[-p$3239518][pertB[LI[1]]]])/scale[] - 
 (metric\[Delta][p$3239518, p$3240541]*pressure[]*
   PD[-p$3240541][PD[-p$3239518][pertB[LI[1]]]])/(density[]*scale[]) + 
 (metric\[Delta][p$3239518, p$3240541]*PD[-p$3240541][
    PD[-p$3239518][pertvelocity[LI[1]]]])/scale[]^2 + 
 (metric\[Delta][p$3239518, p$3240541]*pressure[]*
   PD[-p$3240541][PD[-p$3239518][pertvelocity[LI[1]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$3239518, p$3240541]*
   timevec[h$3238222]*PD[-p$3240541][PD[-p$3239518][
     PD[-h$3238222][pertE[LI[1]]]]])/scale[] + 
 (metric\[Delta][p$3239518, p$3240541]*pressure[]*timevec[h$3238222]*
   PD[-p$3240541][PD[-p$3239518][PD[-h$3238222][pertE[LI[1]]]]])/
  (density[]*scale[])
