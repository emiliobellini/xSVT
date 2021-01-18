(* Created with the Wolfram Language : www.wolfram.com *)
density[]*hubbleC[]*metric\[Delta][p$75204, p$75205]*
  PD[-p$75205][PD[-p$75204][pertS[LI[1], -i]]] + 
 hubbleC[]*metric\[Delta][p$75204, p$75205]*pressure[]*
  PD[-p$75205][PD[-p$75204][pertS[LI[1], -i]]] + 
 metric\[Delta][p$75204, p$75205]*primepressure[]*
  PD[-p$75205][PD[-p$75204][pertS[LI[1], -i]]] + 
 density[]*metric\[Delta][p$75204, p$75205]*timevec[h$75206]*
  PD[-p$75205][PD[-p$75204][PD[-h$75206][pertS[LI[1], -i]]]] + 
 metric\[Delta][p$75204, p$75205]*pressure[]*timevec[h$75206]*
  PD[-p$75205][PD[-p$75204][PD[-h$75206][pertS[LI[1], -i]]]] - 
 (metric\[Delta][-i, -p$75204]*metric\[Delta][p$75205, p$75207]*
   primepressure[]*PD[-p$75207][PD[-p$75205][pertvelocityvec[LI[1], 
      p$75204]]])/scale[] - (density[]*metric\[Delta][-i, -p$75204]*
   metric\[Delta][p$75205, p$75207]*timevec[h$75206]*
   PD[-p$75207][PD[-p$75205][PD[-h$75206][pertvelocityvec[LI[1], p$75204]]]])/
  scale[] - (metric\[Delta][-i, -p$75204]*metric\[Delta][p$75205, p$75207]*
   pressure[]*timevec[h$75206]*PD[-p$75207][
    PD[-p$75205][PD[-h$75206][pertvelocityvec[LI[1], p$75204]]]])/scale[] - 
 (density[]*metric\[Delta][p$75204, p$75205]*metric\[Delta][p$75207, p$75208]*
   PD[-p$75208][PD[-p$75207][PD[-p$75205][PD[-p$75204][
       pertshearvec[LI[1], -i]]]]])/scale[]^2 - 
 (metric\[Delta][p$75204, p$75205]*metric\[Delta][p$75207, p$75208]*
   pressure[]*PD[-p$75208][PD[-p$75207][PD[-p$75205][
      PD[-p$75204][pertshearvec[LI[1], -i]]]]])/scale[]^2
