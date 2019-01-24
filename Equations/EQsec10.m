(* Created with the Wolfram Language : www.wolfram.com *)
-source10[LI[2]] + (metric\[Delta][p$71163561, p$71163562]*
   PD[-p$71163561][PD[-p$71163562][pertpressure[LI[2]]]])/
  (density[]*scale[]^2) + (metric\[Delta][p$71163561, p$71163562]*
   PD[-p$71163561][PD[-p$71163562][pertpsi[LI[2]]]])/scale[]^2 + 
 (metric\[Delta][p$71163561, p$71163562]*pressure[]*
   PD[-p$71163561][PD[-p$71163562][pertpsi[LI[2]]]])/(density[]*scale[]^2) + 
 (metric\[Delta][p$71163561, p$71163562]*primepressure[]*
   PD[-p$71163561][PD[-p$71163562][pertvelocity[LI[2]]]])/
  (density[]*scale[]^3) + (metric\[Delta][p$71163561, p$71163562]*
   timevec[h$71163563]*PD[-p$71163561][PD[-p$71163562][
     PD[-h$71163563][pertvelocity[LI[2]]]]])/scale[]^3 + 
 (metric\[Delta][p$71163561, p$71163562]*pressure[]*timevec[h$71163563]*
   PD[-p$71163561][PD[-p$71163562][PD[-h$71163563][pertvelocity[LI[2]]]]])/
  (density[]*scale[]^3) + (metric\[Delta][p$71163561, p$71163564]*
   metric\[Delta][p$71163562, p$71163565]*PD[-p$71163562][
    PD[-p$71163565][PD[-p$71163561][PD[-p$71163564][pertshear[LI[2]]]]]])/
  scale[]^4 + (metric\[Delta][p$71163561, p$71163564]*
   metric\[Delta][p$71163562, p$71163565]*pressure[]*
   PD[-p$71163562][PD[-p$71163565][PD[-p$71163561][
      PD[-p$71163564][pertshear[LI[2]]]]]])/(density[]*scale[]^4)
