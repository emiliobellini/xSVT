(* Created with the Wolfram Language : www.wolfram.com *)
hubbleC[]*metric\[Delta][p$3246479, p$3246480]*
  PD[-p$3246479][PD[-p$3246480][pertS[LI[1], -i]]] + 
 (hubbleC[]*metric\[Delta][p$3246479, p$3246480]*pressure[]*
   PD[-p$3246479][PD[-p$3246480][pertS[LI[1], -i]]])/density[] + 
 (metric\[Delta][p$3246479, p$3246480]*primepressure[]*
   PD[-p$3246479][PD[-p$3246480][pertS[LI[1], -i]]])/density[] - 
 (metric\[Delta][p$3246479, p$3246480]*primepressure[]*
   PD[-p$3246479][PD[-p$3246480][pertvelocityvec[LI[1], -i]]])/
  (density[]*scale[]) + metric\[Delta][p$3246479, p$3246480]*
  timevec[h$3246485]*PD[-p$3246479][PD[-p$3246480][
    PD[-h$3246485][pertS[LI[1], -i]]]] + 
 (metric\[Delta][p$3246479, p$3246480]*pressure[]*timevec[h$3246485]*
   PD[-p$3246479][PD[-p$3246480][PD[-h$3246485][pertS[LI[1], -i]]]])/
  density[] - (metric\[Delta][p$3246479, p$3246480]*timevec[h$3246485]*
   PD[-p$3246479][PD[-p$3246480][PD[-h$3246485][pertvelocityvec[LI[1], 
       -i]]]])/scale[] - (metric\[Delta][p$3246479, p$3246480]*pressure[]*
   timevec[h$3246485]*PD[-p$3246479][PD[-p$3246480][
     PD[-h$3246485][pertvelocityvec[LI[1], -i]]]])/(density[]*scale[]) - 
 (metric\[Delta][p$3246479, p$3246481]*metric\[Delta][p$3246480, p$3246482]*
   PD[-p$3246480][PD[-p$3246482][PD[-p$3246479][PD[-p$3246481][
       pertshearvec[LI[1], -i]]]]])/scale[]^2 - 
 (metric\[Delta][p$3246479, p$3246481]*metric\[Delta][p$3246480, p$3246482]*
   pressure[]*PD[-p$3246480][PD[-p$3246482][PD[-p$3246479][
      PD[-p$3246481][pertshearvec[LI[1], -i]]]]])/(density[]*scale[]^2)
