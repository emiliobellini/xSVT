(* Created with the Wolfram Language : www.wolfram.com *)
metric\[Delta][p$3245031, p$3245032]*PD[-p$3245031][
   PD[-p$3245032][pertpressure[LI[1]]]] + 
 density[]*metric\[Delta][p$3245031, p$3245032]*
  PD[-p$3245031][PD[-p$3245032][pertpsi[LI[1]]]] + 
 metric\[Delta][p$3245031, p$3245032]*pressure[]*
  PD[-p$3245031][PD[-p$3245032][pertpsi[LI[1]]]] + 
 (metric\[Delta][p$3245031, p$3245032]*primepressure[]*
   PD[-p$3245031][PD[-p$3245032][pertvelocity[LI[1]]]])/scale[] + 
 (density[]*metric\[Delta][p$3245031, p$3245032]*timevec[h$3245037]*
   PD[-p$3245031][PD[-p$3245032][PD[-h$3245037][pertvelocity[LI[1]]]]])/
  scale[] + (metric\[Delta][p$3245031, p$3245032]*pressure[]*
   timevec[h$3245037]*PD[-p$3245031][PD[-p$3245032][
     PD[-h$3245037][pertvelocity[LI[1]]]]])/scale[] + 
 (density[]*metric\[Delta][p$3245031, p$3245033]*metric\[Delta][p$3245032, 
    p$3245034]*PD[-p$3245032][PD[-p$3245034][PD[-p$3245031][
      PD[-p$3245033][pertshear[LI[1]]]]]])/scale[]^2 + 
 (metric\[Delta][p$3245031, p$3245033]*metric\[Delta][p$3245032, p$3245034]*
   pressure[]*PD[-p$3245032][PD[-p$3245034][PD[-p$3245031][
      PD[-p$3245033][pertshear[LI[1]]]]]])/scale[]^2
