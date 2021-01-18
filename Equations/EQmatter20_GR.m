(* Created with the Wolfram Language : www.wolfram.com *)
-3*density[]*hubbleC[]*pertdensity[LI[2]] - 3*hubbleC[]*pertpressure[LI[2]] - 
 pertdensity[LI[2]]*primedensity[] + 
 (2*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
   pertshearten[LI[1], -p$4853905, -p$4853907])/scale[]^2 - 
 (4*density[]*hubbleC[]*metric\[Delta][-p$4853904, -p$4853905]*
   pertvelocityvec[LI[1], p$4853904]*pertvelocityvec[LI[1], p$4853905])/
  scale[]^2 + (2*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
   pertshearten[LI[1], -p$4853905, -p$4853907]*pressure[])/scale[]^2 - 
 (4*hubbleC[]*metric\[Delta][-p$4853904, -p$4853905]*
   pertvelocityvec[LI[1], p$4853904]*pertvelocityvec[LI[1], p$4853905]*
   pressure[])/scale[]^2 - (2*metric\[Delta][-p$4853904, -p$4853905]*
   pertvelocityvec[LI[1], p$4853904]*pertvelocityvec[LI[1], p$4853905]*
   primedensity[])/scale[]^2 - (2*metric\[Delta][-p$4853904, -p$4853905]*
   pertvelocityvec[LI[1], p$4853904]*pertvelocityvec[LI[1], p$4853905]*
   primepressure[])/scale[]^2 + 
 (6*density[]*hubbleC[]*pertS[LI[1], -p$4853904]*
   pertvelocityvec[LI[1], p$4853904])/scale[] + 
 (6*hubbleC[]*pertS[LI[1], -p$4853904]*pertvelocityvec[LI[1], p$4853904]*
   pressure[])/scale[] + (2*pertS[LI[1], -p$4853904]*
   pertvelocityvec[LI[1], p$4853904]*primedensity[])/scale[] + 
 (2*pertS[LI[1], -p$4853904]*pertvelocityvec[LI[1], p$4853904]*
   primepressure[])/scale[] - density[]*timevec[h$4853908]*
  PD[-h$4853908][pertdensity[LI[2]]] + 
 density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
  timevec[h$4853908]*PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]] + 
 metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
  perth[LI[1], -p$4853904, -p$4853906]*pressure[]*timevec[h$4853908]*
  PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]] - 
 (density[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*pertshearten[LI[1], -p$4853904, -p$4853906]*timevec[h$4853908]*
   PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]])/scale[]^2 - 
 (metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pertshearten[LI[1], -p$4853904, -p$4853906]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]])/scale[]^2 + 
 6*density[]*pertdensity[LI[1]]*timevec[h$4853908]*
  PD[-h$4853908][pertphi[LI[1]]] + 12*density[]*pertphi[LI[1]]*
  timevec[h$4853908]*PD[-h$4853908][pertphi[LI[1]]] + 
 6*pertpressure[LI[1]]*timevec[h$4853908]*PD[-h$4853908][pertphi[LI[1]]] + 
 12*pertphi[LI[1]]*pressure[]*timevec[h$4853908]*
  PD[-h$4853908][pertphi[LI[1]]] + 3*density[]*timevec[h$4853908]*
  PD[-h$4853908][pertphi[LI[2]]] + 3*pressure[]*timevec[h$4853908]*
  PD[-h$4853908][pertphi[LI[2]]] + 
 (4*density[]*pertvelocityvec[LI[1], p$4853904]*timevec[h$4853908]*
   PD[-h$4853908][pertS[LI[1], -p$4853904]])/scale[] + 
 (4*pertvelocityvec[LI[1], p$4853904]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][pertS[LI[1], -p$4853904]])/scale[] - 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
  timevec[h$4853908]*PD[-h$4853908][pertS[LI[1], -p$4853905]] - 
 2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*pressure[]*
  timevec[h$4853908]*PD[-h$4853908][pertS[LI[1], -p$4853905]] + 
 (2*density[]*pertS[LI[1], -p$4853904]*timevec[h$4853908]*
   PD[-h$4853908][pertvelocityvec[LI[1], p$4853904]])/scale[] + 
 (2*pertS[LI[1], -p$4853904]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][pertvelocityvec[LI[1], p$4853904]])/scale[] - 
 (4*density[]*metric\[Delta][-p$4853904, -p$4853905]*
   pertvelocityvec[LI[1], p$4853904]*timevec[h$4853908]*
   PD[-h$4853908][pertvelocityvec[LI[1], p$4853905]])/scale[]^2 - 
 (4*metric\[Delta][-p$4853904, -p$4853905]*pertvelocityvec[LI[1], p$4853904]*
   pressure[]*timevec[h$4853908]*PD[-h$4853908][pertvelocityvec[LI[1], 
     p$4853905]])/scale[]^2 + 
 (6*density[]*hubbleC[]*pertvelocityvec[LI[1], p$4853904]*
   PD[-p$4853904][pertB[LI[1]]])/scale[] + 
 (6*hubbleC[]*pertvelocityvec[LI[1], p$4853904]*pressure[]*
   PD[-p$4853904][pertB[LI[1]]])/scale[] + 
 (2*pertvelocityvec[LI[1], p$4853904]*primedensity[]*
   PD[-p$4853904][pertB[LI[1]]])/scale[] + 
 (2*pertvelocityvec[LI[1], p$4853904]*primepressure[]*
   PD[-p$4853904][pertB[LI[1]]])/scale[] - 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
  PD[-h$4853908][pertS[LI[1], -p$4853905]]*PD[-p$4853904][pertB[LI[1]]] - 
 2*metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
  PD[-h$4853908][pertS[LI[1], -p$4853905]]*PD[-p$4853904][pertB[LI[1]]] + 
 (2*density[]*timevec[h$4853908]*PD[-h$4853908][pertvelocityvec[LI[1], 
     p$4853904]]*PD[-p$4853904][pertB[LI[1]]])/scale[] + 
 (2*pressure[]*timevec[h$4853908]*PD[-h$4853908][pertvelocityvec[LI[1], 
     p$4853904]]*PD[-p$4853904][pertB[LI[1]]])/scale[] - 
 (2*density[]*pertvelocityvec[LI[1], p$4853904]*
   PD[-p$4853904][pertdensity[LI[1]]])/scale[] + 
 (6*density[]*pertvelocityvec[LI[1], p$4853904]*
   PD[-p$4853904][pertphi[LI[1]]])/scale[] + 
 (6*pertvelocityvec[LI[1], p$4853904]*pressure[]*
   PD[-p$4853904][pertphi[LI[1]]])/scale[] - 
 (2*pertvelocityvec[LI[1], p$4853904]*PD[-p$4853904][pertpressure[LI[1]]])/
  scale[] - (4*density[]*pertvelocityvec[LI[1], p$4853904]*
   PD[-p$4853904][pertpsi[LI[1]]])/scale[] - 
 (4*pertvelocityvec[LI[1], p$4853904]*pressure[]*
   PD[-p$4853904][pertpsi[LI[1]]])/scale[] - 
 (8*density[]*hubbleC[]*pertvelocityvec[LI[1], p$4853904]*
   PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (8*hubbleC[]*pertvelocityvec[LI[1], p$4853904]*pressure[]*
   PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (4*pertvelocityvec[LI[1], p$4853904]*primedensity[]*
   PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (4*pertvelocityvec[LI[1], p$4853904]*primepressure[]*
   PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (4*density[]*timevec[h$4853908]*PD[-h$4853908][pertvelocityvec[LI[1], 
     p$4853904]]*PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (4*pressure[]*timevec[h$4853908]*PD[-h$4853908][pertvelocityvec[LI[1], 
     p$4853904]]*PD[-p$4853904][pertvelocity[LI[1]]])/scale[]^2 - 
 (4*density[]*pertvelocityvec[LI[1], p$4853904]*timevec[h$4853908]*
   PD[-p$4853904][PD[-h$4853908][pertvelocity[LI[1]]]])/scale[]^2 - 
 (4*pertvelocityvec[LI[1], p$4853904]*pressure[]*timevec[h$4853908]*
   PD[-p$4853904][PD[-h$4853908][pertvelocity[LI[1]]]])/scale[]^2 - 
 8*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
  pertS[LI[1], -p$4853904]*PD[-p$4853905][pertB[LI[1]]] - 
 8*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
  pressure[]*PD[-p$4853905][pertB[LI[1]]] - 
 2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
  primedensity[]*PD[-p$4853905][pertB[LI[1]]] - 
 2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
  primepressure[]*PD[-p$4853905][pertB[LI[1]]] + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*
  PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertdensity[LI[1]]] + 
 (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*pertshearten[LI[1], -p$4853906, 
    -p$4853907]*PD[-p$4853905][pertF[LI[1], -p$4853904]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*pertshearten[LI[1], -p$4853906, 
    -p$4853907]*pressure[]*PD[-p$4853905][pertF[LI[1], -p$4853904]])/
  scale[]^2 + 2*density[]*metric\[Delta][p$4853904, p$4853906]*
  metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
  PD[-h$4853908][perth[LI[1], -p$4853906, -p$4853907]]*
  PD[-p$4853905][pertF[LI[1], -p$4853904]] + 
 2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-h$4853908][perth[LI[1], -p$4853906, 
    -p$4853907]]*PD[-p$4853905][pertF[LI[1], -p$4853904]] - 
 6*density[]*metric\[Delta][p$4853904, p$4853905]*
  PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertphi[LI[1]]] - 
 6*metric\[Delta][p$4853904, p$4853905]*pressure[]*
  PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertphi[LI[1]]] + 
 2*metric\[Delta][p$4853904, p$4853905]*PD[-p$4853904][pertB[LI[1]]]*
  PD[-p$4853905][pertpressure[LI[1]]] + 
 4*density[]*metric\[Delta][p$4853904, p$4853905]*
  PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertpsi[LI[1]]] + 
 4*metric\[Delta][p$4853904, p$4853905]*pressure[]*
  PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertpsi[LI[1]]] + 
 (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*perth[LI[1], -p$4853906, -p$4853907]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*perth[LI[1], -p$4853906, -p$4853907]*
   pressure[]*PD[-p$4853905][pertshearvec[LI[1], -p$4853904]])/scale[]^2 - 
 (2*density[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
   PD[-h$4853908][perth[LI[1], -p$4853906, -p$4853907]]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-h$4853908][perth[LI[1], -p$4853906, 
     -p$4853907]]*PD[-p$4853905][pertshearvec[LI[1], -p$4853904]])/
  scale[]^2 + (6*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   pertS[LI[1], -p$4853904]*PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (6*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
   pressure[]*PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
   primedensity[]*PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*
   primepressure[]*PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (4*density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
   PD[-h$4853908][pertS[LI[1], -p$4853904]]*
   PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (4*metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][pertS[LI[1], -p$4853904]]*
   PD[-p$4853905][pertvelocity[LI[1]]])/scale[] + 
 (6*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] + (6*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] + (2*metric\[Delta][p$4853904, p$4853905]*primedensity[]*
   PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] + (2*metric\[Delta][p$4853904, p$4853905]*primepressure[]*
   PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] - (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertdensity[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] + (6*density[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertphi[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] + (6*metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853904][pertphi[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] - (2*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertpressure[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] - (4*density[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertpsi[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] - (4*metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853904][pertpsi[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[] - (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[]^2 - (4*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[]^2 - (2*metric\[Delta][p$4853904, p$4853905]*primedensity[]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[]^2 - (2*metric\[Delta][p$4853904, p$4853905]*primepressure[]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][pertvelocity[LI[1]]])/
  scale[]^2 + (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   pertS[LI[1], -p$4853904]*timevec[h$4853908]*
   PD[-p$4853905][PD[-h$4853908][pertvelocity[LI[1]]]])/scale[] + 
 (2*metric\[Delta][p$4853904, p$4853905]*pertS[LI[1], -p$4853904]*pressure[]*
   timevec[h$4853908]*PD[-p$4853905][PD[-h$4853908][pertvelocity[LI[1]]]])/
  scale[] + (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   timevec[h$4853908]*PD[-p$4853904][pertB[LI[1]]]*
   PD[-p$4853905][PD[-h$4853908][pertvelocity[LI[1]]]])/scale[] + 
 (2*metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
   PD[-p$4853904][pertB[LI[1]]]*PD[-p$4853905][
    PD[-h$4853908][pertvelocity[LI[1]]]])/scale[] - 
 (4*density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][
    PD[-h$4853908][pertvelocity[LI[1]]]])/scale[]^2 - 
 (4*metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
   PD[-p$4853904][pertvelocity[LI[1]]]*PD[-p$4853905][
    PD[-h$4853908][pertvelocity[LI[1]]]])/scale[]^2 + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*pertdensity[LI[1]]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[1]]]] + 
 2*metric\[Delta][p$4853904, p$4853905]*pertpressure[LI[1]]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[1]]]] + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*pertpsi[LI[1]]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[1]]]] + 
 2*metric\[Delta][p$4853904, p$4853905]*pertpsi[LI[1]]*pressure[]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[1]]]] + 
 density[]*metric\[Delta][p$4853904, p$4853905]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[2]]]] + 
 metric\[Delta][p$4853904, p$4853905]*pressure[]*
  PD[-p$4853905][PD[-p$4853904][pertB[LI[2]]]] - 
 4*density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
  PD[-h$4853908][pertphi[LI[1]]]*PD[-p$4853905][
   PD[-p$4853904][pertE[LI[1]]]] - 4*metric\[Delta][p$4853904, p$4853905]*
  pressure[]*timevec[h$4853908]*PD[-h$4853908][pertphi[LI[1]]]*
  PD[-p$4853905][PD[-p$4853904][pertE[LI[1]]]] + 
 (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pertphi[LI[1]]*
   PD[-p$4853905][PD[-p$4853904][pertshear[LI[1]]]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pertphi[LI[1]]*pressure[]*
   PD[-p$4853905][PD[-p$4853904][pertshear[LI[1]]]])/scale[]^2 - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
   PD[-h$4853908][pertphi[LI[1]]]*PD[-p$4853905][
    PD[-p$4853904][pertshear[LI[1]]]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][pertphi[LI[1]]]*PD[-p$4853905][
    PD[-p$4853904][pertshear[LI[1]]]])/scale[]^2 + 
 (density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853905][PD[-p$4853904][pertshear[LI[2]]]])/scale[]^2 + 
 (hubbleC[]*metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853905][PD[-p$4853904][pertshear[LI[2]]]])/scale[]^2 - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*pertdensity[LI[1]]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[1]]]])/scale[] - 
 (2*metric\[Delta][p$4853904, p$4853905]*pertpressure[LI[1]]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[1]]]])/scale[] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*pertpsi[LI[1]]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[1]]]])/scale[] - 
 (2*metric\[Delta][p$4853904, p$4853905]*pertpsi[LI[1]]*pressure[]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[1]]]])/scale[] - 
 (density[]*metric\[Delta][p$4853904, p$4853905]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[2]]]])/scale[] - 
 (metric\[Delta][p$4853904, p$4853905]*pressure[]*
   PD[-p$4853905][PD[-p$4853904][pertvelocity[LI[2]]]])/scale[] - 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*pertdensity[LI[1]]*
  timevec[h$4853908]*PD[-p$4853905][PD[-p$4853904][
    PD[-h$4853908][pertE[LI[1]]]]] - 
 4*density[]*metric\[Delta][p$4853904, p$4853905]*pertphi[LI[1]]*
  timevec[h$4853908]*PD[-p$4853905][PD[-p$4853904][
    PD[-h$4853908][pertE[LI[1]]]]] - 2*metric\[Delta][p$4853904, p$4853905]*
  pertpressure[LI[1]]*timevec[h$4853908]*
  PD[-p$4853905][PD[-p$4853904][PD[-h$4853908][pertE[LI[1]]]]] - 
 4*metric\[Delta][p$4853904, p$4853905]*pertphi[LI[1]]*pressure[]*
  timevec[h$4853908]*PD[-p$4853905][PD[-p$4853904][
    PD[-h$4853908][pertE[LI[1]]]]] - 
 density[]*metric\[Delta][p$4853904, p$4853905]*timevec[h$4853908]*
  PD[-p$4853905][PD[-p$4853904][PD[-h$4853908][pertE[LI[2]]]]] - 
 metric\[Delta][p$4853904, p$4853905]*pressure[]*timevec[h$4853908]*
  PD[-p$4853905][PD[-p$4853904][PD[-h$4853908][pertE[LI[2]]]]] + 
 2*density[]*metric\[Delta][p$4853904, p$4853906]*
  metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
  PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853906][PD[-h$4853908][pertF[LI[1], -p$4853907]]] + 
 2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853906][PD[-h$4853908][pertF[LI[1], -p$4853907]]] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]]*
   PD[-p$4853906][PD[-h$4853908][pertF[LI[1], -p$4853907]]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853905][pertshearvec[LI[1], 
     -p$4853904]]*PD[-p$4853906][PD[-h$4853908][pertF[LI[1], -p$4853907]]])/
  scale[]^2 + 2*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*timevec[h$4853908]*
  PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]]*
  PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]] + 
 2*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-h$4853908][perth[LI[1], -p$4853905, 
    -p$4853907]]*PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]] - 
 (density[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*timevec[h$4853908]*PD[-h$4853908][perth[LI[1], -p$4853905, 
     -p$4853907]]*PD[-p$4853906][PD[-p$4853904][pertshear[LI[1]]]])/
  (2*scale[]^2) - (metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pressure[]*timevec[h$4853908]*
   PD[-h$4853908][perth[LI[1], -p$4853905, -p$4853907]]*
   PD[-p$4853906][PD[-p$4853904][pertshear[LI[1]]]])/(2*scale[]^2) - 
 (2*density[]*metric\[Delta][p$4853905, p$4853906]*
   pertvelocityvec[LI[1], p$4853904]*PD[-p$4853906][
    PD[-p$4853905][PD[-p$4853904][pertE[LI[1]]]]])/scale[] - 
 (2*metric\[Delta][p$4853905, p$4853906]*pertvelocityvec[LI[1], p$4853904]*
   pressure[]*PD[-p$4853906][PD[-p$4853905][PD[-p$4853904][pertE[LI[1]]]]])/
  scale[] + (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853907]*
   metric\[Delta][p$4853905, p$4853906]*PD[-p$4853905][
    pertF[LI[1], -p$4853904]]*PD[-p$4853907][pertshearvec[LI[1], 
     -p$4853906]])/scale[]^2 + 
 (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*PD[-p$4853905][
    pertF[LI[1], -p$4853904]]*PD[-p$4853907][pertshearvec[LI[1], 
     -p$4853906]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853907]*
   metric\[Delta][p$4853905, p$4853906]*pressure[]*
   PD[-p$4853905][pertF[LI[1], -p$4853904]]*
   PD[-p$4853907][pertshearvec[LI[1], -p$4853906]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*pressure[]*
   PD[-p$4853905][pertF[LI[1], -p$4853904]]*
   PD[-p$4853907][pertshearvec[LI[1], -p$4853906]])/scale[]^2 + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
  timevec[h$4853908]*PD[-p$4853907][PD[-h$4853908][
    pertF[LI[1], -p$4853905]]] + 2*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
  pressure[]*timevec[h$4853908]*PD[-p$4853907][
   PD[-h$4853908][pertF[LI[1], -p$4853905]]] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pertshearten[LI[1], -p$4853904, 
    -p$4853906]*timevec[h$4853908]*PD[-p$4853907][
    PD[-h$4853908][pertF[LI[1], -p$4853905]]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pertshearten[LI[1], -p$4853904, -p$4853906]*pressure[]*timevec[h$4853908]*
   PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853905]]])/scale[]^2 + 
 4*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*timevec[h$4853908]*
  PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]]*
  PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853905]]] + 
 4*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]]*
  PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853905]]] + 
 2*density[]*metric\[Delta][p$4853904, p$4853906]*
  metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
  PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853906]]] + 
 2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853906]]] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]]*
   PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853906]]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853905][pertshearvec[LI[1], 
     -p$4853904]]*PD[-p$4853907][PD[-h$4853908][pertF[LI[1], -p$4853906]]])/
  scale[]^2 + (4*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pertshearten[LI[1], -p$4853904, 
    -p$4853906]*PD[-p$4853907][PD[-p$4853905][pertE[LI[1]]]])/scale[]^2 + 
 (4*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pertshearten[LI[1], -p$4853904, 
    -p$4853906]*pressure[]*PD[-p$4853907][PD[-p$4853905][pertE[LI[1]]]])/
  scale[]^2 + (density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
   PD[-p$4853907][PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 + 
 (hubbleC[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*pressure[]*
   PD[-p$4853907][PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 - 
 (density[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*timevec[h$4853908]*PD[-p$4853906][
    PD[-h$4853908][pertF[LI[1], -p$4853904]]]*
   PD[-p$4853907][PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 - 
 (metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853906][
    PD[-h$4853908][pertF[LI[1], -p$4853904]]]*
   PD[-p$4853907][PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 + 
 (2*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*PD[-p$4853906][
    PD[-p$4853904][pertE[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 + 
 (2*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pressure[]*
   PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]]*
   PD[-p$4853907][PD[-p$4853905][pertshear[LI[1]]]])/scale[]^2 + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
  timevec[h$4853908]*PD[-p$4853907][PD[-p$4853905][
    PD[-h$4853908][pertE[LI[1]]]]] + 2*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*perth[LI[1], -p$4853904, -p$4853906]*
  pressure[]*timevec[h$4853908]*PD[-p$4853907][
   PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pertshearten[LI[1], -p$4853904, 
    -p$4853906]*timevec[h$4853908]*PD[-p$4853907][
    PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 - 
 (2*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pertshearten[LI[1], -p$4853904, -p$4853906]*pressure[]*timevec[h$4853908]*
   PD[-p$4853907][PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 + 
 4*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*timevec[h$4853908]*
  PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]]*
  PD[-p$4853907][PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]] + 
 4*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-p$4853906][PD[-p$4853904][pertE[LI[1]]]]*
  PD[-p$4853907][PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]] - 
 (density[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*timevec[h$4853908]*PD[-p$4853906][
    PD[-p$4853904][pertshear[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 - 
 (metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853906][
    PD[-p$4853904][pertshear[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853905][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 + 
 (8*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*PD[-p$4853905][
    pertshearvec[LI[1], -p$4853904]]*PD[-p$4853907][
    PD[-p$4853906][pertE[LI[1]]]])/scale[]^2 + 
 (8*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*pressure[]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]]*
   PD[-p$4853907][PD[-p$4853906][pertE[LI[1]]]])/scale[]^2 + 
 (2*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*PD[-p$4853905][
    pertF[LI[1], -p$4853904]]*PD[-p$4853907][PD[-p$4853906][
     pertshear[LI[1]]]])/scale[]^2 + 
 (2*hubbleC[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*pressure[]*
   PD[-p$4853905][pertF[LI[1], -p$4853904]]*
   PD[-p$4853907][PD[-p$4853906][pertshear[LI[1]]]])/scale[]^2 - 
 (2*density[]*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*PD[-p$4853905][
    PD[-p$4853904][pertE[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853906][pertshear[LI[1]]]])/scale[]^2 - 
 (2*hubbleC[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*pressure[]*
   PD[-p$4853905][PD[-p$4853904][pertE[LI[1]]]]*
   PD[-p$4853907][PD[-p$4853906][pertshear[LI[1]]]])/scale[]^2 + 
 4*density[]*metric\[Delta][p$4853904, p$4853906]*
  metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
  PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853907][PD[-p$4853906][PD[-h$4853908][pertE[LI[1]]]]] + 
 4*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
  pressure[]*timevec[h$4853908]*PD[-p$4853905][pertF[LI[1], -p$4853904]]*
  PD[-p$4853907][PD[-p$4853906][PD[-h$4853908][pertE[LI[1]]]]] - 
 (4*density[]*metric\[Delta][p$4853904, p$4853906]*
   metric\[Delta][p$4853905, p$4853907]*timevec[h$4853908]*
   PD[-p$4853905][pertshearvec[LI[1], -p$4853904]]*
   PD[-p$4853907][PD[-p$4853906][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 - 
 (4*metric\[Delta][p$4853904, p$4853906]*metric\[Delta][p$4853905, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853905][pertshearvec[LI[1], 
     -p$4853904]]*PD[-p$4853907][PD[-p$4853906][
     PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 + 
 (density[]*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, 
    p$4853907]*timevec[h$4853908]*PD[-p$4853905][
    PD[-p$4853904][pertshear[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853906][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 + 
 (metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pressure[]*timevec[h$4853908]*PD[-p$4853905][
    PD[-p$4853904][pertshear[LI[1]]]]*PD[-p$4853907][
    PD[-p$4853906][PD[-h$4853908][pertE[LI[1]]]]])/scale[]^2 + 
 2*density[]*metric\[Delta][p$4853904, p$4853905]*
  metric\[Delta][p$4853906, p$4853907]*PD[-p$4853904][pertB[LI[1]]]*
  PD[-p$4853907][PD[-p$4853906][PD[-p$4853905][pertE[LI[1]]]]] + 
 2*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
  pressure[]*PD[-p$4853904][pertB[LI[1]]]*
  PD[-p$4853907][PD[-p$4853906][PD[-p$4853905][pertE[LI[1]]]]] - 
 (2*density[]*metric\[Delta][p$4853904, p$4853905]*
   metric\[Delta][p$4853906, p$4853907]*PD[-p$4853904][pertvelocity[LI[1]]]*
   PD[-p$4853907][PD[-p$4853906][PD[-p$4853905][pertE[LI[1]]]]])/scale[] - 
 (2*metric\[Delta][p$4853904, p$4853905]*metric\[Delta][p$4853906, p$4853907]*
   pressure[]*PD[-p$4853904][pertvelocity[LI[1]]]*
   PD[-p$4853907][PD[-p$4853906][PD[-p$4853905][pertE[LI[1]]]]])/scale[]
