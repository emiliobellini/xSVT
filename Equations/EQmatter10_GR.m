(* Created with the Wolfram Language : www.wolfram.com *)
-3*density[]*hubbleC[]*pertdensity[LI[1]] - 3*hubbleC[]*pertpressure[LI[1]] - 
 pertdensity[LI[1]]*primedensity[] - density[]*timevec[h$69115]*
  PD[-h$69115][pertdensity[LI[1]]] + 3*density[]*timevec[h$69115]*
  PD[-h$69115][pertphi[LI[1]]] + 3*pressure[]*timevec[h$69115]*
  PD[-h$69115][pertphi[LI[1]]] + density[]*metric\[Delta][p$69116, p$69117]*
  PD[-p$69117][PD[-p$69116][pertB[LI[1]]]] + metric\[Delta][p$69116, p$69117]*
  pressure[]*PD[-p$69117][PD[-p$69116][pertB[LI[1]]]] + 
 (density[]*hubbleC[]*metric\[Delta][p$69116, p$69117]*
   PD[-p$69117][PD[-p$69116][pertshear[LI[1]]]])/scale[]^2 + 
 (hubbleC[]*metric\[Delta][p$69116, p$69117]*pressure[]*
   PD[-p$69117][PD[-p$69116][pertshear[LI[1]]]])/scale[]^2 - 
 (density[]*metric\[Delta][p$69116, p$69117]*
   PD[-p$69117][PD[-p$69116][pertvelocity[LI[1]]]])/scale[] - 
 (metric\[Delta][p$69116, p$69117]*pressure[]*
   PD[-p$69117][PD[-p$69116][pertvelocity[LI[1]]]])/scale[] - 
 density[]*metric\[Delta][p$69116, p$69117]*timevec[h$69115]*
  PD[-p$69117][PD[-p$69116][PD[-h$69115][pertE[LI[1]]]]] - 
 metric\[Delta][p$69116, p$69117]*pressure[]*timevec[h$69115]*
  PD[-p$69117][PD[-p$69116][PD[-h$69115][pertE[LI[1]]]]]
