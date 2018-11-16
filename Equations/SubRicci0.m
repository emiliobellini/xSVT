(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[RicciCDP[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, -3*primehubbleC[]*timevec[-a]*timevec[-b]], 
 HoldPattern[RicciCDP[-(a_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q]] :> 
  Module[{}, 0], HoldPattern[RicciCDP[-(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[RicciCDP[-(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, 2*hubbleC[]^2*metric\[Delta][-i, -j] + 
    metric\[Delta][-i, -j]*primehubbleC[]], HoldPattern[RicciScalarCDP[]] :> 
  Module[{}, (6*hubbleC[]^2)/scale[]^2 + (6*primehubbleC[])/scale[]^2]}
