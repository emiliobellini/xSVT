(* Created with the Wolfram Language : www.wolfram.com *)
3*hubbleC[]*pertpressure[LI[1]] - 3*hubbleC[]*pertdensity[LI[1]]*pressure[] + 
 density[]*timevec[h$69483]*PD[-h$69483][pertdensity[LI[1]]] - 
 3*density[]*timevec[h$69483]*PD[-h$69483][pertphi[LI[1]]] - 
 3*pressure[]*timevec[h$69483]*PD[-h$69483][pertphi[LI[1]]] - 
 density[]*metric\[Delta][p$69484, p$69485]*
  PD[-p$69485][PD[-p$69484][pertB[LI[1]]]] - metric\[Delta][p$69484, p$69485]*
  pressure[]*PD[-p$69485][PD[-p$69484][pertB[LI[1]]]] - 
 (density[]*hubbleC[]*metric\[Delta][p$69484, p$69485]*
   PD[-p$69485][PD[-p$69484][pertshear[LI[1]]]])/scale[]^2 - 
 (hubbleC[]*metric\[Delta][p$69484, p$69485]*pressure[]*
   PD[-p$69485][PD[-p$69484][pertshear[LI[1]]]])/scale[]^2 + 
 (density[]*metric\[Delta][p$69484, p$69485]*
   PD[-p$69485][PD[-p$69484][pertvelocity[LI[1]]]])/scale[] + 
 (metric\[Delta][p$69484, p$69485]*pressure[]*
   PD[-p$69485][PD[-p$69484][pertvelocity[LI[1]]]])/scale[] + 
 density[]*metric\[Delta][p$69484, p$69485]*timevec[h$69483]*
  PD[-p$69485][PD[-p$69484][PD[-h$69483][pertE[LI[1]]]]] + 
 metric\[Delta][p$69484, p$69485]*pressure[]*timevec[h$69483]*
  PD[-p$69485][PD[-p$69484][PD[-h$69483][pertE[LI[1]]]]]
