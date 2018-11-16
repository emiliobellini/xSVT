(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertRicciCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, (3*hubbleC[]*Scalar[timevec[h$24414]*PD[-h$24414][
         pertphi[LI[1]]]] + 3*hubbleC[]*Scalar[timevec[h$24416]*
        PD[-h$24416][pertpsi[LI[1]]]] + 
     Scalar[metric\[Delta][p$24418, p$24419]*timevec[h$24420]*
       PD[-h$24420][PD[-p$24418][PD[-p$24419][pertB[LI[1]]]]]] - 
     hubbleC[]*Scalar[metric\[Delta][p$24422, p$24423]*timevec[h$24424]*
        PD[-h$24424][PD[-p$24422][PD[-p$24423][pertE[LI[1]]]]]] + 
     3*Scalar[timevec[h$24426]*timevec[h$24427]*PD[-h$24427][
         PD[-h$24426][pertphi[LI[1]]]]] - 
     Scalar[metric\[Delta][p$24429, p$24430]*timevec[h$24431]*
       timevec[h$24432]*PD[-h$24432][PD[-h$24431][PD[-p$24429][
          PD[-p$24430][pertE[LI[1]]]]]]] + 
     hubbleC[]*Scalar[metric\[Delta][p$24434, p$24435]*
        PD[-p$24434][PD[-p$24435][pertB[LI[1]]]]] + 
     Scalar[metric\[Delta][p$24437, p$24438]*PD[-p$24437][
        PD[-p$24438][pertpsi[LI[1]]]]])*timevec[-a]*timevec[-b]], 
 HoldPattern[pertRicciCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{h$26297, p$26298, p$26299}, 
   timevec[-a]*(-2*hubbleC[]^2*pertS[LI[1], -i] - 
     pertS[LI[1], -i]*primehubbleC[] + 2*timevec[h$26297]*
      PD[-h$26297][PD[-i][pertphi[LI[1]]]] + 
     (metric\[Delta][p$26298, p$26299]*timevec[h$26297]*
       PD[-h$26297][PD[-p$26298][PD[-p$26299][pertF[LI[1], -i]]]])/2 + 
     2*hubbleC[]^2*PD[-i][pertB[LI[1]]] + primehubbleC[]*
      PD[-i][pertB[LI[1]]] + 2*hubbleC[]*PD[-i][pertpsi[LI[1]]] + 
     (metric\[Delta][p$26298, p$26299]*PD[-p$26298][
        PD[-p$26299][pertS[LI[1], -i]]])/2)], 
 HoldPattern[pertRicciCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{h$26303, p$26304, p$26305}, 
   timevec[-a]*(-2*hubbleC[]^2*pertS[LI[1], -i] - 
     pertS[LI[1], -i]*primehubbleC[] + 2*timevec[h$26303]*
      PD[-h$26303][PD[-i][pertphi[LI[1]]]] + 
     (metric\[Delta][p$26304, p$26305]*timevec[h$26303]*
       PD[-h$26303][PD[-p$26304][PD[-p$26305][pertF[LI[1], -i]]]])/2 + 
     2*hubbleC[]^2*PD[-i][pertB[LI[1]]] + primehubbleC[]*
      PD[-i][pertB[LI[1]]] + 2*hubbleC[]*PD[-i][pertpsi[LI[1]]] + 
     (metric\[Delta][p$26304, p$26305]*PD[-p$26304][
        PD[-p$26305][pertS[LI[1], -i]]])/2)], 
 HoldPattern[pertRicciCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{h$29039, p$29040, p$29041, h$29042}, 
   2*hubbleC[]^2*perth[LI[1], -i, -j] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*
     pertphi[LI[1]] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]] + 
    perth[LI[1], -i, -j]*primehubbleC[] - 2*metric\[Delta][-i, -j]*
     pertphi[LI[1]]*primehubbleC[] - 2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
     primehubbleC[] + hubbleC[]*timevec[h$29039]*
     PD[-h$29039][perth[LI[1], -i, -j]] - 5*hubbleC[]*metric\[Delta][-i, -j]*
     timevec[h$29039]*PD[-h$29039][pertphi[LI[1]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*timevec[h$29039]*
     PD[-h$29039][pertpsi[LI[1]]] + hubbleC[]*timevec[h$29039]*
     PD[-h$29039][PD[-i][pertF[LI[1], -j]]] + 
    (timevec[h$29039]*PD[-h$29039][PD[-i][pertS[LI[1], -j]]])/2 + 
    hubbleC[]*timevec[h$29039]*PD[-h$29039][PD[-j][pertF[LI[1], -i]]] + 
    (timevec[h$29039]*PD[-h$29039][PD[-j][pertS[LI[1], -i]]])/2 - 
    timevec[h$29039]*PD[-h$29039][PD[-j][PD[-i][pertB[LI[1]]]]] + 
    2*hubbleC[]*timevec[h$29039]*PD[-h$29039][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$29040, p$29041]*
     timevec[h$29039]*PD[-h$29039][PD[-p$29040][PD[-p$29041][
        pertE[LI[1]]]]] + (timevec[h$29039]*timevec[h$29042]*
      PD[-h$29042][PD[-h$29039][perth[LI[1], -i, -j]]])/2 - 
    metric\[Delta][-i, -j]*timevec[h$29039]*timevec[h$29042]*
     PD[-h$29042][PD[-h$29039][pertphi[LI[1]]]] + 
    (timevec[h$29039]*timevec[h$29042]*PD[-h$29042][
       PD[-h$29039][PD[-i][pertF[LI[1], -j]]]])/2 + 
    (timevec[h$29039]*timevec[h$29042]*PD[-h$29042][
       PD[-h$29039][PD[-j][pertF[LI[1], -i]]]])/2 + 
    timevec[h$29039]*timevec[h$29042]*PD[-h$29042][
      PD[-h$29039][PD[-j][PD[-i][pertE[LI[1]]]]]] + 
    2*hubbleC[]^2*PD[-i][pertF[LI[1], -j]] + primehubbleC[]*
     PD[-i][pertF[LI[1], -j]] + hubbleC[]*PD[-i][pertS[LI[1], -j]] + 
    2*hubbleC[]^2*PD[-j][pertF[LI[1], -i]] + primehubbleC[]*
     PD[-j][pertF[LI[1], -i]] + hubbleC[]*PD[-j][pertS[LI[1], -i]] - 
    2*hubbleC[]*PD[-j][PD[-i][pertB[LI[1]]]] + 
    4*hubbleC[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
    2*primehubbleC[]*PD[-j][PD[-i][pertE[LI[1]]]] + 
    PD[-j][PD[-i][pertphi[LI[1]]]] - PD[-j][PD[-i][pertpsi[LI[1]]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$29040, p$29041]*
     PD[-p$29040][PD[-p$29041][pertB[LI[1]]]] - 
    (metric\[Delta][p$29040, p$29041]*PD[-p$29040][
       PD[-p$29041][perth[LI[1], -i, -j]]])/2 + metric\[Delta][-i, -j]*
     metric\[Delta][p$29040, p$29041]*PD[-p$29040][
      PD[-p$29041][pertphi[LI[1]]]]], 
 HoldPattern[pertRicciScalarCDP[LI[1]]] :> 
  Module[{}, (-12*hubbleC[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[pertpsi[LI[1]]])/scale[]^2 - 
    (18*hubbleC[]*Scalar[timevec[h$29759]*PD[-h$29759][pertphi[LI[1]]]])/
     scale[]^2 - (6*hubbleC[]*Scalar[timevec[h$29761]*
        PD[-h$29761][pertpsi[LI[1]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$29763, p$29764]*timevec[h$29765]*
       PD[-h$29765][PD[-p$29763][PD[-p$29764][pertB[LI[1]]]]]]/scale[]^2 + 
    (5*hubbleC[]*Scalar[metric\[Delta][p$29767, p$29768]*timevec[h$29769]*
        PD[-h$29769][PD[-p$29767][PD[-p$29768][pertE[LI[1]]]]]])/scale[]^2 - 
    (6*Scalar[timevec[h$29771]*timevec[h$29772]*PD[-h$29772][
         PD[-h$29771][pertphi[LI[1]]]]])/scale[]^2 + 
    Scalar[metric\[Delta][p$29774, p$29775]*timevec[h$29776]*timevec[h$29777]*
       PD[-h$29777][PD[-h$29776][PD[-p$29774][PD[-p$29775][pertE[LI[1]]]]]]]/
     scale[]^2 - (5*hubbleC[]*Scalar[metric\[Delta][p$29779, p$29780]*
        PD[-p$29779][PD[-p$29780][pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$29782, p$29783]*PD[-p$29782][
         PD[-p$29783][pertphi[LI[1]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$29785, p$29786]*PD[-p$29785][
        PD[-p$29786][pertpsi[LI[1]]]]]/scale[]^2 - 
    (hubbleC[]*Scalar[metric\[Delta][p$29788, p$29789]*
        PD[-p$29788][PD[-p$29789][pertB[LI[1]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$29791, p$29792]*PD[-p$29791][
        PD[-p$29792][pertpsi[LI[1]]]]]/scale[]^2 - 
    Scalar[metric\[Delta][p$29794, p$29795]*timevec[h$29796]*
       PD[-p$29794][PD[-p$29795][PD[-h$29796][pertB[LI[1]]]]]]/scale[]^2 + 
    (hubbleC[]*Scalar[metric\[Delta][p$29798, p$29799]*timevec[h$29800]*
        PD[-p$29798][PD[-p$29799][PD[-h$29800][pertE[LI[1]]]]]])/scale[]^2 + 
    Scalar[metric\[Delta][p$29802, p$29803]*timevec[h$29804]*timevec[h$29805]*
       PD[-p$29802][PD[-p$29803][PD[-h$29805][PD[-h$29804][pertE[LI[1]]]]]]]/
     scale[]^2]}
