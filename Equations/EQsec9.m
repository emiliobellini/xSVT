(* Created with the Wolfram Language : www.wolfram.com *)
(3*hubbleC[]*pertpressure[LI[2]])/(density[]*scale[]) - 
 (3*hubbleC[]*pertdensity[LI[2]]*pressure[])/(density[]*scale[]) - 
 source9[LI[2]] + (timevec[h$70963545]*PD[-h$70963545][pertdensity[LI[2]]])/
  scale[] - (3*timevec[h$70963545]*PD[-h$70963545][pertphi[LI[2]]])/scale[] - 
 (3*pressure[]*timevec[h$70963545]*PD[-h$70963545][pertphi[LI[2]]])/
  (density[]*scale[]) - (metric\[Delta][p$70963542, p$70994319]*
   PD[-p$70963542][PD[-p$70994319][pertB[LI[2]]]])/scale[] - 
 (metric\[Delta][p$70963542, p$70994323]*pressure[]*
   PD[-p$70963542][PD[-p$70994323][pertB[LI[2]]]])/(density[]*scale[]) + 
 (metric\[Delta][p$70963542, p$70994351]*PD[-p$70963542][
    PD[-p$70994351][pertvelocity[LI[2]]]])/scale[]^2 + 
 (metric\[Delta][p$70963542, p$70994355]*pressure[]*
   PD[-p$70963542][PD[-p$70994355][pertvelocity[LI[2]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$70963542, p$70994375]*
   timevec[h$70963545]*PD[-p$70963542][PD[-p$70994375][
     PD[-h$70963545][pertE[LI[2]]]]])/scale[] + 
 (metric\[Delta][p$70963542, p$70994379]*pressure[]*timevec[h$70963545]*
   PD[-p$70963542][PD[-p$70994379][PD[-h$70963545][pertE[LI[2]]]]])/
  (density[]*scale[])
