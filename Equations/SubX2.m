(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertX[LI[2]]] :> Module[{}, 
   (pertscalar[LI[1]]^2*pprimescalar[]^2 - 2*hubbleC[]*pertscalar[LI[1]]^2*
      pprimescalar[]*primescalar[] + hubbleC[]^2*pertscalar[LI[1]]^2*
      primescalar[]^2 + 2*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$17759]*PD[-h$17759][
         pertscalar[LI[1]]]] - 2*hubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$17761]*PD[-h$17761][
         pertscalar[LI[1]]]] + primescalar[]^2*
      Scalar[timevec[h$17763]*timevec[h$17764]*PD[-h$17763][
         pertscalar[LI[1]]]*PD[-h$17764][pertscalar[LI[1]]]] - 
     primescalar[]^2*Scalar[metric\[Delta][p$17766, p$17767]*
        PD[-p$17766][pertscalar[LI[1]]]*PD[-p$17767][pertscalar[LI[1]]]] + 
     4*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]]*
      scale[] - 4*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]]*scale[] - 
     pprimescalar[]*primescalar[]*Scalar[pertscalar[LI[2]]]*scale[] + 
     hubbleC[]*primescalar[]^2*Scalar[pertscalar[LI[2]]]*scale[] + 
     4*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$17773]*
        PD[-h$17773][pertscalar[LI[1]]]]*scale[] - 
     primescalar[]^2*Scalar[timevec[h$17775]*PD[-h$17775][pertscalar[LI[2]]]]*
      scale[] - 2*primescalar[]^2*Scalar[metric\[Delta][p$17777, p$17778]*
        pertS[LI[1], -p$17777]*PD[-p$17778][pertscalar[LI[1]]]]*scale[] + 
     2*primescalar[]^2*Scalar[metric\[Delta][p$17780, p$17781]*
        PD[-p$17780][pertB[LI[1]]]*PD[-p$17781][pertscalar[LI[1]]]]*scale[] + 
     4*pertpsi[LI[1]]^2*primescalar[]^2*scale[]^2 - 
     primescalar[]^2*Scalar[pertpsi[LI[2]]]*scale[]^2 - 
     primescalar[]^2*Scalar[metric\[Delta][p$17784, p$17785]*
        pertS[LI[1], -p$17784]*pertS[LI[1], -p$17785]]*scale[]^2 + 
     2*primescalar[]^2*Scalar[metric\[Delta][p$17787, p$17788]*
        pertS[LI[1], -p$17787]*PD[-p$17788][pertB[LI[1]]]]*scale[]^2 - 
     primescalar[]^2*Scalar[metric\[Delta][p$17790, p$17791]*
        PD[-p$17790][pertB[LI[1]]]*PD[-p$17791][pertB[LI[1]]]]*scale[]^2)/
    scale[]^4]}
