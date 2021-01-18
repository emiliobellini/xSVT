(* Created with the Wolfram Language : www.wolfram.com *)
-(metric\[Delta][p$57253, p$57254]*scale[]^2*
    PD[-p$57254][PD[-p$57253][pertpressure[LI[1]]]])/(2*Mpl^2) + 
 3*hubbleC[]^2*metric\[Delta][p$57253, p$57254]*
  PD[-p$57254][PD[-p$57253][pertpsi[LI[1]]]] - 
 (density[]*metric\[Delta][p$57253, p$57254]*scale[]^2*
   PD[-p$57254][PD[-p$57253][pertpsi[LI[1]]]])/Mpl^2 - 
 (metric\[Delta][p$57253, p$57254]*pressure[]*scale[]^2*
   PD[-p$57254][PD[-p$57253][pertpsi[LI[1]]]])/Mpl^2 + 
 2*hubbleC[]*metric\[Delta][p$57253, p$57254]*timevec[h$57255]*
  PD[-p$57254][PD[-p$57253][PD[-h$57255][pertphi[LI[1]]]]] + 
 hubbleC[]*metric\[Delta][p$57253, p$57254]*timevec[h$57255]*
  PD[-p$57254][PD[-p$57253][PD[-h$57255][pertpsi[LI[1]]]]] + 
 metric\[Delta][p$57253, p$57254]*timevec[h$57255]*timevec[h$57256]*
  PD[-p$57254][PD[-p$57253][PD[-h$57256][PD[-h$57255][pertphi[LI[1]]]]]]
