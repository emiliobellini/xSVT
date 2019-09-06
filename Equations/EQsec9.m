(* Created with the Wolfram Language : www.wolfram.com *)
(3*hubbleC[]*pertpressure[LI[2]])/(density[]*scale[]) - 
 (3*hubbleC[]*pertdensity[LI[2]]*pressure[])/(density[]*scale[]) - 
 source9[LI[2]] + (timevec[h$14085708]*PD[-h$14085708][pertdensity[LI[2]]])/
  scale[] - (3*timevec[h$14085708]*PD[-h$14085708][pertphi[LI[2]]])/scale[] - 
 (3*pressure[]*timevec[h$14085708]*PD[-h$14085708][pertphi[LI[2]]])/
  (density[]*scale[]) - (metric\[Delta][p$14085705, p$14129213]*
   PD[-p$14085705][PD[-p$14129213][pertB[LI[2]]]])/scale[] - 
 (metric\[Delta][p$14085705, p$14129217]*pressure[]*
   PD[-p$14085705][PD[-p$14129217][pertB[LI[2]]]])/(density[]*scale[]) + 
 (metric\[Delta][p$14085705, p$14129245]*PD[-p$14085705][
    PD[-p$14129245][pertvelocity[LI[2]]]])/scale[]^2 + 
 (metric\[Delta][p$14085705, p$14129249]*pressure[]*
   PD[-p$14085705][PD[-p$14129249][pertvelocity[LI[2]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$14085705, p$14129269]*
   timevec[h$14085708]*PD[-p$14085705][PD[-p$14129269][
     PD[-h$14085708][pertE[LI[2]]]]])/scale[] + 
 (metric\[Delta][p$14085705, p$14129273]*pressure[]*timevec[h$14085708]*
   PD[-p$14085705][PD[-p$14129273][PD[-h$14085708][pertE[LI[2]]]]])/
  (density[]*scale[])
