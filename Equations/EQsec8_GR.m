(* Created with the Wolfram Language : www.wolfram.com *)
3*hubbleC[]*pertpressure[LI[2]] - 3*hubbleC[]*pertdensity[LI[2]]*pressure[] - 
 source9[LI[2]] + density[]*timevec[h$4859543]*
  PD[-h$4859543][pertdensity[LI[2]]] - 3*density[]*timevec[h$4859543]*
  PD[-h$4859543][pertphi[LI[2]]] - 3*pressure[]*timevec[h$4859543]*
  PD[-h$4859543][pertphi[LI[2]]] - 
 density[]*metric\[Delta][p$4859539, p$4859540]*
  PD[-p$4859540][PD[-p$4859539][pertB[LI[2]]]] - 
 metric\[Delta][p$4859539, p$4859540]*pressure[]*
  PD[-p$4859540][PD[-p$4859539][pertB[LI[2]]]] - 
 (density[]*hubbleC[]*metric\[Delta][p$4859539, p$4859540]*
   PD[-p$4859540][PD[-p$4859539][pertshear[LI[2]]]])/scale[]^2 - 
 (hubbleC[]*metric\[Delta][p$4859539, p$4859540]*pressure[]*
   PD[-p$4859540][PD[-p$4859539][pertshear[LI[2]]]])/scale[]^2 + 
 (density[]*metric\[Delta][p$4859539, p$4859540]*
   PD[-p$4859540][PD[-p$4859539][pertvelocity[LI[2]]]])/scale[] + 
 (metric\[Delta][p$4859539, p$4859540]*pressure[]*
   PD[-p$4859540][PD[-p$4859539][pertvelocity[LI[2]]]])/scale[] + 
 density[]*metric\[Delta][p$4859539, p$4859540]*timevec[h$4859543]*
  PD[-p$4859540][PD[-p$4859539][PD[-h$4859543][pertE[LI[2]]]]] + 
 metric\[Delta][p$4859539, p$4859540]*pressure[]*timevec[h$4859543]*
  PD[-p$4859540][PD[-p$4859539][PD[-h$4859543][pertE[LI[2]]]]]
