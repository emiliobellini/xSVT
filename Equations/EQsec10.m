(* Created with the Wolfram Language : www.wolfram.com *)
-source10[LI[2]] + (metric\[Delta][p$14354647, p$14354648]*
   PD[-p$14354647][PD[-p$14354648][pertpressure[LI[2]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$14354647, p$14354648]*
   PD[-p$14354647][PD[-p$14354648][pertpsi[LI[2]]]])/scale[]^2 + 
 (metric\[Delta][p$14354647, p$14354648]*pressure[]*
   PD[-p$14354647][PD[-p$14354648][pertpsi[LI[2]]]])/(density[]*scale[]^2) + 
 (metric\[Delta][p$14354647, p$14354648]*primepressure[]*
   PD[-p$14354647][PD[-p$14354648][pertvelocity[LI[2]]]])/
  (density[]*scale[]^3) + (metric\[Delta][p$14354647, p$14354648]*
   timevec[h$14354649]*PD[-p$14354647][PD[-p$14354648][
     PD[-h$14354649][pertvelocity[LI[2]]]]])/scale[]^3 + 
 (metric\[Delta][p$14354647, p$14354648]*pressure[]*timevec[h$14354649]*
   PD[-p$14354647][PD[-p$14354648][PD[-h$14354649][pertvelocity[LI[2]]]]])/
  (density[]*scale[]^3) + (metric\[Delta][p$14354647, p$14354650]*
   metric\[Delta][p$14354648, p$14354651]*PD[-p$14354648][
    PD[-p$14354651][PD[-p$14354647][PD[-p$14354650][pertshear[LI[2]]]]]])/
  scale[]^4 + (metric\[Delta][p$14354647, p$14354650]*
   metric\[Delta][p$14354648, p$14354651]*pressure[]*
   PD[-p$14354648][PD[-p$14354651][PD[-p$14354647][
      PD[-p$14354650][pertshear[LI[2]]]]]])/(density[]*scale[]^4)
