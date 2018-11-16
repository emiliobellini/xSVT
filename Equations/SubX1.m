(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertX[LI[1]]] :> Module[{}, 
   (-(pprimescalar[]*primescalar[]*Scalar[pertscalar[LI[1]]]) + 
     hubbleC[]*primescalar[]^2*Scalar[pertscalar[LI[1]]] - 
     primescalar[]^2*Scalar[timevec[h$17753]*PD[-h$17753][
         pertscalar[LI[1]]]] - primescalar[]^2*Scalar[pertpsi[LI[1]]]*
      scale[])/scale[]^3]}
