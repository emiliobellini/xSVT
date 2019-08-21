(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[ddpi[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, (pprimescalar[] - hubbleC[]*primescalar[])*timevec[-a]*
    timevec[-b]], HoldPattern[ddpi[-(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[ddpi[-(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q]] :> 
  Module[{}, 0], HoldPattern[ddpi[-(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, -(hubbleC[]*metric\[Delta][-i, -j]*primescalar[])], 
 HoldPattern[pi1[]] :> Module[{}, -(pprimescalar[]/scale[]^2) - 
    (2*hubbleC[]*primescalar[])/scale[]^2], HoldPattern[pi10[]] :> 
  Module[{}, (pprimescalar[]^3*primescalar[]^2)/scale[]^8 - 
    (3*hubbleC[]*pprimescalar[]^2*primescalar[]^3)/scale[]^8 + 
    (3*hubbleC[]^2*pprimescalar[]*primescalar[]^4)/scale[]^8 - 
    (hubbleC[]^3*primescalar[]^5)/scale[]^8], 
 HoldPattern[pi2[]] :> Module[{}, pprimescalar[]^2/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[])/scale[]^4 + 
    (4*hubbleC[]^2*primescalar[]^2)/scale[]^4], 
 HoldPattern[pi3[]] :> Module[{}, -(pprimescalar[]^3/scale[]^6) + 
    (3*hubbleC[]*pprimescalar[]^2*primescalar[])/scale[]^6 - 
    (3*hubbleC[]^2*pprimescalar[]*primescalar[]^2)/scale[]^6 - 
    (2*hubbleC[]^3*primescalar[]^3)/scale[]^6], 
 HoldPattern[pi4[]] :> Module[{}, (-3*pprimescalar[]*primehubbleC[])/
     scale[]^4 - (6*hubbleC[]^3*primescalar[])/scale[]^4], 
 HoldPattern[pi5[]] :> Module[{}, (3*hubbleC[]*primehubbleC[]*
     primescalar[]^3)/scale[]^6], HoldPattern[pi6[]] :> 
  Module[{}, (-3*primehubbleC[]*primescalar[]^2)/scale[]^4], 
 HoldPattern[pi7[]] :> Module[{}, (pprimescalar[]*primescalar[]^2)/
     scale[]^4 - (hubbleC[]*primescalar[]^3)/scale[]^4], 
 HoldPattern[pi8[]] :> Module[{}, 
   (3*pprimescalar[]*primehubbleC[]*primescalar[]^2)/scale[]^6 - 
    (3*hubbleC[]*primehubbleC[]*primescalar[]^3)/scale[]^6], 
 HoldPattern[pi9[]] :> Module[{}, 
   -((pprimescalar[]^2*primescalar[]^2)/scale[]^6) + 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^3)/scale[]^6 - 
    (hubbleC[]^2*primescalar[]^4)/scale[]^6], 
 HoldPattern[piX[]] :> Module[{}, primescalar[]^2/(2*scale[]^2)], 
 HoldPattern[RicciCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, -3*primehubbleC[]*timevec[-a]*timevec[-b]], 
 HoldPattern[RicciCDP[-(a_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q]] :> 
  Module[{}, 0], HoldPattern[RicciCDP[-(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RicciCDP[-(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, 2*hubbleC[]^2*metric\[Delta][-i, -j] + 
    metric\[Delta][-i, -j]*primehubbleC[]], HoldPattern[RicciScalarCDP[]] :> 
  Module[{}, (6*hubbleC[]^2)/scale[]^2 + (6*primehubbleC[])/scale[]^2], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(c_Symbol)?TangentM1`Q, -(d_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(c_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(c_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, -(metric\[Delta][-i, -j]*primehubbleC[]*scale[]^2*timevec[-a]*
     timevec[-b])], HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, metric\[Delta][-i, -j]*
    primehubbleC[]*scale[]^2*timevec[-a]*timevec[-b]], 
 HoldPattern[RiemannCDP[-(a_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q, -(k_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(c_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, metric\[Delta][-i, -j]*primehubbleC[]*scale[]^2*timevec[-a]*
    timevec[-b]], HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, -(metric\[Delta][-i, -j]*primehubbleC[]*scale[]^2*timevec[-a]*
     timevec[-b])], HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, -(c_Symbol)?TangentM1`Q, 
    -(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(l_Symbol)?TangentM3`Q]] :> 
  Module[{}, -(hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
      scale[]^2) + hubbleC[]^2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     scale[]^2], HoldPattern[RiemannCDP[-(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[RiemannCDP[-(j_Symbol)?TangentM3`Q, -(k_Symbol)?TangentM3`Q, 
    -(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q]] :> Module[{}, 0]}
