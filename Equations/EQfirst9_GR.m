(* Created with the Wolfram Language : www.wolfram.com *)
-(metric\[Delta][p$74331, p$74332]*PD[-p$74332][
    PD[-p$74331][pertpressure[LI[1]]]]) - 
 density[]*metric\[Delta][p$74331, p$74332]*
  PD[-p$74332][PD[-p$74331][pertpsi[LI[1]]]] - 
 metric\[Delta][p$74331, p$74332]*pressure[]*
  PD[-p$74332][PD[-p$74331][pertpsi[LI[1]]]] - 
 (metric\[Delta][p$74331, p$74332]*primepressure[]*
   PD[-p$74332][PD[-p$74331][pertvelocity[LI[1]]]])/scale[] - 
 (density[]*metric\[Delta][p$74331, p$74332]*timevec[h$74333]*
   PD[-p$74332][PD[-p$74331][PD[-h$74333][pertvelocity[LI[1]]]]])/scale[] - 
 (metric\[Delta][p$74331, p$74332]*pressure[]*timevec[h$74333]*
   PD[-p$74332][PD[-p$74331][PD[-h$74333][pertvelocity[LI[1]]]]])/scale[]
