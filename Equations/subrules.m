(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[ddpi[-(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, (pprimescalar[] - hubbleC[]*primescalar[])*timevec[-a]*
    timevec[-b]], HoldPattern[ddpi[-(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[ddpi[-(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q]] :> 
  Module[{}, 0], HoldPattern[ddpi[-(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> 
  Module[{}, -(hubbleC[]*metric\[Delta][-i, -j]*primescalar[])], 
 HoldPattern[pertddpi[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{h$116591, h$116592}, 
   timevec[-a]*timevec[-b]*(-(primescalar[]*timevec[h$116591]*
       PD[-h$116591][pertpsi[LI[1]]]) - hubbleC[]*timevec[h$116591]*
      PD[-h$116591][pertscalar[LI[1]]] + timevec[h$116591]*timevec[h$116592]*
      PD[-h$116592][PD[-h$116591][pertscalar[LI[1]]]])], 
 HoldPattern[pertddpi[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{h$116965}, 
   timevec[-a]*(hubbleC[]*pertS[LI[1], -i]*primescalar[] + 
     timevec[h$116965]*PD[-h$116965][PD[-i][pertscalar[LI[1]]]] - 
     hubbleC[]*primescalar[]*PD[-i][pertB[LI[1]]] - 
     primescalar[]*PD[-i][pertpsi[LI[1]]] - 
     hubbleC[]*PD[-i][pertscalar[LI[1]]])], 
 HoldPattern[pertddpi[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{h$116969}, 
   timevec[-a]*(hubbleC[]*pertS[LI[1], -i]*primescalar[] + 
     timevec[h$116969]*PD[-h$116969][PD[-i][pertscalar[LI[1]]]] - 
     hubbleC[]*primescalar[]*PD[-i][pertB[LI[1]]] - 
     primescalar[]*PD[-i][pertpsi[LI[1]]] - 
     hubbleC[]*PD[-i][pertscalar[LI[1]]])], 
 HoldPattern[pertddpi[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{h$117834}, 
   -(hubbleC[]*perth[LI[1], -i, -j]*primescalar[]) + 
    2*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*primescalar[] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*primescalar[] - 
    (primescalar[]*timevec[h$117834]*PD[-h$117834][perth[LI[1], -i, -j]])/2 + 
    metric\[Delta][-i, -j]*primescalar[]*timevec[h$117834]*
     PD[-h$117834][pertphi[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
     timevec[h$117834]*PD[-h$117834][pertscalar[LI[1]]] - 
    (primescalar[]*timevec[h$117834]*PD[-h$117834][PD[-i][pertF[LI[1], -j]]])/
     2 - (primescalar[]*timevec[h$117834]*PD[-h$117834][
       PD[-j][pertF[LI[1], -i]]])/2 - primescalar[]*timevec[h$117834]*
     PD[-h$117834][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    hubbleC[]*primescalar[]*PD[-i][pertF[LI[1], -j]] - 
    (primescalar[]*PD[-i][pertS[LI[1], -j]])/2 - hubbleC[]*primescalar[]*
     PD[-j][pertF[LI[1], -i]] - (primescalar[]*PD[-j][pertS[LI[1], -i]])/2 + 
    primescalar[]*PD[-j][PD[-i][pertB[LI[1]]]] - 2*hubbleC[]*primescalar[]*
     PD[-j][PD[-i][pertE[LI[1]]]] + PD[-j][PD[-i][pertscalar[LI[1]]]]], 
 HoldPattern[pertddpi[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{p$243241, p$243242, h$243243, 
    h$243244}, timevec[-a]*timevec[-b]*
    (-2*hubbleC[]*metric\[Delta][p$243241, p$243242]*pertS[LI[1], -p$243241]*
      pertS[LI[1], -p$243242]*primescalar[] + 4*pertpsi[LI[1]]*primescalar[]*
      timevec[h$243243]*PD[-h$243243][pertpsi[LI[1]]] - 
     primescalar[]*timevec[h$243243]*PD[-h$243243][pertpsi[LI[2]]] - 
     2*metric\[Delta][p$243241, p$243242]*pertS[LI[1], -p$243241]*
      primescalar[]*timevec[h$243243]*PD[-h$243243][
       pertS[LI[1], -p$243242]] - hubbleC[]*timevec[h$243243]*
      PD[-h$243243][pertscalar[LI[2]]] - 2*timevec[h$243243]*
      timevec[h$243244]*PD[-h$243243][pertpsi[LI[1]]]*
      PD[-h$243244][pertscalar[LI[1]]] + timevec[h$243243]*timevec[h$243244]*
      PD[-h$243244][PD[-h$243243][pertscalar[LI[2]]]] + 
     2*metric\[Delta][p$243241, p$243242]*primescalar[]*timevec[h$243243]*
      PD[-h$243243][pertS[LI[1], -p$243242]]*PD[-p$243241][pertB[LI[1]]] + 
     2*metric\[Delta][p$243241, p$243242]*timevec[h$243243]*
      PD[-h$243243][pertS[LI[1], -p$243242]]*PD[-p$243241][
       pertscalar[LI[1]]] + 4*hubbleC[]*metric\[Delta][p$243241, p$243242]*
      pertS[LI[1], -p$243241]*primescalar[]*PD[-p$243242][pertB[LI[1]]] - 
     2*hubbleC[]*metric\[Delta][p$243241, p$243242]*primescalar[]*
      PD[-p$243241][pertB[LI[1]]]*PD[-p$243242][pertB[LI[1]]] + 
     2*metric\[Delta][p$243241, p$243242]*pertS[LI[1], -p$243241]*
      primescalar[]*PD[-p$243242][pertpsi[LI[1]]] - 
     2*metric\[Delta][p$243241, p$243242]*primescalar[]*
      PD[-p$243241][pertB[LI[1]]]*PD[-p$243242][pertpsi[LI[1]]] + 
     2*hubbleC[]*metric\[Delta][p$243241, p$243242]*pertS[LI[1], -p$243241]*
      PD[-p$243242][pertscalar[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$243241, 
       p$243242]*PD[-p$243241][pertB[LI[1]]]*PD[-p$243242][
       pertscalar[LI[1]]] - 2*metric\[Delta][p$243241, p$243242]*
      PD[-p$243241][pertpsi[LI[1]]]*PD[-p$243242][pertscalar[LI[1]]] + 
     2*metric\[Delta][p$243241, p$243242]*pertS[LI[1], -p$243241]*
      primescalar[]*timevec[h$243243]*PD[-p$243242][
       PD[-h$243243][pertB[LI[1]]]] - 2*metric\[Delta][p$243241, p$243242]*
      primescalar[]*timevec[h$243243]*PD[-p$243241][pertB[LI[1]]]*
      PD[-p$243242][PD[-h$243243][pertB[LI[1]]]] - 
     2*metric\[Delta][p$243241, p$243242]*timevec[h$243243]*
      PD[-p$243241][pertscalar[LI[1]]]*PD[-p$243242][
       PD[-h$243243][pertB[LI[1]]]])], 
 HoldPattern[pertddpi[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{p$245438, p$245439, h$245440}, 
   timevec[-a]*(-4*hubbleC[]*pertpsi[LI[1]]*pertS[LI[1], -i]*primescalar[] + 
     hubbleC[]*pertS[LI[2], -i]*primescalar[] + 
     metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*primescalar[]*
      timevec[h$245440]*PD[-h$245440][perth[LI[1], -i, -p$245439]] - 
     2*pertS[LI[1], -i]*primescalar[]*timevec[h$245440]*
      PD[-h$245440][pertphi[LI[1]]] + 2*hubbleC[]*pertS[LI[1], -i]*
      timevec[h$245440]*PD[-h$245440][pertscalar[LI[1]]] + 
     metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*primescalar[]*
      timevec[h$245440]*PD[-h$245440][PD[-i][pertF[LI[1], -p$245439]]] + 
     timevec[h$245440]*PD[-h$245440][PD[-i][pertscalar[LI[2]]]] + 
     4*hubbleC[]*pertpsi[LI[1]]*primescalar[]*PD[-i][pertB[LI[1]]] + 
     2*primescalar[]*timevec[h$245440]*PD[-h$245440][pertphi[LI[1]]]*
      PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[h$245440]*
      PD[-h$245440][pertscalar[LI[1]]]*PD[-i][pertB[LI[1]]] - 
     hubbleC[]*primescalar[]*PD[-i][pertB[LI[2]]] + 
     4*pertpsi[LI[1]]*primescalar[]*PD[-i][pertpsi[LI[1]]] - 
     2*timevec[h$245440]*PD[-h$245440][pertscalar[LI[1]]]*
      PD[-i][pertpsi[LI[1]]] - primescalar[]*PD[-i][pertpsi[LI[2]]] - 
     metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*primescalar[]*
      PD[-i][pertS[LI[1], -p$245439]] + 2*timevec[h$245440]*
      PD[-h$245440][pertphi[LI[1]]]*PD[-i][pertscalar[LI[1]]] - 
     hubbleC[]*PD[-i][pertscalar[LI[2]]] - metric\[Delta][p$245438, p$245439]*
      primescalar[]*timevec[h$245440]*PD[-h$245440][perth[LI[1], -i, 
        -p$245439]]*PD[-p$245438][pertB[LI[1]]] - 
     metric\[Delta][p$245438, p$245439]*primescalar[]*timevec[h$245440]*
      PD[-h$245440][PD[-i][pertF[LI[1], -p$245439]]]*
      PD[-p$245438][pertB[LI[1]]] + metric\[Delta][p$245438, p$245439]*
      primescalar[]*PD[-i][pertS[LI[1], -p$245439]]*
      PD[-p$245438][pertB[LI[1]]] - metric\[Delta][p$245438, p$245439]*
      timevec[h$245440]*PD[-h$245440][perth[LI[1], -i, -p$245439]]*
      PD[-p$245438][pertscalar[LI[1]]] - metric\[Delta][p$245438, p$245439]*
      timevec[h$245440]*PD[-h$245440][PD[-i][pertF[LI[1], -p$245439]]]*
      PD[-p$245438][pertscalar[LI[1]]] + metric\[Delta][p$245438, p$245439]*
      PD[-i][pertS[LI[1], -p$245439]]*PD[-p$245438][pertscalar[LI[1]]] + 
     metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*primescalar[]*
      PD[-p$245439][pertS[LI[1], -i]] - metric\[Delta][p$245438, p$245439]*
      primescalar[]*PD[-p$245438][pertB[LI[1]]]*PD[-p$245439][
       pertS[LI[1], -i]] - metric\[Delta][p$245438, p$245439]*
      PD[-p$245438][pertS[LI[1], -i]]*PD[-p$245439][pertscalar[LI[1]]] + 
     metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*primescalar[]*
      timevec[h$245440]*PD[-p$245439][PD[-h$245440][pertF[LI[1], -i]]] - 
     metric\[Delta][p$245438, p$245439]*primescalar[]*timevec[h$245440]*
      PD[-p$245438][pertB[LI[1]]]*PD[-p$245439][PD[-h$245440][
        pertF[LI[1], -i]]] - metric\[Delta][p$245438, p$245439]*
      timevec[h$245440]*PD[-p$245438][pertscalar[LI[1]]]*
      PD[-p$245439][PD[-h$245440][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$245438, p$245439]*pertS[LI[1], -p$245438]*
      primescalar[]*timevec[h$245440]*PD[-p$245439][
       PD[-i][PD[-h$245440][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$245438, p$245439]*primescalar[]*timevec[h$245440]*
      PD[-p$245438][pertB[LI[1]]]*PD[-p$245439][
       PD[-i][PD[-h$245440][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$245438, p$245439]*timevec[h$245440]*
      PD[-p$245438][pertscalar[LI[1]]]*PD[-p$245439][
       PD[-i][PD[-h$245440][pertE[LI[1]]]]])], 
 HoldPattern[pertddpi[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{p$245444, p$245445, h$245446}, 
   timevec[-a]*(-4*hubbleC[]*pertpsi[LI[1]]*pertS[LI[1], -i]*primescalar[] + 
     hubbleC[]*pertS[LI[2], -i]*primescalar[] + 
     metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*primescalar[]*
      timevec[h$245446]*PD[-h$245446][perth[LI[1], -i, -p$245445]] - 
     2*pertS[LI[1], -i]*primescalar[]*timevec[h$245446]*
      PD[-h$245446][pertphi[LI[1]]] + 2*hubbleC[]*pertS[LI[1], -i]*
      timevec[h$245446]*PD[-h$245446][pertscalar[LI[1]]] + 
     metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*primescalar[]*
      timevec[h$245446]*PD[-h$245446][PD[-i][pertF[LI[1], -p$245445]]] + 
     timevec[h$245446]*PD[-h$245446][PD[-i][pertscalar[LI[2]]]] + 
     4*hubbleC[]*pertpsi[LI[1]]*primescalar[]*PD[-i][pertB[LI[1]]] + 
     2*primescalar[]*timevec[h$245446]*PD[-h$245446][pertphi[LI[1]]]*
      PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[h$245446]*
      PD[-h$245446][pertscalar[LI[1]]]*PD[-i][pertB[LI[1]]] - 
     hubbleC[]*primescalar[]*PD[-i][pertB[LI[2]]] + 
     4*pertpsi[LI[1]]*primescalar[]*PD[-i][pertpsi[LI[1]]] - 
     2*timevec[h$245446]*PD[-h$245446][pertscalar[LI[1]]]*
      PD[-i][pertpsi[LI[1]]] - primescalar[]*PD[-i][pertpsi[LI[2]]] - 
     metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*primescalar[]*
      PD[-i][pertS[LI[1], -p$245445]] + 2*timevec[h$245446]*
      PD[-h$245446][pertphi[LI[1]]]*PD[-i][pertscalar[LI[1]]] - 
     hubbleC[]*PD[-i][pertscalar[LI[2]]] - metric\[Delta][p$245444, p$245445]*
      primescalar[]*timevec[h$245446]*PD[-h$245446][perth[LI[1], -i, 
        -p$245445]]*PD[-p$245444][pertB[LI[1]]] - 
     metric\[Delta][p$245444, p$245445]*primescalar[]*timevec[h$245446]*
      PD[-h$245446][PD[-i][pertF[LI[1], -p$245445]]]*
      PD[-p$245444][pertB[LI[1]]] + metric\[Delta][p$245444, p$245445]*
      primescalar[]*PD[-i][pertS[LI[1], -p$245445]]*
      PD[-p$245444][pertB[LI[1]]] - metric\[Delta][p$245444, p$245445]*
      timevec[h$245446]*PD[-h$245446][perth[LI[1], -i, -p$245445]]*
      PD[-p$245444][pertscalar[LI[1]]] - metric\[Delta][p$245444, p$245445]*
      timevec[h$245446]*PD[-h$245446][PD[-i][pertF[LI[1], -p$245445]]]*
      PD[-p$245444][pertscalar[LI[1]]] + metric\[Delta][p$245444, p$245445]*
      PD[-i][pertS[LI[1], -p$245445]]*PD[-p$245444][pertscalar[LI[1]]] + 
     metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*primescalar[]*
      PD[-p$245445][pertS[LI[1], -i]] - metric\[Delta][p$245444, p$245445]*
      primescalar[]*PD[-p$245444][pertB[LI[1]]]*PD[-p$245445][
       pertS[LI[1], -i]] - metric\[Delta][p$245444, p$245445]*
      PD[-p$245444][pertS[LI[1], -i]]*PD[-p$245445][pertscalar[LI[1]]] + 
     metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*primescalar[]*
      timevec[h$245446]*PD[-p$245445][PD[-h$245446][pertF[LI[1], -i]]] - 
     metric\[Delta][p$245444, p$245445]*primescalar[]*timevec[h$245446]*
      PD[-p$245444][pertB[LI[1]]]*PD[-p$245445][PD[-h$245446][
        pertF[LI[1], -i]]] - metric\[Delta][p$245444, p$245445]*
      timevec[h$245446]*PD[-p$245444][pertscalar[LI[1]]]*
      PD[-p$245445][PD[-h$245446][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$245444, p$245445]*pertS[LI[1], -p$245444]*
      primescalar[]*timevec[h$245446]*PD[-p$245445][
       PD[-i][PD[-h$245446][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$245444, p$245445]*primescalar[]*timevec[h$245446]*
      PD[-p$245444][pertB[LI[1]]]*PD[-p$245445][
       PD[-i][PD[-h$245446][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$245444, p$245445]*timevec[h$245446]*
      PD[-p$245444][pertscalar[LI[1]]]*PD[-p$245445][
       PD[-i][PD[-h$245446][pertE[LI[1]]]]])], 
 HoldPattern[pertddpi[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{p$249745, p$249746, h$249747, 
    h$249748}, -(hubbleC[]*perth[LI[2], -i, -j]*primescalar[]) + 
    2*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[2]]*primescalar[] + 
    4*hubbleC[]*perth[LI[1], -i, -j]*pertpsi[LI[1]]*primescalar[] - 
    8*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertpsi[LI[1]]*
     primescalar[] - 8*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]^2*
     primescalar[] + 2*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[2]]*
     primescalar[] + 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$249745, p$249746]*pertS[LI[1], -p$249745]*
     pertS[LI[1], -p$249746]*primescalar[] + 2*pertpsi[LI[1]]*primescalar[]*
     timevec[h$249747]*PD[-h$249747][perth[LI[1], -i, -j]] - 
    (primescalar[]*timevec[h$249747]*PD[-h$249747][perth[LI[2], -i, -j]])/2 - 
    4*metric\[Delta][-i, -j]*pertpsi[LI[1]]*primescalar[]*timevec[h$249747]*
     PD[-h$249747][pertphi[LI[1]]] + metric\[Delta][-i, -j]*primescalar[]*
     timevec[h$249747]*PD[-h$249747][pertphi[LI[2]]] - 
    2*hubbleC[]*perth[LI[1], -i, -j]*timevec[h$249747]*
     PD[-h$249747][pertscalar[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
     pertphi[LI[1]]*timevec[h$249747]*PD[-h$249747][pertscalar[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*timevec[h$249747]*
     PD[-h$249747][pertscalar[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
     timevec[h$249747]*PD[-h$249747][pertscalar[LI[2]]] + 
    2*pertpsi[LI[1]]*primescalar[]*timevec[h$249747]*
     PD[-h$249747][PD[-i][pertF[LI[1], -j]]] - 
    (primescalar[]*timevec[h$249747]*PD[-h$249747][PD[-i][pertF[LI[2], -j]]])/
     2 + 2*pertpsi[LI[1]]*primescalar[]*timevec[h$249747]*
     PD[-h$249747][PD[-j][pertF[LI[1], -i]]] - 
    (primescalar[]*timevec[h$249747]*PD[-h$249747][PD[-j][pertF[LI[2], -i]]])/
     2 + 4*pertpsi[LI[1]]*primescalar[]*timevec[h$249747]*
     PD[-h$249747][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    primescalar[]*timevec[h$249747]*PD[-h$249747][
      PD[-j][PD[-i][pertE[LI[2]]]]] - timevec[h$249747]*timevec[h$249748]*
     PD[-h$249747][pertscalar[LI[1]]]*PD[-h$249748][perth[LI[1], -i, -j]] + 
    2*metric\[Delta][-i, -j]*timevec[h$249747]*timevec[h$249748]*
     PD[-h$249747][pertphi[LI[1]]]*PD[-h$249748][pertscalar[LI[1]]] - 
    timevec[h$249747]*timevec[h$249748]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-h$249748][PD[-i][pertF[LI[1], -j]]] - timevec[h$249747]*
     timevec[h$249748]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-h$249748][PD[-j][pertF[LI[1], -i]]] - 2*timevec[h$249747]*
     timevec[h$249748]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-h$249748][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    4*hubbleC[]*pertpsi[LI[1]]*primescalar[]*PD[-i][pertF[LI[1], -j]] - 
    2*hubbleC[]*timevec[h$249747]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-i][pertF[LI[1], -j]] - hubbleC[]*primescalar[]*
     PD[-i][pertF[LI[2], -j]] + metric\[Delta][p$249745, p$249746]*
     pertS[LI[1], -p$249745]*primescalar[]*
     PD[-i][perth[LI[1], -j, -p$249746]] - 2*pertS[LI[1], -j]*primescalar[]*
     PD[-i][pertphi[LI[1]]] + 2*pertpsi[LI[1]]*primescalar[]*
     PD[-i][pertS[LI[1], -j]] - timevec[h$249747]*
     PD[-h$249747][pertscalar[LI[1]]]*PD[-i][pertS[LI[1], -j]] - 
    (primescalar[]*PD[-i][pertS[LI[2], -j]])/2 + 
    2*primescalar[]*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
    4*hubbleC[]*pertpsi[LI[1]]*primescalar[]*PD[-j][pertF[LI[1], -i]] - 
    2*hubbleC[]*timevec[h$249747]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-j][pertF[LI[1], -i]] - hubbleC[]*primescalar[]*
     PD[-j][pertF[LI[2], -i]] + metric\[Delta][p$249745, p$249746]*
     pertS[LI[1], -p$249745]*primescalar[]*
     PD[-j][perth[LI[1], -i, -p$249746]] - 2*pertS[LI[1], -i]*primescalar[]*
     PD[-j][pertphi[LI[1]]] + 2*primescalar[]*PD[-i][pertB[LI[1]]]*
     PD[-j][pertphi[LI[1]]] + 2*PD[-i][pertscalar[LI[1]]]*
     PD[-j][pertphi[LI[1]]] + 2*pertpsi[LI[1]]*primescalar[]*
     PD[-j][pertS[LI[1], -i]] - timevec[h$249747]*
     PD[-h$249747][pertscalar[LI[1]]]*PD[-j][pertS[LI[1], -i]] - 
    (primescalar[]*PD[-j][pertS[LI[2], -i]])/2 + 2*PD[-i][pertphi[LI[1]]]*
     PD[-j][pertscalar[LI[1]]] - 4*pertpsi[LI[1]]*primescalar[]*
     PD[-j][PD[-i][pertB[LI[1]]]] + 2*timevec[h$249747]*
     PD[-h$249747][pertscalar[LI[1]]]*PD[-j][PD[-i][pertB[LI[1]]]] + 
    primescalar[]*PD[-j][PD[-i][pertB[LI[2]]]] + 8*hubbleC[]*pertpsi[LI[1]]*
     primescalar[]*PD[-j][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]*timevec[h$249747]*PD[-h$249747][pertscalar[LI[1]]]*
     PD[-j][PD[-i][pertE[LI[1]]]] - 2*hubbleC[]*primescalar[]*
     PD[-j][PD[-i][pertE[LI[2]]]] + 2*metric\[Delta][p$249745, p$249746]*
     pertS[LI[1], -p$249745]*primescalar[]*
     PD[-j][PD[-i][pertF[LI[1], -p$249746]]] + 
    PD[-j][PD[-i][pertscalar[LI[2]]]] - metric\[Delta][p$249745, p$249746]*
     primescalar[]*PD[-i][perth[LI[1], -j, -p$249746]]*
     PD[-p$249745][pertB[LI[1]]] - metric\[Delta][p$249745, p$249746]*
     primescalar[]*PD[-j][perth[LI[1], -i, -p$249746]]*
     PD[-p$249745][pertB[LI[1]]] - 2*metric\[Delta][p$249745, p$249746]*
     primescalar[]*PD[-j][PD[-i][pertF[LI[1], -p$249746]]]*
     PD[-p$249745][pertB[LI[1]]] - metric\[Delta][p$249745, p$249746]*
     PD[-i][perth[LI[1], -j, -p$249746]]*PD[-p$249745][pertscalar[LI[1]]] - 
    metric\[Delta][p$249745, p$249746]*PD[-j][perth[LI[1], -i, -p$249746]]*
     PD[-p$249745][pertscalar[LI[1]]] - 2*metric\[Delta][p$249745, p$249746]*
     PD[-j][PD[-i][pertF[LI[1], -p$249746]]]*PD[-p$249745][
      pertscalar[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$249745, p$249746]*pertS[LI[1], -p$249745]*primescalar[]*
     PD[-p$249746][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$249745, p$249746]*primescalar[]*
     PD[-p$249745][pertB[LI[1]]]*PD[-p$249746][pertB[LI[1]]] - 
    metric\[Delta][p$249745, p$249746]*pertS[LI[1], -p$249745]*primescalar[]*
     PD[-p$249746][perth[LI[1], -i, -j]] + metric\[Delta][p$249745, p$249746]*
     primescalar[]*PD[-p$249745][pertB[LI[1]]]*
     PD[-p$249746][perth[LI[1], -i, -j]] + metric\[Delta][p$249745, p$249746]*
     PD[-p$249745][pertscalar[LI[1]]]*PD[-p$249746][perth[LI[1], -i, -j]] + 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$249745, p$249746]*
     pertS[LI[1], -p$249745]*primescalar[]*PD[-p$249746][pertphi[LI[1]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$249745, p$249746]*primescalar[]*
     PD[-p$249745][pertB[LI[1]]]*PD[-p$249746][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$249745, p$249746]*
     pertS[LI[1], -p$249745]*PD[-p$249746][pertscalar[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$249745, p$249746]*
     PD[-p$249745][pertB[LI[1]]]*PD[-p$249746][pertscalar[LI[1]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$249745, p$249746]*
     PD[-p$249745][pertphi[LI[1]]]*PD[-p$249746][pertscalar[LI[1]]] + 
    2*metric\[Delta][p$249745, p$249746]*pertS[LI[1], -p$249745]*
     primescalar[]*PD[-p$249746][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$249745, p$249746]*primescalar[]*
     PD[-p$249745][pertB[LI[1]]]*PD[-p$249746][
      PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$249745, p$249746]*
     PD[-p$249745][pertscalar[LI[1]]]*PD[-p$249746][
      PD[-j][PD[-i][pertE[LI[1]]]]]], HoldPattern[pertpi1[LI[1]]] :> 
  Module[{}, (2*pprimescalar[]*Scalar[pertpsi[LI[1]]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]])/scale[]^2 + 
    (3*primescalar[]*Scalar[timevec[h$119162]*PD[-h$119162][pertphi[LI[1]]]])/
     scale[]^2 + (primescalar[]*Scalar[timevec[h$119164]*
        PD[-h$119164][pertpsi[LI[1]]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[timevec[h$119166]*PD[-h$119166][pertscalar[LI[1]]]])/
     scale[]^2 - Scalar[timevec[h$119168]*timevec[h$119169]*
       PD[-h$119169][PD[-h$119168][pertscalar[LI[1]]]]]/scale[]^2 + 
    (primescalar[]*Scalar[metric\[Delta][p$119171, p$119172]*
        PD[-p$119171][PD[-p$119172][pertB[LI[1]]]]])/scale[]^2 + 
    Scalar[metric\[Delta][p$119174, p$119175]*PD[-p$119174][
        PD[-p$119175][pertscalar[LI[1]]]]]/scale[]^2 - 
    (primescalar[]*Scalar[metric\[Delta][p$119177, p$119178]*
        timevec[h$119179]*PD[-p$119177][PD[-p$119178][PD[-h$119179][
           pertE[LI[1]]]]]])/scale[]^2], HoldPattern[pertpi1[LI[2]]] :> 
  Module[{}, (-8*pertpsi[LI[1]]^2*pprimescalar[])/scale[]^2 - 
    (16*hubbleC[]*pertpsi[LI[1]]^2*primescalar[])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$262378, p$262379]*
        pertS[LI[1], -p$262378]*pertS[LI[1], -p$262379]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$262381, p$262382]*
        pertS[LI[1], -p$262381]*pertS[LI[1], -p$262382]])/scale[]^2 + 
    (primescalar[]*Scalar[metric\[Delta][p$262384, p$262385]*
        metric\[Delta][p$262386, p$262387]*perth[LI[1], -p$262384, -p$262386]*
        timevec[h$262388]*PD[-h$262388][perth[LI[1], -p$262385, -p$262387]]])/
     scale[]^2 + (12*primescalar[]*Scalar[pertphi[LI[1]]*timevec[h$262390]*
        PD[-h$262390][pertphi[LI[1]]]])/scale[]^2 - 
    (12*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$262392]*
        PD[-h$262392][pertphi[LI[1]]]])/scale[]^2 + 
    (3*primescalar[]*Scalar[timevec[h$262394]*PD[-h$262394][pertphi[LI[2]]]])/
     scale[]^2 - (8*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$262396]*
        PD[-h$262396][pertpsi[LI[1]]]])/scale[]^2 + 
    (primescalar[]*Scalar[timevec[h$262398]*PD[-h$262398][pertpsi[LI[2]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262400, p$262401]*
        pertS[LI[1], -p$262400]*timevec[h$262402]*PD[-h$262402][
         pertS[LI[1], -p$262401]]])/scale[]^2 + 
    (8*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$262404]*
        PD[-h$262404][pertscalar[LI[1]]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[timevec[h$262406]*PD[-h$262406][pertscalar[LI[2]]]])/
     scale[]^2 + (6*Scalar[timevec[h$262408]*timevec[h$262409]*
        PD[-h$262408][pertphi[LI[1]]]*PD[-h$262409][pertscalar[LI[1]]]])/
     scale[]^2 + (2*Scalar[timevec[h$262411]*timevec[h$262412]*
        PD[-h$262411][pertpsi[LI[1]]]*PD[-h$262412][pertscalar[LI[1]]]])/
     scale[]^2 + (4*Scalar[pertpsi[LI[1]]*timevec[h$262414]*timevec[h$262415]*
        PD[-h$262415][PD[-h$262414][pertscalar[LI[1]]]]])/scale[]^2 - 
    Scalar[timevec[h$262417]*timevec[h$262418]*PD[-h$262418][
        PD[-h$262417][pertscalar[LI[2]]]]]/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$262420, p$262421]*
        timevec[h$262422]*PD[-h$262422][pertS[LI[1], -p$262421]]*
        PD[-p$262420][pertB[LI[1]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$262424, p$262425]*timevec[h$262426]*
        PD[-h$262426][pertS[LI[1], -p$262425]]*PD[-p$262424][
         pertscalar[LI[1]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262428, p$262429]*pertphi[LI[1]]*
        PD[-p$262428][PD[-p$262429][pertB[LI[1]]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$262431, p$262432]*pertpsi[LI[1]]*
        PD[-p$262431][PD[-p$262432][pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$262434, p$262435]*timevec[h$262436]*
        PD[-h$262436][pertscalar[LI[1]]]*PD[-p$262434][
         PD[-p$262435][pertB[LI[1]]]]])/scale[]^2 + 
    (primescalar[]*Scalar[metric\[Delta][p$262438, p$262439]*
        PD[-p$262438][PD[-p$262439][pertB[LI[2]]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$262441, p$262442]*
        timevec[h$262443]*PD[-h$262443][pertphi[LI[1]]]*
        PD[-p$262441][PD[-p$262442][pertE[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$262445, p$262446]*pertphi[LI[1]]*
        PD[-p$262445][PD[-p$262446][pertscalar[LI[1]]]]])/scale[]^2 + 
    Scalar[metric\[Delta][p$262448, p$262449]*PD[-p$262448][
        PD[-p$262449][pertscalar[LI[2]]]]]/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$262451, p$262452]*pertphi[LI[1]]*
        timevec[h$262453]*PD[-p$262451][PD[-p$262452][PD[-h$262453][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262455, p$262456]*pertpsi[LI[1]]*
        timevec[h$262457]*PD[-p$262455][PD[-p$262456][PD[-h$262457][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (primescalar[]*Scalar[metric\[Delta][p$262459, p$262460]*
        timevec[h$262461]*PD[-p$262459][PD[-p$262460][PD[-h$262461][
           pertE[LI[2]]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$262463, p$262464]*timevec[h$262465]*
        timevec[h$262466]*PD[-h$262465][pertscalar[LI[1]]]*
        PD[-p$262463][PD[-p$262464][PD[-h$262466][pertE[LI[1]]]]]])/
     scale[]^2 - (4*pprimescalar[]*Scalar[metric\[Delta][p$262468, p$262469]*
        pertS[LI[1], -p$262468]*PD[-p$262469][pertB[LI[1]]]])/scale[]^2 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$262471, p$262472]*
        pertS[LI[1], -p$262471]*PD[-p$262472][pertB[LI[1]]]])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$262474, p$262475]*
        PD[-p$262474][pertB[LI[1]]]*PD[-p$262475][pertB[LI[1]]]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$262477, p$262478]*
        PD[-p$262477][pertB[LI[1]]]*PD[-p$262478][pertB[LI[1]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262480, p$262481]*
        metric\[Delta][p$262482, p$262483]*timevec[h$262484]*
        PD[-h$262484][perth[LI[1], -p$262481, -p$262483]]*
        PD[-p$262482][pertF[LI[1], -p$262480]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262486, p$262487]*
        metric\[Delta][p$262488, p$262489]*PD[-p$262486][
         pertS[LI[1], -p$262489]]*PD[-p$262488][pertF[LI[1], -p$262487]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262491, p$262492]*
        metric\[Delta][p$262493, p$262494]*timevec[h$262495]*
        PD[-p$262491][PD[-h$262495][pertF[LI[1], -p$262494]]]*
        PD[-p$262493][pertF[LI[1], -p$262492]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$262497, p$262498]*
        metric\[Delta][p$262499, p$262500]*PD[-p$262497][
         PD[-p$262500][pertB[LI[1]]]]*PD[-p$262499][pertF[LI[1], 
          -p$262498]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$262502, p$262503]*metric\[Delta][p$262504, 
         p$262505]*PD[-p$262502][PD[-p$262505][pertscalar[LI[1]]]]*
        PD[-p$262504][pertF[LI[1], -p$262503]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262507, p$262508]*
        metric\[Delta][p$262509, p$262510]*timevec[h$262511]*
        PD[-p$262507][PD[-p$262510][PD[-h$262511][pertE[LI[1]]]]]*
        PD[-p$262509][pertF[LI[1], -p$262508]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262513, p$262514]*
        pertS[LI[1], -p$262513]*PD[-p$262514][pertphi[LI[1]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$262516, p$262517]*
        PD[-p$262516][pertB[LI[1]]]*PD[-p$262517][pertphi[LI[1]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262519, p$262520]*
        pertS[LI[1], -p$262519]*PD[-p$262520][pertpsi[LI[1]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$262522, p$262523]*
        PD[-p$262522][pertB[LI[1]]]*PD[-p$262523][pertpsi[LI[1]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262525, p$262526]*
        metric\[Delta][p$262527, p$262528]*perth[LI[1], -p$262525, -p$262528]*
        PD[-p$262527][pertS[LI[1], -p$262526]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262530, p$262531]*
        metric\[Delta][p$262532, p$262533]*PD[-p$262530][
         PD[-p$262533][pertE[LI[1]]]]*PD[-p$262532][pertS[LI[1], 
          -p$262531]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$262535, p$262536]*
        pertS[LI[1], -p$262535]*PD[-p$262536][pertscalar[LI[1]]]])/
     scale[]^2 + (4*hubbleC[]*Scalar[metric\[Delta][p$262538, p$262539]*
        PD[-p$262538][pertB[LI[1]]]*PD[-p$262539][pertscalar[LI[1]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$262541, p$262542]*
        PD[-p$262541][pertphi[LI[1]]]*PD[-p$262542][pertscalar[LI[1]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$262544, p$262545]*
        PD[-p$262544][pertpsi[LI[1]]]*PD[-p$262545][pertscalar[LI[1]]]])/
     scale[]^2 - (2*primescalar[]*Scalar[metric\[Delta][p$262547, p$262548]*
        pertS[LI[1], -p$262547]*timevec[h$262549]*PD[-p$262548][
         PD[-h$262549][pertB[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262551, p$262552]*
        timevec[h$262553]*PD[-p$262551][pertB[LI[1]]]*
        PD[-p$262552][PD[-h$262553][pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$262555, p$262556]*timevec[h$262557]*
        PD[-p$262555][pertscalar[LI[1]]]*PD[-p$262556][
         PD[-h$262557][pertB[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$262559, p$262560]*pertS[LI[1], -p$262559]*
        timevec[h$262561]*PD[-p$262560][PD[-h$262561][pertscalar[LI[1]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$262563, p$262564]*
        timevec[h$262565]*PD[-p$262563][pertB[LI[1]]]*
        PD[-p$262564][PD[-h$262565][pertscalar[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262567, p$262568]*
        metric\[Delta][p$262569, p$262570]*timevec[h$262571]*
        PD[-h$262571][perth[LI[1], -p$262568, -p$262570]]*
        PD[-p$262569][PD[-p$262567][pertE[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262573, p$262574]*
        metric\[Delta][p$262575, p$262576]*pertS[LI[1], -p$262573]*
        PD[-p$262575][PD[-p$262576][pertF[LI[1], -p$262574]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$262578, p$262579]*
        metric\[Delta][p$262580, p$262581]*PD[-p$262578][pertB[LI[1]]]*
        PD[-p$262580][PD[-p$262581][pertF[LI[1], -p$262579]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$262583, p$262584]*metric\[Delta][p$262585, 
         p$262586]*PD[-p$262583][pertscalar[LI[1]]]*PD[-p$262585][
         PD[-p$262586][pertF[LI[1], -p$262584]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262588, p$262589]*
        metric\[Delta][p$262590, p$262591]*pertS[LI[1], -p$262588]*
        PD[-p$262590][PD[-p$262591][PD[-p$262589][pertE[LI[1]]]]]])/
     scale[]^2 - (2*primescalar[]*Scalar[metric\[Delta][p$262593, p$262594]*
        metric\[Delta][p$262595, p$262596]*PD[-p$262593][pertB[LI[1]]]*
        PD[-p$262595][PD[-p$262596][PD[-p$262594][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$262598, p$262599]*
        metric\[Delta][p$262600, p$262601]*PD[-p$262598][pertscalar[LI[1]]]*
        PD[-p$262600][PD[-p$262601][PD[-p$262599][pertE[LI[1]]]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262603, p$262604]*
        metric\[Delta][p$262605, p$262606]*PD[-p$262605][
         pertF[LI[1], -p$262604]]*PD[-p$262606][pertS[LI[1], -p$262603]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$262608, p$262609]*
        metric\[Delta][p$262610, p$262611]*timevec[h$262612]*
        PD[-p$262610][pertF[LI[1], -p$262609]]*PD[-p$262611][
         PD[-h$262612][pertF[LI[1], -p$262608]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262614, p$262615]*
        metric\[Delta][p$262616, p$262617]*timevec[h$262618]*
        PD[-p$262616][PD[-p$262615][pertE[LI[1]]]]*PD[-p$262617][
         PD[-h$262618][pertF[LI[1], -p$262614]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262620, p$262621]*
        metric\[Delta][p$262622, p$262623]*perth[LI[1], -p$262620, -p$262622]*
        timevec[h$262624]*PD[-p$262623][PD[-h$262624][pertF[LI[1], 
           -p$262621]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$262626, p$262627]*
        metric\[Delta][p$262628, p$262629]*PD[-p$262628][
         PD[-p$262627][pertB[LI[1]]]]*PD[-p$262629][PD[-p$262626][
          pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$262631, p$262632]*metric\[Delta][p$262633, 
         p$262634]*PD[-p$262633][PD[-p$262632][pertE[LI[1]]]]*
        PD[-p$262634][PD[-p$262631][pertscalar[LI[1]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$262636, p$262637]*
        metric\[Delta][p$262638, p$262639]*timevec[h$262640]*
        PD[-p$262638][PD[-p$262637][pertE[LI[1]]]]*PD[-p$262639][
         PD[-p$262636][PD[-h$262640][pertE[LI[1]]]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$262642, p$262643]*
        metric\[Delta][p$262644, p$262645]*perth[LI[1], -p$262642, -p$262644]*
        PD[-p$262645][PD[-p$262643][pertB[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$262647, p$262648]*metric\[Delta][p$262649, 
         p$262650]*perth[LI[1], -p$262647, -p$262649]*
        PD[-p$262650][PD[-p$262648][pertscalar[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$262652, p$262653]*
        metric\[Delta][p$262654, p$262655]*perth[LI[1], -p$262652, -p$262654]*
        timevec[h$262656]*PD[-p$262655][PD[-p$262653][PD[-h$262656][
           pertE[LI[1]]]]]])/scale[]^2], HoldPattern[pertpi10[LI[1]]] :> 
  Module[{}, (-8*pprimescalar[]^3*primescalar[]^2*Scalar[pertpsi[LI[1]]])/
     scale[]^8 + (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*Scalar[pertpsi[LI[1]]])/
     scale[]^8 + (8*hubbleC[]^3*primescalar[]^5*Scalar[pertpsi[LI[1]]])/
     scale[]^8 - (3*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$168205]*PD[-h$168205][pertpsi[LI[1]]]])/scale[]^8 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$168207]*PD[-h$168207][pertpsi[LI[1]]]])/scale[]^8 - 
    (3*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$168209]*
        PD[-h$168209][pertpsi[LI[1]]]])/scale[]^8 + 
    (2*pprimescalar[]^3*primescalar[]*Scalar[timevec[h$168211]*
        PD[-h$168211][pertscalar[LI[1]]]])/scale[]^8 - 
    (9*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[timevec[h$168213]*PD[-h$168213][pertscalar[LI[1]]]])/scale[]^8 + 
    (12*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$168215]*PD[-h$168215][pertscalar[LI[1]]]])/scale[]^8 - 
    (5*hubbleC[]^3*primescalar[]^4*Scalar[timevec[h$168217]*
        PD[-h$168217][pertscalar[LI[1]]]])/scale[]^8 + 
    (3*pprimescalar[]^2*primescalar[]^2*Scalar[timevec[h$168219]*
        timevec[h$168220]*PD[-h$168220][PD[-h$168219][pertscalar[LI[1]]]]])/
     scale[]^8 - (6*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$168222]*timevec[h$168223]*PD[-h$168223][
         PD[-h$168222][pertscalar[LI[1]]]]])/scale[]^8 + 
    (3*hubbleC[]^2*primescalar[]^4*Scalar[timevec[h$168225]*timevec[h$168226]*
        PD[-h$168226][PD[-h$168225][pertscalar[LI[1]]]]])/scale[]^8], 
 HoldPattern[pertpi10[LI[2]]] :> 
  Module[{}, (80*pertpsi[LI[1]]^2*pprimescalar[]^3*primescalar[]^2)/
     scale[]^8 - (240*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]^2*
      primescalar[]^3)/scale[]^8 + (240*hubbleC[]^2*pertpsi[LI[1]]^2*
      pprimescalar[]*primescalar[]^4)/scale[]^8 - 
    (80*hubbleC[]^3*pertpsi[LI[1]]^2*primescalar[]^5)/scale[]^8 - 
    (8*pprimescalar[]^3*primescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*Scalar[pertpsi[LI[2]]])/
     scale[]^8 - (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[2]]])/scale[]^8 + 
    (8*hubbleC[]^3*primescalar[]^5*Scalar[pertpsi[LI[2]]])/scale[]^8 - 
    (8*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$936568, p$936569]*pertS[LI[1], -p$936568]*
        pertS[LI[1], -p$936569]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936571, p$936572]*pertS[LI[1], -p$936571]*
        pertS[LI[1], -p$936572]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936574, p$936575]*pertS[LI[1], -p$936574]*
        pertS[LI[1], -p$936575]])/scale[]^8 + 
    (8*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$936577, p$936578]*
        pertS[LI[1], -p$936577]*pertS[LI[1], -p$936578]])/scale[]^8 + 
    (60*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$936580]*PD[-h$936580][pertpsi[LI[1]]]])/
     scale[]^8 - (120*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*timevec[h$936582]*PD[-h$936582][pertpsi[LI[1]]]])/
     scale[]^8 + (60*hubbleC[]^2*primescalar[]^5*
      Scalar[pertpsi[LI[1]]*timevec[h$936584]*PD[-h$936584][pertpsi[LI[1]]]])/
     scale[]^8 - (3*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$936586]*PD[-h$936586][pertpsi[LI[2]]]])/scale[]^8 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$936588]*PD[-h$936588][pertpsi[LI[2]]]])/scale[]^8 - 
    (3*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$936590]*
        PD[-h$936590][pertpsi[LI[2]]]])/scale[]^8 - 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936592, p$936593]*pertS[LI[1], -p$936592]*
        timevec[h$936594]*PD[-h$936594][pertS[LI[1], -p$936593]]])/
     scale[]^8 + (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936596, p$936597]*pertS[LI[1], -p$936596]*
        timevec[h$936598]*PD[-h$936598][pertS[LI[1], -p$936597]]])/
     scale[]^8 - (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$936600, p$936601]*pertS[LI[1], -p$936600]*
        timevec[h$936602]*PD[-h$936602][pertS[LI[1], -p$936601]]])/
     scale[]^8 - (32*pprimescalar[]^3*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$936604]*PD[-h$936604][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (144*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$936606]*PD[-h$936606][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (192*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$936608]*PD[-h$936608][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (80*hubbleC[]^3*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$936610]*
        PD[-h$936610][pertscalar[LI[1]]]])/scale[]^8 + 
    (2*pprimescalar[]^3*primescalar[]*Scalar[timevec[h$936612]*
        PD[-h$936612][pertscalar[LI[2]]]])/scale[]^8 - 
    (9*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[timevec[h$936614]*PD[-h$936614][pertscalar[LI[2]]]])/scale[]^8 + 
    (12*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$936616]*PD[-h$936616][pertscalar[LI[2]]]])/scale[]^8 - 
    (5*hubbleC[]^3*primescalar[]^4*Scalar[timevec[h$936618]*
        PD[-h$936618][pertscalar[LI[2]]]])/scale[]^8 + 
    (6*pprimescalar[]*primescalar[]^4*Scalar[timevec[h$936620]*
        timevec[h$936621]*PD[-h$936620][pertpsi[LI[1]]]*
        PD[-h$936621][pertpsi[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]*primescalar[]^5*Scalar[timevec[h$936623]*timevec[h$936624]*
        PD[-h$936623][pertpsi[LI[1]]]*PD[-h$936624][pertpsi[LI[1]]]])/
     scale[]^8 - (18*pprimescalar[]^2*primescalar[]^2*
      Scalar[timevec[h$936626]*timevec[h$936627]*PD[-h$936626][
         pertpsi[LI[1]]]*PD[-h$936627][pertscalar[LI[1]]]])/scale[]^8 + 
    (48*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$936629]*timevec[h$936630]*PD[-h$936629][
         pertpsi[LI[1]]]*PD[-h$936630][pertscalar[LI[1]]]])/scale[]^8 - 
    (30*hubbleC[]^2*primescalar[]^4*Scalar[timevec[h$936632]*
        timevec[h$936633]*PD[-h$936632][pertpsi[LI[1]]]*
        PD[-h$936633][pertscalar[LI[1]]]])/scale[]^8 + 
    (2*pprimescalar[]^3*Scalar[timevec[h$936635]*timevec[h$936636]*
        PD[-h$936635][pertscalar[LI[1]]]*PD[-h$936636][pertscalar[LI[1]]]])/
     scale[]^8 - (18*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$936638]*timevec[h$936639]*PD[-h$936638][
         pertscalar[LI[1]]]*PD[-h$936639][pertscalar[LI[1]]]])/scale[]^8 + 
    (36*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$936641]*timevec[h$936642]*PD[-h$936641][
         pertscalar[LI[1]]]*PD[-h$936642][pertscalar[LI[1]]]])/scale[]^8 - 
    (20*hubbleC[]^3*primescalar[]^3*Scalar[timevec[h$936644]*
        timevec[h$936645]*PD[-h$936644][pertscalar[LI[1]]]*
        PD[-h$936645][pertscalar[LI[1]]]])/scale[]^8 - 
    (48*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$936647]*timevec[h$936648]*
        PD[-h$936648][PD[-h$936647][pertscalar[LI[1]]]]])/scale[]^8 + 
    (96*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$936650]*timevec[h$936651]*
        PD[-h$936651][PD[-h$936650][pertscalar[LI[1]]]]])/scale[]^8 - 
    (48*hubbleC[]^2*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$936653]*
        timevec[h$936654]*PD[-h$936654][PD[-h$936653][pertscalar[LI[1]]]]])/
     scale[]^8 + (3*pprimescalar[]^2*primescalar[]^2*
      Scalar[timevec[h$936656]*timevec[h$936657]*PD[-h$936657][
         PD[-h$936656][pertscalar[LI[2]]]]])/scale[]^8 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$936659]*timevec[h$936660]*PD[-h$936660][
         PD[-h$936659][pertscalar[LI[2]]]]])/scale[]^8 + 
    (3*hubbleC[]^2*primescalar[]^4*Scalar[timevec[h$936662]*timevec[h$936663]*
        PD[-h$936663][PD[-h$936662][pertscalar[LI[2]]]]])/scale[]^8 - 
    (12*pprimescalar[]*primescalar[]^3*Scalar[timevec[h$936665]*
        timevec[h$936666]*timevec[h$936667]*PD[-h$936665][pertpsi[LI[1]]]*
        PD[-h$936667][PD[-h$936666][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]*primescalar[]^4*Scalar[timevec[h$936669]*timevec[h$936670]*
        timevec[h$936671]*PD[-h$936669][pertpsi[LI[1]]]*
        PD[-h$936671][PD[-h$936670][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$936673]*
        timevec[h$936674]*timevec[h$936675]*PD[-h$936673][pertscalar[LI[1]]]*
        PD[-h$936675][PD[-h$936674][pertscalar[LI[1]]]]])/scale[]^8 - 
    (36*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$936677]*timevec[h$936678]*timevec[h$936679]*
        PD[-h$936677][pertscalar[LI[1]]]*PD[-h$936679][
         PD[-h$936678][pertscalar[LI[1]]]]])/scale[]^8 + 
    (24*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$936681]*
        timevec[h$936682]*timevec[h$936683]*PD[-h$936681][pertscalar[LI[1]]]*
        PD[-h$936683][PD[-h$936682][pertscalar[LI[1]]]]])/scale[]^8 + 
    (6*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$936685]*
        timevec[h$936686]*timevec[h$936687]*timevec[h$936688]*
        PD[-h$936686][PD[-h$936685][pertscalar[LI[1]]]]*
        PD[-h$936688][PD[-h$936687][pertscalar[LI[1]]]]])/scale[]^8 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$936690]*timevec[h$936691]*
        timevec[h$936692]*timevec[h$936693]*PD[-h$936691][
         PD[-h$936690][pertscalar[LI[1]]]]*PD[-h$936693][
         PD[-h$936692][pertscalar[LI[1]]]]])/scale[]^8 + 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936695, p$936696]*timevec[h$936697]*
        PD[-h$936697][pertS[LI[1], -p$936696]]*PD[-p$936695][pertB[LI[1]]]])/
     scale[]^8 - (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936699, p$936700]*timevec[h$936701]*
        PD[-h$936701][pertS[LI[1], -p$936700]]*PD[-p$936699][pertB[LI[1]]]])/
     scale[]^8 + (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$936703, p$936704]*timevec[h$936705]*
        PD[-h$936705][pertS[LI[1], -p$936704]]*PD[-p$936703][pertB[LI[1]]]])/
     scale[]^8 + (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936707, p$936708]*timevec[h$936709]*
        PD[-h$936709][pertS[LI[1], -p$936708]]*PD[-p$936707][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936711, p$936712]*timevec[h$936713]*
        PD[-h$936713][pertS[LI[1], -p$936712]]*PD[-p$936711][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$936715, p$936716]*
        timevec[h$936717]*PD[-h$936717][pertS[LI[1], -p$936716]]*
        PD[-p$936715][pertscalar[LI[1]]]])/scale[]^8 + 
    (16*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$936719, p$936720]*pertS[LI[1], -p$936719]*
        PD[-p$936720][pertB[LI[1]]]])/scale[]^8 - 
    (48*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936722, p$936723]*pertS[LI[1], -p$936722]*
        PD[-p$936723][pertB[LI[1]]]])/scale[]^8 + 
    (48*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936725, p$936726]*pertS[LI[1], -p$936725]*
        PD[-p$936726][pertB[LI[1]]]])/scale[]^8 - 
    (16*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$936728, p$936729]*
        pertS[LI[1], -p$936728]*PD[-p$936729][pertB[LI[1]]]])/scale[]^8 - 
    (8*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$936731, p$936732]*PD[-p$936731][pertB[LI[1]]]*
        PD[-p$936732][pertB[LI[1]]]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936734, p$936735]*PD[-p$936734][pertB[LI[1]]]*
        PD[-p$936735][pertB[LI[1]]]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936737, p$936738]*PD[-p$936737][pertB[LI[1]]]*
        PD[-p$936738][pertB[LI[1]]]])/scale[]^8 + 
    (8*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$936740, p$936741]*
        PD[-p$936740][pertB[LI[1]]]*PD[-p$936741][pertB[LI[1]]]])/scale[]^8 - 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936743, p$936744]*pertS[LI[1], -p$936743]*
        PD[-p$936744][pertpsi[LI[1]]]])/scale[]^8 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936746, p$936747]*pertS[LI[1], -p$936746]*
        PD[-p$936747][pertpsi[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$936749, p$936750]*
        pertS[LI[1], -p$936749]*PD[-p$936750][pertpsi[LI[1]]]])/scale[]^8 + 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936752, p$936753]*PD[-p$936752][pertB[LI[1]]]*
        PD[-p$936753][pertpsi[LI[1]]]])/scale[]^8 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936755, p$936756]*PD[-p$936755][pertB[LI[1]]]*
        PD[-p$936756][pertpsi[LI[1]]]])/scale[]^8 + 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$936758, p$936759]*
        PD[-p$936758][pertB[LI[1]]]*PD[-p$936759][pertpsi[LI[1]]]])/
     scale[]^8 - (4*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936761, p$936762]*PD[-p$936761][pertpsi[LI[1]]]*
        PD[-p$936762][pertpsi[LI[1]]]])/scale[]^8 + 
    (2*hubbleC[]*primescalar[]^5*Scalar[metric\[Delta][p$936764, p$936765]*
        PD[-p$936764][pertpsi[LI[1]]]*PD[-p$936765][pertpsi[LI[1]]]])/
     scale[]^8 + (4*pprimescalar[]^3*primescalar[]*
      Scalar[metric\[Delta][p$936767, p$936768]*pertS[LI[1], -p$936767]*
        PD[-p$936768][pertscalar[LI[1]]]])/scale[]^8 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936770, p$936771]*pertS[LI[1], -p$936770]*
        PD[-p$936771][pertscalar[LI[1]]]])/scale[]^8 + 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936773, p$936774]*pertS[LI[1], -p$936773]*
        PD[-p$936774][pertscalar[LI[1]]]])/scale[]^8 - 
    (10*hubbleC[]^3*primescalar[]^4*Scalar[metric\[Delta][p$936776, p$936777]*
        pertS[LI[1], -p$936776]*PD[-p$936777][pertscalar[LI[1]]]])/
     scale[]^8 - (4*pprimescalar[]^3*primescalar[]*
      Scalar[metric\[Delta][p$936779, p$936780]*PD[-p$936779][pertB[LI[1]]]*
        PD[-p$936780][pertscalar[LI[1]]]])/scale[]^8 + 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936782, p$936783]*PD[-p$936782][pertB[LI[1]]]*
        PD[-p$936783][pertscalar[LI[1]]]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936785, p$936786]*PD[-p$936785][pertB[LI[1]]]*
        PD[-p$936786][pertscalar[LI[1]]]])/scale[]^8 + 
    (10*hubbleC[]^3*primescalar[]^4*Scalar[metric\[Delta][p$936788, p$936789]*
        PD[-p$936788][pertB[LI[1]]]*PD[-p$936789][pertscalar[LI[1]]]])/
     scale[]^8 - (2*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936791, p$936792]*PD[-p$936791][pertpsi[LI[1]]]*
        PD[-p$936792][pertscalar[LI[1]]]])/scale[]^8 + 
    (2*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$936794, p$936795]*
        PD[-p$936794][pertpsi[LI[1]]]*PD[-p$936795][pertscalar[LI[1]]]])/
     scale[]^8 + (4*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$936797, p$936798]*PD[-p$936797][
         pertscalar[LI[1]]]*PD[-p$936798][pertscalar[LI[1]]]])/scale[]^8 - 
    (8*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$936800, p$936801]*PD[-p$936800][
         pertscalar[LI[1]]]*PD[-p$936801][pertscalar[LI[1]]]])/scale[]^8 + 
    (4*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$936803, p$936804]*
        PD[-p$936803][pertscalar[LI[1]]]*PD[-p$936804][pertscalar[LI[1]]]])/
     scale[]^8 + (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936806, p$936807]*pertS[LI[1], -p$936806]*
        timevec[h$936808]*PD[-p$936807][PD[-h$936808][pertB[LI[1]]]]])/
     scale[]^8 - (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936810, p$936811]*pertS[LI[1], -p$936810]*
        timevec[h$936812]*PD[-p$936811][PD[-h$936812][pertB[LI[1]]]]])/
     scale[]^8 + (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$936814, p$936815]*pertS[LI[1], -p$936814]*
        timevec[h$936816]*PD[-p$936815][PD[-h$936816][pertB[LI[1]]]]])/
     scale[]^8 - (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$936818, p$936819]*timevec[h$936820]*
        PD[-p$936818][pertB[LI[1]]]*PD[-p$936819][PD[-h$936820][
          pertB[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$936822, p$936823]*timevec[h$936824]*
        PD[-p$936822][pertB[LI[1]]]*PD[-p$936823][PD[-h$936824][
          pertB[LI[1]]]]])/scale[]^8 - (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$936826, p$936827]*timevec[h$936828]*
        PD[-p$936826][pertB[LI[1]]]*PD[-p$936827][PD[-h$936828][
          pertB[LI[1]]]]])/scale[]^8 - (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936830, p$936831]*timevec[h$936832]*
        PD[-p$936830][pertscalar[LI[1]]]*PD[-p$936831][
         PD[-h$936832][pertB[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936834, p$936835]*timevec[h$936836]*
        PD[-p$936834][pertscalar[LI[1]]]*PD[-p$936835][
         PD[-h$936836][pertB[LI[1]]]]])/scale[]^8 - 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$936838, p$936839]*
        timevec[h$936840]*PD[-p$936838][pertscalar[LI[1]]]*
        PD[-p$936839][PD[-h$936840][pertB[LI[1]]]]])/scale[]^8 + 
    (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936842, p$936843]*pertS[LI[1], -p$936842]*
        timevec[h$936844]*PD[-p$936843][PD[-h$936844][pertscalar[LI[1]]]]])/
     scale[]^8 - (24*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936846, p$936847]*pertS[LI[1], -p$936846]*
        timevec[h$936848]*PD[-p$936847][PD[-h$936848][pertscalar[LI[1]]]]])/
     scale[]^8 + (12*hubbleC[]^2*primescalar[]^4*
      Scalar[metric\[Delta][p$936850, p$936851]*pertS[LI[1], -p$936850]*
        timevec[h$936852]*PD[-p$936851][PD[-h$936852][pertscalar[LI[1]]]]])/
     scale[]^8 - (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$936854, p$936855]*timevec[h$936856]*
        PD[-p$936854][pertB[LI[1]]]*PD[-p$936855][PD[-h$936856][
          pertscalar[LI[1]]]]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936858, p$936859]*timevec[h$936860]*
        PD[-p$936858][pertB[LI[1]]]*PD[-p$936859][PD[-h$936860][
          pertscalar[LI[1]]]]])/scale[]^8 - 
    (12*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$936862, p$936863]*
        timevec[h$936864]*PD[-p$936862][pertB[LI[1]]]*
        PD[-p$936863][PD[-h$936864][pertscalar[LI[1]]]]])/scale[]^8 + 
    (8*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$936866, p$936867]*timevec[h$936868]*
        PD[-p$936866][pertpsi[LI[1]]]*PD[-p$936867][PD[-h$936868][
          pertscalar[LI[1]]]]])/scale[]^8 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$936870, p$936871]*
        timevec[h$936872]*PD[-p$936870][pertpsi[LI[1]]]*
        PD[-p$936871][PD[-h$936872][pertscalar[LI[1]]]]])/scale[]^8 - 
    (4*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$936874, p$936875]*timevec[h$936876]*
        PD[-p$936874][pertscalar[LI[1]]]*PD[-p$936875][
         PD[-h$936876][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$936878, p$936879]*timevec[h$936880]*
        PD[-p$936878][pertscalar[LI[1]]]*PD[-p$936879][
         PD[-h$936880][pertscalar[LI[1]]]]])/scale[]^8 - 
    (8*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$936882, p$936883]*
        timevec[h$936884]*PD[-p$936882][pertscalar[LI[1]]]*
        PD[-p$936883][PD[-h$936884][pertscalar[LI[1]]]]])/scale[]^8 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$936886, p$936887]*timevec[h$936888]*
        timevec[h$936889]*PD[-p$936886][PD[-h$936889][pertscalar[LI[1]]]]*
        PD[-p$936887][PD[-h$936888][pertscalar[LI[1]]]]])/scale[]^8 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$936891, p$936892]*
        timevec[h$936893]*timevec[h$936894]*PD[-p$936891][
         PD[-h$936894][pertscalar[LI[1]]]]*PD[-p$936892][
         PD[-h$936893][pertscalar[LI[1]]]]])/scale[]^8], 
 HoldPattern[pertpi2[LI[1]]] :> 
  Module[{}, (-4*pprimescalar[]^2*Scalar[pertpsi[LI[1]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]])/
     scale[]^4 - (16*hubbleC[]^2*primescalar[]^2*Scalar[pertpsi[LI[1]]])/
     scale[]^4 - (6*hubbleC[]*primescalar[]^2*
      Scalar[timevec[h$122771]*PD[-h$122771][pertphi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*primescalar[]*Scalar[timevec[h$122773]*
        PD[-h$122773][pertpsi[LI[1]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[timevec[h$122775]*
        PD[-h$122775][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[timevec[h$122777]*
        PD[-h$122777][pertscalar[LI[1]]]])/scale[]^4 + 
    (8*hubbleC[]^2*primescalar[]*Scalar[timevec[h$122779]*
        PD[-h$122779][pertscalar[LI[1]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[timevec[h$122781]*timevec[h$122782]*
        PD[-h$122782][PD[-h$122781][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[timevec[h$122784]*timevec[h$122785]*
        PD[-h$122785][PD[-h$122784][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$122787, p$122788]*
        PD[-p$122787][PD[-p$122788][pertB[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$122790, p$122791]*
        PD[-p$122790][PD[-p$122791][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$122793, p$122794]*
        timevec[h$122795]*PD[-p$122793][PD[-p$122794][PD[-h$122795][
           pertE[LI[1]]]]]])/scale[]^4], HoldPattern[pertpi2[LI[2]]] :> 
  Module[{}, (24*pertpsi[LI[1]]^2*pprimescalar[]^2)/scale[]^4 - 
    (48*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]*primescalar[])/scale[]^4 + 
    (96*hubbleC[]^2*pertpsi[LI[1]]^2*primescalar[]^2)/scale[]^4 - 
    (4*pprimescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[2]]])/
     scale[]^4 - (16*hubbleC[]^2*primescalar[]^2*Scalar[pertpsi[LI[2]]])/
     scale[]^4 - (4*pprimescalar[]^2*
      Scalar[metric\[Delta][p$302589, p$302590]*pertS[LI[1], -p$302589]*
        pertS[LI[1], -p$302590]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302592, p$302593]*pertS[LI[1], -p$302592]*
        pertS[LI[1], -p$302593]])/scale[]^4 - 
    (16*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$302595, p$302596]*
        pertS[LI[1], -p$302595]*pertS[LI[1], -p$302596]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302598, p$302599]*
        metric\[Delta][p$302600, p$302601]*perth[LI[1], -p$302598, -p$302600]*
        timevec[h$302602]*PD[-h$302602][perth[LI[1], -p$302599, -p$302601]]])/
     scale[]^4 - (24*hubbleC[]*primescalar[]^2*
      Scalar[pertphi[LI[1]]*timevec[h$302604]*PD[-h$302604][pertphi[LI[1]]]])/
     scale[]^4 + (48*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$302606]*PD[-h$302606][pertphi[LI[1]]]])/
     scale[]^4 - (6*hubbleC[]*primescalar[]^2*
      Scalar[timevec[h$302608]*PD[-h$302608][pertphi[LI[2]]]])/scale[]^4 + 
    (24*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$302610]*
        PD[-h$302610][pertpsi[LI[1]]]])/scale[]^4 - 
    (24*hubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$302612]*
        PD[-h$302612][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*primescalar[]*Scalar[timevec[h$302614]*
        PD[-h$302614][pertpsi[LI[2]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[timevec[h$302616]*
        PD[-h$302616][pertpsi[LI[2]]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$302618, p$302619]*
        pertS[LI[1], -p$302618]*timevec[h$302620]*PD[-h$302620][
         pertS[LI[1], -p$302619]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302622, p$302623]*
        pertS[LI[1], -p$302622]*timevec[h$302624]*PD[-h$302624][
         pertS[LI[1], -p$302623]]])/scale[]^4 + 
    (16*hubbleC[]*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$302626]*
        PD[-h$302626][pertscalar[LI[1]]]])/scale[]^4 - 
    (64*hubbleC[]^2*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$302628]*
        PD[-h$302628][pertscalar[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[timevec[h$302630]*
        PD[-h$302630][pertscalar[LI[2]]]])/scale[]^4 + 
    (8*hubbleC[]^2*primescalar[]*Scalar[timevec[h$302632]*
        PD[-h$302632][pertscalar[LI[2]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$302634, p$302635]*
        metric\[Delta][p$302636, p$302637]*timevec[h$302638]*
        timevec[h$302639]*PD[-h$302638][perth[LI[1], -p$302635, -p$302637]]*
        PD[-h$302639][perth[LI[1], -p$302634, -p$302636]]])/(2*scale[]^4) + 
    (6*primescalar[]^2*Scalar[timevec[h$302641]*timevec[h$302642]*
        PD[-h$302641][pertphi[LI[1]]]*PD[-h$302642][pertphi[LI[1]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[timevec[h$302644]*
        timevec[h$302645]*PD[-h$302644][pertpsi[LI[1]]]*
        PD[-h$302645][pertpsi[LI[1]]]])/scale[]^4 - 
    (24*hubbleC[]*primescalar[]*Scalar[timevec[h$302647]*timevec[h$302648]*
        PD[-h$302647][pertphi[LI[1]]]*PD[-h$302648][pertscalar[LI[1]]]])/
     scale[]^4 - (4*pprimescalar[]*Scalar[timevec[h$302650]*timevec[h$302651]*
        PD[-h$302650][pertpsi[LI[1]]]*PD[-h$302651][pertscalar[LI[1]]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]*
      Scalar[timevec[h$302653]*timevec[h$302654]*PD[-h$302653][
         pertpsi[LI[1]]]*PD[-h$302654][pertscalar[LI[1]]]])/scale[]^4 + 
    (8*hubbleC[]^2*Scalar[timevec[h$302656]*timevec[h$302657]*
        PD[-h$302656][pertscalar[LI[1]]]*PD[-h$302657][pertscalar[LI[1]]]])/
     scale[]^4 - (16*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$302659]*
        timevec[h$302660]*PD[-h$302660][PD[-h$302659][pertscalar[LI[1]]]]])/
     scale[]^4 + (16*hubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$302662]*timevec[h$302663]*
        PD[-h$302663][PD[-h$302662][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[timevec[h$302665]*timevec[h$302666]*
        PD[-h$302666][PD[-h$302665][pertscalar[LI[2]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[timevec[h$302668]*timevec[h$302669]*
        PD[-h$302669][PD[-h$302668][pertscalar[LI[2]]]]])/scale[]^4 - 
    (4*primescalar[]*Scalar[timevec[h$302671]*timevec[h$302672]*
        timevec[h$302673]*PD[-h$302671][pertpsi[LI[1]]]*
        PD[-h$302673][PD[-h$302672][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*Scalar[timevec[h$302675]*timevec[h$302676]*timevec[h$302677]*
        PD[-h$302675][pertscalar[LI[1]]]*PD[-h$302677][
         PD[-h$302676][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[timevec[h$302679]*timevec[h$302680]*timevec[h$302681]*
        timevec[h$302682]*PD[-h$302680][PD[-h$302679][pertscalar[LI[1]]]]*
        PD[-h$302682][PD[-h$302681][pertscalar[LI[1]]]]])/scale[]^4 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$302684, p$302685]*
        timevec[h$302686]*PD[-h$302686][pertS[LI[1], -p$302685]]*
        PD[-p$302684][pertB[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302688, p$302689]*
        timevec[h$302690]*PD[-h$302690][pertS[LI[1], -p$302689]]*
        PD[-p$302688][pertB[LI[1]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$302692, p$302693]*
        timevec[h$302694]*PD[-h$302694][pertS[LI[1], -p$302693]]*
        PD[-p$302692][pertscalar[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302696, p$302697]*
        timevec[h$302698]*PD[-h$302698][pertS[LI[1], -p$302697]]*
        PD[-p$302696][pertscalar[LI[1]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302700, p$302701]*
        pertphi[LI[1]]*PD[-p$302700][PD[-p$302701][pertB[LI[1]]]]])/
     scale[]^4 + (16*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302703, p$302704]*pertpsi[LI[1]]*
        PD[-p$302703][PD[-p$302704][pertB[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$302706, p$302707]*
        timevec[h$302708]*PD[-h$302708][pertphi[LI[1]]]*
        PD[-p$302706][PD[-p$302707][pertB[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302710, p$302711]*
        timevec[h$302712]*PD[-h$302712][pertscalar[LI[1]]]*
        PD[-p$302710][PD[-p$302711][pertB[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302714, p$302715]*
        PD[-p$302714][PD[-p$302715][pertB[LI[2]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302717, p$302718]*
        timevec[h$302719]*PD[-h$302719][pertphi[LI[1]]]*
        PD[-p$302717][PD[-p$302718][pertE[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302721, p$302722]*
        pertphi[LI[1]]*PD[-p$302721][PD[-p$302722][pertscalar[LI[1]]]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$302724, p$302725]*pertpsi[LI[1]]*
        PD[-p$302724][PD[-p$302725][pertscalar[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$302727, p$302728]*
        timevec[h$302729]*PD[-h$302729][pertphi[LI[1]]]*
        PD[-p$302727][PD[-p$302728][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$302731, p$302732]*timevec[h$302733]*
        PD[-h$302733][pertscalar[LI[1]]]*PD[-p$302731][
         PD[-p$302732][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302735, p$302736]*
        PD[-p$302735][PD[-p$302736][pertscalar[LI[2]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302738, p$302739]*
        pertphi[LI[1]]*timevec[h$302740]*PD[-p$302738][
         PD[-p$302739][PD[-h$302740][pertE[LI[1]]]]]])/scale[]^4 - 
    (16*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302742, p$302743]*
        pertpsi[LI[1]]*timevec[h$302744]*PD[-p$302742][
         PD[-p$302743][PD[-h$302744][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302746, p$302747]*
        timevec[h$302748]*PD[-p$302746][PD[-p$302747][PD[-h$302748][
           pertE[LI[2]]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$302750, p$302751]*
        timevec[h$302752]*timevec[h$302753]*PD[-h$302752][pertphi[LI[1]]]*
        PD[-p$302750][PD[-p$302751][PD[-h$302753][pertE[LI[1]]]]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$302755, p$302756]*timevec[h$302757]*
        timevec[h$302758]*PD[-h$302757][pertscalar[LI[1]]]*
        PD[-p$302755][PD[-p$302756][PD[-h$302758][pertE[LI[1]]]]]])/
     scale[]^4 + (8*pprimescalar[]^2*
      Scalar[metric\[Delta][p$302760, p$302761]*pertS[LI[1], -p$302760]*
        PD[-p$302761][pertB[LI[1]]]])/scale[]^4 - 
    (16*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302763, p$302764]*pertS[LI[1], -p$302763]*
        PD[-p$302764][pertB[LI[1]]]])/scale[]^4 + 
    (32*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$302766, p$302767]*
        pertS[LI[1], -p$302766]*PD[-p$302767][pertB[LI[1]]]])/scale[]^4 - 
    (4*pprimescalar[]^2*Scalar[metric\[Delta][p$302769, p$302770]*
        PD[-p$302769][pertB[LI[1]]]*PD[-p$302770][pertB[LI[1]]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302772, p$302773]*PD[-p$302772][pertB[LI[1]]]*
        PD[-p$302773][pertB[LI[1]]]])/scale[]^4 - 
    (16*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$302775, p$302776]*
        PD[-p$302775][pertB[LI[1]]]*PD[-p$302776][pertB[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302778, p$302779]*
        metric\[Delta][p$302780, p$302781]*timevec[h$302782]*
        PD[-h$302782][perth[LI[1], -p$302779, -p$302781]]*
        PD[-p$302780][pertF[LI[1], -p$302778]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302784, p$302785]*
        metric\[Delta][p$302786, p$302787]*PD[-p$302784][
         pertS[LI[1], -p$302787]]*PD[-p$302786][pertF[LI[1], -p$302785]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302789, p$302790]*metric\[Delta][p$302791, 
         p$302792]*timevec[h$302793]*PD[-p$302789][PD[-h$302793][
          pertF[LI[1], -p$302792]]]*PD[-p$302791][pertF[LI[1], -p$302790]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302795, p$302796]*metric\[Delta][p$302797, 
         p$302798]*PD[-p$302795][PD[-p$302798][pertB[LI[1]]]]*
        PD[-p$302797][pertF[LI[1], -p$302796]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302800, p$302801]*
        metric\[Delta][p$302802, p$302803]*PD[-p$302800][
         PD[-p$302803][pertscalar[LI[1]]]]*PD[-p$302802][
         pertF[LI[1], -p$302801]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302805, p$302806]*
        metric\[Delta][p$302807, p$302808]*timevec[h$302809]*
        PD[-p$302805][PD[-p$302808][PD[-h$302809][pertE[LI[1]]]]]*
        PD[-p$302807][pertF[LI[1], -p$302806]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302811, p$302812]*
        pertS[LI[1], -p$302811]*PD[-p$302812][pertphi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302814, p$302815]*
        PD[-p$302814][pertB[LI[1]]]*PD[-p$302815][pertphi[LI[1]]]])/
     scale[]^4 - (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302817, p$302818]*pertS[LI[1], -p$302817]*
        PD[-p$302818][pertpsi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302820, p$302821]*
        pertS[LI[1], -p$302820]*PD[-p$302821][pertpsi[LI[1]]]])/scale[]^4 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$302823, p$302824]*
        PD[-p$302823][pertB[LI[1]]]*PD[-p$302824][pertpsi[LI[1]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302826, p$302827]*PD[-p$302826][pertB[LI[1]]]*
        PD[-p$302827][pertpsi[LI[1]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$302829, p$302830]*
        PD[-p$302829][pertpsi[LI[1]]]*PD[-p$302830][pertpsi[LI[1]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$302832, p$302833]*
        metric\[Delta][p$302834, p$302835]*timevec[h$302836]*
        PD[-h$302836][perth[LI[1], -p$302833, -p$302835]]*
        PD[-p$302834][pertS[LI[1], -p$302832]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302838, p$302839]*
        metric\[Delta][p$302840, p$302841]*perth[LI[1], -p$302838, -p$302841]*
        PD[-p$302840][pertS[LI[1], -p$302839]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$302843, p$302844]*
        metric\[Delta][p$302845, p$302846]*PD[-p$302843][
         pertS[LI[1], -p$302846]]*PD[-p$302845][pertS[LI[1], -p$302844]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$302848, p$302849]*
        metric\[Delta][p$302850, p$302851]*timevec[h$302852]*
        PD[-p$302848][PD[-h$302852][pertF[LI[1], -p$302851]]]*
        PD[-p$302850][pertS[LI[1], -p$302849]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$302854, p$302855]*
        metric\[Delta][p$302856, p$302857]*PD[-p$302854][
         PD[-p$302857][pertB[LI[1]]]]*PD[-p$302856][pertS[LI[1], 
          -p$302855]]])/scale[]^4 - (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302859, p$302860]*metric\[Delta][p$302861, 
         p$302862]*PD[-p$302859][PD[-p$302862][pertE[LI[1]]]]*
        PD[-p$302861][pertS[LI[1], -p$302860]]])/scale[]^4 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$302864, p$302865]*
        metric\[Delta][p$302866, p$302867]*PD[-p$302864][
         PD[-p$302867][pertscalar[LI[1]]]]*PD[-p$302866][
         pertS[LI[1], -p$302865]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$302869, p$302870]*
        metric\[Delta][p$302871, p$302872]*timevec[h$302873]*
        PD[-p$302869][PD[-p$302872][PD[-h$302873][pertE[LI[1]]]]]*
        PD[-p$302871][pertS[LI[1], -p$302870]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$302875, p$302876]*
        pertS[LI[1], -p$302875]*PD[-p$302876][pertscalar[LI[1]]]])/
     scale[]^4 + (16*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$302878, p$302879]*pertS[LI[1], -p$302878]*
        PD[-p$302879][pertscalar[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$302881, p$302882]*
        PD[-p$302881][pertB[LI[1]]]*PD[-p$302882][pertscalar[LI[1]]]])/
     scale[]^4 - (16*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$302884, p$302885]*PD[-p$302884][pertB[LI[1]]]*
        PD[-p$302885][pertscalar[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302887, p$302888]*
        PD[-p$302887][pertphi[LI[1]]]*PD[-p$302888][pertscalar[LI[1]]]])/
     scale[]^4 - (4*pprimescalar[]*Scalar[metric\[Delta][p$302890, p$302891]*
        PD[-p$302890][pertpsi[LI[1]]]*PD[-p$302891][pertscalar[LI[1]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$302893, p$302894]*PD[-p$302893][pertpsi[LI[1]]]*
        PD[-p$302894][pertscalar[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]^2*Scalar[metric\[Delta][p$302896, p$302897]*
        PD[-p$302896][pertscalar[LI[1]]]*PD[-p$302897][pertscalar[LI[1]]]])/
     scale[]^4 + (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302899, p$302900]*pertS[LI[1], -p$302899]*
        timevec[h$302901]*PD[-p$302900][PD[-h$302901][pertB[LI[1]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302903, p$302904]*pertS[LI[1], -p$302903]*
        timevec[h$302905]*PD[-p$302904][PD[-h$302905][pertB[LI[1]]]]])/
     scale[]^4 - (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$302907, p$302908]*timevec[h$302909]*
        PD[-p$302907][pertB[LI[1]]]*PD[-p$302908][PD[-h$302909][
          pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302911, p$302912]*
        timevec[h$302913]*PD[-p$302911][pertB[LI[1]]]*
        PD[-p$302912][PD[-h$302913][pertB[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$302915, p$302916]*
        timevec[h$302917]*PD[-p$302915][pertscalar[LI[1]]]*
        PD[-p$302916][PD[-h$302917][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302919, p$302920]*
        timevec[h$302921]*PD[-p$302919][pertscalar[LI[1]]]*
        PD[-p$302920][PD[-h$302921][pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$302923, p$302924]*
        metric\[Delta][p$302925, p$302926]*timevec[h$302927]*
        timevec[h$302928]*PD[-h$302928][perth[LI[1], -p$302924, -p$302926]]*
        PD[-p$302925][PD[-h$302927][pertF[LI[1], -p$302923]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$302930, p$302931]*
        metric\[Delta][p$302932, p$302933]*timevec[h$302934]*
        timevec[h$302935]*PD[-p$302930][PD[-h$302935][pertF[LI[1], 
           -p$302933]]]*PD[-p$302932][PD[-h$302934][pertF[LI[1], 
           -p$302931]]]])/scale[]^4 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$302937, p$302938]*
        pertS[LI[1], -p$302937]*timevec[h$302939]*PD[-p$302938][
         PD[-h$302939][pertscalar[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302941, p$302942]*
        pertS[LI[1], -p$302941]*timevec[h$302943]*PD[-p$302942][
         PD[-h$302943][pertscalar[LI[1]]]]])/scale[]^4 - 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$302945, p$302946]*
        timevec[h$302947]*PD[-p$302945][pertB[LI[1]]]*
        PD[-p$302946][PD[-h$302947][pertscalar[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$302949, p$302950]*
        timevec[h$302951]*PD[-p$302949][pertB[LI[1]]]*
        PD[-p$302950][PD[-h$302951][pertscalar[LI[1]]]]])/scale[]^4 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$302953, p$302954]*
        timevec[h$302955]*PD[-p$302953][pertpsi[LI[1]]]*
        PD[-p$302954][PD[-h$302955][pertscalar[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*Scalar[metric\[Delta][p$302957, p$302958]*timevec[h$302959]*
        PD[-p$302957][pertscalar[LI[1]]]*PD[-p$302958][
         PD[-h$302959][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*Scalar[metric\[Delta][p$302961, p$302962]*timevec[h$302963]*
        timevec[h$302964]*PD[-p$302961][PD[-h$302964][pertscalar[LI[1]]]]*
        PD[-p$302962][PD[-h$302963][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$302966, p$302967]*
        metric\[Delta][p$302968, p$302969]*timevec[h$302970]*
        PD[-h$302970][perth[LI[1], -p$302967, -p$302969]]*
        PD[-p$302968][PD[-p$302966][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302972, p$302973]*
        metric\[Delta][p$302974, p$302975]*timevec[h$302976]*
        PD[-h$302976][perth[LI[1], -p$302973, -p$302975]]*
        PD[-p$302974][PD[-p$302972][pertE[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$302978, p$302979]*
        metric\[Delta][p$302980, p$302981]*timevec[h$302982]*
        PD[-h$302982][perth[LI[1], -p$302979, -p$302981]]*
        PD[-p$302980][PD[-p$302978][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$302984, p$302985]*
        metric\[Delta][p$302986, p$302987]*timevec[h$302988]*
        timevec[h$302989]*PD[-h$302988][perth[LI[1], -p$302985, -p$302987]]*
        PD[-p$302986][PD[-p$302984][PD[-h$302989][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$302991, p$302992]*metric\[Delta][p$302993, 
         p$302994]*pertS[LI[1], -p$302991]*PD[-p$302993][
         PD[-p$302994][pertF[LI[1], -p$302992]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$302996, p$302997]*
        metric\[Delta][p$302998, p$302999]*PD[-p$302996][pertB[LI[1]]]*
        PD[-p$302998][PD[-p$302999][pertF[LI[1], -p$302997]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$303001, p$303002]*
        metric\[Delta][p$303003, p$303004]*PD[-p$303001][pertscalar[LI[1]]]*
        PD[-p$303003][PD[-p$303004][pertF[LI[1], -p$303002]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303006, p$303007]*
        metric\[Delta][p$303008, p$303009]*pertS[LI[1], -p$303006]*
        PD[-p$303008][PD[-p$303009][PD[-p$303007][pertE[LI[1]]]]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$303011, p$303012]*metric\[Delta][p$303013, 
         p$303014]*PD[-p$303011][pertB[LI[1]]]*PD[-p$303013][
         PD[-p$303014][PD[-p$303012][pertE[LI[1]]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$303016, p$303017]*
        metric\[Delta][p$303018, p$303019]*PD[-p$303016][pertscalar[LI[1]]]*
        PD[-p$303018][PD[-p$303019][PD[-p$303017][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$303021, p$303022]*metric\[Delta][p$303023, 
         p$303024]*PD[-p$303023][pertF[LI[1], -p$303022]]*
        PD[-p$303024][pertS[LI[1], -p$303021]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$303026, p$303027]*
        metric\[Delta][p$303028, p$303029]*PD[-p$303028][
         pertS[LI[1], -p$303027]]*PD[-p$303029][pertS[LI[1], -p$303026]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$303031, p$303032]*metric\[Delta][p$303033, 
         p$303034]*timevec[h$303035]*PD[-p$303033][pertF[LI[1], -p$303032]]*
        PD[-p$303034][PD[-h$303035][pertF[LI[1], -p$303031]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$303037, p$303038]*
        metric\[Delta][p$303039, p$303040]*timevec[h$303041]*
        PD[-p$303039][pertS[LI[1], -p$303038]]*PD[-p$303040][
         PD[-h$303041][pertF[LI[1], -p$303037]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$303043, p$303044]*
        metric\[Delta][p$303045, p$303046]*timevec[h$303047]*
        timevec[h$303048]*PD[-p$303045][PD[-h$303048][pertF[LI[1], 
           -p$303044]]]*PD[-p$303046][PD[-h$303047][pertF[LI[1], 
           -p$303043]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$303050, p$303051]*
        metric\[Delta][p$303052, p$303053]*timevec[h$303054]*
        PD[-p$303052][PD[-p$303051][pertB[LI[1]]]]*PD[-p$303053][
         PD[-h$303054][pertF[LI[1], -p$303050]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303056, p$303057]*
        metric\[Delta][p$303058, p$303059]*timevec[h$303060]*
        PD[-p$303058][PD[-p$303057][pertE[LI[1]]]]*PD[-p$303059][
         PD[-h$303060][pertF[LI[1], -p$303056]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303062, p$303063]*
        metric\[Delta][p$303064, p$303065]*perth[LI[1], -p$303062, -p$303064]*
        timevec[h$303066]*PD[-p$303065][PD[-h$303066][pertF[LI[1], 
           -p$303063]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$303068, p$303069]*
        metric\[Delta][p$303070, p$303071]*PD[-p$303070][
         PD[-p$303069][pertB[LI[1]]]]*PD[-p$303071][PD[-p$303068][
          pertB[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303073, p$303074]*
        metric\[Delta][p$303075, p$303076]*PD[-p$303075][
         PD[-p$303074][pertB[LI[1]]]]*PD[-p$303076][PD[-p$303073][
          pertE[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$303078, p$303079]*
        metric\[Delta][p$303080, p$303081]*timevec[h$303082]*
        PD[-p$303080][PD[-h$303082][pertF[LI[1], -p$303079]]]*
        PD[-p$303081][PD[-p$303078][pertscalar[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$303084, p$303085]*
        metric\[Delta][p$303086, p$303087]*PD[-p$303086][
         PD[-p$303085][pertB[LI[1]]]]*PD[-p$303087][PD[-p$303084][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$303089, p$303090]*
        metric\[Delta][p$303091, p$303092]*PD[-p$303091][
         PD[-p$303090][pertE[LI[1]]]]*PD[-p$303092][PD[-p$303089][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$303094, p$303095]*metric\[Delta][p$303096, 
         p$303097]*PD[-p$303096][PD[-p$303095][pertscalar[LI[1]]]]*
        PD[-p$303097][PD[-p$303094][pertscalar[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$303099, p$303100]*
        metric\[Delta][p$303101, p$303102]*timevec[h$303103]*
        timevec[h$303104]*PD[-p$303101][PD[-h$303104][pertF[LI[1], 
           -p$303100]]]*PD[-p$303102][PD[-p$303099][PD[-h$303103][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$303106, p$303107]*
        metric\[Delta][p$303108, p$303109]*timevec[h$303110]*
        PD[-p$303108][PD[-p$303107][pertB[LI[1]]]]*PD[-p$303109][
         PD[-p$303106][PD[-h$303110][pertE[LI[1]]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303112, p$303113]*
        metric\[Delta][p$303114, p$303115]*timevec[h$303116]*
        PD[-p$303114][PD[-p$303113][pertE[LI[1]]]]*PD[-p$303115][
         PD[-p$303112][PD[-h$303116][pertE[LI[1]]]]]])/scale[]^4 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$303118, p$303119]*
        metric\[Delta][p$303120, p$303121]*timevec[h$303122]*
        PD[-p$303120][PD[-p$303119][pertscalar[LI[1]]]]*
        PD[-p$303121][PD[-p$303118][PD[-h$303122][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$303124, p$303125]*
        metric\[Delta][p$303126, p$303127]*timevec[h$303128]*
        timevec[h$303129]*PD[-p$303126][PD[-p$303125][PD[-h$303128][
           pertE[LI[1]]]]]*PD[-p$303127][PD[-p$303124][PD[-h$303129][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303131, p$303132]*
        metric\[Delta][p$303133, p$303134]*perth[LI[1], -p$303131, -p$303133]*
        PD[-p$303134][PD[-p$303132][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$303136, p$303137]*
        metric\[Delta][p$303138, p$303139]*perth[LI[1], -p$303136, -p$303138]*
        PD[-p$303139][PD[-p$303137][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$303141, p$303142]*
        metric\[Delta][p$303143, p$303144]*perth[LI[1], -p$303141, -p$303143]*
        timevec[h$303145]*PD[-p$303144][PD[-p$303142][PD[-h$303145][
           pertE[LI[1]]]]]])/scale[]^4], HoldPattern[pertpi3[LI[1]]] :> 
  Module[{}, (6*pprimescalar[]^3*Scalar[pertpsi[LI[1]]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[1]]])/
     scale[]^6 + (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[pertpsi[LI[1]]])/scale[]^6 + 
    (9*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$135230]*
        PD[-h$135230][pertphi[LI[1]]]])/scale[]^6 + 
    (3*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$135232]*
        PD[-h$135232][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$135234]*PD[-h$135234][pertpsi[LI[1]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$135236]*
        PD[-h$135236][pertpsi[LI[1]]]])/scale[]^6 + 
    (3*hubbleC[]*pprimescalar[]^2*Scalar[timevec[h$135238]*
        PD[-h$135238][pertscalar[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$135240]*PD[-h$135240][pertscalar[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^3*primescalar[]^2*Scalar[timevec[h$135242]*
        PD[-h$135242][pertscalar[LI[1]]]])/scale[]^6 - 
    (3*pprimescalar[]^2*Scalar[timevec[h$135244]*timevec[h$135245]*
        PD[-h$135245][PD[-h$135244][pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$135247]*timevec[h$135248]*PD[-h$135248][
         PD[-h$135247][pertscalar[LI[1]]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$135250]*timevec[h$135251]*
        PD[-h$135251][PD[-h$135250][pertscalar[LI[1]]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$135253, p$135254]*
        PD[-p$135253][PD[-p$135254][pertB[LI[1]]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$135256, p$135257]*
        PD[-p$135256][PD[-p$135257][pertscalar[LI[1]]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$135259, p$135260]*
        timevec[h$135261]*PD[-p$135259][PD[-p$135260][PD[-h$135261][
           pertE[LI[1]]]]]])/scale[]^6], HoldPattern[pertpi3[LI[2]]] :> 
  Module[{}, (-48*pertpsi[LI[1]]^2*pprimescalar[]^3)/scale[]^6 + 
    (144*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]^2*primescalar[])/
     scale[]^6 - (144*hubbleC[]^2*pertpsi[LI[1]]^2*pprimescalar[]*
      primescalar[]^2)/scale[]^6 - (96*hubbleC[]^3*pertpsi[LI[1]]^2*
      primescalar[]^3)/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[2]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[metric\[Delta][p$465400, p$465401]*
        pertS[LI[1], -p$465400]*pertS[LI[1], -p$465401]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465403, p$465404]*pertS[LI[1], -p$465403]*
        pertS[LI[1], -p$465404]])/scale[]^6 + 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465406, p$465407]*pertS[LI[1], -p$465406]*
        pertS[LI[1], -p$465407]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$465409, p$465410]*
        pertS[LI[1], -p$465409]*pertS[LI[1], -p$465410]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465412, p$465413]*
        metric\[Delta][p$465414, p$465415]*perth[LI[1], -p$465412, -p$465414]*
        timevec[h$465416]*PD[-h$465416][perth[LI[1], -p$465413, -p$465415]]])/
     scale[]^6 + (36*hubbleC[]^2*primescalar[]^3*
      Scalar[pertphi[LI[1]]*timevec[h$465418]*PD[-h$465418][pertphi[LI[1]]]])/
     scale[]^6 - (108*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$465420]*PD[-h$465420][pertphi[LI[1]]]])/
     scale[]^6 + (9*hubbleC[]^2*primescalar[]^3*
      Scalar[timevec[h$465422]*PD[-h$465422][pertphi[LI[2]]]])/scale[]^6 - 
    (48*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[1]]*
        timevec[h$465424]*PD[-h$465424][pertpsi[LI[1]]]])/scale[]^6 + 
    (96*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$465426]*PD[-h$465426][pertpsi[LI[1]]]])/
     scale[]^6 - (48*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$465428]*PD[-h$465428][pertpsi[LI[1]]]])/
     scale[]^6 + (3*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$465430]*PD[-h$465430][pertpsi[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$465432]*PD[-h$465432][pertpsi[LI[2]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$465434]*
        PD[-h$465434][pertpsi[LI[2]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465436, p$465437]*pertS[LI[1], -p$465436]*
        timevec[h$465438]*PD[-h$465438][pertS[LI[1], -p$465437]]])/
     scale[]^6 - (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465440, p$465441]*pertS[LI[1], -p$465440]*
        timevec[h$465442]*PD[-h$465442][pertS[LI[1], -p$465441]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465444, p$465445]*pertS[LI[1], -p$465444]*
        timevec[h$465446]*PD[-h$465446][pertS[LI[1], -p$465445]]])/
     scale[]^6 - (36*hubbleC[]*pprimescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$465448]*PD[-h$465448][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (72*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$465450]*PD[-h$465450][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (72*hubbleC[]^3*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$465452]*
        PD[-h$465452][pertscalar[LI[1]]]])/scale[]^6 + 
    (3*hubbleC[]*pprimescalar[]^2*Scalar[timevec[h$465454]*
        PD[-h$465454][pertscalar[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$465456]*PD[-h$465456][pertscalar[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]^3*primescalar[]^2*Scalar[timevec[h$465458]*
        PD[-h$465458][pertscalar[LI[2]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465460, p$465461]*
        metric\[Delta][p$465462, p$465463]*timevec[h$465464]*
        timevec[h$465465]*PD[-h$465464][perth[LI[1], -p$465461, -p$465463]]*
        PD[-h$465465][perth[LI[1], -p$465460, -p$465462]]])/(2*scale[]^6) - 
    (18*hubbleC[]*primescalar[]^3*Scalar[timevec[h$465467]*timevec[h$465468]*
        PD[-h$465467][pertphi[LI[1]]]*PD[-h$465468][pertphi[LI[1]]]])/
     scale[]^6 - (6*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$465470]*timevec[h$465471]*PD[-h$465470][
         pertpsi[LI[1]]]*PD[-h$465471][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$465473]*timevec[h$465474]*
        PD[-h$465473][pertpsi[LI[1]]]*PD[-h$465474][pertpsi[LI[1]]]])/
     scale[]^6 + (54*hubbleC[]^2*primescalar[]^2*
      Scalar[timevec[h$465476]*timevec[h$465477]*PD[-h$465476][
         pertphi[LI[1]]]*PD[-h$465477][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*Scalar[timevec[h$465479]*timevec[h$465480]*
        PD[-h$465479][pertpsi[LI[1]]]*PD[-h$465480][pertscalar[LI[1]]]])/
     scale[]^6 - (24*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$465482]*timevec[h$465483]*PD[-h$465482][
         pertpsi[LI[1]]]*PD[-h$465483][pertscalar[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$465485]*
        timevec[h$465486]*PD[-h$465485][pertpsi[LI[1]]]*
        PD[-h$465486][pertscalar[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*pprimescalar[]*Scalar[timevec[h$465488]*timevec[h$465489]*
        PD[-h$465488][pertscalar[LI[1]]]*PD[-h$465489][pertscalar[LI[1]]]])/
     scale[]^6 - (12*hubbleC[]^3*primescalar[]*
      Scalar[timevec[h$465491]*timevec[h$465492]*PD[-h$465491][
         pertscalar[LI[1]]]*PD[-h$465492][pertscalar[LI[1]]]])/scale[]^6 + 
    (36*pprimescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$465494]*
        timevec[h$465495]*PD[-h$465495][PD[-h$465494][pertscalar[LI[1]]]]])/
     scale[]^6 - (72*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$465497]*timevec[h$465498]*
        PD[-h$465498][PD[-h$465497][pertscalar[LI[1]]]]])/scale[]^6 + 
    (36*hubbleC[]^2*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$465500]*
        timevec[h$465501]*PD[-h$465501][PD[-h$465500][pertscalar[LI[1]]]]])/
     scale[]^6 - (3*pprimescalar[]^2*Scalar[timevec[h$465503]*
        timevec[h$465504]*PD[-h$465504][PD[-h$465503][pertscalar[LI[2]]]]])/
     scale[]^6 + (6*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$465506]*timevec[h$465507]*PD[-h$465507][
         PD[-h$465506][pertscalar[LI[2]]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$465509]*timevec[h$465510]*
        PD[-h$465510][PD[-h$465509][pertscalar[LI[2]]]]])/scale[]^6 + 
    (12*pprimescalar[]*primescalar[]*Scalar[timevec[h$465512]*
        timevec[h$465513]*timevec[h$465514]*PD[-h$465512][pertpsi[LI[1]]]*
        PD[-h$465514][PD[-h$465513][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^2*Scalar[timevec[h$465516]*timevec[h$465517]*
        timevec[h$465518]*PD[-h$465516][pertpsi[LI[1]]]*
        PD[-h$465518][PD[-h$465517][pertscalar[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*Scalar[timevec[h$465520]*timevec[h$465521]*
        timevec[h$465522]*PD[-h$465520][pertscalar[LI[1]]]*
        PD[-h$465522][PD[-h$465521][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[timevec[h$465524]*timevec[h$465525]*
        timevec[h$465526]*PD[-h$465524][pertscalar[LI[1]]]*
        PD[-h$465526][PD[-h$465525][pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*pprimescalar[]*Scalar[timevec[h$465528]*timevec[h$465529]*
        timevec[h$465530]*timevec[h$465531]*PD[-h$465529][
         PD[-h$465528][pertscalar[LI[1]]]]*PD[-h$465531][
         PD[-h$465530][pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]*Scalar[timevec[h$465533]*timevec[h$465534]*
        timevec[h$465535]*timevec[h$465536]*PD[-h$465534][
         PD[-h$465533][pertscalar[LI[1]]]]*PD[-h$465536][
         PD[-h$465535][pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465538, p$465539]*timevec[h$465540]*
        PD[-h$465540][pertS[LI[1], -p$465539]]*PD[-p$465538][pertB[LI[1]]]])/
     scale[]^6 + (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465542, p$465543]*timevec[h$465544]*
        PD[-h$465544][pertS[LI[1], -p$465543]]*PD[-p$465542][pertB[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465546, p$465547]*timevec[h$465548]*
        PD[-h$465548][pertS[LI[1], -p$465547]]*PD[-p$465546][pertB[LI[1]]]])/
     scale[]^6 - (6*pprimescalar[]^2*
      Scalar[metric\[Delta][p$465550, p$465551]*timevec[h$465552]*
        PD[-h$465552][pertS[LI[1], -p$465551]]*PD[-p$465550][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465554, p$465555]*timevec[h$465556]*
        PD[-h$465556][pertS[LI[1], -p$465555]]*PD[-p$465554][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465558, p$465559]*
        timevec[h$465560]*PD[-h$465560][pertS[LI[1], -p$465559]]*
        PD[-p$465558][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465562, p$465563]*
        pertphi[LI[1]]*PD[-p$465562][PD[-p$465563][pertB[LI[1]]]]])/
     scale[]^6 - (36*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465565, p$465566]*pertpsi[LI[1]]*
        PD[-p$465565][PD[-p$465566][pertB[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465568, p$465569]*
        timevec[h$465570]*PD[-h$465570][pertphi[LI[1]]]*
        PD[-p$465568][PD[-p$465569][pertB[LI[1]]]]])/scale[]^6 + 
    (18*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465572, p$465573]*
        timevec[h$465574]*PD[-h$465574][pertscalar[LI[1]]]*
        PD[-p$465572][PD[-p$465573][pertB[LI[1]]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465576, p$465577]*
        PD[-p$465576][PD[-p$465577][pertB[LI[2]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465579, p$465580]*
        timevec[h$465581]*PD[-h$465581][pertphi[LI[1]]]*
        PD[-p$465579][PD[-p$465580][pertE[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465583, p$465584]*
        pertphi[LI[1]]*PD[-p$465583][PD[-p$465584][pertscalar[LI[1]]]]])/
     scale[]^6 - (24*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$465586, p$465587]*pertpsi[LI[1]]*
        PD[-p$465586][PD[-p$465587][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$465589, p$465590]*
        timevec[h$465591]*PD[-h$465591][pertphi[LI[1]]]*
        PD[-p$465589][PD[-p$465590][pertscalar[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$465593, p$465594]*
        timevec[h$465595]*PD[-h$465595][pertscalar[LI[1]]]*
        PD[-p$465593][PD[-p$465594][pertscalar[LI[1]]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465597, p$465598]*
        PD[-p$465597][PD[-p$465598][pertscalar[LI[2]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465600, p$465601]*
        pertphi[LI[1]]*timevec[h$465602]*PD[-p$465600][
         PD[-p$465601][PD[-h$465602][pertE[LI[1]]]]]])/scale[]^6 + 
    (36*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465604, p$465605]*
        pertpsi[LI[1]]*timevec[h$465606]*PD[-p$465604][
         PD[-p$465605][PD[-h$465606][pertE[LI[1]]]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465608, p$465609]*
        timevec[h$465610]*PD[-p$465608][PD[-p$465609][PD[-h$465610][
           pertE[LI[2]]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465612, p$465613]*
        timevec[h$465614]*timevec[h$465615]*PD[-h$465614][pertphi[LI[1]]]*
        PD[-p$465612][PD[-p$465613][PD[-h$465615][pertE[LI[1]]]]]])/
     scale[]^6 - (18*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$465617, p$465618]*timevec[h$465619]*
        timevec[h$465620]*PD[-h$465619][pertscalar[LI[1]]]*
        PD[-p$465617][PD[-p$465618][PD[-h$465620][pertE[LI[1]]]]]])/
     scale[]^6 - (12*pprimescalar[]^3*
      Scalar[metric\[Delta][p$465622, p$465623]*pertS[LI[1], -p$465622]*
        PD[-p$465623][pertB[LI[1]]]])/scale[]^6 + 
    (36*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465625, p$465626]*pertS[LI[1], -p$465625]*
        PD[-p$465626][pertB[LI[1]]]])/scale[]^6 - 
    (36*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465628, p$465629]*pertS[LI[1], -p$465628]*
        PD[-p$465629][pertB[LI[1]]]])/scale[]^6 - 
    (24*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$465631, p$465632]*
        pertS[LI[1], -p$465631]*PD[-p$465632][pertB[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[metric\[Delta][p$465634, p$465635]*
        PD[-p$465634][pertB[LI[1]]]*PD[-p$465635][pertB[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465637, p$465638]*PD[-p$465637][pertB[LI[1]]]*
        PD[-p$465638][pertB[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465640, p$465641]*PD[-p$465640][pertB[LI[1]]]*
        PD[-p$465641][pertB[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$465643, p$465644]*
        PD[-p$465643][pertB[LI[1]]]*PD[-p$465644][pertB[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465646, p$465647]*
        metric\[Delta][p$465648, p$465649]*timevec[h$465650]*
        PD[-h$465650][perth[LI[1], -p$465647, -p$465649]]*
        PD[-p$465648][pertF[LI[1], -p$465646]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465652, p$465653]*
        metric\[Delta][p$465654, p$465655]*PD[-p$465652][
         pertS[LI[1], -p$465655]]*PD[-p$465654][pertF[LI[1], -p$465653]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465657, p$465658]*metric\[Delta][p$465659, 
         p$465660]*timevec[h$465661]*PD[-p$465657][PD[-h$465661][
          pertF[LI[1], -p$465660]]]*PD[-p$465659][pertF[LI[1], -p$465658]]])/
     scale[]^6 - (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465663, p$465664]*metric\[Delta][p$465665, 
         p$465666]*PD[-p$465663][PD[-p$465666][pertB[LI[1]]]]*
        PD[-p$465665][pertF[LI[1], -p$465664]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465668, p$465669]*
        metric\[Delta][p$465670, p$465671]*PD[-p$465668][
         PD[-p$465671][pertscalar[LI[1]]]]*PD[-p$465670][
         pertF[LI[1], -p$465669]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465673, p$465674]*
        metric\[Delta][p$465675, p$465676]*timevec[h$465677]*
        PD[-p$465673][PD[-p$465676][PD[-h$465677][pertE[LI[1]]]]]*
        PD[-p$465675][pertF[LI[1], -p$465674]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465679, p$465680]*
        pertS[LI[1], -p$465679]*PD[-p$465680][pertphi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465682, p$465683]*
        PD[-p$465682][pertB[LI[1]]]*PD[-p$465683][pertphi[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465685, p$465686]*pertS[LI[1], -p$465685]*
        PD[-p$465686][pertpsi[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465688, p$465689]*pertS[LI[1], -p$465688]*
        PD[-p$465689][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465691, p$465692]*
        pertS[LI[1], -p$465691]*PD[-p$465692][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465694, p$465695]*PD[-p$465694][pertB[LI[1]]]*
        PD[-p$465695][pertpsi[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465697, p$465698]*PD[-p$465697][pertB[LI[1]]]*
        PD[-p$465698][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465700, p$465701]*
        PD[-p$465700][pertB[LI[1]]]*PD[-p$465701][pertpsi[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465703, p$465704]*PD[-p$465703][pertpsi[LI[1]]]*
        PD[-p$465704][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465706, p$465707]*
        metric\[Delta][p$465708, p$465709]*timevec[h$465710]*
        PD[-h$465710][perth[LI[1], -p$465707, -p$465709]]*
        PD[-p$465708][pertS[LI[1], -p$465706]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465712, p$465713]*
        metric\[Delta][p$465714, p$465715]*perth[LI[1], -p$465712, -p$465715]*
        PD[-p$465714][pertS[LI[1], -p$465713]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465717, p$465718]*
        metric\[Delta][p$465719, p$465720]*PD[-p$465717][
         pertS[LI[1], -p$465720]]*PD[-p$465719][pertS[LI[1], -p$465718]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$465722, p$465723]*metric\[Delta][p$465724, 
         p$465725]*timevec[h$465726]*PD[-p$465722][PD[-h$465726][
          pertF[LI[1], -p$465725]]]*PD[-p$465724][pertS[LI[1], -p$465723]]])/
     scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$465728, p$465729]*metric\[Delta][p$465730, 
         p$465731]*PD[-p$465728][PD[-p$465731][pertB[LI[1]]]]*
        PD[-p$465730][pertS[LI[1], -p$465729]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465733, p$465734]*
        metric\[Delta][p$465735, p$465736]*PD[-p$465733][
         PD[-p$465736][pertE[LI[1]]]]*PD[-p$465735][pertS[LI[1], 
          -p$465734]]])/scale[]^6 + (12*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465738, p$465739]*metric\[Delta][p$465740, 
         p$465741]*PD[-p$465738][PD[-p$465741][pertscalar[LI[1]]]]*
        PD[-p$465740][pertS[LI[1], -p$465739]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465743, p$465744]*
        metric\[Delta][p$465745, p$465746]*timevec[h$465747]*
        PD[-p$465743][PD[-p$465746][PD[-h$465747][pertE[LI[1]]]]]*
        PD[-p$465745][pertS[LI[1], -p$465744]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]^2*Scalar[metric\[Delta][p$465749, p$465750]*
        pertS[LI[1], -p$465749]*PD[-p$465750][pertscalar[LI[1]]]])/
     scale[]^6 - (12*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465752, p$465753]*pertS[LI[1], -p$465752]*
        PD[-p$465753][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]^3*primescalar[]^2*Scalar[metric\[Delta][p$465755, p$465756]*
        pertS[LI[1], -p$465755]*PD[-p$465756][pertscalar[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]*pprimescalar[]^2*
      Scalar[metric\[Delta][p$465758, p$465759]*PD[-p$465758][pertB[LI[1]]]*
        PD[-p$465759][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465761, p$465762]*PD[-p$465761][pertB[LI[1]]]*
        PD[-p$465762][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^2*Scalar[metric\[Delta][p$465764, p$465765]*
        PD[-p$465764][pertB[LI[1]]]*PD[-p$465765][pertscalar[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$465767, p$465768]*PD[-p$465767][pertphi[LI[1]]]*
        PD[-p$465768][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*Scalar[metric\[Delta][p$465770, p$465771]*
        PD[-p$465770][pertpsi[LI[1]]]*PD[-p$465771][pertscalar[LI[1]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$465773, p$465774]*PD[-p$465773][pertpsi[LI[1]]]*
        PD[-p$465774][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*pprimescalar[]*Scalar[metric\[Delta][p$465776, p$465777]*
        PD[-p$465776][pertscalar[LI[1]]]*PD[-p$465777][pertscalar[LI[1]]]])/
     scale[]^6 - (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465779, p$465780]*pertS[LI[1], -p$465779]*
        timevec[h$465781]*PD[-p$465780][PD[-h$465781][pertB[LI[1]]]]])/
     scale[]^6 + (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465783, p$465784]*pertS[LI[1], -p$465783]*
        timevec[h$465785]*PD[-p$465784][PD[-h$465785][pertB[LI[1]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465787, p$465788]*pertS[LI[1], -p$465787]*
        timevec[h$465789]*PD[-p$465788][PD[-h$465789][pertB[LI[1]]]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$465791, p$465792]*timevec[h$465793]*
        PD[-p$465791][pertB[LI[1]]]*PD[-p$465792][PD[-h$465793][
          pertB[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$465795, p$465796]*timevec[h$465797]*
        PD[-p$465795][pertB[LI[1]]]*PD[-p$465796][PD[-h$465797][
          pertB[LI[1]]]]])/scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465799, p$465800]*timevec[h$465801]*
        PD[-p$465799][pertB[LI[1]]]*PD[-p$465800][PD[-h$465801][
          pertB[LI[1]]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*Scalar[metric\[Delta][p$465803, p$465804]*
        timevec[h$465805]*PD[-p$465803][pertscalar[LI[1]]]*
        PD[-p$465804][PD[-h$465805][pertB[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465807, p$465808]*timevec[h$465809]*
        PD[-p$465807][pertscalar[LI[1]]]*PD[-p$465808][
         PD[-h$465809][pertB[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465811, p$465812]*
        timevec[h$465813]*PD[-p$465811][pertscalar[LI[1]]]*
        PD[-p$465812][PD[-h$465813][pertB[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465815, p$465816]*
        metric\[Delta][p$465817, p$465818]*timevec[h$465819]*
        timevec[h$465820]*PD[-h$465820][perth[LI[1], -p$465816, -p$465818]]*
        PD[-p$465817][PD[-h$465819][pertF[LI[1], -p$465815]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465822, p$465823]*
        metric\[Delta][p$465824, p$465825]*timevec[h$465826]*
        timevec[h$465827]*PD[-p$465822][PD[-h$465827][pertF[LI[1], 
           -p$465825]]]*PD[-p$465824][PD[-h$465826][pertF[LI[1], 
           -p$465823]]]])/scale[]^6 - 
    (12*pprimescalar[]^2*Scalar[metric\[Delta][p$465829, p$465830]*
        pertS[LI[1], -p$465829]*timevec[h$465831]*PD[-p$465830][
         PD[-h$465831][pertscalar[LI[1]]]]])/scale[]^6 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465833, p$465834]*pertS[LI[1], -p$465833]*
        timevec[h$465835]*PD[-p$465834][PD[-h$465835][pertscalar[LI[1]]]]])/
     scale[]^6 - (12*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$465837, p$465838]*pertS[LI[1], -p$465837]*
        timevec[h$465839]*PD[-p$465838][PD[-h$465839][pertscalar[LI[1]]]]])/
     scale[]^6 + (12*pprimescalar[]^2*
      Scalar[metric\[Delta][p$465841, p$465842]*timevec[h$465843]*
        PD[-p$465841][pertB[LI[1]]]*PD[-p$465842][PD[-h$465843][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (24*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465845, p$465846]*timevec[h$465847]*
        PD[-p$465845][pertB[LI[1]]]*PD[-p$465846][PD[-h$465847][
          pertscalar[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465849, p$465850]*
        timevec[h$465851]*PD[-p$465849][pertB[LI[1]]]*
        PD[-p$465850][PD[-h$465851][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$465853, p$465854]*timevec[h$465855]*
        PD[-p$465853][pertpsi[LI[1]]]*PD[-p$465854][PD[-h$465855][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$465857, p$465858]*
        timevec[h$465859]*PD[-p$465857][pertscalar[LI[1]]]*
        PD[-p$465858][PD[-h$465859][pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*pprimescalar[]*Scalar[metric\[Delta][p$465861, p$465862]*
        timevec[h$465863]*timevec[h$465864]*PD[-p$465861][
         PD[-h$465864][pertscalar[LI[1]]]]*PD[-p$465862][
         PD[-h$465863][pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465866, p$465867]*
        metric\[Delta][p$465868, p$465869]*timevec[h$465870]*
        PD[-h$465870][perth[LI[1], -p$465867, -p$465869]]*
        PD[-p$465868][PD[-p$465866][pertB[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465872, p$465873]*
        metric\[Delta][p$465874, p$465875]*timevec[h$465876]*
        PD[-h$465876][perth[LI[1], -p$465873, -p$465875]]*
        PD[-p$465874][PD[-p$465872][pertE[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$465878, p$465879]*
        metric\[Delta][p$465880, p$465881]*timevec[h$465882]*
        PD[-h$465882][perth[LI[1], -p$465879, -p$465881]]*
        PD[-p$465880][PD[-p$465878][pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465884, p$465885]*
        metric\[Delta][p$465886, p$465887]*timevec[h$465888]*
        timevec[h$465889]*PD[-h$465888][perth[LI[1], -p$465885, -p$465887]]*
        PD[-p$465886][PD[-p$465884][PD[-h$465889][pertE[LI[1]]]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465891, p$465892]*metric\[Delta][p$465893, 
         p$465894]*pertS[LI[1], -p$465891]*PD[-p$465893][
         PD[-p$465894][pertF[LI[1], -p$465892]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465896, p$465897]*
        metric\[Delta][p$465898, p$465899]*PD[-p$465896][pertB[LI[1]]]*
        PD[-p$465898][PD[-p$465899][pertF[LI[1], -p$465897]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465901, p$465902]*
        metric\[Delta][p$465903, p$465904]*PD[-p$465901][pertscalar[LI[1]]]*
        PD[-p$465903][PD[-p$465904][pertF[LI[1], -p$465902]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$465906, p$465907]*
        metric\[Delta][p$465908, p$465909]*pertS[LI[1], -p$465906]*
        PD[-p$465908][PD[-p$465909][PD[-p$465907][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465911, p$465912]*metric\[Delta][p$465913, 
         p$465914]*PD[-p$465911][pertB[LI[1]]]*PD[-p$465913][
         PD[-p$465914][PD[-p$465912][pertE[LI[1]]]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465916, p$465917]*
        metric\[Delta][p$465918, p$465919]*PD[-p$465916][pertscalar[LI[1]]]*
        PD[-p$465918][PD[-p$465919][PD[-p$465917][pertE[LI[1]]]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465921, p$465922]*metric\[Delta][p$465923, 
         p$465924]*PD[-p$465923][pertF[LI[1], -p$465922]]*
        PD[-p$465924][pertS[LI[1], -p$465921]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465926, p$465927]*
        metric\[Delta][p$465928, p$465929]*PD[-p$465928][
         pertS[LI[1], -p$465927]]*PD[-p$465929][pertS[LI[1], -p$465926]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465931, p$465932]*metric\[Delta][p$465933, 
         p$465934]*timevec[h$465935]*PD[-p$465933][pertF[LI[1], -p$465932]]*
        PD[-p$465934][PD[-h$465935][pertF[LI[1], -p$465931]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465937, p$465938]*
        metric\[Delta][p$465939, p$465940]*timevec[h$465941]*
        PD[-p$465939][pertS[LI[1], -p$465938]]*PD[-p$465940][
         PD[-h$465941][pertF[LI[1], -p$465937]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465943, p$465944]*
        metric\[Delta][p$465945, p$465946]*timevec[h$465947]*
        timevec[h$465948]*PD[-p$465945][PD[-h$465948][pertF[LI[1], 
           -p$465944]]]*PD[-p$465946][PD[-h$465947][pertF[LI[1], 
           -p$465943]]]])/scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$465950, p$465951]*metric\[Delta][p$465952, 
         p$465953]*timevec[h$465954]*PD[-p$465952][PD[-p$465951][
          pertB[LI[1]]]]*PD[-p$465953][PD[-h$465954][pertF[LI[1], 
           -p$465950]]]])/scale[]^6 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465956, p$465957]*metric\[Delta][p$465958, 
         p$465959]*timevec[h$465960]*PD[-p$465958][PD[-p$465957][
          pertE[LI[1]]]]*PD[-p$465959][PD[-h$465960][pertF[LI[1], 
           -p$465956]]]])/scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465962, p$465963]*metric\[Delta][p$465964, 
         p$465965]*perth[LI[1], -p$465962, -p$465964]*timevec[h$465966]*
        PD[-p$465965][PD[-h$465966][pertF[LI[1], -p$465963]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465968, p$465969]*
        metric\[Delta][p$465970, p$465971]*PD[-p$465970][
         PD[-p$465969][pertB[LI[1]]]]*PD[-p$465971][PD[-p$465968][
          pertB[LI[1]]]]])/scale[]^6 - (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$465973, p$465974]*metric\[Delta][p$465975, 
         p$465976]*PD[-p$465975][PD[-p$465974][pertB[LI[1]]]]*
        PD[-p$465976][PD[-p$465973][pertE[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$465978, p$465979]*
        metric\[Delta][p$465980, p$465981]*timevec[h$465982]*
        PD[-p$465980][PD[-h$465982][pertF[LI[1], -p$465979]]]*
        PD[-p$465981][PD[-p$465978][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$465984, p$465985]*
        metric\[Delta][p$465986, p$465987]*PD[-p$465986][
         PD[-p$465985][pertB[LI[1]]]]*PD[-p$465987][PD[-p$465984][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$465989, p$465990]*
        metric\[Delta][p$465991, p$465992]*PD[-p$465991][
         PD[-p$465990][pertE[LI[1]]]]*PD[-p$465992][PD[-p$465989][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$465994, p$465995]*
        metric\[Delta][p$465996, p$465997]*PD[-p$465996][
         PD[-p$465995][pertscalar[LI[1]]]]*PD[-p$465997][
         PD[-p$465994][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$465999, p$466000]*
        metric\[Delta][p$466001, p$466002]*timevec[h$466003]*
        timevec[h$466004]*PD[-p$466001][PD[-h$466004][pertF[LI[1], 
           -p$466000]]]*PD[-p$466002][PD[-p$465999][PD[-h$466003][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$466006, p$466007]*
        metric\[Delta][p$466008, p$466009]*timevec[h$466010]*
        PD[-p$466008][PD[-p$466007][pertB[LI[1]]]]*PD[-p$466009][
         PD[-p$466006][PD[-h$466010][pertE[LI[1]]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$466012, p$466013]*
        metric\[Delta][p$466014, p$466015]*timevec[h$466016]*
        PD[-p$466014][PD[-p$466013][pertE[LI[1]]]]*PD[-p$466015][
         PD[-p$466012][PD[-h$466016][pertE[LI[1]]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$466018, p$466019]*
        metric\[Delta][p$466020, p$466021]*timevec[h$466022]*
        PD[-p$466020][PD[-p$466019][pertscalar[LI[1]]]]*
        PD[-p$466021][PD[-p$466018][PD[-h$466022][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$466024, p$466025]*metric\[Delta][p$466026, 
         p$466027]*timevec[h$466028]*timevec[h$466029]*
        PD[-p$466026][PD[-p$466025][PD[-h$466028][pertE[LI[1]]]]]*
        PD[-p$466027][PD[-p$466024][PD[-h$466029][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$466031, p$466032]*metric\[Delta][p$466033, 
         p$466034]*perth[LI[1], -p$466031, -p$466033]*
        PD[-p$466034][PD[-p$466032][pertB[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$466036, p$466037]*
        metric\[Delta][p$466038, p$466039]*perth[LI[1], -p$466036, -p$466038]*
        PD[-p$466039][PD[-p$466037][pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$466041, p$466042]*
        metric\[Delta][p$466043, p$466044]*perth[LI[1], -p$466041, -p$466043]*
        timevec[h$466045]*PD[-p$466044][PD[-p$466042][PD[-h$466045][
           pertE[LI[1]]]]]])/scale[]^6], HoldPattern[pertpi4[LI[1]]] :> 
  Module[{}, (12*pprimescalar[]*primehubbleC[]*Scalar[pertpsi[LI[1]]])/
     scale[]^4 + (24*hubbleC[]^3*primescalar[]*Scalar[pertpsi[LI[1]]])/
     scale[]^4 + (3*hubbleC[]*pprimescalar[]*
      Scalar[timevec[h$140774]*PD[-h$140774][pertphi[LI[1]]]])/scale[]^4 + 
    (18*hubbleC[]^2*primescalar[]*Scalar[timevec[h$140776]*
        PD[-h$140776][pertphi[LI[1]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$140778]*
        PD[-h$140778][pertphi[LI[1]]]])/scale[]^4 + 
    (3*hubbleC[]*pprimescalar[]*Scalar[timevec[h$140780]*
        PD[-h$140780][pertpsi[LI[1]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$140782]*
        PD[-h$140782][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]^3*Scalar[timevec[h$140784]*PD[-h$140784][
         pertscalar[LI[1]]]])/scale[]^4 + 
    (3*pprimescalar[]*Scalar[timevec[h$140786]*timevec[h$140787]*
        PD[-h$140787][PD[-h$140786][pertphi[LI[1]]]]])/scale[]^4 - 
    (3*primehubbleC[]*Scalar[timevec[h$140789]*timevec[h$140790]*
        PD[-h$140790][PD[-h$140789][pertscalar[LI[1]]]]])/scale[]^4 + 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$140792, p$140793]*
        PD[-p$140792][PD[-p$140793][pertB[LI[1]]]]])/scale[]^4 + 
    (6*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$140795, p$140796]*
        PD[-p$140795][PD[-p$140796][pertB[LI[1]]]]])/scale[]^4 + 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$140798, p$140799]*
        PD[-p$140798][PD[-p$140799][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$140801, p$140802]*
        PD[-p$140801][PD[-p$140802][pertphi[LI[1]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$140804, p$140805]*
        PD[-p$140804][PD[-p$140805][pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]^2*Scalar[metric\[Delta][p$140807, p$140808]*
        PD[-p$140807][PD[-p$140808][pertscalar[LI[1]]]]])/scale[]^4 + 
    (primehubbleC[]*Scalar[metric\[Delta][p$140810, p$140811]*
        PD[-p$140810][PD[-p$140811][pertscalar[LI[1]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$140813, p$140814]*
        timevec[h$140815]*PD[-p$140813][PD[-p$140814][PD[-h$140815][
           pertB[LI[1]]]]]])/scale[]^4 - 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$140817, p$140818]*
        timevec[h$140819]*PD[-p$140817][PD[-p$140818][PD[-h$140819][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (6*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$140821, p$140822]*
        timevec[h$140823]*PD[-p$140821][PD[-p$140822][PD[-h$140823][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$140825, p$140826]*
        timevec[h$140827]*PD[-p$140825][PD[-p$140826][PD[-h$140827][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (pprimescalar[]*Scalar[metric\[Delta][p$140829, p$140830]*
        timevec[h$140831]*timevec[h$140832]*PD[-p$140829][
         PD[-p$140830][PD[-h$140832][PD[-h$140831][pertE[LI[1]]]]]]])/
     scale[]^4], HoldPattern[pertpi4[LI[2]]] :> 
  Module[{}, (-72*pertpsi[LI[1]]^2*pprimescalar[]*primehubbleC[])/scale[]^4 - 
    (144*hubbleC[]^3*pertpsi[LI[1]]^2*primescalar[])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$556948, p$556949]*pertS[LI[1], -p$556948]*
        pertS[LI[1], -p$556949]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$556951, p$556952]*
        pertS[LI[1], -p$556951]*pertS[LI[1], -p$556952]])/scale[]^4 + 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$556954, p$556955]*
        metric\[Delta][p$556956, p$556957]*perth[LI[1], -p$556954, -p$556956]*
        timevec[h$556958]*PD[-h$556958][perth[LI[1], -p$556955, -p$556957]]])/
     scale[]^4 + (6*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$556960, p$556961]*metric\[Delta][p$556962, 
         p$556963]*perth[LI[1], -p$556960, -p$556962]*timevec[h$556964]*
        PD[-h$556964][perth[LI[1], -p$556961, -p$556963]]])/scale[]^4 + 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$556966, p$556967]*
        metric\[Delta][p$556968, p$556969]*perth[LI[1], -p$556966, -p$556968]*
        timevec[h$556970]*PD[-h$556970][perth[LI[1], -p$556967, -p$556969]]])/
     scale[]^4 + (12*hubbleC[]*pprimescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$556972]*PD[-h$556972][pertphi[LI[1]]]])/
     scale[]^4 + (72*hubbleC[]^2*primescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$556974]*PD[-h$556974][pertphi[LI[1]]]])/
     scale[]^4 + (12*primehubbleC[]*primescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$556976]*PD[-h$556976][pertphi[LI[1]]]])/
     scale[]^4 - (24*hubbleC[]*pprimescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$556978]*PD[-h$556978][pertphi[LI[1]]]])/
     scale[]^4 - (144*hubbleC[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$556980]*PD[-h$556980][pertphi[LI[1]]]])/
     scale[]^4 - (24*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$556982]*PD[-h$556982][pertphi[LI[1]]]])/
     scale[]^4 + (3*hubbleC[]*pprimescalar[]*
      Scalar[timevec[h$556984]*PD[-h$556984][pertphi[LI[2]]]])/scale[]^4 + 
    (18*hubbleC[]^2*primescalar[]*Scalar[timevec[h$556986]*
        PD[-h$556986][pertphi[LI[2]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$556988]*
        PD[-h$556988][pertphi[LI[2]]]])/scale[]^4 - 
    (36*hubbleC[]*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$556990]*
        PD[-h$556990][pertpsi[LI[1]]]])/scale[]^4 - 
    (36*primehubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$556992]*
        PD[-h$556992][pertpsi[LI[1]]]])/scale[]^4 + 
    (3*hubbleC[]*pprimescalar[]*Scalar[timevec[h$556994]*
        PD[-h$556994][pertpsi[LI[2]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$556996]*
        PD[-h$556996][pertpsi[LI[2]]]])/scale[]^4 + 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$556998, p$556999]*
        pertS[LI[1], -p$556998]*timevec[h$557000]*PD[-h$557000][
         pertS[LI[1], -p$556999]]])/scale[]^4 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557002, p$557003]*
        pertS[LI[1], -p$557002]*timevec[h$557004]*PD[-h$557004][
         pertS[LI[1], -p$557003]]])/scale[]^4 + 
    (48*hubbleC[]^3*Scalar[pertpsi[LI[1]]*timevec[h$557006]*
        PD[-h$557006][pertscalar[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]^3*Scalar[timevec[h$557008]*PD[-h$557008][
         pertscalar[LI[2]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$557010, p$557011]*
        metric\[Delta][p$557012, p$557013]*timevec[h$557014]*
        timevec[h$557015]*PD[-h$557014][perth[LI[1], -p$557011, -p$557013]]*
        PD[-h$557015][perth[LI[1], -p$557010, -p$557012]]])/(2*scale[]^4) - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557017, p$557018]*
        metric\[Delta][p$557019, p$557020]*timevec[h$557021]*
        timevec[h$557022]*PD[-h$557021][perth[LI[1], -p$557018, -p$557020]]*
        PD[-h$557022][perth[LI[1], -p$557017, -p$557019]]])/(2*scale[]^4) + 
    (6*pprimescalar[]*Scalar[timevec[h$557024]*timevec[h$557025]*
        PD[-h$557024][pertphi[LI[1]]]*PD[-h$557025][pertphi[LI[1]]]])/
     scale[]^4 - (42*hubbleC[]*primescalar[]*
      Scalar[timevec[h$557027]*timevec[h$557028]*PD[-h$557027][
         pertphi[LI[1]]]*PD[-h$557028][pertphi[LI[1]]]])/scale[]^4 - 
    (6*pprimescalar[]*Scalar[timevec[h$557030]*timevec[h$557031]*
        PD[-h$557030][pertphi[LI[1]]]*PD[-h$557031][pertpsi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]*primescalar[]*
      Scalar[timevec[h$557033]*timevec[h$557034]*PD[-h$557033][
         pertphi[LI[1]]]*PD[-h$557034][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*primescalar[]*Scalar[timevec[h$557036]*timevec[h$557037]*
        PD[-h$557036][pertpsi[LI[1]]]*PD[-h$557037][pertpsi[LI[1]]]])/
     scale[]^4 + (36*hubbleC[]^2*Scalar[timevec[h$557039]*timevec[h$557040]*
        PD[-h$557039][pertphi[LI[1]]]*PD[-h$557040][pertscalar[LI[1]]]])/
     scale[]^4 + (6*primehubbleC[]*Scalar[timevec[h$557042]*timevec[h$557043]*
        PD[-h$557042][pertphi[LI[1]]]*PD[-h$557043][pertscalar[LI[1]]]])/
     scale[]^4 + (6*primehubbleC[]*Scalar[timevec[h$557045]*timevec[h$557046]*
        PD[-h$557045][pertpsi[LI[1]]]*PD[-h$557046][pertscalar[LI[1]]]])/
     scale[]^4 + (pprimescalar[]*Scalar[metric\[Delta][p$557048, p$557049]*
        metric\[Delta][p$557050, p$557051]*perth[LI[1], -p$557048, -p$557050]*
        timevec[h$557052]*timevec[h$557053]*PD[-h$557053][
         PD[-h$557052][perth[LI[1], -p$557049, -p$557051]]]])/scale[]^4 + 
    (12*pprimescalar[]*Scalar[pertphi[LI[1]]*timevec[h$557055]*
        timevec[h$557056]*PD[-h$557056][PD[-h$557055][pertphi[LI[1]]]]])/
     scale[]^4 - (24*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$557058]*
        timevec[h$557059]*PD[-h$557059][PD[-h$557058][pertphi[LI[1]]]]])/
     scale[]^4 + (3*pprimescalar[]*Scalar[timevec[h$557061]*timevec[h$557062]*
        PD[-h$557062][PD[-h$557061][pertphi[LI[2]]]]])/scale[]^4 + 
    (24*primehubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$557064]*
        timevec[h$557065]*PD[-h$557065][PD[-h$557064][pertscalar[LI[1]]]]])/
     scale[]^4 - (3*primehubbleC[]*Scalar[timevec[h$557067]*timevec[h$557068]*
        PD[-h$557068][PD[-h$557067][pertscalar[LI[2]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557070, p$557071]*
        metric\[Delta][p$557072, p$557073]*timevec[h$557074]*
        timevec[h$557075]*timevec[h$557076]*PD[-h$557074][
         perth[LI[1], -p$557071, -p$557073]]*PD[-h$557076][
         PD[-h$557075][perth[LI[1], -p$557070, -p$557072]]]])/(2*scale[]^4) - 
    (6*primescalar[]*Scalar[timevec[h$557078]*timevec[h$557079]*
        timevec[h$557080]*PD[-h$557078][pertphi[LI[1]]]*
        PD[-h$557080][PD[-h$557079][pertphi[LI[1]]]]])/scale[]^4 - 
    (6*primescalar[]*Scalar[timevec[h$557082]*timevec[h$557083]*
        timevec[h$557084]*PD[-h$557082][pertpsi[LI[1]]]*
        PD[-h$557084][PD[-h$557083][pertphi[LI[1]]]]])/scale[]^4 + 
    (6*hubbleC[]*Scalar[timevec[h$557086]*timevec[h$557087]*timevec[h$557088]*
        PD[-h$557086][pertphi[LI[1]]]*PD[-h$557088][PD[-h$557087][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (6*hubbleC[]*Scalar[timevec[h$557090]*timevec[h$557091]*timevec[h$557092]*
        PD[-h$557090][pertpsi[LI[1]]]*PD[-h$557092][PD[-h$557091][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (6*Scalar[timevec[h$557094]*timevec[h$557095]*timevec[h$557096]*
        timevec[h$557097]*PD[-h$557095][PD[-h$557094][pertphi[LI[1]]]]*
        PD[-h$557097][PD[-h$557096][pertscalar[LI[1]]]]])/scale[]^4 - 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557099, p$557100]*
        timevec[h$557101]*PD[-h$557101][pertS[LI[1], -p$557100]]*
        PD[-p$557099][pertB[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557103, p$557104]*
        timevec[h$557105]*PD[-h$557105][pertS[LI[1], -p$557104]]*
        PD[-p$557103][pertB[LI[1]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557107, p$557108]*
        timevec[h$557109]*PD[-h$557109][pertS[LI[1], -p$557108]]*
        PD[-p$557107][pertphi[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*Scalar[metric\[Delta][p$557111, p$557112]*
        timevec[h$557113]*PD[-h$557113][pertS[LI[1], -p$557112]]*
        PD[-p$557111][pertscalar[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557115, p$557116]*
        pertphi[LI[1]]*PD[-p$557115][PD[-p$557116][pertB[LI[1]]]]])/
     scale[]^4 + (24*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557118, p$557119]*pertphi[LI[1]]*
        PD[-p$557118][PD[-p$557119][pertB[LI[1]]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557121, p$557122]*
        pertphi[LI[1]]*PD[-p$557121][PD[-p$557122][pertB[LI[1]]]]])/
     scale[]^4 - (8*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557124, p$557125]*pertpsi[LI[1]]*
        PD[-p$557124][PD[-p$557125][pertB[LI[1]]]]])/scale[]^4 - 
    (48*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557127, p$557128]*
        pertpsi[LI[1]]*PD[-p$557127][PD[-p$557128][pertB[LI[1]]]]])/
     scale[]^4 - (8*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557130, p$557131]*pertpsi[LI[1]]*
        PD[-p$557130][PD[-p$557131][pertB[LI[1]]]]])/scale[]^4 - 
    (28*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557133, p$557134]*
        timevec[h$557135]*PD[-h$557135][pertphi[LI[1]]]*
        PD[-p$557133][PD[-p$557134][pertB[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557137, p$557138]*
        timevec[h$557139]*PD[-h$557139][pertpsi[LI[1]]]*
        PD[-p$557137][PD[-p$557138][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557141, p$557142]*
        timevec[h$557143]*PD[-h$557143][pertpsi[LI[1]]]*
        PD[-p$557141][PD[-p$557142][pertB[LI[1]]]]])/scale[]^4 + 
    (12*hubbleC[]^2*Scalar[metric\[Delta][p$557145, p$557146]*
        timevec[h$557147]*PD[-h$557147][pertscalar[LI[1]]]*
        PD[-p$557145][PD[-p$557146][pertB[LI[1]]]]])/scale[]^4 + 
    (2*primehubbleC[]*Scalar[metric\[Delta][p$557149, p$557150]*
        timevec[h$557151]*PD[-h$557151][pertscalar[LI[1]]]*
        PD[-p$557149][PD[-p$557150][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$557153, p$557154]*
        timevec[h$557155]*timevec[h$557156]*PD[-h$557156][
         PD[-h$557155][pertphi[LI[1]]]]*PD[-p$557153][PD[-p$557154][
          pertB[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$557158, p$557159]*timevec[h$557160]*
        timevec[h$557161]*PD[-h$557161][PD[-h$557160][pertscalar[LI[1]]]]*
        PD[-p$557158][PD[-p$557159][pertB[LI[1]]]]])/scale[]^4 + 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557163, p$557164]*
        PD[-p$557163][PD[-p$557164][pertB[LI[2]]]]])/scale[]^4 + 
    (6*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557166, p$557167]*
        PD[-p$557166][PD[-p$557167][pertB[LI[2]]]]])/scale[]^4 + 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557169, p$557170]*
        PD[-p$557169][PD[-p$557170][pertB[LI[2]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557172, p$557173]*
        timevec[h$557174]*PD[-h$557174][pertphi[LI[1]]]*
        PD[-p$557172][PD[-p$557173][pertE[LI[1]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557176, p$557177]*
        timevec[h$557178]*PD[-h$557178][pertphi[LI[1]]]*
        PD[-p$557176][PD[-p$557177][pertE[LI[1]]]]])/scale[]^4 - 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557180, p$557181]*
        timevec[h$557182]*PD[-h$557182][pertphi[LI[1]]]*
        PD[-p$557180][PD[-p$557181][pertE[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557184, p$557185]*
        timevec[h$557186]*timevec[h$557187]*PD[-h$557187][
         PD[-h$557186][pertphi[LI[1]]]]*PD[-p$557184][PD[-p$557185][
          pertE[LI[1]]]]])/scale[]^4 - 
    (32*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557189, p$557190]*
        pertphi[LI[1]]*PD[-p$557189][PD[-p$557190][pertphi[LI[1]]]]])/
     scale[]^4 + (16*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557192, p$557193]*pertpsi[LI[1]]*
        PD[-p$557192][PD[-p$557193][pertphi[LI[1]]]]])/scale[]^4 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$557195, p$557196]*
        timevec[h$557197]*PD[-h$557197][pertphi[LI[1]]]*
        PD[-p$557195][PD[-p$557196][pertphi[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*Scalar[metric\[Delta][p$557199, p$557200]*timevec[h$557201]*
        PD[-h$557201][pertscalar[LI[1]]]*PD[-p$557199][
         PD[-p$557200][pertphi[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557203, p$557204]*
        PD[-p$557203][PD[-p$557204][pertphi[LI[2]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557206, p$557207]*
        pertphi[LI[1]]*PD[-p$557206][PD[-p$557207][pertpsi[LI[1]]]]])/
     scale[]^4 - (8*pprimescalar[]*Scalar[metric\[Delta][p$557209, p$557210]*
        pertpsi[LI[1]]*PD[-p$557209][PD[-p$557210][pertpsi[LI[1]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$557212, p$557213]*
        timevec[h$557214]*PD[-h$557214][pertphi[LI[1]]]*
        PD[-p$557212][PD[-p$557213][pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$557216, p$557217]*
        timevec[h$557218]*PD[-h$557218][pertpsi[LI[1]]]*
        PD[-p$557216][PD[-p$557217][pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$557220, p$557221]*timevec[h$557222]*
        timevec[h$557223]*PD[-h$557223][PD[-h$557222][pertscalar[LI[1]]]]*
        PD[-p$557220][PD[-p$557221][pertpsi[LI[1]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$557225, p$557226]*
        PD[-p$557225][PD[-p$557226][pertpsi[LI[2]]]]])/scale[]^4 + 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$557228, p$557229]*pertphi[LI[1]]*
        PD[-p$557228][PD[-p$557229][pertscalar[LI[1]]]]])/scale[]^4 + 
    (4*primehubbleC[]*Scalar[metric\[Delta][p$557231, p$557232]*
        pertphi[LI[1]]*PD[-p$557231][PD[-p$557232][pertscalar[LI[1]]]]])/
     scale[]^4 - (8*hubbleC[]^2*Scalar[metric\[Delta][p$557234, p$557235]*
        pertpsi[LI[1]]*PD[-p$557234][PD[-p$557235][pertscalar[LI[1]]]]])/
     scale[]^4 - (4*primehubbleC[]*Scalar[metric\[Delta][p$557237, p$557238]*
        pertpsi[LI[1]]*PD[-p$557237][PD[-p$557238][pertscalar[LI[1]]]]])/
     scale[]^4 - (10*hubbleC[]*Scalar[metric\[Delta][p$557240, p$557241]*
        timevec[h$557242]*PD[-h$557242][pertphi[LI[1]]]*
        PD[-p$557240][PD[-p$557241][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$557244, p$557245]*timevec[h$557246]*
        PD[-h$557246][pertpsi[LI[1]]]*PD[-p$557244][PD[-p$557245][
          pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$557248, p$557249]*timevec[h$557250]*
        timevec[h$557251]*PD[-h$557251][PD[-h$557250][pertphi[LI[1]]]]*
        PD[-p$557248][PD[-p$557249][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]^2*Scalar[metric\[Delta][p$557253, p$557254]*
        PD[-p$557253][PD[-p$557254][pertscalar[LI[2]]]]])/scale[]^4 + 
    (primehubbleC[]*Scalar[metric\[Delta][p$557256, p$557257]*
        PD[-p$557256][PD[-p$557257][pertscalar[LI[2]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557259, p$557260]*
        pertphi[LI[1]]*timevec[h$557261]*PD[-p$557259][
         PD[-p$557260][PD[-h$557261][pertB[LI[1]]]]]])/scale[]^4 - 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$557263, p$557264]*
        pertpsi[LI[1]]*timevec[h$557265]*PD[-p$557263][
         PD[-p$557264][PD[-h$557265][pertB[LI[1]]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$557267, p$557268]*timevec[h$557269]*
        timevec[h$557270]*timevec[h$557271]*PD[-h$557271][
         PD[-h$557270][pertscalar[LI[1]]]]*PD[-p$557267][
         PD[-p$557268][PD[-h$557269][pertB[LI[1]]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$557273, p$557274]*
        timevec[h$557275]*PD[-p$557273][PD[-p$557274][PD[-h$557275][
           pertB[LI[2]]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557277, p$557278]*
        pertphi[LI[1]]*timevec[h$557279]*PD[-p$557277][
         PD[-p$557278][PD[-h$557279][pertE[LI[1]]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557281, p$557282]*
        pertphi[LI[1]]*timevec[h$557283]*PD[-p$557281][
         PD[-p$557282][PD[-h$557283][pertE[LI[1]]]]]])/scale[]^4 - 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557285, p$557286]*
        pertphi[LI[1]]*timevec[h$557287]*PD[-p$557285][
         PD[-p$557286][PD[-h$557287][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557289, p$557290]*
        pertpsi[LI[1]]*timevec[h$557291]*PD[-p$557289][
         PD[-p$557290][PD[-h$557291][pertE[LI[1]]]]]])/scale[]^4 + 
    (48*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557293, p$557294]*
        pertpsi[LI[1]]*timevec[h$557295]*PD[-p$557293][
         PD[-p$557294][PD[-h$557295][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557297, p$557298]*
        pertpsi[LI[1]]*timevec[h$557299]*PD[-p$557297][
         PD[-p$557298][PD[-h$557299][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$557301, p$557302]*
        timevec[h$557303]*timevec[h$557304]*timevec[h$557305]*
        PD[-h$557305][PD[-h$557304][pertphi[LI[1]]]]*
        PD[-p$557301][PD[-p$557302][PD[-h$557303][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*Scalar[metric\[Delta][p$557307, p$557308]*
        timevec[h$557309]*timevec[h$557310]*timevec[h$557311]*
        PD[-h$557311][PD[-h$557310][pertscalar[LI[1]]]]*
        PD[-p$557307][PD[-p$557308][PD[-h$557309][pertE[LI[1]]]]]])/
     scale[]^4 - (hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557313, p$557314]*timevec[h$557315]*
        PD[-p$557313][PD[-p$557314][PD[-h$557315][pertE[LI[2]]]]]])/
     scale[]^4 - (6*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557317, p$557318]*timevec[h$557319]*
        PD[-p$557317][PD[-p$557318][PD[-h$557319][pertE[LI[2]]]]]])/
     scale[]^4 - (primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557321, p$557322]*timevec[h$557323]*
        PD[-p$557321][PD[-p$557322][PD[-h$557323][pertE[LI[2]]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$557325, p$557326]*
        timevec[h$557327]*timevec[h$557328]*PD[-h$557327][pertphi[LI[1]]]*
        PD[-p$557325][PD[-p$557326][PD[-h$557328][pertB[LI[1]]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$557330, p$557331]*
        timevec[h$557332]*timevec[h$557333]*PD[-h$557332][pertpsi[LI[1]]]*
        PD[-p$557330][PD[-p$557331][PD[-h$557333][pertB[LI[1]]]]]])/
     scale[]^4 - (4*pprimescalar[]*Scalar[metric\[Delta][p$557335, p$557336]*
        timevec[h$557337]*timevec[h$557338]*PD[-h$557337][pertphi[LI[1]]]*
        PD[-p$557335][PD[-p$557336][PD[-h$557338][pertE[LI[1]]]]]])/
     scale[]^4 + (28*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557340, p$557341]*timevec[h$557342]*
        timevec[h$557343]*PD[-h$557342][pertphi[LI[1]]]*
        PD[-p$557340][PD[-p$557341][PD[-h$557343][pertE[LI[1]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$557345, p$557346]*
        timevec[h$557347]*timevec[h$557348]*PD[-h$557347][pertpsi[LI[1]]]*
        PD[-p$557345][PD[-p$557346][PD[-h$557348][pertE[LI[1]]]]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557350, p$557351]*timevec[h$557352]*
        timevec[h$557353]*PD[-h$557352][pertpsi[LI[1]]]*
        PD[-p$557350][PD[-p$557351][PD[-h$557353][pertE[LI[1]]]]]])/
     scale[]^4 - (12*hubbleC[]^2*Scalar[metric\[Delta][p$557355, p$557356]*
        timevec[h$557357]*timevec[h$557358]*PD[-h$557357][pertscalar[LI[1]]]*
        PD[-p$557355][PD[-p$557356][PD[-h$557358][pertE[LI[1]]]]]])/
     scale[]^4 - (2*primehubbleC[]*Scalar[metric\[Delta][p$557360, p$557361]*
        timevec[h$557362]*timevec[h$557363]*PD[-h$557362][pertscalar[LI[1]]]*
        PD[-p$557360][PD[-p$557361][PD[-h$557363][pertE[LI[1]]]]]])/
     scale[]^4 - (4*pprimescalar[]*Scalar[metric\[Delta][p$557365, p$557366]*
        pertphi[LI[1]]*timevec[h$557367]*timevec[h$557368]*
        PD[-p$557365][PD[-p$557366][PD[-h$557368][PD[-h$557367][
            pertE[LI[1]]]]]]])/scale[]^4 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$557370, p$557371]*
        pertpsi[LI[1]]*timevec[h$557372]*timevec[h$557373]*
        PD[-p$557370][PD[-p$557371][PD[-h$557373][PD[-h$557372][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$557375, p$557376]*timevec[h$557377]*
        timevec[h$557378]*timevec[h$557379]*timevec[h$557380]*
        PD[-h$557380][PD[-h$557379][pertscalar[LI[1]]]]*
        PD[-p$557375][PD[-p$557376][PD[-h$557378][PD[-h$557377][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (pprimescalar[]*Scalar[metric\[Delta][p$557382, p$557383]*
        timevec[h$557384]*timevec[h$557385]*PD[-p$557382][
         PD[-p$557383][PD[-h$557385][PD[-h$557384][pertE[LI[2]]]]]]])/
     scale[]^4 + (2*primescalar[]*Scalar[metric\[Delta][p$557387, p$557388]*
        timevec[h$557389]*timevec[h$557390]*timevec[h$557391]*
        PD[-h$557389][pertphi[LI[1]]]*PD[-p$557387][PD[-p$557388][
          PD[-h$557391][PD[-h$557390][pertE[LI[1]]]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$557393, p$557394]*
        timevec[h$557395]*timevec[h$557396]*timevec[h$557397]*
        PD[-h$557395][pertpsi[LI[1]]]*PD[-p$557393][PD[-p$557394][
          PD[-h$557397][PD[-h$557396][pertE[LI[1]]]]]]])/scale[]^4 - 
    (24*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$557399, p$557400]*pertS[LI[1], -p$557399]*
        PD[-p$557400][pertB[LI[1]]]])/scale[]^4 - 
    (48*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$557402, p$557403]*
        pertS[LI[1], -p$557402]*PD[-p$557403][pertB[LI[1]]]])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$557405, p$557406]*PD[-p$557405][pertB[LI[1]]]*
        PD[-p$557406][pertB[LI[1]]]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$557408, p$557409]*
        PD[-p$557408][pertB[LI[1]]]*PD[-p$557409][pertB[LI[1]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557411, p$557412]*
        metric\[Delta][p$557413, p$557414]*timevec[h$557415]*
        PD[-h$557415][perth[LI[1], -p$557412, -p$557414]]*
        PD[-p$557413][pertF[LI[1], -p$557411]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557417, p$557418]*
        metric\[Delta][p$557419, p$557420]*timevec[h$557421]*
        PD[-h$557421][perth[LI[1], -p$557418, -p$557420]]*
        PD[-p$557419][pertF[LI[1], -p$557417]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557423, p$557424]*
        metric\[Delta][p$557425, p$557426]*timevec[h$557427]*
        PD[-h$557427][perth[LI[1], -p$557424, -p$557426]]*
        PD[-p$557425][pertF[LI[1], -p$557423]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557429, p$557430]*
        metric\[Delta][p$557431, p$557432]*timevec[h$557433]*
        timevec[h$557434]*PD[-h$557434][PD[-h$557433][perth[LI[1], -p$557430, 
           -p$557432]]]*PD[-p$557431][pertF[LI[1], -p$557429]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557436, p$557437]*
        metric\[Delta][p$557438, p$557439]*PD[-p$557436][
         pertS[LI[1], -p$557439]]*PD[-p$557438][pertF[LI[1], -p$557437]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557441, p$557442]*metric\[Delta][p$557443, 
         p$557444]*PD[-p$557441][pertS[LI[1], -p$557444]]*
        PD[-p$557443][pertF[LI[1], -p$557442]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557446, p$557447]*
        metric\[Delta][p$557448, p$557449]*PD[-p$557446][
         pertS[LI[1], -p$557449]]*PD[-p$557448][pertF[LI[1], -p$557447]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557451, p$557452]*metric\[Delta][p$557453, 
         p$557454]*timevec[h$557455]*PD[-p$557451][PD[-h$557455][
          pertF[LI[1], -p$557454]]]*PD[-p$557453][pertF[LI[1], -p$557452]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557457, p$557458]*metric\[Delta][p$557459, 
         p$557460]*timevec[h$557461]*PD[-p$557457][PD[-h$557461][
          pertF[LI[1], -p$557460]]]*PD[-p$557459][pertF[LI[1], -p$557458]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557463, p$557464]*metric\[Delta][p$557465, 
         p$557466]*timevec[h$557467]*PD[-p$557463][PD[-h$557467][
          pertF[LI[1], -p$557466]]]*PD[-p$557465][pertF[LI[1], -p$557464]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$557469, p$557470]*
        metric\[Delta][p$557471, p$557472]*timevec[h$557473]*
        PD[-p$557469][PD[-h$557473][pertS[LI[1], -p$557472]]]*
        PD[-p$557471][pertF[LI[1], -p$557470]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557475, p$557476]*
        metric\[Delta][p$557477, p$557478]*timevec[h$557479]*
        timevec[h$557480]*PD[-p$557475][PD[-h$557480][PD[-h$557479][
           pertF[LI[1], -p$557478]]]]*PD[-p$557477][pertF[LI[1], 
          -p$557476]]])/scale[]^4 - (4*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557482, p$557483]*metric\[Delta][p$557484, 
         p$557485]*PD[-p$557482][PD[-p$557485][pertB[LI[1]]]]*
        PD[-p$557484][pertF[LI[1], -p$557483]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557487, p$557488]*
        metric\[Delta][p$557489, p$557490]*PD[-p$557487][
         PD[-p$557490][pertB[LI[1]]]]*PD[-p$557489][pertF[LI[1], 
          -p$557488]]])/scale[]^4 - (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557492, p$557493]*metric\[Delta][p$557494, 
         p$557495]*PD[-p$557492][PD[-p$557495][pertB[LI[1]]]]*
        PD[-p$557494][pertF[LI[1], -p$557493]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557497, p$557498]*
        metric\[Delta][p$557499, p$557500]*PD[-p$557497][
         PD[-p$557500][pertphi[LI[1]]]]*PD[-p$557499][
         pertF[LI[1], -p$557498]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557502, p$557503]*
        metric\[Delta][p$557504, p$557505]*PD[-p$557502][
         PD[-p$557505][pertpsi[LI[1]]]]*PD[-p$557504][
         pertF[LI[1], -p$557503]]])/scale[]^4 - 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$557507, p$557508]*
        metric\[Delta][p$557509, p$557510]*PD[-p$557507][
         PD[-p$557510][pertscalar[LI[1]]]]*PD[-p$557509][
         pertF[LI[1], -p$557508]]])/scale[]^4 - 
    (4*primehubbleC[]*Scalar[metric\[Delta][p$557512, p$557513]*
        metric\[Delta][p$557514, p$557515]*PD[-p$557512][
         PD[-p$557515][pertscalar[LI[1]]]]*PD[-p$557514][
         pertF[LI[1], -p$557513]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557517, p$557518]*
        metric\[Delta][p$557519, p$557520]*timevec[h$557521]*
        PD[-p$557517][PD[-p$557520][PD[-h$557521][pertB[LI[1]]]]]*
        PD[-p$557519][pertF[LI[1], -p$557518]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557523, p$557524]*
        metric\[Delta][p$557525, p$557526]*timevec[h$557527]*
        PD[-p$557523][PD[-p$557526][PD[-h$557527][pertE[LI[1]]]]]*
        PD[-p$557525][pertF[LI[1], -p$557524]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557529, p$557530]*
        metric\[Delta][p$557531, p$557532]*timevec[h$557533]*
        PD[-p$557529][PD[-p$557532][PD[-h$557533][pertE[LI[1]]]]]*
        PD[-p$557531][pertF[LI[1], -p$557530]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557535, p$557536]*
        metric\[Delta][p$557537, p$557538]*timevec[h$557539]*
        PD[-p$557535][PD[-p$557538][PD[-h$557539][pertE[LI[1]]]]]*
        PD[-p$557537][pertF[LI[1], -p$557536]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$557541, p$557542]*
        metric\[Delta][p$557543, p$557544]*timevec[h$557545]*
        timevec[h$557546]*PD[-p$557541][PD[-p$557544][PD[-h$557546][
           PD[-h$557545][pertE[LI[1]]]]]]*PD[-p$557543][
         pertF[LI[1], -p$557542]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557548, p$557549]*
        pertS[LI[1], -p$557548]*PD[-p$557549][pertphi[LI[1]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557551, p$557552]*
        pertS[LI[1], -p$557551]*PD[-p$557552][pertphi[LI[1]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557554, p$557555]*
        pertS[LI[1], -p$557554]*PD[-p$557555][pertphi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557557, p$557558]*
        PD[-p$557557][pertB[LI[1]]]*PD[-p$557558][pertphi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557560, p$557561]*PD[-p$557560][pertB[LI[1]]]*
        PD[-p$557561][pertphi[LI[1]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557563, p$557564]*
        PD[-p$557563][pertB[LI[1]]]*PD[-p$557564][pertphi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557566, p$557567]*PD[-p$557566][pertphi[LI[1]]]*
        PD[-p$557567][pertphi[LI[1]]]])/scale[]^4 + 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557569, p$557570]*
        pertS[LI[1], -p$557569]*PD[-p$557570][pertpsi[LI[1]]]])/scale[]^4 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557572, p$557573]*
        pertS[LI[1], -p$557572]*PD[-p$557573][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557575, p$557576]*
        PD[-p$557575][pertB[LI[1]]]*PD[-p$557576][pertpsi[LI[1]]]])/
     scale[]^4 - (6*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557578, p$557579]*PD[-p$557578][pertB[LI[1]]]*
        PD[-p$557579][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557581, p$557582]*
        PD[-p$557581][pertphi[LI[1]]]*PD[-p$557582][pertpsi[LI[1]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$557584, p$557585]*
        PD[-p$557584][pertpsi[LI[1]]]*PD[-p$557585][pertpsi[LI[1]]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557587, p$557588]*PD[-p$557587][pertpsi[LI[1]]]*
        PD[-p$557588][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557590, p$557591]*
        metric\[Delta][p$557592, p$557593]*timevec[h$557594]*
        PD[-h$557594][perth[LI[1], -p$557591, -p$557593]]*
        PD[-p$557592][pertS[LI[1], -p$557590]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557596, p$557597]*
        metric\[Delta][p$557598, p$557599]*timevec[h$557600]*
        timevec[h$557601]*PD[-h$557601][PD[-h$557600][perth[LI[1], -p$557597, 
           -p$557599]]]*PD[-p$557598][pertS[LI[1], -p$557596]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557603, p$557604]*
        metric\[Delta][p$557605, p$557606]*perth[LI[1], -p$557603, -p$557606]*
        PD[-p$557605][pertS[LI[1], -p$557604]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557608, p$557609]*
        metric\[Delta][p$557610, p$557611]*perth[LI[1], -p$557608, -p$557611]*
        PD[-p$557610][pertS[LI[1], -p$557609]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557613, p$557614]*
        metric\[Delta][p$557615, p$557616]*perth[LI[1], -p$557613, -p$557616]*
        PD[-p$557615][pertS[LI[1], -p$557614]]])/scale[]^4 - 
    (pprimescalar[]*Scalar[metric\[Delta][p$557618, p$557619]*
        metric\[Delta][p$557620, p$557621]*PD[-p$557618][
         pertS[LI[1], -p$557621]]*PD[-p$557620][pertS[LI[1], -p$557619]]])/
     scale[]^4 - (hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557623, p$557624]*metric\[Delta][p$557625, 
         p$557626]*PD[-p$557623][pertS[LI[1], -p$557626]]*
        PD[-p$557625][pertS[LI[1], -p$557624]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557628, p$557629]*
        metric\[Delta][p$557630, p$557631]*timevec[h$557632]*
        PD[-p$557628][PD[-h$557632][pertF[LI[1], -p$557631]]]*
        PD[-p$557630][pertS[LI[1], -p$557629]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557634, p$557635]*
        metric\[Delta][p$557636, p$557637]*timevec[h$557638]*
        PD[-p$557634][PD[-h$557638][pertS[LI[1], -p$557637]]]*
        PD[-p$557636][pertS[LI[1], -p$557635]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557640, p$557641]*
        metric\[Delta][p$557642, p$557643]*timevec[h$557644]*
        timevec[h$557645]*PD[-p$557640][PD[-h$557645][PD[-h$557644][
           pertF[LI[1], -p$557643]]]]*PD[-p$557642][pertS[LI[1], 
          -p$557641]]])/scale[]^4 + (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557647, p$557648]*metric\[Delta][p$557649, 
         p$557650]*PD[-p$557647][PD[-p$557650][pertB[LI[1]]]]*
        PD[-p$557649][pertS[LI[1], -p$557648]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557652, p$557653]*
        metric\[Delta][p$557654, p$557655]*PD[-p$557652][
         PD[-p$557655][pertE[LI[1]]]]*PD[-p$557654][pertS[LI[1], 
          -p$557653]]])/scale[]^4 + (24*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557657, p$557658]*metric\[Delta][p$557659, 
         p$557660]*PD[-p$557657][PD[-p$557660][pertE[LI[1]]]]*
        PD[-p$557659][pertS[LI[1], -p$557658]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557662, p$557663]*
        metric\[Delta][p$557664, p$557665]*PD[-p$557662][
         PD[-p$557665][pertE[LI[1]]]]*PD[-p$557664][pertS[LI[1], 
          -p$557663]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$557667, p$557668]*
        metric\[Delta][p$557669, p$557670]*PD[-p$557667][
         PD[-p$557670][pertphi[LI[1]]]]*PD[-p$557669][
         pertS[LI[1], -p$557668]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$557672, p$557673]*
        metric\[Delta][p$557674, p$557675]*PD[-p$557672][
         PD[-p$557675][pertpsi[LI[1]]]]*PD[-p$557674][
         pertS[LI[1], -p$557673]]])/scale[]^4 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$557677, p$557678]*
        metric\[Delta][p$557679, p$557680]*PD[-p$557677][
         PD[-p$557680][pertscalar[LI[1]]]]*PD[-p$557679][
         pertS[LI[1], -p$557678]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$557682, p$557683]*
        metric\[Delta][p$557684, p$557685]*timevec[h$557686]*
        PD[-p$557682][PD[-p$557685][PD[-h$557686][pertB[LI[1]]]]]*
        PD[-p$557684][pertS[LI[1], -p$557683]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557688, p$557689]*
        metric\[Delta][p$557690, p$557691]*timevec[h$557692]*
        PD[-p$557688][PD[-p$557691][PD[-h$557692][pertE[LI[1]]]]]*
        PD[-p$557690][pertS[LI[1], -p$557689]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$557694, p$557695]*
        metric\[Delta][p$557696, p$557697]*timevec[h$557698]*
        timevec[h$557699]*PD[-p$557694][PD[-p$557697][PD[-h$557699][
           PD[-h$557698][pertE[LI[1]]]]]]*PD[-p$557696][
         pertS[LI[1], -p$557695]]])/scale[]^4 - 
    (12*hubbleC[]^3*Scalar[metric\[Delta][p$557701, p$557702]*
        pertS[LI[1], -p$557701]*PD[-p$557702][pertscalar[LI[1]]]])/
     scale[]^4 + (12*hubbleC[]^3*Scalar[metric\[Delta][p$557704, p$557705]*
        PD[-p$557704][pertB[LI[1]]]*PD[-p$557705][pertscalar[LI[1]]]])/
     scale[]^4 - (4*hubbleC[]^2*Scalar[metric\[Delta][p$557707, p$557708]*
        PD[-p$557707][pertphi[LI[1]]]*PD[-p$557708][pertscalar[LI[1]]]])/
     scale[]^4 - (2*primehubbleC[]*Scalar[metric\[Delta][p$557710, p$557711]*
        PD[-p$557710][pertphi[LI[1]]]*PD[-p$557711][pertscalar[LI[1]]]])/
     scale[]^4 + (8*hubbleC[]^2*Scalar[metric\[Delta][p$557713, p$557714]*
        PD[-p$557713][pertpsi[LI[1]]]*PD[-p$557714][pertscalar[LI[1]]]])/
     scale[]^4 + (6*primehubbleC[]*Scalar[metric\[Delta][p$557716, p$557717]*
        PD[-p$557716][pertpsi[LI[1]]]*PD[-p$557717][pertscalar[LI[1]]]])/
     scale[]^4 - (6*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557719, p$557720]*pertS[LI[1], -p$557719]*
        timevec[h$557721]*PD[-p$557720][PD[-h$557721][pertB[LI[1]]]]])/
     scale[]^4 - (6*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557723, p$557724]*pertS[LI[1], -p$557723]*
        timevec[h$557725]*PD[-p$557724][PD[-h$557725][pertB[LI[1]]]]])/
     scale[]^4 + (6*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557727, p$557728]*timevec[h$557729]*
        PD[-p$557727][pertB[LI[1]]]*PD[-p$557728][PD[-h$557729][
          pertB[LI[1]]]]])/scale[]^4 + (6*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557731, p$557732]*timevec[h$557733]*
        PD[-p$557731][pertB[LI[1]]]*PD[-p$557732][PD[-h$557733][
          pertB[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557735, p$557736]*
        timevec[h$557737]*PD[-p$557735][pertphi[LI[1]]]*
        PD[-p$557736][PD[-h$557737][pertB[LI[1]]]]])/scale[]^4 + 
    (6*primehubbleC[]*Scalar[metric\[Delta][p$557739, p$557740]*
        timevec[h$557741]*PD[-p$557739][pertscalar[LI[1]]]*
        PD[-p$557740][PD[-h$557741][pertB[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557743, p$557744]*
        metric\[Delta][p$557745, p$557746]*timevec[h$557747]*
        timevec[h$557748]*PD[-h$557748][perth[LI[1], -p$557744, -p$557746]]*
        PD[-p$557745][PD[-h$557747][pertF[LI[1], -p$557743]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557750, p$557751]*
        metric\[Delta][p$557752, p$557753]*timevec[h$557754]*
        timevec[h$557755]*PD[-h$557755][perth[LI[1], -p$557751, -p$557753]]*
        PD[-p$557752][PD[-h$557754][pertF[LI[1], -p$557750]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557757, p$557758]*
        metric\[Delta][p$557759, p$557760]*timevec[h$557761]*
        timevec[h$557762]*timevec[h$557763]*PD[-h$557763][
         PD[-h$557762][perth[LI[1], -p$557758, -p$557760]]]*
        PD[-p$557759][PD[-h$557761][pertF[LI[1], -p$557757]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$557765, p$557766]*
        metric\[Delta][p$557767, p$557768]*timevec[h$557769]*
        timevec[h$557770]*PD[-p$557765][PD[-h$557770][pertF[LI[1], 
           -p$557768]]]*PD[-p$557767][PD[-h$557769][pertF[LI[1], 
           -p$557766]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557772, p$557773]*
        metric\[Delta][p$557774, p$557775]*timevec[h$557776]*
        timevec[h$557777]*PD[-p$557772][PD[-h$557777][pertF[LI[1], 
           -p$557775]]]*PD[-p$557774][PD[-h$557776][pertF[LI[1], 
           -p$557773]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557779, p$557780]*
        metric\[Delta][p$557781, p$557782]*timevec[h$557783]*
        timevec[h$557784]*PD[-p$557779][PD[-h$557784][pertS[LI[1], 
           -p$557782]]]*PD[-p$557781][PD[-h$557783][pertF[LI[1], 
           -p$557780]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557786, p$557787]*
        metric\[Delta][p$557788, p$557789]*timevec[h$557790]*
        timevec[h$557791]*timevec[h$557792]*PD[-p$557786][
         PD[-h$557792][PD[-h$557791][pertF[LI[1], -p$557789]]]]*
        PD[-p$557788][PD[-h$557790][pertF[LI[1], -p$557787]]]])/scale[]^4 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$557794, p$557795]*
        pertS[LI[1], -p$557794]*timevec[h$557796]*PD[-p$557795][
         PD[-h$557796][pertphi[LI[1]]]]])/scale[]^4 - 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$557798, p$557799]*
        timevec[h$557800]*PD[-p$557798][pertB[LI[1]]]*
        PD[-p$557799][PD[-h$557800][pertphi[LI[1]]]]])/scale[]^4 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$557802, p$557803]*
        timevec[h$557804]*PD[-p$557802][pertpsi[LI[1]]]*
        PD[-p$557803][PD[-h$557804][pertphi[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*Scalar[metric\[Delta][p$557806, p$557807]*timevec[h$557808]*
        PD[-p$557806][pertscalar[LI[1]]]*PD[-p$557807][
         PD[-h$557808][pertphi[LI[1]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557810, p$557811]*
        metric\[Delta][p$557812, p$557813]*timevec[h$557814]*
        timevec[h$557815]*PD[-h$557815][perth[LI[1], -p$557811, -p$557813]]*
        PD[-p$557812][PD[-h$557814][pertS[LI[1], -p$557810]]]])/scale[]^4 - 
    (12*primehubbleC[]*Scalar[metric\[Delta][p$557817, p$557818]*
        pertS[LI[1], -p$557817]*timevec[h$557819]*PD[-p$557818][
         PD[-h$557819][pertscalar[LI[1]]]]])/scale[]^4 + 
    (12*primehubbleC[]*Scalar[metric\[Delta][p$557821, p$557822]*
        timevec[h$557823]*PD[-p$557821][pertB[LI[1]]]*
        PD[-p$557822][PD[-h$557823][pertscalar[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*Scalar[metric\[Delta][p$557825, p$557826]*timevec[h$557827]*
        PD[-p$557825][pertpsi[LI[1]]]*PD[-p$557826][PD[-h$557827][
          pertscalar[LI[1]]]]])/scale[]^4 - 
    (8*Scalar[metric\[Delta][p$557829, p$557830]*timevec[h$557831]*
        timevec[h$557832]*PD[-p$557829][PD[-h$557832][pertphi[LI[1]]]]*
        PD[-p$557830][PD[-h$557831][pertscalar[LI[1]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$557834, p$557835]*
        metric\[Delta][p$557836, p$557837]*timevec[h$557838]*
        timevec[h$557839]*timevec[h$557840]*PD[-h$557838][
         perth[LI[1], -p$557835, -p$557837]]*PD[-p$557836][
         PD[-h$557840][PD[-h$557839][pertF[LI[1], -p$557834]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557842, p$557843]*
        metric\[Delta][p$557844, p$557845]*timevec[h$557846]*
        PD[-h$557846][perth[LI[1], -p$557843, -p$557845]]*
        PD[-p$557844][PD[-p$557842][pertB[LI[1]]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$557848, p$557849]*
        metric\[Delta][p$557850, p$557851]*timevec[h$557852]*
        timevec[h$557853]*PD[-h$557853][PD[-h$557852][perth[LI[1], -p$557849, 
           -p$557851]]]*PD[-p$557850][PD[-p$557848][pertB[LI[1]]]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$557855, p$557856]*metric\[Delta][p$557857, 
         p$557858]*timevec[h$557859]*PD[-h$557859][perth[LI[1], -p$557856, 
          -p$557858]]*PD[-p$557857][PD[-p$557855][pertE[LI[1]]]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$557861, p$557862]*metric\[Delta][p$557863, 
         p$557864]*timevec[h$557865]*PD[-h$557865][perth[LI[1], -p$557862, 
          -p$557864]]*PD[-p$557863][PD[-p$557861][pertE[LI[1]]]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557867, p$557868]*metric\[Delta][p$557869, 
         p$557870]*timevec[h$557871]*PD[-h$557871][perth[LI[1], -p$557868, 
          -p$557870]]*PD[-p$557869][PD[-p$557867][pertE[LI[1]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$557873, p$557874]*
        metric\[Delta][p$557875, p$557876]*timevec[h$557877]*
        timevec[h$557878]*PD[-h$557878][PD[-h$557877][perth[LI[1], -p$557874, 
           -p$557876]]]*PD[-p$557875][PD[-p$557873][pertE[LI[1]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$557880, p$557881]*
        metric\[Delta][p$557882, p$557883]*timevec[h$557884]*
        PD[-h$557884][perth[LI[1], -p$557881, -p$557883]]*
        PD[-p$557882][PD[-p$557880][pertphi[LI[1]]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$557886, p$557887]*
        metric\[Delta][p$557888, p$557889]*timevec[h$557890]*
        PD[-h$557890][perth[LI[1], -p$557887, -p$557889]]*
        PD[-p$557888][PD[-p$557886][pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$557892, p$557893]*
        metric\[Delta][p$557894, p$557895]*timevec[h$557896]*
        PD[-h$557896][perth[LI[1], -p$557893, -p$557895]]*
        PD[-p$557894][PD[-p$557892][pertscalar[LI[1]]]]])/scale[]^4 + 
    Scalar[metric\[Delta][p$557898, p$557899]*metric\[Delta][p$557900, 
        p$557901]*timevec[h$557902]*timevec[h$557903]*
       PD[-h$557903][PD[-h$557902][perth[LI[1], -p$557899, -p$557901]]]*
       PD[-p$557900][PD[-p$557898][pertscalar[LI[1]]]]]/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$557905, p$557906]*
        metric\[Delta][p$557907, p$557908]*timevec[h$557909]*
        timevec[h$557910]*PD[-h$557909][perth[LI[1], -p$557906, -p$557908]]*
        PD[-p$557907][PD[-p$557905][PD[-h$557910][pertB[LI[1]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$557912, p$557913]*
        metric\[Delta][p$557914, p$557915]*timevec[h$557916]*
        timevec[h$557917]*PD[-h$557916][perth[LI[1], -p$557913, -p$557915]]*
        PD[-p$557914][PD[-p$557912][PD[-h$557917][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557919, p$557920]*metric\[Delta][p$557921, 
         p$557922]*timevec[h$557923]*timevec[h$557924]*
        PD[-h$557923][perth[LI[1], -p$557920, -p$557922]]*
        PD[-p$557921][PD[-p$557919][PD[-h$557924][pertE[LI[1]]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$557926, p$557927]*
        metric\[Delta][p$557928, p$557929]*timevec[h$557930]*
        timevec[h$557931]*timevec[h$557932]*PD[-h$557931][
         PD[-h$557930][perth[LI[1], -p$557927, -p$557929]]]*
        PD[-p$557928][PD[-p$557926][PD[-h$557932][pertE[LI[1]]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$557934, p$557935]*
        metric\[Delta][p$557936, p$557937]*timevec[h$557938]*
        timevec[h$557939]*timevec[h$557940]*PD[-h$557938][
         perth[LI[1], -p$557935, -p$557937]]*PD[-p$557936][
         PD[-p$557934][PD[-h$557940][PD[-h$557939][pertE[LI[1]]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$557942, p$557943]*metric\[Delta][p$557944, 
         p$557945]*PD[-p$557942][PD[-p$557943][pertB[LI[1]]]]*
        PD[-p$557944][PD[-p$557945][pertB[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557947, p$557948]*
        metric\[Delta][p$557949, p$557950]*timevec[h$557951]*
        PD[-h$557951][pertS[LI[1], -p$557948]]*PD[-p$557949][
         PD[-p$557950][pertF[LI[1], -p$557947]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557953, p$557954]*
        metric\[Delta][p$557955, p$557956]*pertS[LI[1], -p$557953]*
        PD[-p$557955][PD[-p$557956][pertF[LI[1], -p$557954]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557958, p$557959]*
        metric\[Delta][p$557960, p$557961]*pertS[LI[1], -p$557958]*
        PD[-p$557960][PD[-p$557961][pertF[LI[1], -p$557959]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557963, p$557964]*
        metric\[Delta][p$557965, p$557966]*pertS[LI[1], -p$557963]*
        PD[-p$557965][PD[-p$557966][pertF[LI[1], -p$557964]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$557968, p$557969]*
        metric\[Delta][p$557970, p$557971]*PD[-p$557968][pertB[LI[1]]]*
        PD[-p$557970][PD[-p$557971][pertF[LI[1], -p$557969]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$557973, p$557974]*
        metric\[Delta][p$557975, p$557976]*PD[-p$557973][pertB[LI[1]]]*
        PD[-p$557975][PD[-p$557976][pertF[LI[1], -p$557974]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$557978, p$557979]*
        metric\[Delta][p$557980, p$557981]*PD[-p$557978][pertB[LI[1]]]*
        PD[-p$557980][PD[-p$557981][pertF[LI[1], -p$557979]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557983, p$557984]*
        metric\[Delta][p$557985, p$557986]*PD[-p$557983][pertpsi[LI[1]]]*
        PD[-p$557985][PD[-p$557986][pertF[LI[1], -p$557984]]]])/scale[]^4 - 
    (4*hubbleC[]^2*Scalar[metric\[Delta][p$557988, p$557989]*
        metric\[Delta][p$557990, p$557991]*PD[-p$557988][pertscalar[LI[1]]]*
        PD[-p$557990][PD[-p$557991][pertF[LI[1], -p$557989]]]])/scale[]^4 - 
    (2*primehubbleC[]*Scalar[metric\[Delta][p$557993, p$557994]*
        metric\[Delta][p$557995, p$557996]*PD[-p$557993][pertscalar[LI[1]]]*
        PD[-p$557995][PD[-p$557996][pertF[LI[1], -p$557994]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$557998, p$557999]*
        metric\[Delta][p$558000, p$558001]*timevec[h$558002]*
        PD[-p$557998][PD[-h$558002][pertB[LI[1]]]]*PD[-p$558000][
         PD[-p$558001][pertF[LI[1], -p$557999]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558004, p$558005]*
        metric\[Delta][p$558006, p$558007]*PD[-p$558004][
         PD[-p$558005][pertB[LI[1]]]]*PD[-p$558006][PD[-p$558007][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558009, p$558010]*
        metric\[Delta][p$558011, p$558012]*PD[-p$558009][
         PD[-p$558010][pertE[LI[1]]]]*PD[-p$558011][PD[-p$558012][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558014, p$558015]*
        metric\[Delta][p$558016, p$558017]*pertS[LI[1], -p$558014]*
        PD[-p$558016][PD[-p$558017][pertS[LI[1], -p$558015]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558019, p$558020]*
        metric\[Delta][p$558021, p$558022]*PD[-p$558019][pertB[LI[1]]]*
        PD[-p$558021][PD[-p$558022][pertS[LI[1], -p$558020]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558024, p$558025]*
        metric\[Delta][p$558026, p$558027]*PD[-p$558024][pertpsi[LI[1]]]*
        PD[-p$558026][PD[-p$558027][pertS[LI[1], -p$558025]]]])/scale[]^4 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$558029, p$558030]*
        metric\[Delta][p$558031, p$558032]*PD[-p$558029][pertscalar[LI[1]]]*
        PD[-p$558031][PD[-p$558032][pertS[LI[1], -p$558030]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$558034, p$558035]*metric\[Delta][p$558036, 
         p$558037]*timevec[h$558038]*PD[-p$558034][PD[-h$558038][
          pertscalar[LI[1]]]]*PD[-p$558036][PD[-p$558037][
          pertS[LI[1], -p$558035]]]])/scale[]^4 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$558040, p$558041]*
        metric\[Delta][p$558042, p$558043]*PD[-p$558040][
         PD[-p$558041][pertB[LI[1]]]]*PD[-p$558042][PD[-p$558043][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$558045, p$558046]*metric\[Delta][p$558047, 
         p$558048]*PD[-p$558045][PD[-p$558046][pertphi[LI[1]]]]*
        PD[-p$558047][PD[-p$558048][pertscalar[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558050, p$558051]*
        metric\[Delta][p$558052, p$558053]*timevec[h$558054]*
        PD[-p$558050][PD[-p$558051][pertB[LI[1]]]]*PD[-p$558052][
         PD[-p$558053][PD[-h$558054][pertE[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558056, p$558057]*
        metric\[Delta][p$558058, p$558059]*timevec[h$558060]*
        PD[-p$558056][PD[-p$558057][pertphi[LI[1]]]]*
        PD[-p$558058][PD[-p$558059][PD[-h$558060][pertE[LI[1]]]]]])/
     scale[]^4 + (2*hubbleC[]*Scalar[metric\[Delta][p$558062, p$558063]*
        metric\[Delta][p$558064, p$558065]*timevec[h$558066]*
        PD[-p$558062][PD[-p$558063][pertscalar[LI[1]]]]*
        PD[-p$558064][PD[-p$558065][PD[-h$558066][pertE[LI[1]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$558068, p$558069]*
        metric\[Delta][p$558070, p$558071]*pertS[LI[1], -p$558068]*
        timevec[h$558072]*PD[-p$558070][PD[-p$558071][PD[-h$558072][
           pertF[LI[1], -p$558069]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558074, p$558075]*
        metric\[Delta][p$558076, p$558077]*timevec[h$558078]*
        PD[-p$558074][pertB[LI[1]]]*PD[-p$558076][PD[-p$558077][
          PD[-h$558078][pertF[LI[1], -p$558075]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558080, p$558081]*
        metric\[Delta][p$558082, p$558083]*timevec[h$558084]*
        PD[-p$558080][pertpsi[LI[1]]]*PD[-p$558082][PD[-p$558083][
          PD[-h$558084][pertF[LI[1], -p$558081]]]]])/scale[]^4 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$558086, p$558087]*
        metric\[Delta][p$558088, p$558089]*timevec[h$558090]*
        PD[-p$558086][pertscalar[LI[1]]]*PD[-p$558088][
         PD[-p$558089][PD[-h$558090][pertF[LI[1], -p$558087]]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$558092, p$558093]*metric\[Delta][p$558094, 
         p$558095]*timevec[h$558096]*timevec[h$558097]*
        PD[-p$558092][PD[-h$558097][pertscalar[LI[1]]]]*
        PD[-p$558094][PD[-p$558095][PD[-h$558096][pertF[LI[1], 
            -p$558093]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558099, p$558100]*
        metric\[Delta][p$558101, p$558102]*timevec[h$558103]*
        timevec[h$558104]*PD[-p$558099][PD[-p$558100][PD[-h$558103][
           pertE[LI[1]]]]]*PD[-p$558101][PD[-p$558102][PD[-h$558104][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558106, p$558107]*
        metric\[Delta][p$558108, p$558109]*timevec[h$558110]*
        PD[-h$558110][pertS[LI[1], -p$558107]]*PD[-p$558108][
         PD[-p$558109][PD[-p$558106][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558112, p$558113]*
        metric\[Delta][p$558114, p$558115]*pertS[LI[1], -p$558112]*
        PD[-p$558114][PD[-p$558115][PD[-p$558113][pertE[LI[1]]]]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$558117, p$558118]*metric\[Delta][p$558119, 
         p$558120]*pertS[LI[1], -p$558117]*PD[-p$558119][
         PD[-p$558120][PD[-p$558118][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558122, p$558123]*
        metric\[Delta][p$558124, p$558125]*pertS[LI[1], -p$558122]*
        PD[-p$558124][PD[-p$558125][PD[-p$558123][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$558127, p$558128]*metric\[Delta][p$558129, 
         p$558130]*PD[-p$558127][pertB[LI[1]]]*PD[-p$558129][
         PD[-p$558130][PD[-p$558128][pertE[LI[1]]]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558132, p$558133]*
        metric\[Delta][p$558134, p$558135]*PD[-p$558132][pertB[LI[1]]]*
        PD[-p$558134][PD[-p$558135][PD[-p$558133][pertE[LI[1]]]]]])/
     scale[]^4 - (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558137, p$558138]*metric\[Delta][p$558139, 
         p$558140]*PD[-p$558137][pertB[LI[1]]]*PD[-p$558139][
         PD[-p$558140][PD[-p$558138][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558142, p$558143]*
        metric\[Delta][p$558144, p$558145]*PD[-p$558142][pertphi[LI[1]]]*
        PD[-p$558144][PD[-p$558145][PD[-p$558143][pertE[LI[1]]]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$558147, p$558148]*
        metric\[Delta][p$558149, p$558150]*PD[-p$558147][pertpsi[LI[1]]]*
        PD[-p$558149][PD[-p$558150][PD[-p$558148][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]^2*Scalar[metric\[Delta][p$558152, p$558153]*
        metric\[Delta][p$558154, p$558155]*PD[-p$558152][pertscalar[LI[1]]]*
        PD[-p$558154][PD[-p$558155][PD[-p$558153][pertE[LI[1]]]]]])/
     scale[]^4 - (2*primehubbleC[]*Scalar[metric\[Delta][p$558157, p$558158]*
        metric\[Delta][p$558159, p$558160]*PD[-p$558157][pertscalar[LI[1]]]*
        PD[-p$558159][PD[-p$558160][PD[-p$558158][pertE[LI[1]]]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$558162, p$558163]*
        metric\[Delta][p$558164, p$558165]*timevec[h$558166]*
        PD[-p$558162][PD[-h$558166][pertB[LI[1]]]]*PD[-p$558164][
         PD[-p$558165][PD[-p$558163][pertE[LI[1]]]]]])/scale[]^4 + 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558168, p$558169]*
        metric\[Delta][p$558170, p$558171]*metric\[Delta][p$558172, p$558173]*
        PD[-p$558170][perth[LI[1], -p$558168, -p$558173]]*
        PD[-p$558172][perth[LI[1], -p$558169, -p$558171]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558175, p$558176]*
        metric\[Delta][p$558177, p$558178]*metric\[Delta][p$558179, p$558180]*
        PD[-p$558175][perth[LI[1], -p$558178, -p$558180]]*
        PD[-p$558179][PD[-p$558177][pertF[LI[1], -p$558176]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558182, p$558183]*
        metric\[Delta][p$558184, p$558185]*metric\[Delta][p$558186, p$558187]*
        PD[-p$558184][PD[-p$558185][pertF[LI[1], -p$558183]]]*
        PD[-p$558186][PD[-p$558187][pertF[LI[1], -p$558182]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$558189, p$558190]*
        metric\[Delta][p$558191, p$558192]*metric\[Delta][p$558193, p$558194]*
        timevec[h$558195]*PD[-h$558195][perth[LI[1], -p$558190, -p$558192]]*
        PD[-p$558193][PD[-p$558194][perth[LI[1], -p$558189, -p$558191]]]])/
     (2*scale[]^4) - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558197, p$558198]*metric\[Delta][p$558199, 
         p$558200]*metric\[Delta][p$558201, p$558202]*
        PD[-p$558199][pertF[LI[1], -p$558198]]*PD[-p$558201][
         PD[-p$558202][perth[LI[1], -p$558197, -p$558200]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$558204, p$558205]*
        metric\[Delta][p$558206, p$558207]*metric\[Delta][p$558208, p$558209]*
        PD[-p$558206][pertS[LI[1], -p$558205]]*PD[-p$558208][
         PD[-p$558209][perth[LI[1], -p$558204, -p$558207]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$558211, p$558212]*
        metric\[Delta][p$558213, p$558214]*metric\[Delta][p$558215, p$558216]*
        timevec[h$558217]*PD[-p$558213][PD[-h$558217][pertF[LI[1], 
           -p$558212]]]*PD[-p$558215][PD[-p$558216][perth[LI[1], -p$558211, 
           -p$558214]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$558219, p$558220]*
        metric\[Delta][p$558221, p$558222]*metric\[Delta][p$558223, p$558224]*
        PD[-p$558221][PD[-p$558220][pertB[LI[1]]]]*PD[-p$558223][
         PD[-p$558224][perth[LI[1], -p$558219, -p$558222]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558226, p$558227]*
        metric\[Delta][p$558228, p$558229]*metric\[Delta][p$558230, p$558231]*
        PD[-p$558228][PD[-p$558227][pertE[LI[1]]]]*PD[-p$558230][
         PD[-p$558231][perth[LI[1], -p$558226, -p$558229]]]])/scale[]^4 - 
    Scalar[metric\[Delta][p$558233, p$558234]*metric\[Delta][p$558235, 
        p$558236]*metric\[Delta][p$558237, p$558238]*
       PD[-p$558235][PD[-p$558234][pertscalar[LI[1]]]]*
       PD[-p$558237][PD[-p$558238][perth[LI[1], -p$558233, -p$558236]]]]/
     scale[]^4 + (primescalar[]*Scalar[metric\[Delta][p$558240, p$558241]*
        metric\[Delta][p$558242, p$558243]*metric\[Delta][p$558244, p$558245]*
        timevec[h$558246]*PD[-p$558242][PD[-p$558241][PD[-h$558246][
           pertE[LI[1]]]]]*PD[-p$558244][PD[-p$558245][perth[LI[1], 
           -p$558240, -p$558243]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558248, p$558249]*
        metric\[Delta][p$558250, p$558251]*metric\[Delta][p$558252, p$558253]*
        perth[LI[1], -p$558248, -p$558250]*PD[-p$558252][
         PD[-p$558253][perth[LI[1], -p$558249, -p$558251]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558255, p$558256]*
        metric\[Delta][p$558257, p$558258]*metric\[Delta][p$558259, p$558260]*
        PD[-p$558257][PD[-p$558258][pertF[LI[1], -p$558256]]]*
        PD[-p$558259][PD[-p$558260][PD[-p$558255][pertE[LI[1]]]]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558262, p$558263]*metric\[Delta][p$558264, 
         p$558265]*metric\[Delta][p$558266, p$558267]*
        PD[-p$558264][PD[-p$558265][PD[-p$558263][pertE[LI[1]]]]]*
        PD[-p$558266][PD[-p$558267][PD[-p$558262][pertE[LI[1]]]]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$558269, p$558270]*metric\[Delta][p$558271, 
         p$558272]*PD[-p$558271][pertF[LI[1], -p$558270]]*
        PD[-p$558272][pertS[LI[1], -p$558269]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558274, p$558275]*
        metric\[Delta][p$558276, p$558277]*PD[-p$558276][
         pertF[LI[1], -p$558275]]*PD[-p$558277][pertS[LI[1], -p$558274]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558279, p$558280]*metric\[Delta][p$558281, 
         p$558282]*PD[-p$558281][pertF[LI[1], -p$558280]]*
        PD[-p$558282][pertS[LI[1], -p$558279]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$558284, p$558285]*
        metric\[Delta][p$558286, p$558287]*PD[-p$558286][
         pertS[LI[1], -p$558285]]*PD[-p$558287][pertS[LI[1], -p$558284]]])/
     scale[]^4 - (hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558289, p$558290]*metric\[Delta][p$558291, 
         p$558292]*PD[-p$558291][pertS[LI[1], -p$558290]]*
        PD[-p$558292][pertS[LI[1], -p$558289]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558294, p$558295]*
        metric\[Delta][p$558296, p$558297]*timevec[h$558298]*
        PD[-p$558296][pertF[LI[1], -p$558295]]*PD[-p$558297][
         PD[-h$558298][pertF[LI[1], -p$558294]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558300, p$558301]*
        metric\[Delta][p$558302, p$558303]*timevec[h$558304]*
        PD[-p$558302][pertF[LI[1], -p$558301]]*PD[-p$558303][
         PD[-h$558304][pertF[LI[1], -p$558300]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558306, p$558307]*
        metric\[Delta][p$558308, p$558309]*timevec[h$558310]*
        PD[-p$558308][pertF[LI[1], -p$558307]]*PD[-p$558309][
         PD[-h$558310][pertF[LI[1], -p$558306]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558312, p$558313]*
        metric\[Delta][p$558314, p$558315]*timevec[h$558316]*
        PD[-p$558314][pertS[LI[1], -p$558313]]*PD[-p$558315][
         PD[-h$558316][pertF[LI[1], -p$558312]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$558318, p$558319]*
        metric\[Delta][p$558320, p$558321]*timevec[h$558322]*
        timevec[h$558323]*PD[-p$558320][PD[-h$558323][pertF[LI[1], 
           -p$558319]]]*PD[-p$558321][PD[-h$558322][pertF[LI[1], 
           -p$558318]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558325, p$558326]*
        metric\[Delta][p$558327, p$558328]*timevec[h$558329]*
        timevec[h$558330]*PD[-p$558327][PD[-h$558330][pertF[LI[1], 
           -p$558326]]]*PD[-p$558328][PD[-h$558329][pertF[LI[1], 
           -p$558325]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558332, p$558333]*
        metric\[Delta][p$558334, p$558335]*timevec[h$558336]*
        PD[-p$558334][PD[-p$558333][pertB[LI[1]]]]*PD[-p$558335][
         PD[-h$558336][pertF[LI[1], -p$558332]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558338, p$558339]*
        metric\[Delta][p$558340, p$558341]*timevec[h$558342]*
        PD[-p$558340][PD[-p$558339][pertE[LI[1]]]]*PD[-p$558341][
         PD[-h$558342][pertF[LI[1], -p$558338]]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558344, p$558345]*
        metric\[Delta][p$558346, p$558347]*timevec[h$558348]*
        PD[-p$558346][PD[-p$558345][pertE[LI[1]]]]*PD[-p$558347][
         PD[-h$558348][pertF[LI[1], -p$558344]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558350, p$558351]*
        metric\[Delta][p$558352, p$558353]*timevec[h$558354]*
        PD[-p$558352][PD[-p$558351][pertE[LI[1]]]]*PD[-p$558353][
         PD[-h$558354][pertF[LI[1], -p$558350]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558356, p$558357]*
        metric\[Delta][p$558358, p$558359]*perth[LI[1], -p$558356, -p$558358]*
        timevec[h$558360]*PD[-p$558359][PD[-h$558360][pertF[LI[1], 
           -p$558357]]]])/scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$558362, p$558363]*metric\[Delta][p$558364, 
         p$558365]*perth[LI[1], -p$558362, -p$558364]*timevec[h$558366]*
        PD[-p$558365][PD[-h$558366][pertF[LI[1], -p$558363]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558368, p$558369]*
        metric\[Delta][p$558370, p$558371]*perth[LI[1], -p$558368, -p$558370]*
        timevec[h$558372]*PD[-p$558371][PD[-h$558372][pertF[LI[1], 
           -p$558369]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558374, p$558375]*
        metric\[Delta][p$558376, p$558377]*timevec[h$558378]*
        PD[-p$558376][pertF[LI[1], -p$558375]]*PD[-p$558377][
         PD[-h$558378][pertS[LI[1], -p$558374]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$558380, p$558381]*
        metric\[Delta][p$558382, p$558383]*timevec[h$558384]*
        PD[-p$558382][pertS[LI[1], -p$558381]]*PD[-p$558383][
         PD[-h$558384][pertS[LI[1], -p$558380]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$558386, p$558387]*
        metric\[Delta][p$558388, p$558389]*timevec[h$558390]*
        timevec[h$558391]*PD[-p$558388][PD[-h$558391][pertF[LI[1], 
           -p$558387]]]*PD[-p$558389][PD[-h$558390][pertS[LI[1], 
           -p$558386]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558393, p$558394]*
        metric\[Delta][p$558395, p$558396]*timevec[h$558397]*
        PD[-p$558395][PD[-p$558394][pertB[LI[1]]]]*PD[-p$558396][
         PD[-h$558397][pertS[LI[1], -p$558393]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558399, p$558400]*
        metric\[Delta][p$558401, p$558402]*timevec[h$558403]*
        PD[-p$558401][PD[-p$558400][pertE[LI[1]]]]*PD[-p$558402][
         PD[-h$558403][pertS[LI[1], -p$558399]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558405, p$558406]*
        metric\[Delta][p$558407, p$558408]*perth[LI[1], -p$558405, -p$558407]*
        timevec[h$558409]*PD[-p$558408][PD[-h$558409][pertS[LI[1], 
           -p$558406]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558411, p$558412]*
        metric\[Delta][p$558413, p$558414]*timevec[h$558415]*
        timevec[h$558416]*PD[-p$558413][pertF[LI[1], -p$558412]]*
        PD[-p$558414][PD[-h$558416][PD[-h$558415][pertF[LI[1], 
            -p$558411]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$558418, p$558419]*
        metric\[Delta][p$558420, p$558421]*timevec[h$558422]*
        timevec[h$558423]*PD[-p$558420][pertS[LI[1], -p$558419]]*
        PD[-p$558421][PD[-h$558423][PD[-h$558422][pertF[LI[1], 
            -p$558418]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$558425, p$558426]*
        metric\[Delta][p$558427, p$558428]*timevec[h$558429]*
        timevec[h$558430]*timevec[h$558431]*PD[-p$558427][
         PD[-h$558431][pertF[LI[1], -p$558426]]]*PD[-p$558428][
         PD[-h$558430][PD[-h$558429][pertF[LI[1], -p$558425]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558433, p$558434]*
        metric\[Delta][p$558435, p$558436]*timevec[h$558437]*
        timevec[h$558438]*PD[-p$558435][PD[-p$558434][pertB[LI[1]]]]*
        PD[-p$558436][PD[-h$558438][PD[-h$558437][pertF[LI[1], 
            -p$558433]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558440, p$558441]*
        metric\[Delta][p$558442, p$558443]*timevec[h$558444]*
        timevec[h$558445]*PD[-p$558442][PD[-p$558441][pertE[LI[1]]]]*
        PD[-p$558443][PD[-h$558445][PD[-h$558444][pertF[LI[1], 
            -p$558440]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$558447, p$558448]*metric\[Delta][p$558449, 
         p$558450]*timevec[h$558451]*timevec[h$558452]*
        PD[-p$558449][PD[-p$558448][pertscalar[LI[1]]]]*
        PD[-p$558450][PD[-h$558452][PD[-h$558451][pertF[LI[1], 
            -p$558447]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558454, p$558455]*
        metric\[Delta][p$558456, p$558457]*perth[LI[1], -p$558454, -p$558456]*
        timevec[h$558458]*timevec[h$558459]*PD[-p$558457][
         PD[-h$558459][PD[-h$558458][pertF[LI[1], -p$558455]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558461, p$558462]*
        metric\[Delta][p$558463, p$558464]*timevec[h$558465]*
        timevec[h$558466]*timevec[h$558467]*PD[-p$558463][
         PD[-p$558462][PD[-h$558465][pertE[LI[1]]]]]*
        PD[-p$558464][PD[-h$558467][PD[-h$558466][pertF[LI[1], 
            -p$558461]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558469, p$558470]*
        metric\[Delta][p$558471, p$558472]*PD[-p$558471][
         PD[-p$558470][pertB[LI[1]]]]*PD[-p$558472][PD[-p$558469][
          pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558474, p$558475]*
        metric\[Delta][p$558476, p$558477]*PD[-p$558476][
         PD[-p$558475][pertB[LI[1]]]]*PD[-p$558477][PD[-p$558474][
          pertE[LI[1]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558479, p$558480]*
        metric\[Delta][p$558481, p$558482]*PD[-p$558481][
         PD[-p$558480][pertB[LI[1]]]]*PD[-p$558482][PD[-p$558479][
          pertE[LI[1]]]]])/scale[]^4 - (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558484, p$558485]*metric\[Delta][p$558486, 
         p$558487]*PD[-p$558486][PD[-p$558485][pertB[LI[1]]]]*
        PD[-p$558487][PD[-p$558484][pertE[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558489, p$558490]*
        metric\[Delta][p$558491, p$558492]*timevec[h$558493]*
        PD[-p$558491][PD[-h$558493][pertF[LI[1], -p$558490]]]*
        PD[-p$558492][PD[-p$558489][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558495, p$558496]*
        metric\[Delta][p$558497, p$558498]*PD[-p$558497][
         PD[-p$558496][pertB[LI[1]]]]*PD[-p$558498][PD[-p$558495][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558500, p$558501]*
        metric\[Delta][p$558502, p$558503]*PD[-p$558502][
         PD[-p$558501][pertE[LI[1]]]]*PD[-p$558503][PD[-p$558500][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558505, p$558506]*
        metric\[Delta][p$558507, p$558508]*timevec[h$558509]*
        PD[-p$558507][PD[-h$558509][pertF[LI[1], -p$558506]]]*
        PD[-p$558508][PD[-p$558505][pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558511, p$558512]*
        metric\[Delta][p$558513, p$558514]*PD[-p$558513][
         PD[-p$558512][pertB[LI[1]]]]*PD[-p$558514][PD[-p$558511][
          pertpsi[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558516, p$558517]*
        metric\[Delta][p$558518, p$558519]*PD[-p$558518][
         PD[-p$558517][pertE[LI[1]]]]*PD[-p$558519][PD[-p$558516][
          pertpsi[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$558521, p$558522]*
        metric\[Delta][p$558523, p$558524]*timevec[h$558525]*
        PD[-p$558523][PD[-h$558525][pertF[LI[1], -p$558522]]]*
        PD[-p$558524][PD[-p$558521][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$558527, p$558528]*metric\[Delta][p$558529, 
         p$558530]*timevec[h$558531]*PD[-p$558529][PD[-h$558531][
          pertS[LI[1], -p$558528]]]*PD[-p$558530][PD[-p$558527][
          pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$558533, p$558534]*
        metric\[Delta][p$558535, p$558536]*PD[-p$558535][
         PD[-p$558534][pertB[LI[1]]]]*PD[-p$558536][PD[-p$558533][
          pertscalar[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$558538, p$558539]*
        metric\[Delta][p$558540, p$558541]*PD[-p$558540][
         PD[-p$558539][pertE[LI[1]]]]*PD[-p$558541][PD[-p$558538][
          pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*primehubbleC[]*Scalar[metric\[Delta][p$558543, p$558544]*
        metric\[Delta][p$558545, p$558546]*PD[-p$558545][
         PD[-p$558544][pertE[LI[1]]]]*PD[-p$558546][PD[-p$558543][
          pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$558548, p$558549]*metric\[Delta][p$558550, 
         p$558551]*PD[-p$558550][PD[-p$558549][pertphi[LI[1]]]]*
        PD[-p$558551][PD[-p$558548][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$558553, p$558554]*metric\[Delta][p$558555, 
         p$558556]*PD[-p$558555][PD[-p$558554][pertpsi[LI[1]]]]*
        PD[-p$558556][PD[-p$558553][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$558558, p$558559]*
        metric\[Delta][p$558560, p$558561]*timevec[h$558562]*
        timevec[h$558563]*PD[-p$558560][PD[-h$558563][pertF[LI[1], 
           -p$558559]]]*PD[-p$558561][PD[-p$558558][PD[-h$558562][
           pertB[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558565, p$558566]*
        metric\[Delta][p$558567, p$558568]*timevec[h$558569]*
        PD[-p$558567][PD[-p$558566][pertB[LI[1]]]]*PD[-p$558568][
         PD[-p$558565][PD[-h$558569][pertB[LI[1]]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558571, p$558572]*
        metric\[Delta][p$558573, p$558574]*timevec[h$558575]*
        PD[-p$558573][PD[-p$558572][pertE[LI[1]]]]*PD[-p$558574][
         PD[-p$558571][PD[-h$558575][pertB[LI[1]]]]]])/scale[]^4 - 
    (2*Scalar[metric\[Delta][p$558577, p$558578]*metric\[Delta][p$558579, 
         p$558580]*timevec[h$558581]*PD[-p$558579][PD[-p$558578][
          pertscalar[LI[1]]]]*PD[-p$558580][PD[-p$558577][
          PD[-h$558581][pertB[LI[1]]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558583, p$558584]*
        metric\[Delta][p$558585, p$558586]*timevec[h$558587]*
        timevec[h$558588]*PD[-p$558585][PD[-h$558588][pertF[LI[1], 
           -p$558584]]]*PD[-p$558586][PD[-p$558583][PD[-h$558587][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558590, p$558591]*
        metric\[Delta][p$558592, p$558593]*timevec[h$558594]*
        timevec[h$558595]*PD[-p$558592][PD[-h$558595][pertF[LI[1], 
           -p$558591]]]*PD[-p$558593][PD[-p$558590][PD[-h$558594][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558597, p$558598]*
        metric\[Delta][p$558599, p$558600]*timevec[h$558601]*
        timevec[h$558602]*PD[-p$558599][PD[-h$558602][pertS[LI[1], 
           -p$558598]]]*PD[-p$558600][PD[-p$558597][PD[-h$558601][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558604, p$558605]*
        metric\[Delta][p$558606, p$558607]*timevec[h$558608]*
        PD[-p$558606][PD[-p$558605][pertB[LI[1]]]]*PD[-p$558607][
         PD[-p$558604][PD[-h$558608][pertE[LI[1]]]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558610, p$558611]*
        metric\[Delta][p$558612, p$558613]*timevec[h$558614]*
        PD[-p$558612][PD[-p$558611][pertE[LI[1]]]]*PD[-p$558613][
         PD[-p$558610][PD[-h$558614][pertE[LI[1]]]]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558616, p$558617]*
        metric\[Delta][p$558618, p$558619]*timevec[h$558620]*
        PD[-p$558618][PD[-p$558617][pertE[LI[1]]]]*PD[-p$558619][
         PD[-p$558616][PD[-h$558620][pertE[LI[1]]]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558622, p$558623]*
        metric\[Delta][p$558624, p$558625]*timevec[h$558626]*
        PD[-p$558624][PD[-p$558623][pertE[LI[1]]]]*PD[-p$558625][
         PD[-p$558622][PD[-h$558626][pertE[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558628, p$558629]*
        metric\[Delta][p$558630, p$558631]*timevec[h$558632]*
        PD[-p$558630][PD[-p$558629][pertphi[LI[1]]]]*
        PD[-p$558631][PD[-p$558628][PD[-h$558632][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]*Scalar[metric\[Delta][p$558634, p$558635]*
        metric\[Delta][p$558636, p$558637]*timevec[h$558638]*
        PD[-p$558636][PD[-p$558635][pertpsi[LI[1]]]]*
        PD[-p$558637][PD[-p$558634][PD[-h$558638][pertE[LI[1]]]]]])/
     scale[]^4 + (4*hubbleC[]*Scalar[metric\[Delta][p$558640, p$558641]*
        metric\[Delta][p$558642, p$558643]*timevec[h$558644]*
        PD[-p$558642][PD[-p$558641][pertscalar[LI[1]]]]*
        PD[-p$558643][PD[-p$558640][PD[-h$558644][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]*Scalar[metric\[Delta][p$558646, p$558647]*
        metric\[Delta][p$558648, p$558649]*timevec[h$558650]*
        timevec[h$558651]*PD[-p$558648][PD[-p$558647][PD[-h$558650][
           pertB[LI[1]]]]]*PD[-p$558649][PD[-p$558646][PD[-h$558651][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558653, p$558654]*
        metric\[Delta][p$558655, p$558656]*timevec[h$558657]*
        timevec[h$558658]*PD[-p$558655][PD[-p$558654][PD[-h$558657][
           pertE[LI[1]]]]]*PD[-p$558656][PD[-p$558653][PD[-h$558658][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558660, p$558661]*
        metric\[Delta][p$558662, p$558663]*timevec[h$558664]*
        timevec[h$558665]*PD[-p$558662][PD[-p$558661][PD[-h$558664][
           pertE[LI[1]]]]]*PD[-p$558663][PD[-p$558660][PD[-h$558665][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558667, p$558668]*
        metric\[Delta][p$558669, p$558670]*timevec[h$558671]*
        timevec[h$558672]*timevec[h$558673]*PD[-p$558669][
         PD[-h$558673][pertF[LI[1], -p$558668]]]*PD[-p$558670][
         PD[-p$558667][PD[-h$558672][PD[-h$558671][pertE[LI[1]]]]]]])/
     scale[]^4 + (2*primescalar[]*Scalar[metric\[Delta][p$558675, p$558676]*
        metric\[Delta][p$558677, p$558678]*timevec[h$558679]*
        timevec[h$558680]*PD[-p$558677][PD[-p$558676][pertB[LI[1]]]]*
        PD[-p$558678][PD[-p$558675][PD[-h$558680][PD[-h$558679][
            pertE[LI[1]]]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$558682, p$558683]*
        metric\[Delta][p$558684, p$558685]*timevec[h$558686]*
        timevec[h$558687]*PD[-p$558684][PD[-p$558683][pertE[LI[1]]]]*
        PD[-p$558685][PD[-p$558682][PD[-h$558687][PD[-h$558686][
            pertE[LI[1]]]]]]])/scale[]^4 + 
    (2*Scalar[metric\[Delta][p$558689, p$558690]*metric\[Delta][p$558691, 
         p$558692]*timevec[h$558693]*timevec[h$558694]*
        PD[-p$558691][PD[-p$558690][pertscalar[LI[1]]]]*
        PD[-p$558692][PD[-p$558689][PD[-h$558694][PD[-h$558693][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$558696, p$558697]*
        metric\[Delta][p$558698, p$558699]*timevec[h$558700]*
        timevec[h$558701]*timevec[h$558702]*PD[-p$558698][
         PD[-p$558697][PD[-h$558700][pertE[LI[1]]]]]*
        PD[-p$558699][PD[-p$558696][PD[-h$558702][PD[-h$558701][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558704, p$558705]*
        metric\[Delta][p$558706, p$558707]*perth[LI[1], -p$558704, -p$558706]*
        PD[-p$558707][PD[-p$558705][pertB[LI[1]]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558709, p$558710]*
        metric\[Delta][p$558711, p$558712]*perth[LI[1], -p$558709, -p$558711]*
        PD[-p$558712][PD[-p$558710][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558714, p$558715]*
        metric\[Delta][p$558716, p$558717]*perth[LI[1], -p$558714, -p$558716]*
        PD[-p$558717][PD[-p$558715][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558719, p$558720]*
        metric\[Delta][p$558721, p$558722]*perth[LI[1], -p$558719, -p$558721]*
        PD[-p$558722][PD[-p$558720][pertphi[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558724, p$558725]*
        metric\[Delta][p$558726, p$558727]*perth[LI[1], -p$558724, -p$558726]*
        PD[-p$558727][PD[-p$558725][pertpsi[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]^2*Scalar[metric\[Delta][p$558729, p$558730]*
        metric\[Delta][p$558731, p$558732]*perth[LI[1], -p$558729, -p$558731]*
        PD[-p$558732][PD[-p$558730][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*primehubbleC[]*Scalar[metric\[Delta][p$558734, p$558735]*
        metric\[Delta][p$558736, p$558737]*perth[LI[1], -p$558734, -p$558736]*
        PD[-p$558737][PD[-p$558735][pertscalar[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558739, p$558740]*
        metric\[Delta][p$558741, p$558742]*perth[LI[1], -p$558739, -p$558741]*
        timevec[h$558743]*PD[-p$558742][PD[-p$558740][PD[-h$558743][
           pertB[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$558745, p$558746]*
        metric\[Delta][p$558747, p$558748]*perth[LI[1], -p$558745, -p$558747]*
        timevec[h$558749]*PD[-p$558748][PD[-p$558746][PD[-h$558749][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$558751, p$558752]*
        metric\[Delta][p$558753, p$558754]*perth[LI[1], -p$558751, -p$558753]*
        timevec[h$558755]*PD[-p$558754][PD[-p$558752][PD[-h$558755][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558757, p$558758]*
        metric\[Delta][p$558759, p$558760]*perth[LI[1], -p$558757, -p$558759]*
        timevec[h$558761]*PD[-p$558760][PD[-p$558758][PD[-h$558761][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$558763, p$558764]*
        metric\[Delta][p$558765, p$558766]*perth[LI[1], -p$558763, -p$558765]*
        timevec[h$558767]*timevec[h$558768]*PD[-p$558766][
         PD[-p$558764][PD[-h$558768][PD[-h$558767][pertE[LI[1]]]]]]])/
     scale[]^4 - (3*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558770, p$558771]*metric\[Delta][p$558772, 
         p$558773]*metric\[Delta][p$558774, p$558775]*
        PD[-p$558774][perth[LI[1], -p$558771, -p$558773]]*
        PD[-p$558775][perth[LI[1], -p$558770, -p$558772]]])/(2*scale[]^4) - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558777, p$558778]*
        metric\[Delta][p$558779, p$558780]*metric\[Delta][p$558781, p$558782]*
        PD[-p$558781][PD[-p$558780][pertF[LI[1], -p$558778]]]*
        PD[-p$558782][perth[LI[1], -p$558777, -p$558779]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558784, p$558785]*
        metric\[Delta][p$558786, p$558787]*metric\[Delta][p$558788, p$558789]*
        PD[-p$558788][PD[-p$558787][pertF[LI[1], -p$558785]]]*
        PD[-p$558789][PD[-p$558786][pertF[LI[1], -p$558784]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$558791, p$558792]*
        metric\[Delta][p$558793, p$558794]*metric\[Delta][p$558795, p$558796]*
        PD[-p$558795][perth[LI[1], -p$558792, -p$558794]]*
        PD[-p$558796][PD[-p$558793][PD[-p$558791][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558798, p$558799]*metric\[Delta][p$558800, 
         p$558801]*metric\[Delta][p$558802, p$558803]*
        PD[-p$558802][PD[-p$558801][pertF[LI[1], -p$558799]]]*
        PD[-p$558803][PD[-p$558800][PD[-p$558798][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$558805, p$558806]*metric\[Delta][p$558807, 
         p$558808]*metric\[Delta][p$558809, p$558810]*
        PD[-p$558809][PD[-p$558808][PD[-p$558806][pertE[LI[1]]]]]*
        PD[-p$558810][PD[-p$558807][PD[-p$558805][pertE[LI[1]]]]]])/
     scale[]^4], HoldPattern[pertpi5[LI[1]]] :> 
  Module[{}, (-18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$149752]*
        PD[-h$149752][pertphi[LI[1]]]])/scale[]^6 - 
    (3*primehubbleC[]*primescalar[]^3*Scalar[timevec[h$149754]*
        PD[-h$149754][pertphi[LI[1]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$149756]*
        PD[-h$149756][pertpsi[LI[1]]]])/scale[]^6 + 
    (9*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[timevec[h$149758]*PD[-h$149758][pertscalar[LI[1]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[timevec[h$149760]*timevec[h$149761]*
        PD[-h$149761][PD[-h$149760][pertphi[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$149763, p$149764]*
        PD[-p$149763][PD[-p$149764][pertB[LI[1]]]]])/scale[]^6 - 
    (primehubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$149766, p$149767]*
        PD[-p$149766][PD[-p$149767][pertB[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$149769, p$149770]*
        PD[-p$149769][PD[-p$149770][pertpsi[LI[1]]]]])/scale[]^6 - 
    (primehubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149772, p$149773]*
        PD[-p$149772][PD[-p$149773][pertscalar[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$149775, p$149776]*
        timevec[h$149777]*PD[-p$149775][PD[-p$149776][PD[-h$149777][
           pertB[LI[1]]]]]])/scale[]^6 + 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$149779, p$149780]*
        timevec[h$149781]*PD[-p$149779][PD[-p$149780][PD[-h$149781][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (primehubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$149783, p$149784]*
        timevec[h$149785]*PD[-p$149783][PD[-p$149784][PD[-h$149785][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$149787, p$149788]*
        timevec[h$149789]*timevec[h$149790]*PD[-p$149787][
         PD[-p$149788][PD[-h$149790][PD[-h$149789][pertE[LI[1]]]]]]])/
     scale[]^6], HoldPattern[pertpi5[LI[2]]] :> 
  Module[{}, (144*hubbleC[]*pertpsi[LI[1]]^2*primehubbleC[]*primescalar[]^3)/
     scale[]^6 - (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700627, p$700628]*pertS[LI[1], -p$700627]*
        pertS[LI[1], -p$700628]])/scale[]^6 - 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700630, p$700631]*
        metric\[Delta][p$700632, p$700633]*perth[LI[1], -p$700630, -p$700632]*
        timevec[h$700634]*PD[-h$700634][perth[LI[1], -p$700631, -p$700633]]])/
     scale[]^6 - (primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700636, p$700637]*metric\[Delta][p$700638, 
         p$700639]*perth[LI[1], -p$700636, -p$700638]*timevec[h$700640]*
        PD[-h$700640][perth[LI[1], -p$700637, -p$700639]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[pertphi[LI[1]]*timevec[h$700642]*
        PD[-h$700642][pertphi[LI[1]]]])/scale[]^6 - 
    (12*primehubbleC[]*primescalar[]^3*Scalar[pertphi[LI[1]]*
        timevec[h$700644]*PD[-h$700644][pertphi[LI[1]]]])/scale[]^6 + 
    (36*hubbleC[]^2*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$700646]*
        PD[-h$700646][pertphi[LI[1]]]])/scale[]^6 + 
    (36*primehubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*
        timevec[h$700648]*PD[-h$700648][pertphi[LI[1]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$700650]*
        PD[-h$700650][pertphi[LI[2]]]])/scale[]^6 - 
    (3*primehubbleC[]*primescalar[]^3*Scalar[timevec[h$700652]*
        PD[-h$700652][pertphi[LI[2]]]])/scale[]^6 + 
    (48*hubbleC[]^2*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$700654]*
        PD[-h$700654][pertpsi[LI[1]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$700656]*
        PD[-h$700656][pertpsi[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700658, p$700659]*
        pertS[LI[1], -p$700658]*timevec[h$700660]*PD[-h$700660][
         pertS[LI[1], -p$700659]]])/scale[]^6 - 
    (108*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$700662]*PD[-h$700662][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (9*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[timevec[h$700664]*PD[-h$700664][pertscalar[LI[2]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[timevec[h$700666]*timevec[h$700667]*
        PD[-h$700666][pertphi[LI[1]]]*PD[-h$700667][pertpsi[LI[1]]]])/
     scale[]^6 - (18*hubbleC[]^2*primescalar[]^2*
      Scalar[timevec[h$700669]*timevec[h$700670]*PD[-h$700669][
         pertphi[LI[1]]]*PD[-h$700670][pertscalar[LI[1]]]])/scale[]^6 - 
    (18*primehubbleC[]*primescalar[]^2*Scalar[timevec[h$700672]*
        timevec[h$700673]*PD[-h$700672][pertphi[LI[1]]]*
        PD[-h$700673][pertscalar[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$700675]*
        timevec[h$700676]*PD[-h$700675][pertpsi[LI[1]]]*
        PD[-h$700676][pertscalar[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$700678]*timevec[h$700679]*PD[-h$700678][
         pertscalar[LI[1]]]*PD[-h$700679][pertscalar[LI[1]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700681, p$700682]*
        metric\[Delta][p$700683, p$700684]*perth[LI[1], -p$700681, -p$700683]*
        timevec[h$700685]*timevec[h$700686]*PD[-h$700686][
         PD[-h$700685][perth[LI[1], -p$700682, -p$700684]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[pertphi[LI[1]]*timevec[h$700688]*
        timevec[h$700689]*PD[-h$700689][PD[-h$700688][pertphi[LI[1]]]]])/
     scale[]^6 + (36*hubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$700691]*timevec[h$700692]*
        PD[-h$700692][PD[-h$700691][pertphi[LI[1]]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[timevec[h$700694]*timevec[h$700695]*
        PD[-h$700695][PD[-h$700694][pertphi[LI[2]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$700697, p$700698]*
        metric\[Delta][p$700699, p$700700]*timevec[h$700701]*
        timevec[h$700702]*timevec[h$700703]*PD[-h$700701][
         perth[LI[1], -p$700698, -p$700700]]*PD[-h$700703][
         PD[-h$700702][perth[LI[1], -p$700697, -p$700699]]]])/(2*scale[]^6) + 
    (6*primescalar[]^3*Scalar[timevec[h$700705]*timevec[h$700706]*
        timevec[h$700707]*PD[-h$700705][pertphi[LI[1]]]*
        PD[-h$700707][PD[-h$700706][pertphi[LI[1]]]]])/scale[]^6 - 
    (18*hubbleC[]*primescalar[]^2*Scalar[timevec[h$700709]*timevec[h$700710]*
        timevec[h$700711]*PD[-h$700709][pertscalar[LI[1]]]*
        PD[-h$700711][PD[-h$700710][pertphi[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700713, p$700714]*
        timevec[h$700715]*PD[-h$700715][pertS[LI[1], -p$700714]]*
        PD[-p$700713][pertB[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700717, p$700718]*
        timevec[h$700719]*PD[-h$700719][pertS[LI[1], -p$700718]]*
        PD[-p$700717][pertphi[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700721, p$700722]*
        pertphi[LI[1]]*PD[-p$700721][PD[-p$700722][pertB[LI[1]]]]])/
     scale[]^6 - (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700724, p$700725]*pertphi[LI[1]]*
        PD[-p$700724][PD[-p$700725][pertB[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700727, p$700728]*
        pertpsi[LI[1]]*PD[-p$700727][PD[-p$700728][pertB[LI[1]]]]])/
     scale[]^6 + (12*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700730, p$700731]*pertpsi[LI[1]]*
        PD[-p$700730][PD[-p$700731][pertB[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700733, p$700734]*
        timevec[h$700735]*PD[-h$700735][pertphi[LI[1]]]*
        PD[-p$700733][PD[-p$700734][pertB[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700737, p$700738]*
        timevec[h$700739]*PD[-h$700739][pertpsi[LI[1]]]*
        PD[-p$700737][PD[-p$700738][pertB[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$700741, p$700742]*
        timevec[h$700743]*PD[-h$700743][pertscalar[LI[1]]]*
        PD[-p$700741][PD[-p$700742][pertB[LI[1]]]]])/scale[]^6 - 
    (6*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700745, p$700746]*timevec[h$700747]*
        PD[-h$700747][pertscalar[LI[1]]]*PD[-p$700745][
         PD[-p$700746][pertB[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$700749, p$700750]*
        timevec[h$700751]*timevec[h$700752]*PD[-h$700752][
         PD[-h$700751][pertphi[LI[1]]]]*PD[-p$700749][PD[-p$700750][
          pertB[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700754, p$700755]*
        PD[-p$700754][PD[-p$700755][pertB[LI[2]]]]])/scale[]^6 - 
    (primehubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700757, p$700758]*
        PD[-p$700757][PD[-p$700758][pertB[LI[2]]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700760, p$700761]*
        timevec[h$700762]*PD[-h$700762][pertphi[LI[1]]]*
        PD[-p$700760][PD[-p$700761][pertE[LI[1]]]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700764, p$700765]*timevec[h$700766]*
        PD[-h$700766][pertphi[LI[1]]]*PD[-p$700764][PD[-p$700765][
          pertE[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700768, p$700769]*
        timevec[h$700770]*timevec[h$700771]*PD[-h$700771][
         PD[-h$700770][pertphi[LI[1]]]]*PD[-p$700768][PD[-p$700769][
          pertE[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700773, p$700774]*
        pertphi[LI[1]]*PD[-p$700773][PD[-p$700774][pertpsi[LI[1]]]]])/
     scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700776, p$700777]*pertpsi[LI[1]]*
        PD[-p$700776][PD[-p$700777][pertpsi[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$700779, p$700780]*
        timevec[h$700781]*PD[-h$700781][pertphi[LI[1]]]*
        PD[-p$700779][PD[-p$700780][pertpsi[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$700783, p$700784]*
        timevec[h$700785]*PD[-h$700785][pertscalar[LI[1]]]*
        PD[-p$700783][PD[-p$700784][pertpsi[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700787, p$700788]*
        PD[-p$700787][PD[-p$700788][pertpsi[LI[2]]]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700790, p$700791]*pertphi[LI[1]]*
        PD[-p$700790][PD[-p$700791][pertscalar[LI[1]]]]])/scale[]^6 + 
    (8*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700793, p$700794]*pertpsi[LI[1]]*
        PD[-p$700793][PD[-p$700794][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$700796, p$700797]*
        timevec[h$700798]*PD[-h$700798][pertphi[LI[1]]]*
        PD[-p$700796][PD[-p$700797][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$700800, p$700801]*
        timevec[h$700802]*PD[-h$700802][pertpsi[LI[1]]]*
        PD[-p$700800][PD[-p$700801][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$700804, p$700805]*
        timevec[h$700806]*PD[-h$700806][pertscalar[LI[1]]]*
        PD[-p$700804][PD[-p$700805][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$700808, p$700809]*
        timevec[h$700810]*timevec[h$700811]*PD[-h$700811][
         PD[-h$700810][pertphi[LI[1]]]]*PD[-p$700808][PD[-p$700809][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (primehubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$700813, p$700814]*
        PD[-p$700813][PD[-p$700814][pertscalar[LI[2]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700816, p$700817]*
        pertphi[LI[1]]*timevec[h$700818]*PD[-p$700816][
         PD[-p$700817][PD[-h$700818][pertB[LI[1]]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700820, p$700821]*
        pertpsi[LI[1]]*timevec[h$700822]*PD[-p$700820][
         PD[-p$700821][PD[-h$700822][pertB[LI[1]]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700824, p$700825]*
        timevec[h$700826]*PD[-p$700824][PD[-p$700825][PD[-h$700826][
           pertB[LI[2]]]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700828, p$700829]*
        pertphi[LI[1]]*timevec[h$700830]*PD[-p$700828][
         PD[-p$700829][PD[-h$700830][pertE[LI[1]]]]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700832, p$700833]*pertphi[LI[1]]*
        timevec[h$700834]*PD[-p$700832][PD[-p$700833][PD[-h$700834][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700836, p$700837]*
        pertpsi[LI[1]]*timevec[h$700838]*PD[-p$700836][
         PD[-p$700837][PD[-h$700838][pertE[LI[1]]]]]])/scale[]^6 - 
    (12*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700840, p$700841]*pertpsi[LI[1]]*
        timevec[h$700842]*PD[-p$700840][PD[-p$700841][PD[-h$700842][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$700844, p$700845]*
        timevec[h$700846]*timevec[h$700847]*timevec[h$700848]*
        PD[-h$700848][PD[-h$700847][pertphi[LI[1]]]]*
        PD[-p$700844][PD[-p$700845][PD[-h$700846][pertE[LI[1]]]]]])/
     scale[]^6 + (hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$700850, p$700851]*timevec[h$700852]*
        PD[-p$700850][PD[-p$700851][PD[-h$700852][pertE[LI[2]]]]]])/
     scale[]^6 + (primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700854, p$700855]*timevec[h$700856]*
        PD[-p$700854][PD[-p$700855][PD[-h$700856][pertE[LI[2]]]]]])/
     scale[]^6 + (2*primescalar[]^3*Scalar[metric\[Delta][p$700858, p$700859]*
        timevec[h$700860]*timevec[h$700861]*PD[-h$700860][pertphi[LI[1]]]*
        PD[-p$700858][PD[-p$700859][PD[-h$700861][pertB[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700863, p$700864]*timevec[h$700865]*
        timevec[h$700866]*PD[-h$700865][pertscalar[LI[1]]]*
        PD[-p$700863][PD[-p$700864][PD[-h$700866][pertB[LI[1]]]]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700868, p$700869]*timevec[h$700870]*
        timevec[h$700871]*PD[-h$700870][pertpsi[LI[1]]]*
        PD[-p$700868][PD[-p$700869][PD[-h$700871][pertE[LI[1]]]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$700873, p$700874]*timevec[h$700875]*
        timevec[h$700876]*PD[-h$700875][pertscalar[LI[1]]]*
        PD[-p$700873][PD[-p$700874][PD[-h$700876][pertE[LI[1]]]]]])/
     scale[]^6 + (6*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700878, p$700879]*timevec[h$700880]*
        timevec[h$700881]*PD[-h$700880][pertscalar[LI[1]]]*
        PD[-p$700878][PD[-p$700879][PD[-h$700881][pertE[LI[1]]]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700883, p$700884]*pertphi[LI[1]]*
        timevec[h$700885]*timevec[h$700886]*PD[-p$700883][
         PD[-p$700884][PD[-h$700886][PD[-h$700885][pertE[LI[1]]]]]]])/
     scale[]^6 - (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700888, p$700889]*pertpsi[LI[1]]*
        timevec[h$700890]*timevec[h$700891]*PD[-p$700888][
         PD[-p$700889][PD[-h$700891][PD[-h$700890][pertE[LI[1]]]]]]])/
     scale[]^6 + (hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700893, p$700894]*timevec[h$700895]*
        timevec[h$700896]*PD[-p$700893][PD[-p$700894][PD[-h$700896][
           PD[-h$700895][pertE[LI[2]]]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$700898, p$700899]*
        timevec[h$700900]*timevec[h$700901]*timevec[h$700902]*
        PD[-h$700900][pertphi[LI[1]]]*PD[-p$700898][PD[-p$700899][
          PD[-h$700902][PD[-h$700901][pertE[LI[1]]]]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$700904, p$700905]*
        timevec[h$700906]*timevec[h$700907]*timevec[h$700908]*
        PD[-h$700906][pertscalar[LI[1]]]*PD[-p$700904][
         PD[-p$700905][PD[-h$700908][PD[-h$700907][pertE[LI[1]]]]]]])/
     scale[]^6 + (36*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700910, p$700911]*pertS[LI[1], -p$700910]*
        PD[-p$700911][pertB[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700913, p$700914]*PD[-p$700913][pertB[LI[1]]]*
        PD[-p$700914][pertB[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700916, p$700917]*
        metric\[Delta][p$700918, p$700919]*timevec[h$700920]*
        PD[-h$700920][perth[LI[1], -p$700917, -p$700919]]*
        PD[-p$700918][pertF[LI[1], -p$700916]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700922, p$700923]*metric\[Delta][p$700924, 
         p$700925]*timevec[h$700926]*PD[-h$700926][perth[LI[1], -p$700923, 
          -p$700925]]*PD[-p$700924][pertF[LI[1], -p$700922]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700928, p$700929]*
        metric\[Delta][p$700930, p$700931]*timevec[h$700932]*
        timevec[h$700933]*PD[-h$700933][PD[-h$700932][perth[LI[1], -p$700929, 
           -p$700931]]]*PD[-p$700930][pertF[LI[1], -p$700928]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700935, p$700936]*
        metric\[Delta][p$700937, p$700938]*PD[-p$700935][
         pertS[LI[1], -p$700938]]*PD[-p$700937][pertF[LI[1], -p$700936]]])/
     scale[]^6 - (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700940, p$700941]*metric\[Delta][p$700942, 
         p$700943]*PD[-p$700940][pertS[LI[1], -p$700943]]*
        PD[-p$700942][pertF[LI[1], -p$700941]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700945, p$700946]*
        metric\[Delta][p$700947, p$700948]*timevec[h$700949]*
        PD[-p$700945][PD[-h$700949][pertF[LI[1], -p$700948]]]*
        PD[-p$700947][pertF[LI[1], -p$700946]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700951, p$700952]*metric\[Delta][p$700953, 
         p$700954]*timevec[h$700955]*PD[-p$700951][PD[-h$700955][
          pertF[LI[1], -p$700954]]]*PD[-p$700953][pertF[LI[1], -p$700952]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700957, p$700958]*metric\[Delta][p$700959, 
         p$700960]*timevec[h$700961]*PD[-p$700957][PD[-h$700961][
          pertS[LI[1], -p$700960]]]*PD[-p$700959][pertF[LI[1], -p$700958]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700963, p$700964]*metric\[Delta][p$700965, 
         p$700966]*timevec[h$700967]*timevec[h$700968]*
        PD[-p$700963][PD[-h$700968][PD[-h$700967][pertF[LI[1], -p$700966]]]]*
        PD[-p$700965][pertF[LI[1], -p$700964]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700970, p$700971]*
        metric\[Delta][p$700972, p$700973]*PD[-p$700970][
         PD[-p$700973][pertB[LI[1]]]]*PD[-p$700972][pertF[LI[1], 
          -p$700971]]])/scale[]^6 + (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$700975, p$700976]*metric\[Delta][p$700977, 
         p$700978]*PD[-p$700975][PD[-p$700978][pertB[LI[1]]]]*
        PD[-p$700977][pertF[LI[1], -p$700976]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700980, p$700981]*
        metric\[Delta][p$700982, p$700983]*PD[-p$700980][
         PD[-p$700983][pertpsi[LI[1]]]]*PD[-p$700982][
         pertF[LI[1], -p$700981]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$700985, p$700986]*metric\[Delta][p$700987, 
         p$700988]*PD[-p$700985][PD[-p$700988][pertscalar[LI[1]]]]*
        PD[-p$700987][pertF[LI[1], -p$700986]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$700990, p$700991]*
        metric\[Delta][p$700992, p$700993]*timevec[h$700994]*
        PD[-p$700990][PD[-p$700993][PD[-h$700994][pertB[LI[1]]]]]*
        PD[-p$700992][pertF[LI[1], -p$700991]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$700996, p$700997]*
        metric\[Delta][p$700998, p$700999]*timevec[h$701000]*
        PD[-p$700996][PD[-p$700999][PD[-h$701000][pertE[LI[1]]]]]*
        PD[-p$700998][pertF[LI[1], -p$700997]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701002, p$701003]*metric\[Delta][p$701004, 
         p$701005]*timevec[h$701006]*PD[-p$701002][PD[-p$701005][
          PD[-h$701006][pertE[LI[1]]]]]*PD[-p$701004][
         pertF[LI[1], -p$701003]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701008, p$701009]*
        metric\[Delta][p$701010, p$701011]*timevec[h$701012]*
        timevec[h$701013]*PD[-p$701008][PD[-p$701011][PD[-h$701013][
           PD[-h$701012][pertE[LI[1]]]]]]*PD[-p$701010][
         pertF[LI[1], -p$701009]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701015, p$701016]*
        pertS[LI[1], -p$701015]*PD[-p$701016][pertphi[LI[1]]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701018, p$701019]*pertS[LI[1], -p$701018]*
        PD[-p$701019][pertphi[LI[1]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701021, p$701022]*
        PD[-p$701021][pertB[LI[1]]]*PD[-p$701022][pertphi[LI[1]]]])/
     scale[]^6 + (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701024, p$701025]*PD[-p$701024][pertB[LI[1]]]*
        PD[-p$701025][pertphi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701027, p$701028]*
        pertS[LI[1], -p$701027]*PD[-p$701028][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701030, p$701031]*
        PD[-p$701030][pertB[LI[1]]]*PD[-p$701031][pertpsi[LI[1]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701033, p$701034]*PD[-p$701033][pertphi[LI[1]]]*
        PD[-p$701034][pertpsi[LI[1]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701036, p$701037]*
        PD[-p$701036][pertpsi[LI[1]]]*PD[-p$701037][pertpsi[LI[1]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701039, p$701040]*metric\[Delta][p$701041, 
         p$701042]*timevec[h$701043]*PD[-h$701043][perth[LI[1], -p$701040, 
          -p$701042]]*PD[-p$701041][pertS[LI[1], -p$701039]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701045, p$701046]*
        metric\[Delta][p$701047, p$701048]*timevec[h$701049]*
        timevec[h$701050]*PD[-h$701050][PD[-h$701049][perth[LI[1], -p$701046, 
           -p$701048]]]*PD[-p$701047][pertS[LI[1], -p$701045]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701052, p$701053]*
        metric\[Delta][p$701054, p$701055]*perth[LI[1], -p$701052, -p$701055]*
        PD[-p$701054][pertS[LI[1], -p$701053]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701057, p$701058]*metric\[Delta][p$701059, 
         p$701060]*perth[LI[1], -p$701057, -p$701060]*
        PD[-p$701059][pertS[LI[1], -p$701058]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701062, p$701063]*
        metric\[Delta][p$701064, p$701065]*PD[-p$701062][
         pertS[LI[1], -p$701065]]*PD[-p$701064][pertS[LI[1], -p$701063]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701067, p$701068]*metric\[Delta][p$701069, 
         p$701070]*timevec[h$701071]*PD[-p$701067][PD[-h$701071][
          pertF[LI[1], -p$701070]]]*PD[-p$701069][pertS[LI[1], -p$701068]]])/
     scale[]^6 + (primescalar[]^3*Scalar[metric\[Delta][p$701073, p$701074]*
        metric\[Delta][p$701075, p$701076]*timevec[h$701077]*
        PD[-p$701073][PD[-h$701077][pertS[LI[1], -p$701076]]]*
        PD[-p$701075][pertS[LI[1], -p$701074]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701079, p$701080]*
        metric\[Delta][p$701081, p$701082]*timevec[h$701083]*
        timevec[h$701084]*PD[-p$701079][PD[-h$701084][PD[-h$701083][
           pertF[LI[1], -p$701082]]]]*PD[-p$701081][pertS[LI[1], 
          -p$701080]]])/scale[]^6 - (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701086, p$701087]*metric\[Delta][p$701088, 
         p$701089]*PD[-p$701086][PD[-p$701089][pertB[LI[1]]]]*
        PD[-p$701088][pertS[LI[1], -p$701087]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701091, p$701092]*
        metric\[Delta][p$701093, p$701094]*PD[-p$701091][
         PD[-p$701094][pertE[LI[1]]]]*PD[-p$701093][pertS[LI[1], 
          -p$701092]]])/scale[]^6 - (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701096, p$701097]*metric\[Delta][p$701098, 
         p$701099]*PD[-p$701096][PD[-p$701099][pertE[LI[1]]]]*
        PD[-p$701098][pertS[LI[1], -p$701097]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701101, p$701102]*
        metric\[Delta][p$701103, p$701104]*PD[-p$701101][
         PD[-p$701104][pertpsi[LI[1]]]]*PD[-p$701103][
         pertS[LI[1], -p$701102]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701106, p$701107]*
        metric\[Delta][p$701108, p$701109]*PD[-p$701106][
         PD[-p$701109][pertscalar[LI[1]]]]*PD[-p$701108][
         pertS[LI[1], -p$701107]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701111, p$701112]*
        metric\[Delta][p$701113, p$701114]*timevec[h$701115]*
        PD[-p$701111][PD[-p$701114][PD[-h$701115][pertB[LI[1]]]]]*
        PD[-p$701113][pertS[LI[1], -p$701112]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701117, p$701118]*
        metric\[Delta][p$701119, p$701120]*timevec[h$701121]*
        PD[-p$701117][PD[-p$701120][PD[-h$701121][pertE[LI[1]]]]]*
        PD[-p$701119][pertS[LI[1], -p$701118]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701123, p$701124]*
        metric\[Delta][p$701125, p$701126]*timevec[h$701127]*
        timevec[h$701128]*PD[-p$701123][PD[-p$701126][PD[-h$701128][
           PD[-h$701127][pertE[LI[1]]]]]]*PD[-p$701125][
         pertS[LI[1], -p$701124]]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701130, p$701131]*pertS[LI[1], -p$701130]*
        PD[-p$701131][pertscalar[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701133, p$701134]*PD[-p$701133][pertB[LI[1]]]*
        PD[-p$701134][pertscalar[LI[1]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701136, p$701137]*PD[-p$701136][pertphi[LI[1]]]*
        PD[-p$701137][pertscalar[LI[1]]]])/scale[]^6 + 
    (8*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$701139, p$701140]*
        PD[-p$701139][pertpsi[LI[1]]]*PD[-p$701140][pertscalar[LI[1]]]])/
     scale[]^6 - (4*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701142, p$701143]*PD[-p$701142][pertpsi[LI[1]]]*
        PD[-p$701143][pertscalar[LI[1]]]])/scale[]^6 - 
    (2*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$701145, p$701146]*PD[-p$701145][
         pertscalar[LI[1]]]*PD[-p$701146][pertscalar[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$701148, p$701149]*
        PD[-p$701148][pertscalar[LI[1]]]*PD[-p$701149][pertscalar[LI[1]]]])/
     scale[]^6 - (2*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$701151, p$701152]*PD[-p$701151][
         pertscalar[LI[1]]]*PD[-p$701152][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701154, p$701155]*
        pertS[LI[1], -p$701154]*timevec[h$701156]*PD[-p$701155][
         PD[-h$701156][pertB[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701158, p$701159]*
        timevec[h$701160]*PD[-p$701158][pertB[LI[1]]]*
        PD[-p$701159][PD[-h$701160][pertB[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701162, p$701163]*
        timevec[h$701164]*PD[-p$701162][pertphi[LI[1]]]*
        PD[-p$701163][PD[-h$701164][pertB[LI[1]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701166, p$701167]*
        metric\[Delta][p$701168, p$701169]*timevec[h$701170]*
        timevec[h$701171]*timevec[h$701172]*PD[-h$701172][
         PD[-h$701171][perth[LI[1], -p$701167, -p$701169]]]*
        PD[-p$701168][PD[-h$701170][pertF[LI[1], -p$701166]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701174, p$701175]*
        metric\[Delta][p$701176, p$701177]*timevec[h$701178]*
        timevec[h$701179]*PD[-p$701174][PD[-h$701179][pertS[LI[1], 
           -p$701177]]]*PD[-p$701176][PD[-h$701178][pertF[LI[1], 
           -p$701175]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701181, p$701182]*
        metric\[Delta][p$701183, p$701184]*timevec[h$701185]*
        timevec[h$701186]*timevec[h$701187]*PD[-p$701181][
         PD[-h$701187][PD[-h$701186][pertF[LI[1], -p$701184]]]]*
        PD[-p$701183][PD[-h$701185][pertF[LI[1], -p$701182]]]])/scale[]^6 - 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701189, p$701190]*
        pertS[LI[1], -p$701189]*timevec[h$701191]*PD[-p$701190][
         PD[-h$701191][pertphi[LI[1]]]]])/scale[]^6 + 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701193, p$701194]*
        timevec[h$701195]*PD[-p$701193][pertB[LI[1]]]*
        PD[-p$701194][PD[-h$701195][pertphi[LI[1]]]]])/scale[]^6 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701197, p$701198]*
        timevec[h$701199]*PD[-p$701197][pertscalar[LI[1]]]*
        PD[-p$701198][PD[-h$701199][pertphi[LI[1]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701201, p$701202]*
        metric\[Delta][p$701203, p$701204]*timevec[h$701205]*
        timevec[h$701206]*PD[-h$701206][perth[LI[1], -p$701202, -p$701204]]*
        PD[-p$701203][PD[-h$701205][pertS[LI[1], -p$701201]]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$701208, p$701209]*
        timevec[h$701210]*PD[-p$701208][pertscalar[LI[1]]]*
        PD[-p$701209][PD[-h$701210][pertscalar[LI[1]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701212, p$701213]*
        metric\[Delta][p$701214, p$701215]*timevec[h$701216]*
        timevec[h$701217]*timevec[h$701218]*PD[-h$701216][
         perth[LI[1], -p$701213, -p$701215]]*PD[-p$701214][
         PD[-h$701218][PD[-h$701217][pertF[LI[1], -p$701212]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701220, p$701221]*
        metric\[Delta][p$701222, p$701223]*timevec[h$701224]*
        PD[-h$701224][perth[LI[1], -p$701221, -p$701223]]*
        PD[-p$701222][PD[-p$701220][pertB[LI[1]]]]])/scale[]^6 - 
    (primescalar[]^3*Scalar[metric\[Delta][p$701226, p$701227]*
        metric\[Delta][p$701228, p$701229]*timevec[h$701230]*
        timevec[h$701231]*PD[-h$701231][PD[-h$701230][perth[LI[1], -p$701227, 
           -p$701229]]]*PD[-p$701228][PD[-p$701226][pertB[LI[1]]]]])/
     scale[]^6 - (2*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$701233, p$701234]*metric\[Delta][p$701235, 
         p$701236]*timevec[h$701237]*PD[-h$701237][perth[LI[1], -p$701234, 
          -p$701236]]*PD[-p$701235][PD[-p$701233][pertE[LI[1]]]]])/
     scale[]^6 - (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701239, p$701240]*metric\[Delta][p$701241, 
         p$701242]*timevec[h$701243]*PD[-h$701243][perth[LI[1], -p$701240, 
          -p$701242]]*PD[-p$701241][PD[-p$701239][pertE[LI[1]]]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701245, p$701246]*metric\[Delta][p$701247, 
         p$701248]*timevec[h$701249]*timevec[h$701250]*
        PD[-h$701250][PD[-h$701249][perth[LI[1], -p$701246, -p$701248]]]*
        PD[-p$701247][PD[-p$701245][pertE[LI[1]]]]])/scale[]^6 - 
    (primescalar[]^3*Scalar[metric\[Delta][p$701252, p$701253]*
        metric\[Delta][p$701254, p$701255]*timevec[h$701256]*
        PD[-h$701256][perth[LI[1], -p$701253, -p$701255]]*
        PD[-p$701254][PD[-p$701252][pertpsi[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701258, p$701259]*
        metric\[Delta][p$701260, p$701261]*timevec[h$701262]*
        PD[-h$701262][perth[LI[1], -p$701259, -p$701261]]*
        PD[-p$701260][PD[-p$701258][pertscalar[LI[1]]]]])/scale[]^6 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$701264, p$701265]*
        metric\[Delta][p$701266, p$701267]*timevec[h$701268]*
        timevec[h$701269]*PD[-h$701269][PD[-h$701268][perth[LI[1], -p$701265, 
           -p$701267]]]*PD[-p$701266][PD[-p$701264][pertscalar[LI[1]]]]])/
     scale[]^6 - (primescalar[]^3*Scalar[metric\[Delta][p$701271, p$701272]*
        metric\[Delta][p$701273, p$701274]*timevec[h$701275]*
        timevec[h$701276]*PD[-h$701275][perth[LI[1], -p$701272, -p$701274]]*
        PD[-p$701273][PD[-p$701271][PD[-h$701276][pertB[LI[1]]]]]])/
     scale[]^6 + (primescalar[]^3*Scalar[metric\[Delta][p$701278, p$701279]*
        metric\[Delta][p$701280, p$701281]*timevec[h$701282]*
        timevec[h$701283]*timevec[h$701284]*PD[-h$701283][
         PD[-h$701282][perth[LI[1], -p$701279, -p$701281]]]*
        PD[-p$701280][PD[-p$701278][PD[-h$701284][pertE[LI[1]]]]]])/
     scale[]^6 + (primescalar[]^3*Scalar[metric\[Delta][p$701286, p$701287]*
        metric\[Delta][p$701288, p$701289]*timevec[h$701290]*
        timevec[h$701291]*timevec[h$701292]*PD[-h$701290][
         perth[LI[1], -p$701287, -p$701289]]*PD[-p$701288][
         PD[-p$701286][PD[-h$701292][PD[-h$701291][pertE[LI[1]]]]]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701294, p$701295]*metric\[Delta][p$701296, 
         p$701297]*timevec[h$701298]*PD[-h$701298][pertS[LI[1], -p$701295]]*
        PD[-p$701296][PD[-p$701297][pertF[LI[1], -p$701294]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701300, p$701301]*
        metric\[Delta][p$701302, p$701303]*pertS[LI[1], -p$701300]*
        PD[-p$701302][PD[-p$701303][pertF[LI[1], -p$701301]]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701305, p$701306]*metric\[Delta][p$701307, 
         p$701308]*pertS[LI[1], -p$701305]*PD[-p$701307][
         PD[-p$701308][pertF[LI[1], -p$701306]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701310, p$701311]*
        metric\[Delta][p$701312, p$701313]*PD[-p$701310][pertB[LI[1]]]*
        PD[-p$701312][PD[-p$701313][pertF[LI[1], -p$701311]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701315, p$701316]*metric\[Delta][p$701317, 
         p$701318]*PD[-p$701315][pertB[LI[1]]]*PD[-p$701317][
         PD[-p$701318][pertF[LI[1], -p$701316]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701320, p$701321]*
        metric\[Delta][p$701322, p$701323]*PD[-p$701320][pertpsi[LI[1]]]*
        PD[-p$701322][PD[-p$701323][pertF[LI[1], -p$701321]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701325, p$701326]*metric\[Delta][p$701327, 
         p$701328]*PD[-p$701325][pertscalar[LI[1]]]*PD[-p$701327][
         PD[-p$701328][pertF[LI[1], -p$701326]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701330, p$701331]*
        metric\[Delta][p$701332, p$701333]*timevec[h$701334]*
        PD[-p$701330][PD[-h$701334][pertB[LI[1]]]]*PD[-p$701332][
         PD[-p$701333][pertF[LI[1], -p$701331]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701336, p$701337]*
        metric\[Delta][p$701338, p$701339]*pertS[LI[1], -p$701336]*
        PD[-p$701338][PD[-p$701339][pertS[LI[1], -p$701337]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701341, p$701342]*
        metric\[Delta][p$701343, p$701344]*PD[-p$701341][pertB[LI[1]]]*
        PD[-p$701343][PD[-p$701344][pertS[LI[1], -p$701342]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701346, p$701347]*
        metric\[Delta][p$701348, p$701349]*PD[-p$701346][pertscalar[LI[1]]]*
        PD[-p$701348][PD[-p$701349][pertS[LI[1], -p$701347]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701351, p$701352]*
        metric\[Delta][p$701353, p$701354]*pertS[LI[1], -p$701351]*
        timevec[h$701355]*PD[-p$701353][PD[-p$701354][PD[-h$701355][
           pertF[LI[1], -p$701352]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701357, p$701358]*
        metric\[Delta][p$701359, p$701360]*timevec[h$701361]*
        PD[-p$701357][pertB[LI[1]]]*PD[-p$701359][PD[-p$701360][
          PD[-h$701361][pertF[LI[1], -p$701358]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701363, p$701364]*
        metric\[Delta][p$701365, p$701366]*timevec[h$701367]*
        PD[-p$701363][pertscalar[LI[1]]]*PD[-p$701365][
         PD[-p$701366][PD[-h$701367][pertF[LI[1], -p$701364]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701369, p$701370]*
        metric\[Delta][p$701371, p$701372]*timevec[h$701373]*
        PD[-h$701373][pertS[LI[1], -p$701370]]*PD[-p$701371][
         PD[-p$701372][PD[-p$701369][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701375, p$701376]*
        metric\[Delta][p$701377, p$701378]*pertS[LI[1], -p$701375]*
        PD[-p$701377][PD[-p$701378][PD[-p$701376][pertE[LI[1]]]]]])/
     scale[]^6 - (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701380, p$701381]*metric\[Delta][p$701382, 
         p$701383]*pertS[LI[1], -p$701380]*PD[-p$701382][
         PD[-p$701383][PD[-p$701381][pertE[LI[1]]]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701385, p$701386]*
        metric\[Delta][p$701387, p$701388]*PD[-p$701385][pertB[LI[1]]]*
        PD[-p$701387][PD[-p$701388][PD[-p$701386][pertE[LI[1]]]]]])/
     scale[]^6 + (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701390, p$701391]*metric\[Delta][p$701392, 
         p$701393]*PD[-p$701390][pertB[LI[1]]]*PD[-p$701392][
         PD[-p$701393][PD[-p$701391][pertE[LI[1]]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701395, p$701396]*
        metric\[Delta][p$701397, p$701398]*PD[-p$701395][pertpsi[LI[1]]]*
        PD[-p$701397][PD[-p$701398][PD[-p$701396][pertE[LI[1]]]]]])/
     scale[]^6 + (2*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701400, p$701401]*metric\[Delta][p$701402, 
         p$701403]*PD[-p$701400][pertscalar[LI[1]]]*PD[-p$701402][
         PD[-p$701403][PD[-p$701401][pertE[LI[1]]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701405, p$701406]*
        metric\[Delta][p$701407, p$701408]*timevec[h$701409]*
        PD[-p$701405][PD[-h$701409][pertB[LI[1]]]]*PD[-p$701407][
         PD[-p$701408][PD[-p$701406][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701411, p$701412]*
        metric\[Delta][p$701413, p$701414]*PD[-p$701413][
         pertF[LI[1], -p$701412]]*PD[-p$701414][pertS[LI[1], -p$701411]]])/
     scale[]^6 - (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701416, p$701417]*metric\[Delta][p$701418, 
         p$701419]*PD[-p$701418][pertF[LI[1], -p$701417]]*
        PD[-p$701419][pertS[LI[1], -p$701416]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701421, p$701422]*
        metric\[Delta][p$701423, p$701424]*timevec[h$701425]*
        PD[-p$701423][pertF[LI[1], -p$701422]]*PD[-p$701424][
         PD[-h$701425][pertF[LI[1], -p$701421]]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701427, p$701428]*metric\[Delta][p$701429, 
         p$701430]*timevec[h$701431]*PD[-p$701429][pertF[LI[1], -p$701428]]*
        PD[-p$701430][PD[-h$701431][pertF[LI[1], -p$701427]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701433, p$701434]*
        metric\[Delta][p$701435, p$701436]*timevec[h$701437]*
        PD[-p$701435][pertS[LI[1], -p$701434]]*PD[-p$701436][
         PD[-h$701437][pertF[LI[1], -p$701433]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701439, p$701440]*
        metric\[Delta][p$701441, p$701442]*timevec[h$701443]*
        PD[-p$701441][PD[-p$701440][pertB[LI[1]]]]*PD[-p$701442][
         PD[-h$701443][pertF[LI[1], -p$701439]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701445, p$701446]*
        metric\[Delta][p$701447, p$701448]*timevec[h$701449]*
        PD[-p$701447][PD[-p$701446][pertE[LI[1]]]]*PD[-p$701448][
         PD[-h$701449][pertF[LI[1], -p$701445]]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701451, p$701452]*metric\[Delta][p$701453, 
         p$701454]*timevec[h$701455]*PD[-p$701453][PD[-p$701452][
          pertE[LI[1]]]]*PD[-p$701454][PD[-h$701455][pertF[LI[1], 
           -p$701451]]]])/scale[]^6 - (2*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$701457, p$701458]*metric\[Delta][p$701459, 
         p$701460]*perth[LI[1], -p$701457, -p$701459]*timevec[h$701461]*
        PD[-p$701460][PD[-h$701461][pertF[LI[1], -p$701458]]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701463, p$701464]*metric\[Delta][p$701465, 
         p$701466]*perth[LI[1], -p$701463, -p$701465]*timevec[h$701467]*
        PD[-p$701466][PD[-h$701467][pertF[LI[1], -p$701464]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701469, p$701470]*
        metric\[Delta][p$701471, p$701472]*timevec[h$701473]*
        PD[-p$701471][pertF[LI[1], -p$701470]]*PD[-p$701472][
         PD[-h$701473][pertS[LI[1], -p$701469]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701475, p$701476]*
        metric\[Delta][p$701477, p$701478]*timevec[h$701479]*
        PD[-p$701477][pertS[LI[1], -p$701476]]*PD[-p$701478][
         PD[-h$701479][pertS[LI[1], -p$701475]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701481, p$701482]*
        metric\[Delta][p$701483, p$701484]*timevec[h$701485]*
        timevec[h$701486]*PD[-p$701483][PD[-h$701486][pertF[LI[1], 
           -p$701482]]]*PD[-p$701484][PD[-h$701485][pertS[LI[1], 
           -p$701481]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701488, p$701489]*
        metric\[Delta][p$701490, p$701491]*timevec[h$701492]*
        PD[-p$701490][PD[-p$701489][pertB[LI[1]]]]*PD[-p$701491][
         PD[-h$701492][pertS[LI[1], -p$701488]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701494, p$701495]*
        metric\[Delta][p$701496, p$701497]*timevec[h$701498]*
        PD[-p$701496][PD[-p$701495][pertE[LI[1]]]]*PD[-p$701497][
         PD[-h$701498][pertS[LI[1], -p$701494]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701500, p$701501]*
        metric\[Delta][p$701502, p$701503]*perth[LI[1], -p$701500, -p$701502]*
        timevec[h$701504]*PD[-p$701503][PD[-h$701504][pertS[LI[1], 
           -p$701501]]]])/scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701506, p$701507]*metric\[Delta][p$701508, 
         p$701509]*timevec[h$701510]*timevec[h$701511]*
        PD[-p$701508][pertF[LI[1], -p$701507]]*PD[-p$701509][
         PD[-h$701511][PD[-h$701510][pertF[LI[1], -p$701506]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701513, p$701514]*
        metric\[Delta][p$701515, p$701516]*timevec[h$701517]*
        timevec[h$701518]*PD[-p$701515][pertS[LI[1], -p$701514]]*
        PD[-p$701516][PD[-h$701518][PD[-h$701517][pertF[LI[1], 
            -p$701513]]]]])/scale[]^6 + 
    (primescalar[]^3*Scalar[metric\[Delta][p$701520, p$701521]*
        metric\[Delta][p$701522, p$701523]*timevec[h$701524]*
        timevec[h$701525]*timevec[h$701526]*PD[-p$701522][
         PD[-h$701526][pertF[LI[1], -p$701521]]]*PD[-p$701523][
         PD[-h$701525][PD[-h$701524][pertF[LI[1], -p$701520]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701528, p$701529]*
        metric\[Delta][p$701530, p$701531]*timevec[h$701532]*
        timevec[h$701533]*PD[-p$701530][PD[-p$701529][pertB[LI[1]]]]*
        PD[-p$701531][PD[-h$701533][PD[-h$701532][pertF[LI[1], 
            -p$701528]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701535, p$701536]*
        metric\[Delta][p$701537, p$701538]*timevec[h$701539]*
        timevec[h$701540]*PD[-p$701537][PD[-p$701536][pertE[LI[1]]]]*
        PD[-p$701538][PD[-h$701540][PD[-h$701539][pertF[LI[1], 
            -p$701535]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$701542, p$701543]*
        metric\[Delta][p$701544, p$701545]*timevec[h$701546]*
        timevec[h$701547]*PD[-p$701544][PD[-p$701543][pertscalar[LI[1]]]]*
        PD[-p$701545][PD[-h$701547][PD[-h$701546][pertF[LI[1], 
            -p$701542]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701549, p$701550]*
        metric\[Delta][p$701551, p$701552]*perth[LI[1], -p$701549, -p$701551]*
        timevec[h$701553]*timevec[h$701554]*PD[-p$701552][
         PD[-h$701554][PD[-h$701553][pertF[LI[1], -p$701550]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701556, p$701557]*
        metric\[Delta][p$701558, p$701559]*timevec[h$701560]*
        timevec[h$701561]*timevec[h$701562]*PD[-p$701558][
         PD[-p$701557][PD[-h$701560][pertE[LI[1]]]]]*
        PD[-p$701559][PD[-h$701562][PD[-h$701561][pertF[LI[1], 
            -p$701556]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701564, p$701565]*
        metric\[Delta][p$701566, p$701567]*PD[-p$701566][
         PD[-p$701565][pertB[LI[1]]]]*PD[-p$701567][PD[-p$701564][
          pertB[LI[1]]]]])/scale[]^6 + (4*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$701569, p$701570]*metric\[Delta][p$701571, 
         p$701572]*PD[-p$701571][PD[-p$701570][pertB[LI[1]]]]*
        PD[-p$701572][PD[-p$701569][pertE[LI[1]]]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701574, p$701575]*metric\[Delta][p$701576, 
         p$701577]*PD[-p$701576][PD[-p$701575][pertB[LI[1]]]]*
        PD[-p$701577][PD[-p$701574][pertE[LI[1]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701579, p$701580]*
        metric\[Delta][p$701581, p$701582]*timevec[h$701583]*
        PD[-p$701581][PD[-h$701583][pertF[LI[1], -p$701580]]]*
        PD[-p$701582][PD[-p$701579][pertpsi[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701585, p$701586]*
        metric\[Delta][p$701587, p$701588]*PD[-p$701587][
         PD[-p$701586][pertB[LI[1]]]]*PD[-p$701588][PD[-p$701585][
          pertpsi[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701590, p$701591]*
        metric\[Delta][p$701592, p$701593]*PD[-p$701592][
         PD[-p$701591][pertE[LI[1]]]]*PD[-p$701593][PD[-p$701590][
          pertpsi[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701595, p$701596]*
        metric\[Delta][p$701597, p$701598]*timevec[h$701599]*
        PD[-p$701597][PD[-h$701599][pertF[LI[1], -p$701596]]]*
        PD[-p$701598][PD[-p$701595][pertscalar[LI[1]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$701601, p$701602]*
        metric\[Delta][p$701603, p$701604]*timevec[h$701605]*
        PD[-p$701603][PD[-h$701605][pertS[LI[1], -p$701602]]]*
        PD[-p$701604][PD[-p$701601][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$701607, p$701608]*
        metric\[Delta][p$701609, p$701610]*PD[-p$701609][
         PD[-p$701608][pertB[LI[1]]]]*PD[-p$701610][PD[-p$701607][
          pertscalar[LI[1]]]]])/scale[]^6 + 
    (4*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701612, p$701613]*metric\[Delta][p$701614, 
         p$701615]*PD[-p$701614][PD[-p$701613][pertE[LI[1]]]]*
        PD[-p$701615][PD[-p$701612][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$701617, p$701618]*
        metric\[Delta][p$701619, p$701620]*PD[-p$701619][
         PD[-p$701618][pertpsi[LI[1]]]]*PD[-p$701620][PD[-p$701617][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701622, p$701623]*
        metric\[Delta][p$701624, p$701625]*timevec[h$701626]*
        timevec[h$701627]*PD[-p$701624][PD[-h$701627][pertF[LI[1], 
           -p$701623]]]*PD[-p$701625][PD[-p$701622][PD[-h$701626][
           pertB[LI[1]]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701629, p$701630]*
        metric\[Delta][p$701631, p$701632]*timevec[h$701633]*
        PD[-p$701631][PD[-p$701630][pertB[LI[1]]]]*PD[-p$701632][
         PD[-p$701629][PD[-h$701633][pertB[LI[1]]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701635, p$701636]*
        metric\[Delta][p$701637, p$701638]*timevec[h$701639]*
        PD[-p$701637][PD[-p$701636][pertE[LI[1]]]]*PD[-p$701638][
         PD[-p$701635][PD[-h$701639][pertB[LI[1]]]]]])/scale[]^6 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$701641, p$701642]*
        metric\[Delta][p$701643, p$701644]*timevec[h$701645]*
        PD[-p$701643][PD[-p$701642][pertscalar[LI[1]]]]*
        PD[-p$701644][PD[-p$701641][PD[-h$701645][pertB[LI[1]]]]]])/
     scale[]^6 + (2*primescalar[]^3*Scalar[metric\[Delta][p$701647, p$701648]*
        metric\[Delta][p$701649, p$701650]*timevec[h$701651]*
        timevec[h$701652]*PD[-p$701649][PD[-h$701652][pertS[LI[1], 
           -p$701648]]]*PD[-p$701650][PD[-p$701647][PD[-h$701651][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701654, p$701655]*
        metric\[Delta][p$701656, p$701657]*timevec[h$701658]*
        PD[-p$701656][PD[-p$701655][pertB[LI[1]]]]*PD[-p$701657][
         PD[-p$701654][PD[-h$701658][pertE[LI[1]]]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701660, p$701661]*
        metric\[Delta][p$701662, p$701663]*timevec[h$701664]*
        PD[-p$701662][PD[-p$701661][pertE[LI[1]]]]*PD[-p$701663][
         PD[-p$701660][PD[-h$701664][pertE[LI[1]]]]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701666, p$701667]*metric\[Delta][p$701668, 
         p$701669]*timevec[h$701670]*PD[-p$701668][PD[-p$701667][
          pertE[LI[1]]]]*PD[-p$701669][PD[-p$701666][PD[-h$701670][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701672, p$701673]*
        metric\[Delta][p$701674, p$701675]*timevec[h$701676]*
        PD[-p$701674][PD[-p$701673][pertpsi[LI[1]]]]*
        PD[-p$701675][PD[-p$701672][PD[-h$701676][pertE[LI[1]]]]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701678, p$701679]*metric\[Delta][p$701680, 
         p$701681]*timevec[h$701682]*PD[-p$701680][PD[-p$701679][
          pertscalar[LI[1]]]]*PD[-p$701681][PD[-p$701678][
          PD[-h$701682][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701684, p$701685]*
        metric\[Delta][p$701686, p$701687]*timevec[h$701688]*
        timevec[h$701689]*PD[-p$701686][PD[-p$701685][PD[-h$701688][
           pertB[LI[1]]]]]*PD[-p$701687][PD[-p$701684][PD[-h$701689][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701691, p$701692]*
        metric\[Delta][p$701693, p$701694]*timevec[h$701695]*
        timevec[h$701696]*timevec[h$701697]*PD[-p$701693][
         PD[-h$701697][pertF[LI[1], -p$701692]]]*PD[-p$701694][
         PD[-p$701691][PD[-h$701696][PD[-h$701695][pertE[LI[1]]]]]]])/
     scale[]^6 - (2*primescalar[]^3*Scalar[metric\[Delta][p$701699, p$701700]*
        metric\[Delta][p$701701, p$701702]*timevec[h$701703]*
        timevec[h$701704]*PD[-p$701701][PD[-p$701700][pertB[LI[1]]]]*
        PD[-p$701702][PD[-p$701699][PD[-h$701704][PD[-h$701703][
            pertE[LI[1]]]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701706, p$701707]*
        metric\[Delta][p$701708, p$701709]*timevec[h$701710]*
        timevec[h$701711]*PD[-p$701708][PD[-p$701707][pertE[LI[1]]]]*
        PD[-p$701709][PD[-p$701706][PD[-h$701711][PD[-h$701710][
            pertE[LI[1]]]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$701713, p$701714]*
        metric\[Delta][p$701715, p$701716]*timevec[h$701717]*
        timevec[h$701718]*PD[-p$701715][PD[-p$701714][pertscalar[LI[1]]]]*
        PD[-p$701716][PD[-p$701713][PD[-h$701718][PD[-h$701717][
            pertE[LI[1]]]]]]])/scale[]^6 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$701720, p$701721]*
        metric\[Delta][p$701722, p$701723]*timevec[h$701724]*
        timevec[h$701725]*timevec[h$701726]*PD[-p$701722][
         PD[-p$701721][PD[-h$701724][pertE[LI[1]]]]]*
        PD[-p$701723][PD[-p$701720][PD[-h$701726][PD[-h$701725][
            pertE[LI[1]]]]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701728, p$701729]*
        metric\[Delta][p$701730, p$701731]*perth[LI[1], -p$701728, -p$701730]*
        PD[-p$701731][PD[-p$701729][pertB[LI[1]]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701733, p$701734]*metric\[Delta][p$701735, 
         p$701736]*perth[LI[1], -p$701733, -p$701735]*
        PD[-p$701736][PD[-p$701734][pertB[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701738, p$701739]*
        metric\[Delta][p$701740, p$701741]*perth[LI[1], -p$701738, -p$701740]*
        PD[-p$701741][PD[-p$701739][pertpsi[LI[1]]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$701743, p$701744]*metric\[Delta][p$701745, 
         p$701746]*perth[LI[1], -p$701743, -p$701745]*
        PD[-p$701746][PD[-p$701744][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$701748, p$701749]*
        metric\[Delta][p$701750, p$701751]*perth[LI[1], -p$701748, -p$701750]*
        timevec[h$701752]*PD[-p$701751][PD[-p$701749][PD[-h$701752][
           pertB[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$701754, p$701755]*
        metric\[Delta][p$701756, p$701757]*perth[LI[1], -p$701754, -p$701756]*
        timevec[h$701758]*PD[-p$701757][PD[-p$701755][PD[-h$701758][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (2*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701760, p$701761]*metric\[Delta][p$701762, 
         p$701763]*perth[LI[1], -p$701760, -p$701762]*timevec[h$701764]*
        PD[-p$701763][PD[-p$701761][PD[-h$701764][pertE[LI[1]]]]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$701766, p$701767]*metric\[Delta][p$701768, 
         p$701769]*perth[LI[1], -p$701766, -p$701768]*timevec[h$701770]*
        timevec[h$701771]*PD[-p$701769][PD[-p$701767][PD[-h$701771][
           PD[-h$701770][pertE[LI[1]]]]]]])/scale[]^6], 
 HoldPattern[pertpi6[LI[1]]] :> 
  Module[{}, (12*primehubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]])/
     scale[]^4 + (3*hubbleC[]*primescalar[]^2*
      Scalar[timevec[h$151293]*PD[-h$151293][pertphi[LI[1]]]])/scale[]^4 + 
    (3*hubbleC[]*primescalar[]^2*Scalar[timevec[h$151295]*
        PD[-h$151295][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*primescalar[]*Scalar[timevec[h$151297]*
        PD[-h$151297][pertscalar[LI[1]]]])/scale[]^4 + 
    (3*primescalar[]^2*Scalar[timevec[h$151299]*timevec[h$151300]*
        PD[-h$151300][PD[-h$151299][pertphi[LI[1]]]]])/scale[]^4 + 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$151302, p$151303]*
        PD[-p$151302][PD[-p$151303][pertB[LI[1]]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$151305, p$151306]*
        PD[-p$151305][PD[-p$151306][pertpsi[LI[1]]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$151308, p$151309]*
        timevec[h$151310]*PD[-p$151308][PD[-p$151309][PD[-h$151310][
           pertB[LI[1]]]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$151312, p$151313]*
        timevec[h$151314]*PD[-p$151312][PD[-p$151313][PD[-h$151314][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$151316, p$151317]*
        timevec[h$151318]*timevec[h$151319]*PD[-p$151316][
         PD[-p$151317][PD[-h$151319][PD[-h$151318][pertE[LI[1]]]]]]])/
     scale[]^4], HoldPattern[pertpi6[LI[2]]] :> 
  Module[{}, (-72*pertpsi[LI[1]]^2*primehubbleC[]*primescalar[]^2)/
     scale[]^4 + (12*primehubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[2]]])/
     scale[]^4 + (12*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722057, p$722058]*pertS[LI[1], -p$722057]*
        pertS[LI[1], -p$722058]])/scale[]^4 + 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722060, p$722061]*
        metric\[Delta][p$722062, p$722063]*perth[LI[1], -p$722060, -p$722062]*
        timevec[h$722064]*PD[-h$722064][perth[LI[1], -p$722061, -p$722063]]])/
     scale[]^4 + (12*hubbleC[]*primescalar[]^2*
      Scalar[pertphi[LI[1]]*timevec[h$722066]*PD[-h$722066][pertphi[LI[1]]]])/
     scale[]^4 - (24*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$722068]*PD[-h$722068][pertphi[LI[1]]]])/
     scale[]^4 + (3*hubbleC[]*primescalar[]^2*
      Scalar[timevec[h$722070]*PD[-h$722070][pertphi[LI[2]]]])/scale[]^4 - 
    (36*hubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$722072]*
        PD[-h$722072][pertpsi[LI[1]]]])/scale[]^4 + 
    (3*hubbleC[]*primescalar[]^2*Scalar[timevec[h$722074]*
        PD[-h$722074][pertpsi[LI[2]]]])/scale[]^4 + 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722076, p$722077]*
        pertS[LI[1], -p$722076]*timevec[h$722078]*PD[-h$722078][
         pertS[LI[1], -p$722077]]])/scale[]^4 + 
    (48*primehubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$722080]*
        PD[-h$722080][pertscalar[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*primescalar[]*Scalar[timevec[h$722082]*
        PD[-h$722082][pertscalar[LI[2]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$722084, p$722085]*
        metric\[Delta][p$722086, p$722087]*timevec[h$722088]*
        timevec[h$722089]*PD[-h$722088][perth[LI[1], -p$722085, -p$722087]]*
        PD[-h$722089][perth[LI[1], -p$722084, -p$722086]]])/(2*scale[]^4) + 
    (6*primescalar[]^2*Scalar[timevec[h$722091]*timevec[h$722092]*
        PD[-h$722091][pertphi[LI[1]]]*PD[-h$722092][pertphi[LI[1]]]])/
     scale[]^4 - (6*primescalar[]^2*Scalar[timevec[h$722094]*
        timevec[h$722095]*PD[-h$722094][pertphi[LI[1]]]*
        PD[-h$722095][pertpsi[LI[1]]]])/scale[]^4 + 
    (12*hubbleC[]*primescalar[]*Scalar[timevec[h$722097]*timevec[h$722098]*
        PD[-h$722097][pertphi[LI[1]]]*PD[-h$722098][pertscalar[LI[1]]]])/
     scale[]^4 + (12*hubbleC[]*primescalar[]*
      Scalar[timevec[h$722100]*timevec[h$722101]*PD[-h$722100][
         pertpsi[LI[1]]]*PD[-h$722101][pertscalar[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*Scalar[timevec[h$722103]*timevec[h$722104]*
        PD[-h$722103][pertscalar[LI[1]]]*PD[-h$722104][pertscalar[LI[1]]]])/
     scale[]^4 + (primescalar[]^2*Scalar[metric\[Delta][p$722106, p$722107]*
        metric\[Delta][p$722108, p$722109]*perth[LI[1], -p$722106, -p$722108]*
        timevec[h$722110]*timevec[h$722111]*PD[-h$722111][
         PD[-h$722110][perth[LI[1], -p$722107, -p$722109]]]])/scale[]^4 + 
    (12*primescalar[]^2*Scalar[pertphi[LI[1]]*timevec[h$722113]*
        timevec[h$722114]*PD[-h$722114][PD[-h$722113][pertphi[LI[1]]]]])/
     scale[]^4 - (24*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$722116]*
        timevec[h$722117]*PD[-h$722117][PD[-h$722116][pertphi[LI[1]]]]])/
     scale[]^4 + (3*primescalar[]^2*Scalar[timevec[h$722119]*
        timevec[h$722120]*PD[-h$722120][PD[-h$722119][pertphi[LI[2]]]]])/
     scale[]^4 + (12*primescalar[]*Scalar[timevec[h$722122]*timevec[h$722123]*
        timevec[h$722124]*PD[-h$722122][pertscalar[LI[1]]]*
        PD[-h$722124][PD[-h$722123][pertphi[LI[1]]]]])/scale[]^4 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722126, p$722127]*
        timevec[h$722128]*PD[-h$722128][pertS[LI[1], -p$722127]]*
        PD[-p$722126][pertB[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722130, p$722131]*
        timevec[h$722132]*PD[-h$722132][pertS[LI[1], -p$722131]]*
        PD[-p$722130][pertphi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722134, p$722135]*
        pertphi[LI[1]]*PD[-p$722134][PD[-p$722135][pertB[LI[1]]]]])/
     scale[]^4 - (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722137, p$722138]*pertpsi[LI[1]]*
        PD[-p$722137][PD[-p$722138][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722140, p$722141]*
        timevec[h$722142]*PD[-h$722142][pertpsi[LI[1]]]*
        PD[-p$722140][PD[-p$722141][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$722144, p$722145]*
        timevec[h$722146]*PD[-h$722146][pertscalar[LI[1]]]*
        PD[-p$722144][PD[-p$722145][pertB[LI[1]]]]])/scale[]^4 + 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722148, p$722149]*
        PD[-p$722148][PD[-p$722149][pertB[LI[2]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722151, p$722152]*
        timevec[h$722153]*PD[-h$722153][pertphi[LI[1]]]*
        PD[-p$722151][PD[-p$722152][pertE[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722155, p$722156]*
        timevec[h$722157]*timevec[h$722158]*PD[-h$722158][
         PD[-h$722157][pertphi[LI[1]]]]*PD[-p$722155][PD[-p$722156][
          pertE[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722160, p$722161]*
        pertphi[LI[1]]*PD[-p$722160][PD[-p$722161][pertpsi[LI[1]]]]])/
     scale[]^4 - (8*primescalar[]^2*Scalar[metric\[Delta][p$722163, p$722164]*
        pertpsi[LI[1]]*PD[-p$722163][PD[-p$722164][pertpsi[LI[1]]]]])/
     scale[]^4 + (4*primescalar[]*Scalar[metric\[Delta][p$722166, p$722167]*
        timevec[h$722168]*PD[-h$722168][pertscalar[LI[1]]]*
        PD[-p$722166][PD[-p$722167][pertpsi[LI[1]]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$722170, p$722171]*
        PD[-p$722170][PD[-p$722171][pertpsi[LI[2]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722173, p$722174]*
        pertphi[LI[1]]*timevec[h$722175]*PD[-p$722173][
         PD[-p$722174][PD[-h$722175][pertB[LI[1]]]]]])/scale[]^4 - 
    (8*primescalar[]^2*Scalar[metric\[Delta][p$722177, p$722178]*
        pertpsi[LI[1]]*timevec[h$722179]*PD[-p$722177][
         PD[-p$722178][PD[-h$722179][pertB[LI[1]]]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$722181, p$722182]*
        timevec[h$722183]*PD[-p$722181][PD[-p$722182][PD[-h$722183][
           pertB[LI[2]]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722185, p$722186]*
        pertphi[LI[1]]*timevec[h$722187]*PD[-p$722185][
         PD[-p$722186][PD[-h$722187][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722189, p$722190]*
        pertpsi[LI[1]]*timevec[h$722191]*PD[-p$722189][
         PD[-p$722190][PD[-h$722191][pertE[LI[1]]]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722193, p$722194]*
        timevec[h$722195]*PD[-p$722193][PD[-p$722194][PD[-h$722195][
           pertE[LI[2]]]]]])/scale[]^4 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$722197, p$722198]*
        timevec[h$722199]*timevec[h$722200]*PD[-h$722199][pertscalar[LI[1]]]*
        PD[-p$722197][PD[-p$722198][PD[-h$722200][pertB[LI[1]]]]]])/
     scale[]^4 - (4*primescalar[]^2*Scalar[metric\[Delta][p$722202, p$722203]*
        timevec[h$722204]*timevec[h$722205]*PD[-h$722204][pertphi[LI[1]]]*
        PD[-p$722202][PD[-p$722203][PD[-h$722205][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$722207, p$722208]*
        timevec[h$722209]*timevec[h$722210]*PD[-h$722209][pertpsi[LI[1]]]*
        PD[-p$722207][PD[-p$722208][PD[-h$722210][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$722212, p$722213]*timevec[h$722214]*
        timevec[h$722215]*PD[-h$722214][pertscalar[LI[1]]]*
        PD[-p$722212][PD[-p$722213][PD[-h$722215][pertE[LI[1]]]]]])/
     scale[]^4 - (4*primescalar[]^2*Scalar[metric\[Delta][p$722217, p$722218]*
        pertphi[LI[1]]*timevec[h$722219]*timevec[h$722220]*
        PD[-p$722217][PD[-p$722218][PD[-h$722220][PD[-h$722219][
            pertE[LI[1]]]]]]])/scale[]^4 + 
    (8*primescalar[]^2*Scalar[metric\[Delta][p$722222, p$722223]*
        pertpsi[LI[1]]*timevec[h$722224]*timevec[h$722225]*
        PD[-p$722222][PD[-p$722223][PD[-h$722225][PD[-h$722224][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$722227, p$722228]*
        timevec[h$722229]*timevec[h$722230]*PD[-p$722227][
         PD[-p$722228][PD[-h$722230][PD[-h$722229][pertE[LI[2]]]]]]])/
     scale[]^4 - (4*primescalar[]*Scalar[metric\[Delta][p$722232, p$722233]*
        timevec[h$722234]*timevec[h$722235]*timevec[h$722236]*
        PD[-h$722234][pertscalar[LI[1]]]*PD[-p$722232][
         PD[-p$722233][PD[-h$722236][PD[-h$722235][pertE[LI[1]]]]]]])/
     scale[]^4 - (24*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722238, p$722239]*pertS[LI[1], -p$722238]*
        PD[-p$722239][pertB[LI[1]]]])/scale[]^4 + 
    (12*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722241, p$722242]*PD[-p$722241][pertB[LI[1]]]*
        PD[-p$722242][pertB[LI[1]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722244, p$722245]*
        metric\[Delta][p$722246, p$722247]*timevec[h$722248]*
        PD[-h$722248][perth[LI[1], -p$722245, -p$722247]]*
        PD[-p$722246][pertF[LI[1], -p$722244]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722250, p$722251]*
        metric\[Delta][p$722252, p$722253]*timevec[h$722254]*
        timevec[h$722255]*PD[-h$722255][PD[-h$722254][perth[LI[1], -p$722251, 
           -p$722253]]]*PD[-p$722252][pertF[LI[1], -p$722250]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722257, p$722258]*
        metric\[Delta][p$722259, p$722260]*PD[-p$722257][
         pertS[LI[1], -p$722260]]*PD[-p$722259][pertF[LI[1], -p$722258]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722262, p$722263]*metric\[Delta][p$722264, 
         p$722265]*timevec[h$722266]*PD[-p$722262][PD[-h$722266][
          pertF[LI[1], -p$722265]]]*PD[-p$722264][pertF[LI[1], -p$722263]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$722268, p$722269]*
        metric\[Delta][p$722270, p$722271]*timevec[h$722272]*
        PD[-p$722268][PD[-h$722272][pertS[LI[1], -p$722271]]]*
        PD[-p$722270][pertF[LI[1], -p$722269]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722274, p$722275]*
        metric\[Delta][p$722276, p$722277]*timevec[h$722278]*
        timevec[h$722279]*PD[-p$722274][PD[-h$722279][PD[-h$722278][
           pertF[LI[1], -p$722277]]]]*PD[-p$722276][pertF[LI[1], 
          -p$722275]]])/scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722281, p$722282]*metric\[Delta][p$722283, 
         p$722284]*PD[-p$722281][PD[-p$722284][pertB[LI[1]]]]*
        PD[-p$722283][pertF[LI[1], -p$722282]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722286, p$722287]*
        metric\[Delta][p$722288, p$722289]*PD[-p$722286][
         PD[-p$722289][pertpsi[LI[1]]]]*PD[-p$722288][
         pertF[LI[1], -p$722287]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722291, p$722292]*
        metric\[Delta][p$722293, p$722294]*timevec[h$722295]*
        PD[-p$722291][PD[-p$722294][PD[-h$722295][pertB[LI[1]]]]]*
        PD[-p$722293][pertF[LI[1], -p$722292]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722297, p$722298]*
        metric\[Delta][p$722299, p$722300]*timevec[h$722301]*
        PD[-p$722297][PD[-p$722300][PD[-h$722301][pertE[LI[1]]]]]*
        PD[-p$722299][pertF[LI[1], -p$722298]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722303, p$722304]*
        metric\[Delta][p$722305, p$722306]*timevec[h$722307]*
        timevec[h$722308]*PD[-p$722303][PD[-p$722306][PD[-h$722308][
           PD[-h$722307][pertE[LI[1]]]]]]*PD[-p$722305][
         pertF[LI[1], -p$722304]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722310, p$722311]*
        pertS[LI[1], -p$722310]*PD[-p$722311][pertphi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722313, p$722314]*
        PD[-p$722313][pertB[LI[1]]]*PD[-p$722314][pertphi[LI[1]]]])/
     scale[]^4 + (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722316, p$722317]*pertS[LI[1], -p$722316]*
        PD[-p$722317][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722319, p$722320]*
        PD[-p$722319][pertB[LI[1]]]*PD[-p$722320][pertpsi[LI[1]]]])/
     scale[]^4 - (2*primescalar[]^2*Scalar[metric\[Delta][p$722322, p$722323]*
        PD[-p$722322][pertphi[LI[1]]]*PD[-p$722323][pertpsi[LI[1]]]])/
     scale[]^4 - (2*primescalar[]^2*Scalar[metric\[Delta][p$722325, p$722326]*
        PD[-p$722325][pertpsi[LI[1]]]*PD[-p$722326][pertpsi[LI[1]]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722328, p$722329]*metric\[Delta][p$722330, 
         p$722331]*perth[LI[1], -p$722328, -p$722331]*
        PD[-p$722330][pertS[LI[1], -p$722329]]])/scale[]^4 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$722333, p$722334]*
        metric\[Delta][p$722335, p$722336]*PD[-p$722333][
         pertS[LI[1], -p$722336]]*PD[-p$722335][pertS[LI[1], -p$722334]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722338, p$722339]*metric\[Delta][p$722340, 
         p$722341]*PD[-p$722338][PD[-p$722341][pertE[LI[1]]]]*
        PD[-p$722340][pertS[LI[1], -p$722339]]])/scale[]^4 - 
    (12*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$722343, p$722344]*pertS[LI[1], -p$722343]*
        PD[-p$722344][pertscalar[LI[1]]]])/scale[]^4 + 
    (12*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$722346, p$722347]*PD[-p$722346][pertB[LI[1]]]*
        PD[-p$722347][pertscalar[LI[1]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$722349, p$722350]*
        PD[-p$722349][pertpsi[LI[1]]]*PD[-p$722350][pertscalar[LI[1]]]])/
     scale[]^4 + (4*hubbleC[]^2*Scalar[metric\[Delta][p$722352, p$722353]*
        PD[-p$722352][pertscalar[LI[1]]]*PD[-p$722353][pertscalar[LI[1]]]])/
     scale[]^4 + (2*primehubbleC[]*Scalar[metric\[Delta][p$722355, p$722356]*
        PD[-p$722355][pertscalar[LI[1]]]*PD[-p$722356][pertscalar[LI[1]]]])/
     scale[]^4 - (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722358, p$722359]*pertS[LI[1], -p$722358]*
        timevec[h$722360]*PD[-p$722359][PD[-h$722360][pertB[LI[1]]]]])/
     scale[]^4 + (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722362, p$722363]*timevec[h$722364]*
        PD[-p$722362][pertB[LI[1]]]*PD[-p$722363][PD[-h$722364][
          pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722366, p$722367]*
        timevec[h$722368]*PD[-p$722366][pertphi[LI[1]]]*
        PD[-p$722367][PD[-h$722368][pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722370, p$722371]*
        metric\[Delta][p$722372, p$722373]*timevec[h$722374]*
        timevec[h$722375]*PD[-h$722375][perth[LI[1], -p$722371, -p$722373]]*
        PD[-p$722372][PD[-h$722374][pertF[LI[1], -p$722370]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$722377, p$722378]*
        metric\[Delta][p$722379, p$722380]*timevec[h$722381]*
        timevec[h$722382]*PD[-p$722377][PD[-h$722382][pertF[LI[1], 
           -p$722380]]]*PD[-p$722379][PD[-h$722381][pertF[LI[1], 
           -p$722378]]]])/scale[]^4 + 
    (8*primescalar[]^2*Scalar[metric\[Delta][p$722384, p$722385]*
        pertS[LI[1], -p$722384]*timevec[h$722386]*PD[-p$722385][
         PD[-h$722386][pertphi[LI[1]]]]])/scale[]^4 - 
    (8*primescalar[]^2*Scalar[metric\[Delta][p$722388, p$722389]*
        timevec[h$722390]*PD[-p$722388][pertB[LI[1]]]*
        PD[-p$722389][PD[-h$722390][pertphi[LI[1]]]]])/scale[]^4 - 
    (8*primescalar[]*Scalar[metric\[Delta][p$722392, p$722393]*
        timevec[h$722394]*PD[-p$722392][pertscalar[LI[1]]]*
        PD[-p$722393][PD[-h$722394][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722396, p$722397]*
        metric\[Delta][p$722398, p$722399]*timevec[h$722400]*
        PD[-h$722400][perth[LI[1], -p$722397, -p$722399]]*
        PD[-p$722398][PD[-p$722396][pertE[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722402, p$722403]*
        metric\[Delta][p$722404, p$722405]*timevec[h$722406]*
        timevec[h$722407]*PD[-h$722407][PD[-h$722406][perth[LI[1], -p$722403, 
           -p$722405]]]*PD[-p$722404][PD[-p$722402][pertE[LI[1]]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$722409, p$722410]*
        metric\[Delta][p$722411, p$722412]*timevec[h$722413]*
        timevec[h$722414]*PD[-h$722413][perth[LI[1], -p$722410, -p$722412]]*
        PD[-p$722411][PD[-p$722409][PD[-h$722414][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$722416, p$722417]*
        metric\[Delta][p$722418, p$722419]*timevec[h$722420]*
        PD[-h$722420][pertS[LI[1], -p$722417]]*PD[-p$722418][
         PD[-p$722419][pertF[LI[1], -p$722416]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722422, p$722423]*
        metric\[Delta][p$722424, p$722425]*pertS[LI[1], -p$722422]*
        PD[-p$722424][PD[-p$722425][pertF[LI[1], -p$722423]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722427, p$722428]*
        metric\[Delta][p$722429, p$722430]*PD[-p$722427][pertB[LI[1]]]*
        PD[-p$722429][PD[-p$722430][pertF[LI[1], -p$722428]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722432, p$722433]*
        metric\[Delta][p$722434, p$722435]*PD[-p$722432][pertpsi[LI[1]]]*
        PD[-p$722434][PD[-p$722435][pertF[LI[1], -p$722433]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722437, p$722438]*
        metric\[Delta][p$722439, p$722440]*timevec[h$722441]*
        PD[-p$722437][PD[-h$722441][pertB[LI[1]]]]*PD[-p$722439][
         PD[-p$722440][pertF[LI[1], -p$722438]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722443, p$722444]*
        metric\[Delta][p$722445, p$722446]*pertS[LI[1], -p$722443]*
        PD[-p$722445][PD[-p$722446][pertS[LI[1], -p$722444]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722448, p$722449]*
        metric\[Delta][p$722450, p$722451]*PD[-p$722448][pertB[LI[1]]]*
        PD[-p$722450][PD[-p$722451][pertS[LI[1], -p$722449]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$722453, p$722454]*
        metric\[Delta][p$722455, p$722456]*PD[-p$722453][pertscalar[LI[1]]]*
        PD[-p$722455][PD[-p$722456][pertS[LI[1], -p$722454]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722458, p$722459]*
        metric\[Delta][p$722460, p$722461]*pertS[LI[1], -p$722458]*
        timevec[h$722462]*PD[-p$722460][PD[-p$722461][PD[-h$722462][
           pertF[LI[1], -p$722459]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722464, p$722465]*
        metric\[Delta][p$722466, p$722467]*timevec[h$722468]*
        PD[-p$722464][pertB[LI[1]]]*PD[-p$722466][PD[-p$722467][
          PD[-h$722468][pertF[LI[1], -p$722465]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$722470, p$722471]*
        metric\[Delta][p$722472, p$722473]*timevec[h$722474]*
        PD[-p$722470][pertscalar[LI[1]]]*PD[-p$722472][
         PD[-p$722473][PD[-h$722474][pertF[LI[1], -p$722471]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722476, p$722477]*
        metric\[Delta][p$722478, p$722479]*timevec[h$722480]*
        PD[-h$722480][pertS[LI[1], -p$722477]]*PD[-p$722478][
         PD[-p$722479][PD[-p$722476][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722482, p$722483]*
        metric\[Delta][p$722484, p$722485]*pertS[LI[1], -p$722482]*
        PD[-p$722484][PD[-p$722485][PD[-p$722483][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722487, p$722488]*metric\[Delta][p$722489, 
         p$722490]*PD[-p$722487][pertB[LI[1]]]*PD[-p$722489][
         PD[-p$722490][PD[-p$722488][pertE[LI[1]]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722492, p$722493]*
        metric\[Delta][p$722494, p$722495]*PD[-p$722492][pertpsi[LI[1]]]*
        PD[-p$722494][PD[-p$722495][PD[-p$722493][pertE[LI[1]]]]]])/
     scale[]^4 - (2*primescalar[]^2*Scalar[metric\[Delta][p$722497, p$722498]*
        metric\[Delta][p$722499, p$722500]*timevec[h$722501]*
        PD[-p$722497][PD[-h$722501][pertB[LI[1]]]]*PD[-p$722499][
         PD[-p$722500][PD[-p$722498][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722503, p$722504]*
        metric\[Delta][p$722505, p$722506]*PD[-p$722505][
         pertF[LI[1], -p$722504]]*PD[-p$722506][pertS[LI[1], -p$722503]]])/
     scale[]^4 + (primescalar[]^2*Scalar[metric\[Delta][p$722508, p$722509]*
        metric\[Delta][p$722510, p$722511]*PD[-p$722510][
         pertS[LI[1], -p$722509]]*PD[-p$722511][pertS[LI[1], -p$722508]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722513, p$722514]*metric\[Delta][p$722515, 
         p$722516]*timevec[h$722517]*PD[-p$722515][pertF[LI[1], -p$722514]]*
        PD[-p$722516][PD[-h$722517][pertF[LI[1], -p$722513]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$722519, p$722520]*
        metric\[Delta][p$722521, p$722522]*timevec[h$722523]*
        timevec[h$722524]*PD[-p$722521][PD[-h$722524][pertF[LI[1], 
           -p$722520]]]*PD[-p$722522][PD[-h$722523][pertF[LI[1], 
           -p$722519]]]])/scale[]^4 + (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722526, p$722527]*metric\[Delta][p$722528, 
         p$722529]*timevec[h$722530]*PD[-p$722528][PD[-p$722527][
          pertE[LI[1]]]]*PD[-p$722529][PD[-h$722530][pertF[LI[1], 
           -p$722526]]]])/scale[]^4 + (2*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$722532, p$722533]*metric\[Delta][p$722534, 
         p$722535]*perth[LI[1], -p$722532, -p$722534]*timevec[h$722536]*
        PD[-p$722535][PD[-h$722536][pertF[LI[1], -p$722533]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722538, p$722539]*
        metric\[Delta][p$722540, p$722541]*timevec[h$722542]*
        PD[-p$722540][pertF[LI[1], -p$722539]]*PD[-p$722541][
         PD[-h$722542][pertS[LI[1], -p$722538]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722544, p$722545]*
        metric\[Delta][p$722546, p$722547]*timevec[h$722548]*
        PD[-p$722546][PD[-p$722545][pertE[LI[1]]]]*PD[-p$722547][
         PD[-h$722548][pertS[LI[1], -p$722544]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722550, p$722551]*
        metric\[Delta][p$722552, p$722553]*perth[LI[1], -p$722550, -p$722552]*
        timevec[h$722554]*PD[-p$722553][PD[-h$722554][pertS[LI[1], 
           -p$722551]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722556, p$722557]*
        metric\[Delta][p$722558, p$722559]*timevec[h$722560]*
        timevec[h$722561]*PD[-p$722558][pertF[LI[1], -p$722557]]*
        PD[-p$722559][PD[-h$722561][PD[-h$722560][pertF[LI[1], 
            -p$722556]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722563, p$722564]*
        metric\[Delta][p$722565, p$722566]*timevec[h$722567]*
        timevec[h$722568]*PD[-p$722565][PD[-p$722564][pertE[LI[1]]]]*
        PD[-p$722566][PD[-h$722568][PD[-h$722567][pertF[LI[1], 
            -p$722563]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722570, p$722571]*
        metric\[Delta][p$722572, p$722573]*perth[LI[1], -p$722570, -p$722572]*
        timevec[h$722574]*timevec[h$722575]*PD[-p$722573][
         PD[-h$722575][PD[-h$722574][pertF[LI[1], -p$722571]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722577, p$722578]*
        metric\[Delta][p$722579, p$722580]*PD[-p$722579][
         PD[-p$722578][pertB[LI[1]]]]*PD[-p$722580][PD[-p$722577][
          pertE[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722582, p$722583]*
        metric\[Delta][p$722584, p$722585]*PD[-p$722584][
         PD[-p$722583][pertE[LI[1]]]]*PD[-p$722585][PD[-p$722582][
          pertpsi[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722587, p$722588]*
        metric\[Delta][p$722589, p$722590]*timevec[h$722591]*
        PD[-p$722589][PD[-p$722588][pertE[LI[1]]]]*PD[-p$722590][
         PD[-p$722587][PD[-h$722591][pertB[LI[1]]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722593, p$722594]*
        metric\[Delta][p$722595, p$722596]*timevec[h$722597]*
        timevec[h$722598]*PD[-p$722595][PD[-h$722598][pertF[LI[1], 
           -p$722594]]]*PD[-p$722596][PD[-p$722593][PD[-h$722597][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722600, p$722601]*
        metric\[Delta][p$722602, p$722603]*timevec[h$722604]*
        PD[-p$722602][PD[-p$722601][pertE[LI[1]]]]*PD[-p$722603][
         PD[-p$722600][PD[-h$722604][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722606, p$722607]*
        metric\[Delta][p$722608, p$722609]*timevec[h$722610]*
        timevec[h$722611]*PD[-p$722608][PD[-p$722607][PD[-h$722610][
           pertE[LI[1]]]]]*PD[-p$722609][PD[-p$722606][PD[-h$722611][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$722613, p$722614]*
        metric\[Delta][p$722615, p$722616]*timevec[h$722617]*
        timevec[h$722618]*PD[-p$722615][PD[-p$722614][pertE[LI[1]]]]*
        PD[-p$722616][PD[-p$722613][PD[-h$722618][PD[-h$722617][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722620, p$722621]*
        metric\[Delta][p$722622, p$722623]*perth[LI[1], -p$722620, -p$722622]*
        PD[-p$722623][PD[-p$722621][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722625, p$722626]*
        metric\[Delta][p$722627, p$722628]*perth[LI[1], -p$722625, -p$722627]*
        PD[-p$722628][PD[-p$722626][pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722630, p$722631]*
        metric\[Delta][p$722632, p$722633]*perth[LI[1], -p$722630, -p$722632]*
        timevec[h$722634]*PD[-p$722633][PD[-p$722631][PD[-h$722634][
           pertB[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$722636, p$722637]*
        metric\[Delta][p$722638, p$722639]*perth[LI[1], -p$722636, -p$722638]*
        timevec[h$722640]*PD[-p$722639][PD[-p$722637][PD[-h$722640][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$722642, p$722643]*
        metric\[Delta][p$722644, p$722645]*perth[LI[1], -p$722642, -p$722644]*
        timevec[h$722646]*timevec[h$722647]*PD[-p$722645][
         PD[-p$722643][PD[-h$722647][PD[-h$722646][pertE[LI[1]]]]]]])/
     scale[]^4], HoldPattern[pertpi7[LI[1]]] :> 
  Module[{}, (-4*pprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[1]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]])/
     scale[]^4 - (primescalar[]^3*Scalar[timevec[h$152440]*
        PD[-h$152440][pertpsi[LI[1]]]])/scale[]^4 + 
    (2*pprimescalar[]*primescalar[]*Scalar[timevec[h$152442]*
        PD[-h$152442][pertscalar[LI[1]]]])/scale[]^4 - 
    (3*hubbleC[]*primescalar[]^2*Scalar[timevec[h$152444]*
        PD[-h$152444][pertscalar[LI[1]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[timevec[h$152446]*timevec[h$152447]*
        PD[-h$152447][PD[-h$152446][pertscalar[LI[1]]]]])/scale[]^4], 
 HoldPattern[pertpi7[LI[2]]] :> 
  Module[{}, (24*pertpsi[LI[1]]^2*pprimescalar[]*primescalar[]^2)/scale[]^4 - 
    (24*hubbleC[]*pertpsi[LI[1]]^2*primescalar[]^3)/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$732167, p$732168]*pertS[LI[1], -p$732167]*
        pertS[LI[1], -p$732168]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$732170, p$732171]*
        pertS[LI[1], -p$732170]*pertS[LI[1], -p$732171]])/scale[]^4 + 
    (12*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$732173]*
        PD[-h$732173][pertpsi[LI[1]]]])/scale[]^4 - 
    (primescalar[]^3*Scalar[timevec[h$732175]*PD[-h$732175][pertpsi[LI[2]]]])/
     scale[]^4 - (2*primescalar[]^3*Scalar[metric\[Delta][p$732177, p$732178]*
        pertS[LI[1], -p$732177]*timevec[h$732179]*PD[-h$732179][
         pertS[LI[1], -p$732178]]])/scale[]^4 - 
    (16*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$732181]*
        PD[-h$732181][pertscalar[LI[1]]]])/scale[]^4 + 
    (24*hubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$732183]*
        PD[-h$732183][pertscalar[LI[1]]]])/scale[]^4 + 
    (2*pprimescalar[]*primescalar[]*Scalar[timevec[h$732185]*
        PD[-h$732185][pertscalar[LI[2]]]])/scale[]^4 - 
    (3*hubbleC[]*primescalar[]^2*Scalar[timevec[h$732187]*
        PD[-h$732187][pertscalar[LI[2]]]])/scale[]^4 - 
    (6*primescalar[]^2*Scalar[timevec[h$732189]*timevec[h$732190]*
        PD[-h$732189][pertpsi[LI[1]]]*PD[-h$732190][pertscalar[LI[1]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[timevec[h$732192]*timevec[h$732193]*
        PD[-h$732192][pertscalar[LI[1]]]*PD[-h$732193][pertscalar[LI[1]]]])/
     scale[]^4 - (6*hubbleC[]*primescalar[]*
      Scalar[timevec[h$732195]*timevec[h$732196]*PD[-h$732195][
         pertscalar[LI[1]]]*PD[-h$732196][pertscalar[LI[1]]]])/scale[]^4 - 
    (8*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$732198]*
        timevec[h$732199]*PD[-h$732199][PD[-h$732198][pertscalar[LI[1]]]]])/
     scale[]^4 + (primescalar[]^2*Scalar[timevec[h$732201]*timevec[h$732202]*
        PD[-h$732202][PD[-h$732201][pertscalar[LI[2]]]]])/scale[]^4 + 
    (4*primescalar[]*Scalar[timevec[h$732204]*timevec[h$732205]*
        timevec[h$732206]*PD[-h$732204][pertscalar[LI[1]]]*
        PD[-h$732206][PD[-h$732205][pertscalar[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$732208, p$732209]*
        timevec[h$732210]*PD[-h$732210][pertS[LI[1], -p$732209]]*
        PD[-p$732208][pertB[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$732212, p$732213]*
        timevec[h$732214]*PD[-h$732214][pertS[LI[1], -p$732213]]*
        PD[-p$732212][pertscalar[LI[1]]]])/scale[]^4 + 
    (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$732216, p$732217]*pertS[LI[1], -p$732216]*
        PD[-p$732217][pertB[LI[1]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$732219, p$732220]*
        pertS[LI[1], -p$732219]*PD[-p$732220][pertB[LI[1]]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$732222, p$732223]*PD[-p$732222][pertB[LI[1]]]*
        PD[-p$732223][pertB[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$732225, p$732226]*
        PD[-p$732225][pertB[LI[1]]]*PD[-p$732226][pertB[LI[1]]]])/scale[]^4 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$732228, p$732229]*
        pertS[LI[1], -p$732228]*PD[-p$732229][pertpsi[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$732231, p$732232]*
        PD[-p$732231][pertB[LI[1]]]*PD[-p$732232][pertpsi[LI[1]]]])/
     scale[]^4 + (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$732234, p$732235]*pertS[LI[1], -p$732234]*
        PD[-p$732235][pertscalar[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$732237, p$732238]*
        pertS[LI[1], -p$732237]*PD[-p$732238][pertscalar[LI[1]]]])/
     scale[]^4 - (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$732240, p$732241]*PD[-p$732240][pertB[LI[1]]]*
        PD[-p$732241][pertscalar[LI[1]]]])/scale[]^4 + 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$732243, p$732244]*
        PD[-p$732243][pertB[LI[1]]]*PD[-p$732244][pertscalar[LI[1]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$732246, p$732247]*
        PD[-p$732246][pertpsi[LI[1]]]*PD[-p$732247][pertscalar[LI[1]]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$732249, p$732250]*PD[-p$732249][
         pertscalar[LI[1]]]*PD[-p$732250][pertscalar[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$732252, p$732253]*
        pertS[LI[1], -p$732252]*timevec[h$732254]*PD[-p$732253][
         PD[-h$732254][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$732256, p$732257]*
        timevec[h$732258]*PD[-p$732256][pertB[LI[1]]]*
        PD[-p$732257][PD[-h$732258][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$732260, p$732261]*
        timevec[h$732262]*PD[-p$732260][pertscalar[LI[1]]]*
        PD[-p$732261][PD[-h$732262][pertB[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$732264, p$732265]*
        pertS[LI[1], -p$732264]*timevec[h$732266]*PD[-p$732265][
         PD[-h$732266][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$732268, p$732269]*
        timevec[h$732270]*PD[-p$732268][pertB[LI[1]]]*
        PD[-p$732269][PD[-h$732270][pertscalar[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$732272, p$732273]*
        timevec[h$732274]*PD[-p$732272][pertscalar[LI[1]]]*
        PD[-p$732273][PD[-h$732274][pertscalar[LI[1]]]]])/scale[]^4], 
 HoldPattern[pertpi8[LI[1]]] :> 
  Module[{}, (-18*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]])/
     scale[]^6 - (3*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$157038]*PD[-h$157038][pertphi[LI[1]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$157040]*
        PD[-h$157040][pertphi[LI[1]]]])/scale[]^6 - 
    (3*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$157042]*PD[-h$157042][pertpsi[LI[1]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$157044]*
        PD[-h$157044][pertpsi[LI[1]]]])/scale[]^6 - 
    (3*primehubbleC[]*primescalar[]^3*Scalar[timevec[h$157046]*
        PD[-h$157046][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$157048]*PD[-h$157048][pertscalar[LI[1]]]])/scale[]^6 - 
    (9*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[timevec[h$157050]*PD[-h$157050][pertscalar[LI[1]]]])/scale[]^6 - 
    (3*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$157052]*
        timevec[h$157053]*PD[-h$157053][PD[-h$157052][pertphi[LI[1]]]]])/
     scale[]^6 + (3*hubbleC[]*primescalar[]^3*
      Scalar[timevec[h$157055]*timevec[h$157056]*PD[-h$157056][
         PD[-h$157055][pertphi[LI[1]]]]])/scale[]^6 + 
    (3*primehubbleC[]*primescalar[]^2*Scalar[timevec[h$157058]*
        timevec[h$157059]*PD[-h$157059][PD[-h$157058][pertscalar[LI[1]]]]])/
     scale[]^6 - (hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$157061, p$157062]*PD[-p$157061][
         PD[-p$157062][pertB[LI[1]]]]])/scale[]^6 + 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$157064, p$157065]*
        PD[-p$157064][PD[-p$157065][pertB[LI[1]]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$157067, p$157068]*
        PD[-p$157067][PD[-p$157068][pertpsi[LI[1]]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$157070, p$157071]*
        PD[-p$157070][PD[-p$157071][pertpsi[LI[1]]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$157073, p$157074]*
        timevec[h$157075]*PD[-p$157073][PD[-p$157074][PD[-h$157075][
           pertB[LI[1]]]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$157077, p$157078]*
        timevec[h$157079]*PD[-p$157077][PD[-p$157078][PD[-h$157079][
           pertB[LI[1]]]]]])/scale[]^6 + 
    (hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$157081, p$157082]*timevec[h$157083]*
        PD[-p$157081][PD[-p$157082][PD[-h$157083][pertE[LI[1]]]]]])/
     scale[]^6 - (hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$157085, p$157086]*timevec[h$157087]*
        PD[-p$157085][PD[-p$157086][PD[-h$157087][pertE[LI[1]]]]]])/
     scale[]^6 + (pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$157089, p$157090]*timevec[h$157091]*
        timevec[h$157092]*PD[-p$157089][PD[-p$157090][PD[-h$157092][
           PD[-h$157091][pertE[LI[1]]]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$157094, p$157095]*
        timevec[h$157096]*timevec[h$157097]*PD[-p$157094][
         PD[-p$157095][PD[-h$157097][PD[-h$157096][pertE[LI[1]]]]]]])/
     scale[]^6], HoldPattern[pertpi8[LI[2]]] :> 
  Module[{}, (144*pertpsi[LI[1]]^2*pprimescalar[]*primehubbleC[]*
      primescalar[]^2)/scale[]^6 - (144*hubbleC[]*pertpsi[LI[1]]^2*
      primehubbleC[]*primescalar[]^3)/scale[]^6 - 
    (18*pprimescalar[]*primehubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (18*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797358, p$797359]*pertS[LI[1], -p$797358]*
        pertS[LI[1], -p$797359]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797361, p$797362]*pertS[LI[1], -p$797361]*
        pertS[LI[1], -p$797362]])/scale[]^6 - 
    (hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797364, p$797365]*metric\[Delta][p$797366, 
         p$797367]*perth[LI[1], -p$797364, -p$797366]*timevec[h$797368]*
        PD[-h$797368][perth[LI[1], -p$797365, -p$797367]]])/scale[]^6 + 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797370, p$797371]*
        metric\[Delta][p$797372, p$797373]*perth[LI[1], -p$797370, -p$797372]*
        timevec[h$797374]*PD[-h$797374][perth[LI[1], -p$797371, -p$797373]]])/
     scale[]^6 - (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertphi[LI[1]]*timevec[h$797376]*PD[-h$797376][pertphi[LI[1]]]])/
     scale[]^6 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[pertphi[LI[1]]*timevec[h$797378]*PD[-h$797378][pertphi[LI[1]]]])/
     scale[]^6 + (36*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$797380]*PD[-h$797380][pertphi[LI[1]]]])/
     scale[]^6 - (36*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$797382]*PD[-h$797382][pertphi[LI[1]]]])/
     scale[]^6 - (3*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$797384]*PD[-h$797384][pertphi[LI[2]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$797386]*
        PD[-h$797386][pertphi[LI[2]]]])/scale[]^6 + 
    (48*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$797388]*PD[-h$797388][pertpsi[LI[1]]]])/
     scale[]^6 - (48*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$797390]*PD[-h$797390][pertpsi[LI[1]]]])/
     scale[]^6 + (48*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$797392]*PD[-h$797392][pertpsi[LI[1]]]])/
     scale[]^6 - (3*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$797394]*PD[-h$797394][pertpsi[LI[2]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$797396]*
        PD[-h$797396][pertpsi[LI[2]]]])/scale[]^6 - 
    (3*primehubbleC[]*primescalar[]^3*Scalar[timevec[h$797398]*
        PD[-h$797398][pertpsi[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797400, p$797401]*pertS[LI[1], -p$797400]*
        timevec[h$797402]*PD[-h$797402][pertS[LI[1], -p$797401]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797404, p$797405]*pertS[LI[1], -p$797404]*
        timevec[h$797406]*PD[-h$797406][pertS[LI[1], -p$797405]]])/
     scale[]^6 - (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797408, p$797409]*pertS[LI[1], -p$797408]*
        timevec[h$797410]*PD[-h$797410][pertS[LI[1], -p$797409]]])/
     scale[]^6 - (72*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$797412]*PD[-h$797412][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (108*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$797414]*PD[-h$797414][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$797416]*PD[-h$797416][pertscalar[LI[2]]]])/scale[]^6 - 
    (9*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[timevec[h$797418]*PD[-h$797418][pertscalar[LI[2]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$797420, p$797421]*
        metric\[Delta][p$797422, p$797423]*timevec[h$797424]*
        timevec[h$797425]*PD[-h$797424][perth[LI[1], -p$797421, -p$797423]]*
        PD[-h$797425][perth[LI[1], -p$797420, -p$797422]]])/(2*scale[]^6) + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797427, p$797428]*
        metric\[Delta][p$797429, p$797430]*timevec[h$797431]*
        timevec[h$797432]*PD[-h$797431][perth[LI[1], -p$797428, -p$797430]]*
        PD[-h$797432][perth[LI[1], -p$797427, -p$797429]]])/(2*scale[]^6) - 
    (6*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$797434]*
        timevec[h$797435]*PD[-h$797434][pertphi[LI[1]]]*
        PD[-h$797435][pertphi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$797437]*timevec[h$797438]*
        PD[-h$797437][pertphi[LI[1]]]*PD[-h$797438][pertphi[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$797440]*timevec[h$797441]*PD[-h$797440][
         pertphi[LI[1]]]*PD[-h$797441][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$797443]*timevec[h$797444]*
        PD[-h$797443][pertpsi[LI[1]]]*PD[-h$797444][pertpsi[LI[1]]]])/
     scale[]^6 - (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$797446]*timevec[h$797447]*PD[-h$797446][
         pertphi[LI[1]]]*PD[-h$797447][pertscalar[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$797449]*
        timevec[h$797450]*PD[-h$797449][pertphi[LI[1]]]*
        PD[-h$797450][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$797452]*timevec[h$797453]*PD[-h$797452][
         pertpsi[LI[1]]]*PD[-h$797453][pertscalar[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$797455]*
        timevec[h$797456]*PD[-h$797455][pertpsi[LI[1]]]*
        PD[-h$797456][pertscalar[LI[1]]]])/scale[]^6 - 
    (18*primehubbleC[]*primescalar[]^2*Scalar[timevec[h$797458]*
        timevec[h$797459]*PD[-h$797458][pertpsi[LI[1]]]*
        PD[-h$797459][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]*primehubbleC[]*Scalar[timevec[h$797461]*
        timevec[h$797462]*PD[-h$797461][pertscalar[LI[1]]]*
        PD[-h$797462][pertscalar[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$797464]*timevec[h$797465]*PD[-h$797464][
         pertscalar[LI[1]]]*PD[-h$797465][pertscalar[LI[1]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$797467, p$797468]*
        metric\[Delta][p$797469, p$797470]*perth[LI[1], -p$797467, -p$797469]*
        timevec[h$797471]*timevec[h$797472]*PD[-h$797472][
         PD[-h$797471][perth[LI[1], -p$797468, -p$797470]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797474, p$797475]*
        metric\[Delta][p$797476, p$797477]*perth[LI[1], -p$797474, -p$797476]*
        timevec[h$797478]*timevec[h$797479]*PD[-h$797479][
         PD[-h$797478][perth[LI[1], -p$797475, -p$797477]]]])/scale[]^6 - 
    (12*pprimescalar[]*primescalar[]^2*Scalar[pertphi[LI[1]]*
        timevec[h$797481]*timevec[h$797482]*PD[-h$797482][
         PD[-h$797481][pertphi[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[pertphi[LI[1]]*timevec[h$797484]*
        timevec[h$797485]*PD[-h$797485][PD[-h$797484][pertphi[LI[1]]]]])/
     scale[]^6 + (36*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$797487]*timevec[h$797488]*
        PD[-h$797488][PD[-h$797487][pertphi[LI[1]]]]])/scale[]^6 - 
    (36*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$797490]*
        timevec[h$797491]*PD[-h$797491][PD[-h$797490][pertphi[LI[1]]]]])/
     scale[]^6 - (3*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$797493]*timevec[h$797494]*PD[-h$797494][
         PD[-h$797493][pertphi[LI[2]]]]])/scale[]^6 + 
    (3*hubbleC[]*primescalar[]^3*Scalar[timevec[h$797496]*timevec[h$797497]*
        PD[-h$797497][PD[-h$797496][pertphi[LI[2]]]]])/scale[]^6 - 
    (36*primehubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*
        timevec[h$797499]*timevec[h$797500]*PD[-h$797500][
         PD[-h$797499][pertscalar[LI[1]]]]])/scale[]^6 + 
    (3*primehubbleC[]*primescalar[]^2*Scalar[timevec[h$797502]*
        timevec[h$797503]*PD[-h$797503][PD[-h$797502][pertscalar[LI[2]]]]])/
     scale[]^6 + (6*primescalar[]^3*Scalar[timevec[h$797505]*
        timevec[h$797506]*timevec[h$797507]*PD[-h$797505][pertpsi[LI[1]]]*
        PD[-h$797507][PD[-h$797506][pertphi[LI[1]]]]])/scale[]^6 - 
    (12*pprimescalar[]*primescalar[]*Scalar[timevec[h$797509]*
        timevec[h$797510]*timevec[h$797511]*PD[-h$797509][pertscalar[LI[1]]]*
        PD[-h$797511][PD[-h$797510][pertphi[LI[1]]]]])/scale[]^6 + 
    (18*hubbleC[]*primescalar[]^2*Scalar[timevec[h$797513]*timevec[h$797514]*
        timevec[h$797515]*PD[-h$797513][pertscalar[LI[1]]]*
        PD[-h$797515][PD[-h$797514][pertphi[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[timevec[h$797517]*timevec[h$797518]*
        timevec[h$797519]*PD[-h$797517][pertphi[LI[1]]]*
        PD[-h$797519][PD[-h$797518][pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^2*Scalar[timevec[h$797521]*timevec[h$797522]*
        timevec[h$797523]*PD[-h$797521][pertpsi[LI[1]]]*
        PD[-h$797523][PD[-h$797522][pertscalar[LI[1]]]]])/scale[]^6 + 
    (12*primehubbleC[]*primescalar[]*Scalar[timevec[h$797525]*
        timevec[h$797526]*timevec[h$797527]*PD[-h$797525][pertscalar[LI[1]]]*
        PD[-h$797527][PD[-h$797526][pertscalar[LI[1]]]]])/scale[]^6 - 
    (6*primescalar[]^2*Scalar[timevec[h$797529]*timevec[h$797530]*
        timevec[h$797531]*timevec[h$797532]*PD[-h$797530][
         PD[-h$797529][pertphi[LI[1]]]]*PD[-h$797532][PD[-h$797531][
          pertscalar[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797534, p$797535]*timevec[h$797536]*
        PD[-h$797536][pertS[LI[1], -p$797535]]*PD[-p$797534][pertB[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797538, p$797539]*timevec[h$797540]*
        PD[-h$797540][pertS[LI[1], -p$797539]]*PD[-p$797538][pertB[LI[1]]]])/
     scale[]^6 + (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797542, p$797543]*timevec[h$797544]*
        PD[-h$797544][pertS[LI[1], -p$797543]]*PD[-p$797542][pertB[LI[1]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797546, p$797547]*timevec[h$797548]*
        PD[-h$797548][pertS[LI[1], -p$797547]]*PD[-p$797546][
         pertphi[LI[1]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797550, p$797551]*
        timevec[h$797552]*PD[-h$797552][pertS[LI[1], -p$797551]]*
        PD[-p$797550][pertphi[LI[1]]]])/scale[]^6 + 
    (6*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797554, p$797555]*timevec[h$797556]*
        PD[-h$797556][pertS[LI[1], -p$797555]]*PD[-p$797554][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797558, p$797559]*pertphi[LI[1]]*
        PD[-p$797558][PD[-p$797559][pertB[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797561, p$797562]*
        pertphi[LI[1]]*PD[-p$797561][PD[-p$797562][pertB[LI[1]]]]])/
     scale[]^6 + (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797564, p$797565]*pertpsi[LI[1]]*
        PD[-p$797564][PD[-p$797565][pertB[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797567, p$797568]*
        pertpsi[LI[1]]*PD[-p$797567][PD[-p$797568][pertB[LI[1]]]]])/
     scale[]^6 + (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797570, p$797571]*timevec[h$797572]*
        PD[-h$797572][pertpsi[LI[1]]]*PD[-p$797570][PD[-p$797571][
          pertB[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$797574, p$797575]*timevec[h$797576]*
        PD[-h$797576][pertscalar[LI[1]]]*PD[-p$797574][
         PD[-p$797575][pertB[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$797578, p$797579]*
        timevec[h$797580]*PD[-h$797580][pertscalar[LI[1]]]*
        PD[-p$797578][PD[-p$797579][pertB[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$797582, p$797583]*
        timevec[h$797584]*timevec[h$797585]*PD[-h$797585][
         PD[-h$797584][pertscalar[LI[1]]]]*PD[-p$797582][
         PD[-p$797583][pertB[LI[1]]]]])/scale[]^6 - 
    (hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797587, p$797588]*PD[-p$797587][
         PD[-p$797588][pertB[LI[2]]]]])/scale[]^6 + 
    (hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797590, p$797591]*
        PD[-p$797590][PD[-p$797591][pertB[LI[2]]]]])/scale[]^6 + 
    (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797593, p$797594]*timevec[h$797595]*
        PD[-h$797595][pertphi[LI[1]]]*PD[-p$797593][PD[-p$797594][
          pertE[LI[1]]]]])/scale[]^6 - (4*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797597, p$797598]*timevec[h$797599]*
        PD[-h$797599][pertphi[LI[1]]]*PD[-p$797597][PD[-p$797598][
          pertE[LI[1]]]]])/scale[]^6 + (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797601, p$797602]*timevec[h$797603]*
        timevec[h$797604]*PD[-h$797604][PD[-h$797603][pertphi[LI[1]]]]*
        PD[-p$797601][PD[-p$797602][pertE[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797606, p$797607]*
        timevec[h$797608]*timevec[h$797609]*PD[-h$797609][
         PD[-h$797608][pertphi[LI[1]]]]*PD[-p$797606][PD[-p$797607][
          pertE[LI[1]]]]])/scale[]^6 - (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797611, p$797612]*pertphi[LI[1]]*
        PD[-p$797611][PD[-p$797612][pertpsi[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797614, p$797615]*
        pertphi[LI[1]]*PD[-p$797614][PD[-p$797615][pertpsi[LI[1]]]]])/
     scale[]^6 + (12*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797617, p$797618]*pertpsi[LI[1]]*
        PD[-p$797617][PD[-p$797618][pertpsi[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797620, p$797621]*
        pertpsi[LI[1]]*PD[-p$797620][PD[-p$797621][pertpsi[LI[1]]]]])/
     scale[]^6 + (2*primescalar[]^3*Scalar[metric\[Delta][p$797623, p$797624]*
        timevec[h$797625]*PD[-h$797625][pertpsi[LI[1]]]*
        PD[-p$797623][PD[-p$797624][pertpsi[LI[1]]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$797627, p$797628]*
        timevec[h$797629]*PD[-h$797629][pertscalar[LI[1]]]*
        PD[-p$797627][PD[-p$797628][pertpsi[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$797631, p$797632]*
        timevec[h$797633]*PD[-h$797633][pertscalar[LI[1]]]*
        PD[-p$797631][PD[-p$797632][pertpsi[LI[1]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$797635, p$797636]*
        timevec[h$797637]*timevec[h$797638]*PD[-h$797638][
         PD[-h$797637][pertscalar[LI[1]]]]*PD[-p$797635][
         PD[-p$797636][pertpsi[LI[1]]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$797640, p$797641]*
        PD[-p$797640][PD[-p$797641][pertpsi[LI[2]]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797643, p$797644]*
        PD[-p$797643][PD[-p$797644][pertpsi[LI[2]]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797646, p$797647]*pertphi[LI[1]]*
        timevec[h$797648]*PD[-p$797646][PD[-p$797647][PD[-h$797648][
           pertB[LI[1]]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797650, p$797651]*
        pertphi[LI[1]]*timevec[h$797652]*PD[-p$797650][
         PD[-p$797651][PD[-h$797652][pertB[LI[1]]]]]])/scale[]^6 + 
    (12*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797654, p$797655]*pertpsi[LI[1]]*
        timevec[h$797656]*PD[-p$797654][PD[-p$797655][PD[-h$797656][
           pertB[LI[1]]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797658, p$797659]*
        pertpsi[LI[1]]*timevec[h$797660]*PD[-p$797658][
         PD[-p$797659][PD[-h$797660][pertB[LI[1]]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$797662, p$797663]*
        timevec[h$797664]*timevec[h$797665]*timevec[h$797666]*
        PD[-h$797666][PD[-h$797665][pertscalar[LI[1]]]]*
        PD[-p$797662][PD[-p$797663][PD[-h$797664][pertB[LI[1]]]]]])/
     scale[]^6 - (pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797668, p$797669]*timevec[h$797670]*
        PD[-p$797668][PD[-p$797669][PD[-h$797670][pertB[LI[2]]]]]])/
     scale[]^6 + (hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797672, p$797673]*timevec[h$797674]*
        PD[-p$797672][PD[-p$797673][PD[-h$797674][pertB[LI[2]]]]]])/
     scale[]^6 + (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797676, p$797677]*pertphi[LI[1]]*
        timevec[h$797678]*PD[-p$797676][PD[-p$797677][PD[-h$797678][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797680, p$797681]*
        pertphi[LI[1]]*timevec[h$797682]*PD[-p$797680][
         PD[-p$797681][PD[-h$797682][pertE[LI[1]]]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797684, p$797685]*pertpsi[LI[1]]*
        timevec[h$797686]*PD[-p$797684][PD[-p$797685][PD[-h$797686][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797688, p$797689]*
        pertpsi[LI[1]]*timevec[h$797690]*PD[-p$797688][
         PD[-p$797689][PD[-h$797690][pertE[LI[1]]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$797692, p$797693]*
        timevec[h$797694]*timevec[h$797695]*timevec[h$797696]*
        PD[-h$797696][PD[-h$797695][pertscalar[LI[1]]]]*
        PD[-p$797692][PD[-p$797693][PD[-h$797694][pertE[LI[1]]]]]])/
     scale[]^6 + (hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797698, p$797699]*timevec[h$797700]*
        PD[-p$797698][PD[-p$797699][PD[-h$797700][pertE[LI[2]]]]]])/
     scale[]^6 - (hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797702, p$797703]*timevec[h$797704]*
        PD[-p$797702][PD[-p$797703][PD[-h$797704][pertE[LI[2]]]]]])/
     scale[]^6 + (2*primescalar[]^3*Scalar[metric\[Delta][p$797706, p$797707]*
        timevec[h$797708]*timevec[h$797709]*PD[-h$797708][pertpsi[LI[1]]]*
        PD[-p$797706][PD[-p$797707][PD[-h$797709][pertB[LI[1]]]]]])/
     scale[]^6 - (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$797711, p$797712]*timevec[h$797713]*
        timevec[h$797714]*PD[-h$797713][pertscalar[LI[1]]]*
        PD[-p$797711][PD[-p$797712][PD[-h$797714][pertB[LI[1]]]]]])/
     scale[]^6 + (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797716, p$797717]*timevec[h$797718]*
        timevec[h$797719]*PD[-h$797718][pertscalar[LI[1]]]*
        PD[-p$797716][PD[-p$797717][PD[-h$797719][pertB[LI[1]]]]]])/
     scale[]^6 + (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797721, p$797722]*timevec[h$797723]*
        timevec[h$797724]*PD[-h$797723][pertphi[LI[1]]]*
        PD[-p$797721][PD[-p$797722][PD[-h$797724][pertE[LI[1]]]]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797726, p$797727]*timevec[h$797728]*
        timevec[h$797729]*PD[-h$797728][pertphi[LI[1]]]*
        PD[-p$797726][PD[-p$797727][PD[-h$797729][pertE[LI[1]]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797731, p$797732]*timevec[h$797733]*
        timevec[h$797734]*PD[-h$797733][pertpsi[LI[1]]]*
        PD[-p$797731][PD[-p$797732][PD[-h$797734][pertE[LI[1]]]]]])/
     scale[]^6 + (4*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$797736, p$797737]*timevec[h$797738]*
        timevec[h$797739]*PD[-h$797738][pertscalar[LI[1]]]*
        PD[-p$797736][PD[-p$797737][PD[-h$797739][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$797741, p$797742]*timevec[h$797743]*
        timevec[h$797744]*PD[-h$797743][pertscalar[LI[1]]]*
        PD[-p$797741][PD[-p$797742][PD[-h$797744][pertE[LI[1]]]]]])/
     scale[]^6 + (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797746, p$797747]*pertphi[LI[1]]*
        timevec[h$797748]*timevec[h$797749]*PD[-p$797746][
         PD[-p$797747][PD[-h$797749][PD[-h$797748][pertE[LI[1]]]]]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797751, p$797752]*pertphi[LI[1]]*
        timevec[h$797753]*timevec[h$797754]*PD[-p$797751][
         PD[-p$797752][PD[-h$797754][PD[-h$797753][pertE[LI[1]]]]]]])/
     scale[]^6 - (12*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797756, p$797757]*pertpsi[LI[1]]*
        timevec[h$797758]*timevec[h$797759]*PD[-p$797756][
         PD[-p$797757][PD[-h$797759][PD[-h$797758][pertE[LI[1]]]]]]])/
     scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797761, p$797762]*pertpsi[LI[1]]*
        timevec[h$797763]*timevec[h$797764]*PD[-p$797761][
         PD[-p$797762][PD[-h$797764][PD[-h$797763][pertE[LI[1]]]]]]])/
     scale[]^6 + (2*primescalar[]^2*Scalar[metric\[Delta][p$797766, p$797767]*
        timevec[h$797768]*timevec[h$797769]*timevec[h$797770]*
        timevec[h$797771]*PD[-h$797771][PD[-h$797770][pertscalar[LI[1]]]]*
        PD[-p$797766][PD[-p$797767][PD[-h$797769][PD[-h$797768][
            pertE[LI[1]]]]]]])/scale[]^6 + 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$797773, p$797774]*
        timevec[h$797775]*timevec[h$797776]*PD[-p$797773][
         PD[-p$797774][PD[-h$797776][PD[-h$797775][pertE[LI[2]]]]]]])/
     scale[]^6 - (hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797778, p$797779]*timevec[h$797780]*
        timevec[h$797781]*PD[-p$797778][PD[-p$797779][PD[-h$797781][
           PD[-h$797780][pertE[LI[2]]]]]]])/scale[]^6 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$797783, p$797784]*
        timevec[h$797785]*timevec[h$797786]*timevec[h$797787]*
        PD[-h$797785][pertpsi[LI[1]]]*PD[-p$797783][PD[-p$797784][
          PD[-h$797787][PD[-h$797786][pertE[LI[1]]]]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$797789, p$797790]*
        timevec[h$797791]*timevec[h$797792]*timevec[h$797793]*
        PD[-h$797791][pertscalar[LI[1]]]*PD[-p$797789][
         PD[-p$797790][PD[-h$797793][PD[-h$797792][pertE[LI[1]]]]]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797795, p$797796]*timevec[h$797797]*
        timevec[h$797798]*timevec[h$797799]*PD[-h$797797][pertscalar[LI[1]]]*
        PD[-p$797795][PD[-p$797796][PD[-h$797799][PD[-h$797798][
            pertE[LI[1]]]]]]])/scale[]^6 + 
    (36*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797801, p$797802]*pertS[LI[1], -p$797801]*
        PD[-p$797802][pertB[LI[1]]]])/scale[]^6 - 
    (36*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797804, p$797805]*pertS[LI[1], -p$797804]*
        PD[-p$797805][pertB[LI[1]]]])/scale[]^6 - 
    (18*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797807, p$797808]*PD[-p$797807][pertB[LI[1]]]*
        PD[-p$797808][pertB[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797810, p$797811]*PD[-p$797810][pertB[LI[1]]]*
        PD[-p$797811][pertB[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797813, p$797814]*metric\[Delta][p$797815, 
         p$797816]*timevec[h$797817]*PD[-h$797817][perth[LI[1], -p$797814, 
          -p$797816]]*PD[-p$797815][pertF[LI[1], -p$797813]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797819, p$797820]*
        metric\[Delta][p$797821, p$797822]*timevec[h$797823]*
        PD[-h$797823][perth[LI[1], -p$797820, -p$797822]]*
        PD[-p$797821][pertF[LI[1], -p$797819]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797825, p$797826]*metric\[Delta][p$797827, 
         p$797828]*timevec[h$797829]*timevec[h$797830]*
        PD[-h$797830][PD[-h$797829][perth[LI[1], -p$797826, -p$797828]]]*
        PD[-p$797827][pertF[LI[1], -p$797825]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797832, p$797833]*
        metric\[Delta][p$797834, p$797835]*timevec[h$797836]*
        timevec[h$797837]*PD[-h$797837][PD[-h$797836][perth[LI[1], -p$797833, 
           -p$797835]]]*PD[-p$797834][pertF[LI[1], -p$797832]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797839, p$797840]*metric\[Delta][p$797841, 
         p$797842]*PD[-p$797839][pertS[LI[1], -p$797842]]*
        PD[-p$797841][pertF[LI[1], -p$797840]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797844, p$797845]*
        metric\[Delta][p$797846, p$797847]*PD[-p$797844][
         pertS[LI[1], -p$797847]]*PD[-p$797846][pertF[LI[1], -p$797845]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797849, p$797850]*metric\[Delta][p$797851, 
         p$797852]*timevec[h$797853]*PD[-p$797849][PD[-h$797853][
          pertF[LI[1], -p$797852]]]*PD[-p$797851][pertF[LI[1], -p$797850]]])/
     scale[]^6 + (2*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797855, p$797856]*metric\[Delta][p$797857, 
         p$797858]*timevec[h$797859]*PD[-p$797855][PD[-h$797859][
          pertF[LI[1], -p$797858]]]*PD[-p$797857][pertF[LI[1], -p$797856]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797861, p$797862]*metric\[Delta][p$797863, 
         p$797864]*timevec[h$797865]*PD[-p$797861][PD[-h$797865][
          pertS[LI[1], -p$797864]]]*PD[-p$797863][pertF[LI[1], -p$797862]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797867, p$797868]*metric\[Delta][p$797869, 
         p$797870]*timevec[h$797871]*PD[-p$797867][PD[-h$797871][
          pertS[LI[1], -p$797870]]]*PD[-p$797869][pertF[LI[1], -p$797868]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797873, p$797874]*metric\[Delta][p$797875, 
         p$797876]*timevec[h$797877]*timevec[h$797878]*
        PD[-p$797873][PD[-h$797878][PD[-h$797877][pertF[LI[1], -p$797876]]]]*
        PD[-p$797875][pertF[LI[1], -p$797874]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797880, p$797881]*
        metric\[Delta][p$797882, p$797883]*timevec[h$797884]*
        timevec[h$797885]*PD[-p$797880][PD[-h$797885][PD[-h$797884][
           pertF[LI[1], -p$797883]]]]*PD[-p$797882][pertF[LI[1], 
          -p$797881]]])/scale[]^6 + (4*hubbleC[]*pprimescalar[]*
      primescalar[]^2*Scalar[metric\[Delta][p$797887, p$797888]*
        metric\[Delta][p$797889, p$797890]*PD[-p$797887][
         PD[-p$797890][pertB[LI[1]]]]*PD[-p$797889][pertF[LI[1], 
          -p$797888]]])/scale[]^6 - (4*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$797892, p$797893]*metric\[Delta][p$797894, 
         p$797895]*PD[-p$797892][PD[-p$797895][pertB[LI[1]]]]*
        PD[-p$797894][pertF[LI[1], -p$797893]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797897, p$797898]*metric\[Delta][p$797899, 
         p$797900]*PD[-p$797897][PD[-p$797900][pertpsi[LI[1]]]]*
        PD[-p$797899][pertF[LI[1], -p$797898]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797902, p$797903]*
        metric\[Delta][p$797904, p$797905]*PD[-p$797902][
         PD[-p$797905][pertpsi[LI[1]]]]*PD[-p$797904][
         pertF[LI[1], -p$797903]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797907, p$797908]*metric\[Delta][p$797909, 
         p$797910]*timevec[h$797911]*PD[-p$797907][PD[-p$797910][
          PD[-h$797911][pertB[LI[1]]]]]*PD[-p$797909][
         pertF[LI[1], -p$797908]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797913, p$797914]*
        metric\[Delta][p$797915, p$797916]*timevec[h$797917]*
        PD[-p$797913][PD[-p$797916][PD[-h$797917][pertB[LI[1]]]]]*
        PD[-p$797915][pertF[LI[1], -p$797914]]])/scale[]^6 - 
    (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797919, p$797920]*metric\[Delta][p$797921, 
         p$797922]*timevec[h$797923]*PD[-p$797919][PD[-p$797922][
          PD[-h$797923][pertE[LI[1]]]]]*PD[-p$797921][
         pertF[LI[1], -p$797920]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797925, p$797926]*
        metric\[Delta][p$797927, p$797928]*timevec[h$797929]*
        PD[-p$797925][PD[-p$797928][PD[-h$797929][pertE[LI[1]]]]]*
        PD[-p$797927][pertF[LI[1], -p$797926]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797931, p$797932]*metric\[Delta][p$797933, 
         p$797934]*timevec[h$797935]*timevec[h$797936]*
        PD[-p$797931][PD[-p$797934][PD[-h$797936][PD[-h$797935][
            pertE[LI[1]]]]]]*PD[-p$797933][pertF[LI[1], -p$797932]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797938, p$797939]*metric\[Delta][p$797940, 
         p$797941]*timevec[h$797942]*timevec[h$797943]*
        PD[-p$797938][PD[-p$797941][PD[-h$797943][PD[-h$797942][
            pertE[LI[1]]]]]]*PD[-p$797940][pertF[LI[1], -p$797939]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797945, p$797946]*pertS[LI[1], -p$797945]*
        PD[-p$797946][pertphi[LI[1]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797948, p$797949]*
        pertS[LI[1], -p$797948]*PD[-p$797949][pertphi[LI[1]]]])/scale[]^6 + 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797951, p$797952]*PD[-p$797951][pertB[LI[1]]]*
        PD[-p$797952][pertphi[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797954, p$797955]*
        PD[-p$797954][pertB[LI[1]]]*PD[-p$797955][pertphi[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797957, p$797958]*pertS[LI[1], -p$797957]*
        PD[-p$797958][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797960, p$797961]*
        pertS[LI[1], -p$797960]*PD[-p$797961][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797963, p$797964]*pertS[LI[1], -p$797963]*
        PD[-p$797964][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797966, p$797967]*PD[-p$797966][pertB[LI[1]]]*
        PD[-p$797967][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797969, p$797970]*
        PD[-p$797969][pertB[LI[1]]]*PD[-p$797970][pertpsi[LI[1]]]])/
     scale[]^6 + (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$797972, p$797973]*PD[-p$797972][pertB[LI[1]]]*
        PD[-p$797973][pertpsi[LI[1]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797975, p$797976]*PD[-p$797975][pertphi[LI[1]]]*
        PD[-p$797976][pertpsi[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797978, p$797979]*
        PD[-p$797978][pertphi[LI[1]]]*PD[-p$797979][pertpsi[LI[1]]]])/
     scale[]^6 + (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797981, p$797982]*PD[-p$797981][pertpsi[LI[1]]]*
        PD[-p$797982][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$797984, p$797985]*
        PD[-p$797984][pertpsi[LI[1]]]*PD[-p$797985][pertpsi[LI[1]]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$797987, p$797988]*metric\[Delta][p$797989, 
         p$797990]*perth[LI[1], -p$797987, -p$797990]*
        PD[-p$797989][pertS[LI[1], -p$797988]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$797992, p$797993]*
        metric\[Delta][p$797994, p$797995]*perth[LI[1], -p$797992, -p$797995]*
        PD[-p$797994][pertS[LI[1], -p$797993]]])/scale[]^6 + 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$797997, p$797998]*
        metric\[Delta][p$797999, p$798000]*PD[-p$797997][
         pertS[LI[1], -p$798000]]*PD[-p$797999][pertS[LI[1], -p$797998]]])/
     scale[]^6 - (hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798002, p$798003]*metric\[Delta][p$798004, 
         p$798005]*PD[-p$798002][pertS[LI[1], -p$798005]]*
        PD[-p$798004][pertS[LI[1], -p$798003]]])/scale[]^6 - 
    (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798007, p$798008]*metric\[Delta][p$798009, 
         p$798010]*PD[-p$798007][PD[-p$798010][pertE[LI[1]]]]*
        PD[-p$798009][pertS[LI[1], -p$798008]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798012, p$798013]*
        metric\[Delta][p$798014, p$798015]*PD[-p$798012][
         PD[-p$798015][pertE[LI[1]]]]*PD[-p$798014][pertS[LI[1], 
          -p$798013]]])/scale[]^6 + (12*pprimescalar[]*primehubbleC[]*
      primescalar[]*Scalar[metric\[Delta][p$798017, p$798018]*
        pertS[LI[1], -p$798017]*PD[-p$798018][pertscalar[LI[1]]]])/
     scale[]^6 - (18*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798020, p$798021]*pertS[LI[1], -p$798020]*
        PD[-p$798021][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$798023, p$798024]*PD[-p$798023][pertB[LI[1]]]*
        PD[-p$798024][pertscalar[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798026, p$798027]*PD[-p$798026][pertB[LI[1]]]*
        PD[-p$798027][pertscalar[LI[1]]]])/scale[]^6 + 
    (4*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$798029, p$798030]*PD[-p$798029][pertpsi[LI[1]]]*
        PD[-p$798030][pertscalar[LI[1]]]])/scale[]^6 + 
    (2*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798032, p$798033]*PD[-p$798032][pertpsi[LI[1]]]*
        PD[-p$798033][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$798035, p$798036]*PD[-p$798035][
         pertscalar[LI[1]]]*PD[-p$798036][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798038, p$798039]*pertS[LI[1], -p$798038]*
        timevec[h$798040]*PD[-p$798039][PD[-h$798040][pertB[LI[1]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$798042, p$798043]*pertS[LI[1], -p$798042]*
        timevec[h$798044]*PD[-p$798043][PD[-h$798044][pertB[LI[1]]]]])/
     scale[]^6 + (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798046, p$798047]*pertS[LI[1], -p$798046]*
        timevec[h$798048]*PD[-p$798047][PD[-h$798048][pertB[LI[1]]]]])/
     scale[]^6 - (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798050, p$798051]*timevec[h$798052]*
        PD[-p$798050][pertB[LI[1]]]*PD[-p$798051][PD[-h$798052][
          pertB[LI[1]]]]])/scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$798054, p$798055]*timevec[h$798056]*
        PD[-p$798054][pertB[LI[1]]]*PD[-p$798055][PD[-h$798056][
          pertB[LI[1]]]]])/scale[]^6 - (6*primehubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798058, p$798059]*timevec[h$798060]*
        PD[-p$798058][pertB[LI[1]]]*PD[-p$798059][PD[-h$798060][
          pertB[LI[1]]]]])/scale[]^6 + (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798062, p$798063]*timevec[h$798064]*
        PD[-p$798062][pertphi[LI[1]]]*PD[-p$798063][PD[-h$798064][
          pertB[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798066, p$798067]*
        timevec[h$798068]*PD[-p$798066][pertphi[LI[1]]]*
        PD[-p$798067][PD[-h$798068][pertB[LI[1]]]]])/scale[]^6 - 
    (6*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798070, p$798071]*timevec[h$798072]*
        PD[-p$798070][pertscalar[LI[1]]]*PD[-p$798071][
         PD[-h$798072][pertB[LI[1]]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798074, p$798075]*metric\[Delta][p$798076, 
         p$798077]*timevec[h$798078]*timevec[h$798079]*
        PD[-h$798079][perth[LI[1], -p$798075, -p$798077]]*
        PD[-p$798076][PD[-h$798078][pertF[LI[1], -p$798074]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798081, p$798082]*
        metric\[Delta][p$798083, p$798084]*timevec[h$798085]*
        timevec[h$798086]*PD[-h$798086][perth[LI[1], -p$798082, -p$798084]]*
        PD[-p$798083][PD[-h$798085][pertF[LI[1], -p$798081]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$798088, p$798089]*
        metric\[Delta][p$798090, p$798091]*timevec[h$798092]*
        timevec[h$798093]*PD[-p$798088][PD[-h$798093][pertF[LI[1], 
           -p$798091]]]*PD[-p$798090][PD[-h$798092][pertF[LI[1], 
           -p$798089]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798095, p$798096]*
        metric\[Delta][p$798097, p$798098]*timevec[h$798099]*
        timevec[h$798100]*PD[-p$798095][PD[-h$798100][pertF[LI[1], 
           -p$798098]]]*PD[-p$798097][PD[-h$798099][pertF[LI[1], 
           -p$798096]]]])/scale[]^6 - (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798102, p$798103]*pertS[LI[1], -p$798102]*
        timevec[h$798104]*PD[-p$798103][PD[-h$798104][pertphi[LI[1]]]]])/
     scale[]^6 + (8*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798106, p$798107]*pertS[LI[1], -p$798106]*
        timevec[h$798108]*PD[-p$798107][PD[-h$798108][pertphi[LI[1]]]]])/
     scale[]^6 + (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798110, p$798111]*timevec[h$798112]*
        PD[-p$798110][pertB[LI[1]]]*PD[-p$798111][PD[-h$798112][
          pertphi[LI[1]]]]])/scale[]^6 - 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798114, p$798115]*
        timevec[h$798116]*PD[-p$798114][pertB[LI[1]]]*
        PD[-p$798115][PD[-h$798116][pertphi[LI[1]]]]])/scale[]^6 - 
    (4*primescalar[]^3*Scalar[metric\[Delta][p$798118, p$798119]*
        timevec[h$798120]*PD[-p$798118][pertpsi[LI[1]]]*
        PD[-p$798119][PD[-h$798120][pertphi[LI[1]]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$798122, p$798123]*
        timevec[h$798124]*PD[-p$798122][pertscalar[LI[1]]]*
        PD[-p$798123][PD[-h$798124][pertphi[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$798126, p$798127]*
        timevec[h$798128]*PD[-p$798126][pertscalar[LI[1]]]*
        PD[-p$798127][PD[-h$798128][pertphi[LI[1]]]]])/scale[]^6 + 
    (12*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798130, p$798131]*pertS[LI[1], -p$798130]*
        timevec[h$798132]*PD[-p$798131][PD[-h$798132][pertscalar[LI[1]]]]])/
     scale[]^6 - (12*primehubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798134, p$798135]*timevec[h$798136]*
        PD[-p$798134][pertB[LI[1]]]*PD[-p$798135][PD[-h$798136][
          pertscalar[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$798138, p$798139]*
        timevec[h$798140]*PD[-p$798138][pertpsi[LI[1]]]*
        PD[-p$798139][PD[-h$798140][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$798142, p$798143]*
        timevec[h$798144]*PD[-p$798142][pertscalar[LI[1]]]*
        PD[-p$798143][PD[-h$798144][pertscalar[LI[1]]]]])/scale[]^6 - 
    (8*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$798146, p$798147]*
        timevec[h$798148]*PD[-p$798146][pertscalar[LI[1]]]*
        PD[-p$798147][PD[-h$798148][pertscalar[LI[1]]]]])/scale[]^6 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$798150, p$798151]*
        timevec[h$798152]*timevec[h$798153]*PD[-p$798150][
         PD[-h$798153][pertphi[LI[1]]]]*PD[-p$798151][PD[-h$798152][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798155, p$798156]*metric\[Delta][p$798157, 
         p$798158]*timevec[h$798159]*PD[-h$798159][perth[LI[1], -p$798156, 
          -p$798158]]*PD[-p$798157][PD[-p$798155][pertE[LI[1]]]]])/
     scale[]^6 + (2*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$798161, p$798162]*metric\[Delta][p$798163, 
         p$798164]*timevec[h$798165]*PD[-h$798165][perth[LI[1], -p$798162, 
          -p$798164]]*PD[-p$798163][PD[-p$798161][pertE[LI[1]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798167, p$798168]*metric\[Delta][p$798169, 
         p$798170]*timevec[h$798171]*timevec[h$798172]*
        PD[-h$798172][PD[-h$798171][perth[LI[1], -p$798168, -p$798170]]]*
        PD[-p$798169][PD[-p$798167][pertE[LI[1]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798174, p$798175]*
        metric\[Delta][p$798176, p$798177]*timevec[h$798178]*
        timevec[h$798179]*PD[-h$798179][PD[-h$798178][perth[LI[1], -p$798175, 
           -p$798177]]]*PD[-p$798176][PD[-p$798174][pertE[LI[1]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798181, p$798182]*metric\[Delta][p$798183, 
         p$798184]*timevec[h$798185]*timevec[h$798186]*
        PD[-h$798185][perth[LI[1], -p$798182, -p$798184]]*
        PD[-p$798183][PD[-p$798181][PD[-h$798186][pertE[LI[1]]]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798188, p$798189]*metric\[Delta][p$798190, 
         p$798191]*timevec[h$798192]*timevec[h$798193]*
        PD[-h$798192][perth[LI[1], -p$798189, -p$798191]]*
        PD[-p$798190][PD[-p$798188][PD[-h$798193][pertE[LI[1]]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798195, p$798196]*metric\[Delta][p$798197, 
         p$798198]*timevec[h$798199]*PD[-h$798199][pertS[LI[1], -p$798196]]*
        PD[-p$798197][PD[-p$798198][pertF[LI[1], -p$798195]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798201, p$798202]*
        metric\[Delta][p$798203, p$798204]*timevec[h$798205]*
        PD[-h$798205][pertS[LI[1], -p$798202]]*PD[-p$798203][
         PD[-p$798204][pertF[LI[1], -p$798201]]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798207, p$798208]*metric\[Delta][p$798209, 
         p$798210]*pertS[LI[1], -p$798207]*PD[-p$798209][
         PD[-p$798210][pertF[LI[1], -p$798208]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798212, p$798213]*
        metric\[Delta][p$798214, p$798215]*pertS[LI[1], -p$798212]*
        PD[-p$798214][PD[-p$798215][pertF[LI[1], -p$798213]]]])/scale[]^6 + 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798217, p$798218]*metric\[Delta][p$798219, 
         p$798220]*PD[-p$798217][pertB[LI[1]]]*PD[-p$798219][
         PD[-p$798220][pertF[LI[1], -p$798218]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798222, p$798223]*
        metric\[Delta][p$798224, p$798225]*PD[-p$798222][pertB[LI[1]]]*
        PD[-p$798224][PD[-p$798225][pertF[LI[1], -p$798223]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798227, p$798228]*metric\[Delta][p$798229, 
         p$798230]*PD[-p$798227][pertpsi[LI[1]]]*PD[-p$798229][
         PD[-p$798230][pertF[LI[1], -p$798228]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798232, p$798233]*
        metric\[Delta][p$798234, p$798235]*PD[-p$798232][pertpsi[LI[1]]]*
        PD[-p$798234][PD[-p$798235][pertF[LI[1], -p$798233]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798237, p$798238]*metric\[Delta][p$798239, 
         p$798240]*timevec[h$798241]*PD[-p$798237][PD[-h$798241][
          pertB[LI[1]]]]*PD[-p$798239][PD[-p$798240][pertF[LI[1], 
           -p$798238]]]])/scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798243, p$798244]*metric\[Delta][p$798245, 
         p$798246]*timevec[h$798247]*PD[-p$798243][PD[-h$798247][
          pertB[LI[1]]]]*PD[-p$798245][PD[-p$798246][pertF[LI[1], 
           -p$798244]]]])/scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798249, p$798250]*metric\[Delta][p$798251, 
         p$798252]*pertS[LI[1], -p$798249]*PD[-p$798251][
         PD[-p$798252][pertS[LI[1], -p$798250]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798254, p$798255]*
        metric\[Delta][p$798256, p$798257]*pertS[LI[1], -p$798254]*
        PD[-p$798256][PD[-p$798257][pertS[LI[1], -p$798255]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798259, p$798260]*metric\[Delta][p$798261, 
         p$798262]*PD[-p$798259][pertB[LI[1]]]*PD[-p$798261][
         PD[-p$798262][pertS[LI[1], -p$798260]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798264, p$798265]*
        metric\[Delta][p$798266, p$798267]*PD[-p$798264][pertB[LI[1]]]*
        PD[-p$798266][PD[-p$798267][pertS[LI[1], -p$798265]]]])/scale[]^6 - 
    (primescalar[]^3*Scalar[metric\[Delta][p$798269, p$798270]*
        metric\[Delta][p$798271, p$798272]*PD[-p$798269][pertpsi[LI[1]]]*
        PD[-p$798271][PD[-p$798272][pertS[LI[1], -p$798270]]]])/scale[]^6 + 
    (pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$798274, p$798275]*
        metric\[Delta][p$798276, p$798277]*PD[-p$798274][pertscalar[LI[1]]]*
        PD[-p$798276][PD[-p$798277][pertS[LI[1], -p$798275]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$798279, p$798280]*
        metric\[Delta][p$798281, p$798282]*PD[-p$798279][pertscalar[LI[1]]]*
        PD[-p$798281][PD[-p$798282][pertS[LI[1], -p$798280]]]])/scale[]^6 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$798284, p$798285]*
        metric\[Delta][p$798286, p$798287]*timevec[h$798288]*
        PD[-p$798284][PD[-h$798288][pertscalar[LI[1]]]]*
        PD[-p$798286][PD[-p$798287][pertS[LI[1], -p$798285]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798290, p$798291]*metric\[Delta][p$798292, 
         p$798293]*pertS[LI[1], -p$798290]*timevec[h$798294]*
        PD[-p$798292][PD[-p$798293][PD[-h$798294][pertF[LI[1], 
            -p$798291]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798296, p$798297]*
        metric\[Delta][p$798298, p$798299]*pertS[LI[1], -p$798296]*
        timevec[h$798300]*PD[-p$798298][PD[-p$798299][PD[-h$798300][
           pertF[LI[1], -p$798297]]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798302, p$798303]*metric\[Delta][p$798304, 
         p$798305]*timevec[h$798306]*PD[-p$798302][pertB[LI[1]]]*
        PD[-p$798304][PD[-p$798305][PD[-h$798306][pertF[LI[1], 
            -p$798303]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798308, p$798309]*
        metric\[Delta][p$798310, p$798311]*timevec[h$798312]*
        PD[-p$798308][pertB[LI[1]]]*PD[-p$798310][PD[-p$798311][
          PD[-h$798312][pertF[LI[1], -p$798309]]]]])/scale[]^6 - 
    (primescalar[]^3*Scalar[metric\[Delta][p$798314, p$798315]*
        metric\[Delta][p$798316, p$798317]*timevec[h$798318]*
        PD[-p$798314][pertpsi[LI[1]]]*PD[-p$798316][PD[-p$798317][
          PD[-h$798318][pertF[LI[1], -p$798315]]]]])/scale[]^6 + 
    (pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$798320, p$798321]*
        metric\[Delta][p$798322, p$798323]*timevec[h$798324]*
        PD[-p$798320][pertscalar[LI[1]]]*PD[-p$798322][
         PD[-p$798323][PD[-h$798324][pertF[LI[1], -p$798321]]]]])/scale[]^6 - 
    (hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$798326, p$798327]*
        metric\[Delta][p$798328, p$798329]*timevec[h$798330]*
        PD[-p$798326][pertscalar[LI[1]]]*PD[-p$798328][
         PD[-p$798329][PD[-h$798330][pertF[LI[1], -p$798327]]]]])/scale[]^6 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$798332, p$798333]*
        metric\[Delta][p$798334, p$798335]*timevec[h$798336]*
        timevec[h$798337]*PD[-p$798332][PD[-h$798337][pertscalar[LI[1]]]]*
        PD[-p$798334][PD[-p$798335][PD[-h$798336][pertF[LI[1], 
            -p$798333]]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798339, p$798340]*metric\[Delta][p$798341, 
         p$798342]*timevec[h$798343]*PD[-h$798343][pertS[LI[1], -p$798340]]*
        PD[-p$798341][PD[-p$798342][PD[-p$798339][pertE[LI[1]]]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798345, p$798346]*metric\[Delta][p$798347, 
         p$798348]*timevec[h$798349]*PD[-h$798349][pertS[LI[1], -p$798346]]*
        PD[-p$798347][PD[-p$798348][PD[-p$798345][pertE[LI[1]]]]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798351, p$798352]*metric\[Delta][p$798353, 
         p$798354]*pertS[LI[1], -p$798351]*PD[-p$798353][
         PD[-p$798354][PD[-p$798352][pertE[LI[1]]]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798356, p$798357]*
        metric\[Delta][p$798358, p$798359]*pertS[LI[1], -p$798356]*
        PD[-p$798358][PD[-p$798359][PD[-p$798357][pertE[LI[1]]]]]])/
     scale[]^6 + (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798361, p$798362]*metric\[Delta][p$798363, 
         p$798364]*PD[-p$798361][pertB[LI[1]]]*PD[-p$798363][
         PD[-p$798364][PD[-p$798362][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798366, p$798367]*
        metric\[Delta][p$798368, p$798369]*PD[-p$798366][pertB[LI[1]]]*
        PD[-p$798368][PD[-p$798369][PD[-p$798367][pertE[LI[1]]]]]])/
     scale[]^6 + (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798371, p$798372]*metric\[Delta][p$798373, 
         p$798374]*PD[-p$798371][pertpsi[LI[1]]]*PD[-p$798373][
         PD[-p$798374][PD[-p$798372][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798376, p$798377]*
        metric\[Delta][p$798378, p$798379]*PD[-p$798376][pertpsi[LI[1]]]*
        PD[-p$798378][PD[-p$798379][PD[-p$798377][pertE[LI[1]]]]]])/
     scale[]^6 + (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798381, p$798382]*metric\[Delta][p$798383, 
         p$798384]*timevec[h$798385]*PD[-p$798381][PD[-h$798385][
          pertB[LI[1]]]]*PD[-p$798383][PD[-p$798384][PD[-p$798382][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798387, p$798388]*
        metric\[Delta][p$798389, p$798390]*timevec[h$798391]*
        PD[-p$798387][PD[-h$798391][pertB[LI[1]]]]*PD[-p$798389][
         PD[-p$798390][PD[-p$798388][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798393, p$798394]*metric\[Delta][p$798395, 
         p$798396]*PD[-p$798395][pertF[LI[1], -p$798394]]*
        PD[-p$798396][pertS[LI[1], -p$798393]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798398, p$798399]*
        metric\[Delta][p$798400, p$798401]*PD[-p$798400][
         pertF[LI[1], -p$798399]]*PD[-p$798401][pertS[LI[1], -p$798398]]])/
     scale[]^6 - (pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798403, p$798404]*metric\[Delta][p$798405, 
         p$798406]*PD[-p$798405][pertS[LI[1], -p$798404]]*
        PD[-p$798406][pertS[LI[1], -p$798403]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798408, p$798409]*
        metric\[Delta][p$798410, p$798411]*PD[-p$798410][
         pertS[LI[1], -p$798409]]*PD[-p$798411][pertS[LI[1], -p$798408]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798413, p$798414]*metric\[Delta][p$798415, 
         p$798416]*timevec[h$798417]*PD[-p$798415][pertF[LI[1], -p$798414]]*
        PD[-p$798416][PD[-h$798417][pertF[LI[1], -p$798413]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798419, p$798420]*
        metric\[Delta][p$798421, p$798422]*timevec[h$798423]*
        PD[-p$798421][pertF[LI[1], -p$798420]]*PD[-p$798422][
         PD[-h$798423][pertF[LI[1], -p$798419]]]])/scale[]^6 - 
    (pprimescalar[]*primescalar[]^2*Scalar[metric\[Delta][p$798425, p$798426]*
        metric\[Delta][p$798427, p$798428]*timevec[h$798429]*
        timevec[h$798430]*PD[-p$798427][PD[-h$798430][pertF[LI[1], 
           -p$798426]]]*PD[-p$798428][PD[-h$798429][pertF[LI[1], 
           -p$798425]]]])/scale[]^6 + 
    (hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798432, p$798433]*
        metric\[Delta][p$798434, p$798435]*timevec[h$798436]*
        timevec[h$798437]*PD[-p$798434][PD[-h$798437][pertF[LI[1], 
           -p$798433]]]*PD[-p$798435][PD[-h$798436][pertF[LI[1], 
           -p$798432]]]])/scale[]^6 - (4*hubbleC[]*pprimescalar[]*
      primescalar[]^2*Scalar[metric\[Delta][p$798439, p$798440]*
        metric\[Delta][p$798441, p$798442]*timevec[h$798443]*
        PD[-p$798441][PD[-p$798440][pertE[LI[1]]]]*PD[-p$798442][
         PD[-h$798443][pertF[LI[1], -p$798439]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798445, p$798446]*
        metric\[Delta][p$798447, p$798448]*timevec[h$798449]*
        PD[-p$798447][PD[-p$798446][pertE[LI[1]]]]*PD[-p$798448][
         PD[-h$798449][pertF[LI[1], -p$798445]]]])/scale[]^6 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798451, p$798452]*metric\[Delta][p$798453, 
         p$798454]*perth[LI[1], -p$798451, -p$798453]*timevec[h$798455]*
        PD[-p$798454][PD[-h$798455][pertF[LI[1], -p$798452]]]])/scale[]^6 + 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798457, p$798458]*
        metric\[Delta][p$798459, p$798460]*perth[LI[1], -p$798457, -p$798459]*
        timevec[h$798461]*PD[-p$798460][PD[-h$798461][pertF[LI[1], 
           -p$798458]]]])/scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798463, p$798464]*metric\[Delta][p$798465, 
         p$798466]*timevec[h$798467]*PD[-p$798465][pertF[LI[1], -p$798464]]*
        PD[-p$798466][PD[-h$798467][pertS[LI[1], -p$798463]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798469, p$798470]*
        metric\[Delta][p$798471, p$798472]*timevec[h$798473]*
        PD[-p$798471][pertF[LI[1], -p$798470]]*PD[-p$798472][
         PD[-h$798473][pertS[LI[1], -p$798469]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798475, p$798476]*metric\[Delta][p$798477, 
         p$798478]*timevec[h$798479]*PD[-p$798477][PD[-p$798476][
          pertE[LI[1]]]]*PD[-p$798478][PD[-h$798479][pertS[LI[1], 
           -p$798475]]]])/scale[]^6 + (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798481, p$798482]*metric\[Delta][p$798483, 
         p$798484]*timevec[h$798485]*PD[-p$798483][PD[-p$798482][
          pertE[LI[1]]]]*PD[-p$798484][PD[-h$798485][pertS[LI[1], 
           -p$798481]]]])/scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798487, p$798488]*metric\[Delta][p$798489, 
         p$798490]*perth[LI[1], -p$798487, -p$798489]*timevec[h$798491]*
        PD[-p$798490][PD[-h$798491][pertS[LI[1], -p$798488]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798493, p$798494]*
        metric\[Delta][p$798495, p$798496]*perth[LI[1], -p$798493, -p$798495]*
        timevec[h$798497]*PD[-p$798496][PD[-h$798497][pertS[LI[1], 
           -p$798494]]]])/scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798499, p$798500]*metric\[Delta][p$798501, 
         p$798502]*timevec[h$798503]*timevec[h$798504]*
        PD[-p$798501][pertF[LI[1], -p$798500]]*PD[-p$798502][
         PD[-h$798504][PD[-h$798503][pertF[LI[1], -p$798499]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798506, p$798507]*
        metric\[Delta][p$798508, p$798509]*timevec[h$798510]*
        timevec[h$798511]*PD[-p$798508][pertF[LI[1], -p$798507]]*
        PD[-p$798509][PD[-h$798511][PD[-h$798510][pertF[LI[1], 
            -p$798506]]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798513, p$798514]*metric\[Delta][p$798515, 
         p$798516]*timevec[h$798517]*timevec[h$798518]*
        PD[-p$798515][PD[-p$798514][pertE[LI[1]]]]*PD[-p$798516][
         PD[-h$798518][PD[-h$798517][pertF[LI[1], -p$798513]]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798520, p$798521]*
        metric\[Delta][p$798522, p$798523]*timevec[h$798524]*
        timevec[h$798525]*PD[-p$798522][PD[-p$798521][pertE[LI[1]]]]*
        PD[-p$798523][PD[-h$798525][PD[-h$798524][pertF[LI[1], 
            -p$798520]]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798527, p$798528]*metric\[Delta][p$798529, 
         p$798530]*perth[LI[1], -p$798527, -p$798529]*timevec[h$798531]*
        timevec[h$798532]*PD[-p$798530][PD[-h$798532][PD[-h$798531][
           pertF[LI[1], -p$798528]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798534, p$798535]*
        metric\[Delta][p$798536, p$798537]*perth[LI[1], -p$798534, -p$798536]*
        timevec[h$798538]*timevec[h$798539]*PD[-p$798537][
         PD[-h$798539][PD[-h$798538][pertF[LI[1], -p$798535]]]]])/scale[]^6 + 
    (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798541, p$798542]*metric\[Delta][p$798543, 
         p$798544]*PD[-p$798543][PD[-p$798542][pertB[LI[1]]]]*
        PD[-p$798544][PD[-p$798541][pertE[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798546, p$798547]*
        metric\[Delta][p$798548, p$798549]*PD[-p$798548][
         PD[-p$798547][pertB[LI[1]]]]*PD[-p$798549][PD[-p$798546][
          pertE[LI[1]]]]])/scale[]^6 + (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798551, p$798552]*metric\[Delta][p$798553, 
         p$798554]*PD[-p$798553][PD[-p$798552][pertE[LI[1]]]]*
        PD[-p$798554][PD[-p$798551][pertpsi[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798556, p$798557]*
        metric\[Delta][p$798558, p$798559]*PD[-p$798558][
         PD[-p$798557][pertE[LI[1]]]]*PD[-p$798559][PD[-p$798556][
          pertpsi[LI[1]]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798561, p$798562]*metric\[Delta][p$798563, 
         p$798564]*timevec[h$798565]*PD[-p$798563][PD[-p$798562][
          pertE[LI[1]]]]*PD[-p$798564][PD[-p$798561][PD[-h$798565][
           pertB[LI[1]]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798567, p$798568]*
        metric\[Delta][p$798569, p$798570]*timevec[h$798571]*
        PD[-p$798569][PD[-p$798568][pertE[LI[1]]]]*PD[-p$798570][
         PD[-p$798567][PD[-h$798571][pertB[LI[1]]]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798573, p$798574]*metric\[Delta][p$798575, 
         p$798576]*timevec[h$798577]*timevec[h$798578]*
        PD[-p$798575][PD[-h$798578][pertF[LI[1], -p$798574]]]*
        PD[-p$798576][PD[-p$798573][PD[-h$798577][pertE[LI[1]]]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798580, p$798581]*metric\[Delta][p$798582, 
         p$798583]*timevec[h$798584]*timevec[h$798585]*
        PD[-p$798582][PD[-h$798585][pertF[LI[1], -p$798581]]]*
        PD[-p$798583][PD[-p$798580][PD[-h$798584][pertE[LI[1]]]]]])/
     scale[]^6 - (4*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798587, p$798588]*metric\[Delta][p$798589, 
         p$798590]*timevec[h$798591]*PD[-p$798589][PD[-p$798588][
          pertE[LI[1]]]]*PD[-p$798590][PD[-p$798587][PD[-h$798591][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798593, p$798594]*
        metric\[Delta][p$798595, p$798596]*timevec[h$798597]*
        PD[-p$798595][PD[-p$798594][pertE[LI[1]]]]*PD[-p$798596][
         PD[-p$798593][PD[-h$798597][pertE[LI[1]]]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798599, p$798600]*metric\[Delta][p$798601, 
         p$798602]*timevec[h$798603]*timevec[h$798604]*
        PD[-p$798601][PD[-p$798600][PD[-h$798603][pertE[LI[1]]]]]*
        PD[-p$798602][PD[-p$798599][PD[-h$798604][pertE[LI[1]]]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798606, p$798607]*metric\[Delta][p$798608, 
         p$798609]*timevec[h$798610]*timevec[h$798611]*
        PD[-p$798608][PD[-p$798607][PD[-h$798610][pertE[LI[1]]]]]*
        PD[-p$798609][PD[-p$798606][PD[-h$798611][pertE[LI[1]]]]]])/
     scale[]^6 - (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798613, p$798614]*metric\[Delta][p$798615, 
         p$798616]*timevec[h$798617]*timevec[h$798618]*
        PD[-p$798615][PD[-p$798614][pertE[LI[1]]]]*PD[-p$798616][
         PD[-p$798613][PD[-h$798618][PD[-h$798617][pertE[LI[1]]]]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798620, p$798621]*metric\[Delta][p$798622, 
         p$798623]*timevec[h$798624]*timevec[h$798625]*
        PD[-p$798622][PD[-p$798621][pertE[LI[1]]]]*PD[-p$798623][
         PD[-p$798620][PD[-h$798625][PD[-h$798624][pertE[LI[1]]]]]]])/
     scale[]^6 + (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798627, p$798628]*metric\[Delta][p$798629, 
         p$798630]*perth[LI[1], -p$798627, -p$798629]*
        PD[-p$798630][PD[-p$798628][pertB[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$798632, p$798633]*
        metric\[Delta][p$798634, p$798635]*perth[LI[1], -p$798632, -p$798634]*
        PD[-p$798635][PD[-p$798633][pertB[LI[1]]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798637, p$798638]*metric\[Delta][p$798639, 
         p$798640]*perth[LI[1], -p$798637, -p$798639]*
        PD[-p$798640][PD[-p$798638][pertpsi[LI[1]]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798642, p$798643]*
        metric\[Delta][p$798644, p$798645]*perth[LI[1], -p$798642, -p$798644]*
        PD[-p$798645][PD[-p$798643][pertpsi[LI[1]]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798647, p$798648]*metric\[Delta][p$798649, 
         p$798650]*perth[LI[1], -p$798647, -p$798649]*timevec[h$798651]*
        PD[-p$798650][PD[-p$798648][PD[-h$798651][pertB[LI[1]]]]]])/
     scale[]^6 - (2*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$798653, p$798654]*metric\[Delta][p$798655, 
         p$798656]*perth[LI[1], -p$798653, -p$798655]*timevec[h$798657]*
        PD[-p$798656][PD[-p$798654][PD[-h$798657][pertB[LI[1]]]]]])/
     scale[]^6 - (2*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798659, p$798660]*metric\[Delta][p$798661, 
         p$798662]*perth[LI[1], -p$798659, -p$798661]*timevec[h$798663]*
        PD[-p$798662][PD[-p$798660][PD[-h$798663][pertE[LI[1]]]]]])/
     scale[]^6 + (2*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$798665, p$798666]*metric\[Delta][p$798667, 
         p$798668]*perth[LI[1], -p$798665, -p$798667]*timevec[h$798669]*
        PD[-p$798668][PD[-p$798666][PD[-h$798669][pertE[LI[1]]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$798671, p$798672]*metric\[Delta][p$798673, 
         p$798674]*perth[LI[1], -p$798671, -p$798673]*timevec[h$798675]*
        timevec[h$798676]*PD[-p$798674][PD[-p$798672][PD[-h$798676][
           PD[-h$798675][pertE[LI[1]]]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$798678, p$798679]*
        metric\[Delta][p$798680, p$798681]*perth[LI[1], -p$798678, -p$798680]*
        timevec[h$798682]*timevec[h$798683]*PD[-p$798681][
         PD[-p$798679][PD[-h$798683][PD[-h$798682][pertE[LI[1]]]]]]])/
     scale[]^6], HoldPattern[pertpi9[LI[1]]] :> 
  Module[{}, (6*pprimescalar[]^2*primescalar[]^2*Scalar[pertpsi[LI[1]]])/
     scale[]^6 - (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[pertpsi[LI[1]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^3*Scalar[timevec[h$159815]*
        PD[-h$159815][pertpsi[LI[1]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^4*Scalar[timevec[h$159817]*
        PD[-h$159817][pertpsi[LI[1]]]])/scale[]^6 - 
    (2*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$159819]*
        PD[-h$159819][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$159821]*PD[-h$159821][pertscalar[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$159823]*
        PD[-h$159823][pertscalar[LI[1]]]])/scale[]^6 - 
    (2*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$159825]*
        timevec[h$159826]*PD[-h$159826][PD[-h$159825][pertscalar[LI[1]]]]])/
     scale[]^6 + (2*hubbleC[]*primescalar[]^3*
      Scalar[timevec[h$159828]*timevec[h$159829]*PD[-h$159829][
         PD[-h$159828][pertscalar[LI[1]]]]])/scale[]^6], 
 HoldPattern[pertpi9[LI[2]]] :> 
  Module[{}, (-48*pertpsi[LI[1]]^2*pprimescalar[]^2*primescalar[]^2)/
     scale[]^6 + (96*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]*
      primescalar[]^3)/scale[]^6 - (48*hubbleC[]^2*pertpsi[LI[1]]^2*
      primescalar[]^4)/scale[]^6 + (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^4*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$825888, p$825889]*pertS[LI[1], -p$825888]*
        pertS[LI[1], -p$825889]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$825891, p$825892]*pertS[LI[1], -p$825891]*
        pertS[LI[1], -p$825892]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$825894, p$825895]*
        pertS[LI[1], -p$825894]*pertS[LI[1], -p$825895]])/scale[]^6 - 
    (32*pprimescalar[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*
        timevec[h$825897]*PD[-h$825897][pertpsi[LI[1]]]])/scale[]^6 + 
    (32*hubbleC[]*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$825899]*
        PD[-h$825899][pertpsi[LI[1]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^3*Scalar[timevec[h$825901]*
        PD[-h$825901][pertpsi[LI[2]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^4*Scalar[timevec[h$825903]*
        PD[-h$825903][pertpsi[LI[2]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$825905, p$825906]*pertS[LI[1], -p$825905]*
        timevec[h$825907]*PD[-h$825907][pertS[LI[1], -p$825906]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$825909, p$825910]*pertS[LI[1], -p$825909]*
        timevec[h$825911]*PD[-h$825911][pertS[LI[1], -p$825910]]])/
     scale[]^6 + (24*pprimescalar[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$825913]*PD[-h$825913][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (72*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$825915]*PD[-h$825915][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (48*hubbleC[]^2*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$825917]*
        PD[-h$825917][pertscalar[LI[1]]]])/scale[]^6 - 
    (2*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$825919]*
        PD[-h$825919][pertscalar[LI[2]]]])/scale[]^6 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$825921]*PD[-h$825921][pertscalar[LI[2]]]])/scale[]^6 - 
    (4*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$825923]*
        PD[-h$825923][pertscalar[LI[2]]]])/scale[]^6 - 
    (2*primescalar[]^4*Scalar[timevec[h$825925]*timevec[h$825926]*
        PD[-h$825925][pertpsi[LI[1]]]*PD[-h$825926][pertpsi[LI[1]]]])/
     scale[]^6 + (12*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$825928]*timevec[h$825929]*PD[-h$825928][
         pertpsi[LI[1]]]*PD[-h$825929][pertscalar[LI[1]]]])/scale[]^6 - 
    (16*hubbleC[]*primescalar[]^3*Scalar[timevec[h$825931]*timevec[h$825932]*
        PD[-h$825931][pertpsi[LI[1]]]*PD[-h$825932][pertscalar[LI[1]]]])/
     scale[]^6 - (2*pprimescalar[]^2*Scalar[timevec[h$825934]*
        timevec[h$825935]*PD[-h$825934][pertscalar[LI[1]]]*
        PD[-h$825935][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$825937]*timevec[h$825938]*PD[-h$825937][
         pertscalar[LI[1]]]*PD[-h$825938][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$825940]*
        timevec[h$825941]*PD[-h$825940][pertscalar[LI[1]]]*
        PD[-h$825941][pertscalar[LI[1]]]])/scale[]^6 + 
    (24*pprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*
        timevec[h$825943]*timevec[h$825944]*PD[-h$825944][
         PD[-h$825943][pertscalar[LI[1]]]]])/scale[]^6 - 
    (24*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$825946]*
        timevec[h$825947]*PD[-h$825947][PD[-h$825946][pertscalar[LI[1]]]]])/
     scale[]^6 - (2*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$825949]*timevec[h$825950]*PD[-h$825950][
         PD[-h$825949][pertscalar[LI[2]]]]])/scale[]^6 + 
    (2*hubbleC[]*primescalar[]^3*Scalar[timevec[h$825952]*timevec[h$825953]*
        PD[-h$825953][PD[-h$825952][pertscalar[LI[2]]]]])/scale[]^6 + 
    (4*primescalar[]^3*Scalar[timevec[h$825955]*timevec[h$825956]*
        timevec[h$825957]*PD[-h$825955][pertpsi[LI[1]]]*
        PD[-h$825957][PD[-h$825956][pertscalar[LI[1]]]]])/scale[]^6 - 
    (8*pprimescalar[]*primescalar[]*Scalar[timevec[h$825959]*
        timevec[h$825960]*timevec[h$825961]*PD[-h$825959][pertscalar[LI[1]]]*
        PD[-h$825961][PD[-h$825960][pertscalar[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^2*Scalar[timevec[h$825963]*timevec[h$825964]*
        timevec[h$825965]*PD[-h$825963][pertscalar[LI[1]]]*
        PD[-h$825965][PD[-h$825964][pertscalar[LI[1]]]]])/scale[]^6 - 
    (2*primescalar[]^2*Scalar[timevec[h$825967]*timevec[h$825968]*
        timevec[h$825969]*timevec[h$825970]*PD[-h$825968][
         PD[-h$825967][pertscalar[LI[1]]]]*PD[-h$825970][
         PD[-h$825969][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$825972, p$825973]*timevec[h$825974]*
        PD[-h$825974][pertS[LI[1], -p$825973]]*PD[-p$825972][pertB[LI[1]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$825976, p$825977]*timevec[h$825978]*
        PD[-h$825978][pertS[LI[1], -p$825977]]*PD[-p$825976][pertB[LI[1]]]])/
     scale[]^6 - (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$825980, p$825981]*timevec[h$825982]*
        PD[-h$825982][pertS[LI[1], -p$825981]]*PD[-p$825980][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$825984, p$825985]*
        timevec[h$825986]*PD[-h$825986][pertS[LI[1], -p$825985]]*
        PD[-p$825984][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$825988, p$825989]*pertS[LI[1], -p$825988]*
        PD[-p$825989][pertB[LI[1]]]])/scale[]^6 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$825991, p$825992]*pertS[LI[1], -p$825991]*
        PD[-p$825992][pertB[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$825994, p$825995]*
        pertS[LI[1], -p$825994]*PD[-p$825995][pertB[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$825997, p$825998]*PD[-p$825997][pertB[LI[1]]]*
        PD[-p$825998][pertB[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826000, p$826001]*PD[-p$826000][pertB[LI[1]]]*
        PD[-p$826001][pertB[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$826003, p$826004]*
        PD[-p$826003][pertB[LI[1]]]*PD[-p$826004][pertB[LI[1]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826006, p$826007]*pertS[LI[1], -p$826006]*
        PD[-p$826007][pertpsi[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$826009, p$826010]*
        pertS[LI[1], -p$826009]*PD[-p$826010][pertpsi[LI[1]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826012, p$826013]*PD[-p$826012][pertB[LI[1]]]*
        PD[-p$826013][pertpsi[LI[1]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$826015, p$826016]*
        PD[-p$826015][pertB[LI[1]]]*PD[-p$826016][pertpsi[LI[1]]]])/
     scale[]^6 + (2*primescalar[]^4*Scalar[metric\[Delta][p$826018, p$826019]*
        PD[-p$826018][pertpsi[LI[1]]]*PD[-p$826019][pertpsi[LI[1]]]])/
     scale[]^6 - (4*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$826021, p$826022]*pertS[LI[1], -p$826021]*
        PD[-p$826022][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$826024, p$826025]*pertS[LI[1], -p$826024]*
        PD[-p$826025][pertscalar[LI[1]]]])/scale[]^6 - 
    (8*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$826027, p$826028]*
        pertS[LI[1], -p$826027]*PD[-p$826028][pertscalar[LI[1]]]])/
     scale[]^6 + (4*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$826030, p$826031]*PD[-p$826030][pertB[LI[1]]]*
        PD[-p$826031][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$826033, p$826034]*PD[-p$826033][pertB[LI[1]]]*
        PD[-p$826034][pertscalar[LI[1]]]])/scale[]^6 + 
    (8*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$826036, p$826037]*
        PD[-p$826036][pertB[LI[1]]]*PD[-p$826037][pertscalar[LI[1]]]])/
     scale[]^6 - (4*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$826039, p$826040]*PD[-p$826039][
         pertscalar[LI[1]]]*PD[-p$826040][pertscalar[LI[1]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$826042, p$826043]*
        PD[-p$826042][pertscalar[LI[1]]]*PD[-p$826043][pertscalar[LI[1]]]])/
     scale[]^6 - (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826045, p$826046]*pertS[LI[1], -p$826045]*
        timevec[h$826047]*PD[-p$826046][PD[-h$826047][pertB[LI[1]]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$826049, p$826050]*pertS[LI[1], -p$826049]*
        timevec[h$826051]*PD[-p$826050][PD[-h$826051][pertB[LI[1]]]]])/
     scale[]^6 + (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826053, p$826054]*timevec[h$826055]*
        PD[-p$826053][pertB[LI[1]]]*PD[-p$826054][PD[-h$826055][
          pertB[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$826057, p$826058]*
        timevec[h$826059]*PD[-p$826057][pertB[LI[1]]]*
        PD[-p$826058][PD[-h$826059][pertB[LI[1]]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$826061, p$826062]*timevec[h$826063]*
        PD[-p$826061][pertscalar[LI[1]]]*PD[-p$826062][
         PD[-h$826063][pertB[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$826065, p$826066]*
        timevec[h$826067]*PD[-p$826065][pertscalar[LI[1]]]*
        PD[-p$826066][PD[-h$826067][pertB[LI[1]]]]])/scale[]^6 - 
    (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$826069, p$826070]*pertS[LI[1], -p$826069]*
        timevec[h$826071]*PD[-p$826070][PD[-h$826071][pertscalar[LI[1]]]]])/
     scale[]^6 + (8*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$826073, p$826074]*pertS[LI[1], -p$826073]*
        timevec[h$826075]*PD[-p$826074][PD[-h$826075][pertscalar[LI[1]]]]])/
     scale[]^6 + (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$826077, p$826078]*timevec[h$826079]*
        PD[-p$826077][pertB[LI[1]]]*PD[-p$826078][PD[-h$826079][
          pertscalar[LI[1]]]]])/scale[]^6 - 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$826081, p$826082]*
        timevec[h$826083]*PD[-p$826081][pertB[LI[1]]]*
        PD[-p$826082][PD[-h$826083][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*primescalar[]^3*Scalar[metric\[Delta][p$826085, p$826086]*
        timevec[h$826087]*PD[-p$826085][pertpsi[LI[1]]]*
        PD[-p$826086][PD[-h$826087][pertscalar[LI[1]]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$826089, p$826090]*
        timevec[h$826091]*PD[-p$826089][pertscalar[LI[1]]]*
        PD[-p$826090][PD[-h$826091][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$826093, p$826094]*
        timevec[h$826095]*PD[-p$826093][pertscalar[LI[1]]]*
        PD[-p$826094][PD[-h$826095][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$826097, p$826098]*
        timevec[h$826099]*timevec[h$826100]*PD[-p$826097][
         PD[-h$826100][pertscalar[LI[1]]]]*PD[-p$826098][
         PD[-h$826099][pertscalar[LI[1]]]]])/scale[]^6], 
 HoldPattern[pertpiX[LI[1]]] :> 
  Module[{}, -((primescalar[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2) + 
    (primescalar[]*Scalar[timevec[h$116257]*PD[-h$116257][
         pertscalar[LI[1]]]])/scale[]^2], HoldPattern[pertpiX[LI[2]]] :> 
  Module[{}, (4*pertpsi[LI[1]]^2*primescalar[]^2)/scale[]^2 - 
    (primescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$241748, p$241749]*
        pertS[LI[1], -p$241748]*pertS[LI[1], -p$241749]])/scale[]^2 - 
    (4*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$241751]*
        PD[-h$241751][pertscalar[LI[1]]]])/scale[]^2 + 
    (primescalar[]*Scalar[timevec[h$241753]*PD[-h$241753][
         pertscalar[LI[2]]]])/scale[]^2 + 
    Scalar[timevec[h$241755]*timevec[h$241756]*PD[-h$241755][
        pertscalar[LI[1]]]*PD[-h$241756][pertscalar[LI[1]]]]/scale[]^2 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$241758, p$241759]*
        pertS[LI[1], -p$241758]*PD[-p$241759][pertB[LI[1]]]])/scale[]^2 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$241761, p$241762]*
        PD[-p$241761][pertB[LI[1]]]*PD[-p$241762][pertB[LI[1]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241764, p$241765]*
        pertS[LI[1], -p$241764]*PD[-p$241765][pertscalar[LI[1]]]])/
     scale[]^2 - (2*primescalar[]*Scalar[metric\[Delta][p$241767, p$241768]*
        PD[-p$241767][pertB[LI[1]]]*PD[-p$241768][pertscalar[LI[1]]]])/
     scale[]^2 - Scalar[metric\[Delta][p$241770, p$241771]*
       PD[-p$241770][pertscalar[LI[1]]]*PD[-p$241771][pertscalar[LI[1]]]]/
     scale[]^2], HoldPattern[pertRicciCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{h$107428, h$107429, p$107430, 
    p$107431}, 3*hubbleC[]*timevec[-a]*timevec[-b]*timevec[h$107428]*
     PD[-h$107428][pertphi[LI[1]]] + 3*hubbleC[]*timevec[-a]*timevec[-b]*
     timevec[h$107428]*PD[-h$107428][pertpsi[LI[1]]] + 
    3*timevec[-a]*timevec[-b]*timevec[h$107428]*timevec[h$107429]*
     PD[-h$107429][PD[-h$107428][pertphi[LI[1]]]] + 
    hubbleC[]*metric\[Delta][p$107430, p$107431]*timevec[-a]*timevec[-b]*
     PD[-p$107430][PD[-p$107431][pertB[LI[1]]]] + 
    metric\[Delta][p$107430, p$107431]*timevec[-a]*timevec[-b]*
     PD[-p$107430][PD[-p$107431][pertpsi[LI[1]]]] + 
    metric\[Delta][p$107430, p$107431]*timevec[-a]*timevec[-b]*
     timevec[h$107428]*PD[-p$107430][PD[-p$107431][
       PD[-h$107428][pertB[LI[1]]]]] - hubbleC[]*metric\[Delta][p$107430, 
      p$107431]*timevec[-a]*timevec[-b]*timevec[h$107428]*
     PD[-p$107430][PD[-p$107431][PD[-h$107428][pertE[LI[1]]]]] - 
    metric\[Delta][p$107430, p$107431]*timevec[-a]*timevec[-b]*
     timevec[h$107428]*timevec[h$107429]*PD[-p$107430][
      PD[-p$107431][PD[-h$107429][PD[-h$107428][pertE[LI[1]]]]]]], 
 HoldPattern[pertRicciCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{h$109411, p$109412, p$109413}, 
   -2*hubbleC[]^2*pertS[LI[1], -i]*timevec[-a] - 
    pertS[LI[1], -i]*primehubbleC[]*timevec[-a] + 
    2*timevec[-a]*timevec[h$109411]*PD[-h$109411][PD[-i][pertphi[LI[1]]]] + 
    2*hubbleC[]^2*timevec[-a]*PD[-i][pertB[LI[1]]] + 
    primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[1]]] + 
    2*hubbleC[]*timevec[-a]*PD[-i][pertpsi[LI[1]]] + 
    (metric\[Delta][p$109412, p$109413]*timevec[-a]*
      PD[-p$109412][PD[-p$109413][pertS[LI[1], -i]]])/2 + 
    (metric\[Delta][p$109412, p$109413]*timevec[-a]*timevec[h$109411]*
      PD[-p$109412][PD[-p$109413][PD[-h$109411][pertF[LI[1], -i]]]])/2], 
 HoldPattern[pertRicciCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{h$109417, p$109418, p$109419}, 
   -2*hubbleC[]^2*pertS[LI[1], -i]*timevec[-a] - 
    pertS[LI[1], -i]*primehubbleC[]*timevec[-a] + 
    2*timevec[-a]*timevec[h$109417]*PD[-h$109417][PD[-i][pertphi[LI[1]]]] + 
    2*hubbleC[]^2*timevec[-a]*PD[-i][pertB[LI[1]]] + 
    primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[1]]] + 
    2*hubbleC[]*timevec[-a]*PD[-i][pertpsi[LI[1]]] + 
    (metric\[Delta][p$109418, p$109419]*timevec[-a]*
      PD[-p$109418][PD[-p$109419][pertS[LI[1], -i]]])/2 + 
    (metric\[Delta][p$109418, p$109419]*timevec[-a]*timevec[h$109417]*
      PD[-p$109418][PD[-p$109419][PD[-h$109417][pertF[LI[1], -i]]]])/2], 
 HoldPattern[pertRicciCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{h$113606, h$113607, p$113608, 
    p$113609}, 2*hubbleC[]^2*perth[LI[1], -i, -j] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]] + 
    perth[LI[1], -i, -j]*primehubbleC[] - 2*metric\[Delta][-i, -j]*
     pertphi[LI[1]]*primehubbleC[] - 2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
     primehubbleC[] + hubbleC[]*timevec[h$113606]*
     PD[-h$113606][perth[LI[1], -i, -j]] - 5*hubbleC[]*metric\[Delta][-i, -j]*
     timevec[h$113606]*PD[-h$113606][pertphi[LI[1]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*timevec[h$113606]*
     PD[-h$113606][pertpsi[LI[1]]] + hubbleC[]*timevec[h$113606]*
     PD[-h$113606][PD[-i][pertF[LI[1], -j]]] + 
    (timevec[h$113606]*PD[-h$113606][PD[-i][pertS[LI[1], -j]]])/2 + 
    hubbleC[]*timevec[h$113606]*PD[-h$113606][PD[-j][pertF[LI[1], -i]]] + 
    (timevec[h$113606]*PD[-h$113606][PD[-j][pertS[LI[1], -i]]])/2 - 
    timevec[h$113606]*PD[-h$113606][PD[-j][PD[-i][pertB[LI[1]]]]] + 
    2*hubbleC[]*timevec[h$113606]*PD[-h$113606][
      PD[-j][PD[-i][pertE[LI[1]]]]] + (timevec[h$113606]*timevec[h$113607]*
      PD[-h$113607][PD[-h$113606][perth[LI[1], -i, -j]]])/2 - 
    metric\[Delta][-i, -j]*timevec[h$113606]*timevec[h$113607]*
     PD[-h$113607][PD[-h$113606][pertphi[LI[1]]]] + 
    (timevec[h$113606]*timevec[h$113607]*PD[-h$113607][
       PD[-h$113606][PD[-i][pertF[LI[1], -j]]]])/2 + 
    (timevec[h$113606]*timevec[h$113607]*PD[-h$113607][
       PD[-h$113606][PD[-j][pertF[LI[1], -i]]]])/2 + 
    timevec[h$113606]*timevec[h$113607]*PD[-h$113607][
      PD[-h$113606][PD[-j][PD[-i][pertE[LI[1]]]]]] + 
    2*hubbleC[]^2*PD[-i][pertF[LI[1], -j]] + primehubbleC[]*
     PD[-i][pertF[LI[1], -j]] + hubbleC[]*PD[-i][pertS[LI[1], -j]] + 
    2*hubbleC[]^2*PD[-j][pertF[LI[1], -i]] + primehubbleC[]*
     PD[-j][pertF[LI[1], -i]] + hubbleC[]*PD[-j][pertS[LI[1], -i]] - 
    2*hubbleC[]*PD[-j][PD[-i][pertB[LI[1]]]] + 
    4*hubbleC[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
    2*primehubbleC[]*PD[-j][PD[-i][pertE[LI[1]]]] + 
    PD[-j][PD[-i][pertphi[LI[1]]]] - PD[-j][PD[-i][pertpsi[LI[1]]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$113608, p$113609]*
     PD[-p$113608][PD[-p$113609][pertB[LI[1]]]] - 
    (metric\[Delta][p$113608, p$113609]*PD[-p$113608][
       PD[-p$113609][perth[LI[1], -i, -j]]])/2 + metric\[Delta][-i, -j]*
     metric\[Delta][p$113608, p$113609]*PD[-p$113608][
      PD[-p$113609][pertphi[LI[1]]]] + hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$113608, p$113609]*timevec[h$113606]*
     PD[-p$113608][PD[-p$113609][PD[-h$113606][pertE[LI[1]]]]]], 
 HoldPattern[pertRicciCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{p$140789, p$140790, p$140791, 
    p$140794, h$140795, h$140796}, 
   4*hubbleC[]^2*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     pertS[LI[1], -p$140790]*timevec[-a]*timevec[-b] + 
    2*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     pertS[LI[1], -p$140790]*primehubbleC[]*timevec[-a]*timevec[-b] + 
    hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][perth[LI[1], -p$140791, -p$140794]] + 
    12*hubbleC[]*pertphi[LI[1]]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertphi[LI[1]]] + 3*hubbleC[]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][pertphi[LI[2]]] - 
    12*hubbleC[]*pertpsi[LI[1]]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertpsi[LI[1]]] + 3*hubbleC[]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][pertpsi[LI[2]]] + 
    6*hubbleC[]*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertS[LI[1], -p$140790]] + 
    (metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
      timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
      PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]*
      PD[-h$140796][perth[LI[1], -p$140789, -p$140790]])/2 + 
    6*timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140795][pertphi[LI[1]]]*PD[-h$140796][pertphi[LI[1]]] - 
    6*timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140795][pertphi[LI[1]]]*PD[-h$140796][pertpsi[LI[1]]] + 
    metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-h$140796][
      PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]] + 
    12*pertphi[LI[1]]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     timevec[h$140796]*PD[-h$140796][PD[-h$140795][pertphi[LI[1]]]] + 
    3*timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140796][PD[-h$140795][pertphi[LI[2]]]] - 
    6*hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][pertS[LI[1], -p$140790]]*
     PD[-p$140789][pertB[LI[1]]] + 2*metric\[Delta][p$140789, p$140790]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertS[LI[1], -p$140790]]*PD[-p$140789][pertphi[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][p$140789, p$140790]*pertphi[LI[1]]*timevec[-a]*
     timevec[-b]*PD[-p$140789][PD[-p$140790][pertB[LI[1]]]] - 
    2*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][pertpsi[LI[1]]]*
     PD[-p$140789][PD[-p$140790][pertB[LI[1]]]] + 
    hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140789][PD[-p$140790][pertB[LI[2]]]] - 
    4*hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][pertphi[LI[1]]]*
     PD[-p$140789][PD[-p$140790][pertE[LI[1]]]] - 
    4*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-h$140796][
      PD[-h$140795][pertphi[LI[1]]]]*PD[-p$140789][
      PD[-p$140790][pertE[LI[1]]]] + 4*metric\[Delta][p$140789, p$140790]*
     pertphi[LI[1]]*timevec[-a]*timevec[-b]*PD[-p$140789][
      PD[-p$140790][pertpsi[LI[1]]]] + metric\[Delta][p$140789, p$140790]*
     timevec[-a]*timevec[-b]*PD[-p$140789][PD[-p$140790][pertpsi[LI[2]]]] + 
    4*metric\[Delta][p$140789, p$140790]*pertphi[LI[1]]*timevec[-a]*
     timevec[-b]*timevec[h$140795]*PD[-p$140789][
      PD[-p$140790][PD[-h$140795][pertB[LI[1]]]]] + 
    metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140789][PD[-p$140790][
       PD[-h$140795][pertB[LI[2]]]]] - 4*hubbleC[]*metric\[Delta][p$140789, 
      p$140790]*pertphi[LI[1]]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-p$140790][PD[-h$140795][pertE[LI[1]]]]] - 
    hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140789][PD[-p$140790][
       PD[-h$140795][pertE[LI[2]]]]] - 4*metric\[Delta][p$140789, p$140790]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140795][pertphi[LI[1]]]*PD[-p$140789][
      PD[-p$140790][PD[-h$140796][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-h$140795][pertpsi[LI[1]]]*
     PD[-p$140789][PD[-p$140790][PD[-h$140796][pertE[LI[1]]]]] - 
    4*metric\[Delta][p$140789, p$140790]*pertphi[LI[1]]*timevec[-a]*
     timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140789][PD[-p$140790][PD[-h$140796][PD[-h$140795][
         pertE[LI[1]]]]]] - metric\[Delta][p$140789, p$140790]*timevec[-a]*
     timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140789][PD[-p$140790][PD[-h$140796][PD[-h$140795][
         pertE[LI[2]]]]]] - 8*hubbleC[]^2*metric\[Delta][p$140789, p$140790]*
     pertS[LI[1], -p$140789]*timevec[-a]*timevec[-b]*
     PD[-p$140790][pertB[LI[1]]] - 4*metric\[Delta][p$140789, p$140790]*
     pertS[LI[1], -p$140789]*primehubbleC[]*timevec[-a]*timevec[-b]*
     PD[-p$140790][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][p$140789, 
      p$140790]*timevec[-a]*timevec[-b]*PD[-p$140789][pertB[LI[1]]]*
     PD[-p$140790][pertB[LI[1]]] + 2*metric\[Delta][p$140789, p$140790]*
     primehubbleC[]*timevec[-a]*timevec[-b]*PD[-p$140789][pertB[LI[1]]]*
     PD[-p$140790][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$140789, 
      p$140791]*metric\[Delta][p$140790, p$140794]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]*
     PD[-p$140790][pertF[LI[1], -p$140789]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140796][PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]]*
     PD[-p$140790][pertF[LI[1], -p$140789]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*timevec[-a]*timevec[-b]*PD[-p$140789][
      pertS[LI[1], -p$140791]]*PD[-p$140790][pertF[LI[1], -p$140794]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-h$140795][pertF[LI[1], -p$140791]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] + 
    2*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-h$140795][pertS[LI[1], -p$140791]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] + 
    2*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140789][PD[-h$140796][PD[-h$140795][pertF[LI[1], -p$140791]]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] - 
    4*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*timevec[-a]*timevec[-b]*PD[-p$140789][
      PD[-p$140791][pertB[LI[1]]]]*PD[-p$140790][pertF[LI[1], -p$140794]] - 
    4*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*PD[-p$140789][PD[-p$140791][pertpsi[LI[1]]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] - 
    4*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-p$140791][PD[-h$140795][pertB[LI[1]]]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] + 
    4*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-p$140791][PD[-h$140795][pertE[LI[1]]]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] + 
    4*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140789][PD[-p$140791][PD[-h$140796][PD[-h$140795][pertE[LI[1]]]]]]*
     PD[-p$140790][pertF[LI[1], -p$140794]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     timevec[-a]*timevec[-b]*PD[-p$140790][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140789][pertB[LI[1]]]*PD[-p$140790][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     timevec[-a]*timevec[-b]*PD[-p$140790][pertpsi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140789][pertB[LI[1]]]*PD[-p$140790][pertpsi[LI[1]]] - 
    2*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140789][pertphi[LI[1]]]*PD[-p$140790][pertpsi[LI[1]]] - 
    2*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140789][pertpsi[LI[1]]]*PD[-p$140790][pertpsi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*perth[LI[1], -p$140789, -p$140791]*timevec[-a]*timevec[-b]*
     PD[-p$140790][pertS[LI[1], -p$140794]] - 
    metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*PD[-p$140789][pertS[LI[1], -p$140791]]*
     PD[-p$140790][pertS[LI[1], -p$140794]] + 
    4*hubbleC[]*metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, 
      p$140791]*timevec[-a]*timevec[-b]*PD[-p$140789][
      PD[-p$140791][pertE[LI[1]]]]*PD[-p$140790][pertS[LI[1], -p$140794]] - 
    6*hubbleC[]*metric\[Delta][p$140789, p$140790]*pertS[LI[1], -p$140789]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][PD[-h$140795][pertB[LI[1]]]] + 
    6*hubbleC[]*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140789][pertB[LI[1]]]*
     PD[-p$140790][PD[-h$140795][pertB[LI[1]]]] - 
    2*metric\[Delta][p$140789, p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140789][pertphi[LI[1]]]*
     PD[-p$140790][PD[-h$140795][pertB[LI[1]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140796][perth[LI[1], -p$140791, -p$140794]]*
     PD[-p$140790][PD[-h$140795][pertF[LI[1], -p$140789]]] + 
    metric\[Delta][p$140789, p$140794]*metric\[Delta][p$140790, p$140791]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140789][PD[-h$140796][pertF[LI[1], -p$140791]]]*
     PD[-p$140790][PD[-h$140795][pertF[LI[1], -p$140794]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]*
     PD[-p$140790][PD[-p$140789][pertE[LI[1]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140796][PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]]*
     PD[-p$140790][PD[-p$140789][pertE[LI[1]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-h$140795][perth[LI[1], -p$140791, -p$140794]]*
     PD[-p$140790][PD[-p$140789][PD[-h$140796][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertS[LI[1], -p$140791]]*PD[-p$140790][
      PD[-p$140794][pertF[LI[1], -p$140789]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*pertS[LI[1], -p$140789]*timevec[-a]*timevec[-b]*
     PD[-p$140790][PD[-p$140794][pertF[LI[1], -p$140791]]] - 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*PD[-p$140789][pertB[LI[1]]]*
     PD[-p$140790][PD[-p$140794][pertF[LI[1], -p$140791]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*PD[-p$140789][pertpsi[LI[1]]]*
     PD[-p$140790][PD[-p$140794][pertF[LI[1], -p$140791]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-h$140795][pertB[LI[1]]]]*
     PD[-p$140790][PD[-p$140794][pertF[LI[1], -p$140791]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-h$140795][pertS[LI[1], -p$140791]]*PD[-p$140790][
      PD[-p$140794][PD[-p$140789][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*pertS[LI[1], -p$140789]*timevec[-a]*timevec[-b]*
     PD[-p$140790][PD[-p$140794][PD[-p$140791][pertE[LI[1]]]]] - 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*PD[-p$140789][pertB[LI[1]]]*
     PD[-p$140790][PD[-p$140794][PD[-p$140791][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*PD[-p$140789][pertpsi[LI[1]]]*
     PD[-p$140790][PD[-p$140794][PD[-p$140791][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140789][PD[-h$140795][pertB[LI[1]]]]*
     PD[-p$140790][PD[-p$140794][PD[-p$140791][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*PD[-p$140790][
      pertF[LI[1], -p$140791]]*PD[-p$140794][pertS[LI[1], -p$140789]] + 
    metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*PD[-p$140790][pertS[LI[1], -p$140791]]*
     PD[-p$140794][pertS[LI[1], -p$140789]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][pertF[LI[1], -p$140791]]*PD[-p$140794][
      PD[-h$140795][pertF[LI[1], -p$140789]]] + 
    metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140790][PD[-h$140796][pertF[LI[1], -p$140791]]]*
     PD[-p$140794][PD[-h$140795][pertF[LI[1], -p$140789]]] + 
    4*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-h$140795][pertF[LI[1], -p$140789]]] + 
    2*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140794][PD[-h$140795][
       pertF[LI[1], -p$140791]]] + 2*metric\[Delta][p$140789, p$140791]*
     metric\[Delta][p$140790, p$140794]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140790][pertF[LI[1], -p$140791]]*
     PD[-p$140794][PD[-h$140795][pertS[LI[1], -p$140789]]] + 
    4*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-h$140795][pertS[LI[1], -p$140789]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140794][PD[-h$140795][
       pertS[LI[1], -p$140791]]] + 2*metric\[Delta][p$140789, p$140791]*
     metric\[Delta][p$140790, p$140794]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-p$140790][
      pertF[LI[1], -p$140791]]*PD[-p$140794][PD[-h$140796][
       PD[-h$140795][pertF[LI[1], -p$140789]]]] + 
    4*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-h$140796][PD[-h$140795][pertF[LI[1], -p$140789]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-p$140794][
      PD[-h$140796][PD[-h$140795][pertF[LI[1], -p$140791]]]] - 
    4*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*PD[-p$140790][
      PD[-p$140791][pertB[LI[1]]]]*PD[-p$140794][
      PD[-p$140789][pertE[LI[1]]]] - 4*metric\[Delta][p$140789, p$140791]*
     metric\[Delta][p$140790, p$140794]*timevec[-a]*timevec[-b]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-p$140789][pertpsi[LI[1]]]] - 
    4*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-p$140789][PD[-h$140795][pertB[LI[1]]]]] + 
    4*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140790][PD[-h$140796][pertF[LI[1], -p$140791]]]*
     PD[-p$140794][PD[-p$140789][PD[-h$140795][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, 
      p$140794]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-p$140789][PD[-h$140795][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140790][PD[-p$140791][PD[-h$140795][pertE[LI[1]]]]]*
     PD[-p$140794][PD[-p$140789][PD[-h$140796][pertE[LI[1]]]]] + 
    4*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     timevec[-a]*timevec[-b]*timevec[h$140795]*timevec[h$140796]*
     PD[-p$140790][PD[-p$140791][pertE[LI[1]]]]*
     PD[-p$140794][PD[-p$140789][PD[-h$140796][PD[-h$140795][
         pertE[LI[1]]]]]] - 2*hubbleC[]*metric\[Delta][p$140789, p$140791]*
     metric\[Delta][p$140790, p$140794]*perth[LI[1], -p$140789, -p$140790]*
     timevec[-a]*timevec[-b]*PD[-p$140794][PD[-p$140791][pertB[LI[1]]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     PD[-p$140794][PD[-p$140791][pertpsi[LI[1]]]] - 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*PD[-p$140794][PD[-p$140791][
       PD[-h$140795][pertB[LI[1]]]]] + 2*hubbleC[]*metric\[Delta][p$140789, 
      p$140791]*metric\[Delta][p$140790, p$140794]*perth[LI[1], -p$140789, 
      -p$140790]*timevec[-a]*timevec[-b]*timevec[h$140795]*
     PD[-p$140794][PD[-p$140791][PD[-h$140795][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$140789, p$140791]*metric\[Delta][p$140790, p$140794]*
     perth[LI[1], -p$140789, -p$140790]*timevec[-a]*timevec[-b]*
     timevec[h$140795]*timevec[h$140796]*PD[-p$140794][
      PD[-p$140791][PD[-h$140796][PD[-h$140795][pertE[LI[1]]]]]]], 
 HoldPattern[pertRicciCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{p$163502, p$163503, h$163504, 
    p$163505, p$163506, h$163507}, 8*hubbleC[]^2*pertpsi[LI[1]]*
     pertS[LI[1], -i]*timevec[-a] - 2*hubbleC[]^2*pertS[LI[2], -i]*
     timevec[-a] + 4*pertpsi[LI[1]]*pertS[LI[1], -i]*primehubbleC[]*
     timevec[-a] - pertS[LI[2], -i]*primehubbleC[]*timevec[-a] - 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -i, 
       -p$163503]] + 10*hubbleC[]*pertS[LI[1], -i]*timevec[-a]*
     timevec[h$163504]*PD[-h$163504][pertphi[LI[1]]] + 
    2*hubbleC[]*pertS[LI[1], -i]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][pertpsi[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$163502, 
      p$163503]*pertS[LI[1], -p$163502]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][pertF[LI[1], -p$163503]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][perth[LI[1], -p$163505, -p$163506]]] + 
    8*pertphi[LI[1]]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][pertphi[LI[1]]]] + 2*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][pertphi[LI[2]]]] - 
    metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*timevec[-a]*
     timevec[h$163504]*PD[-h$163504][PD[-i][pertS[LI[1], -p$163503]]] - 
    metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*timevec[-a]*
     timevec[h$163504]*timevec[h$163507]*PD[-h$163507][
      PD[-h$163504][perth[LI[1], -i, -p$163503]]] + 
    2*pertS[LI[1], -i]*timevec[-a]*timevec[h$163504]*timevec[h$163507]*
     PD[-h$163507][PD[-h$163504][pertphi[LI[1]]]] - 
    metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*timevec[-a]*
     timevec[h$163504]*timevec[h$163507]*PD[-h$163507][
      PD[-h$163504][PD[-i][pertF[LI[1], -p$163503]]]] - 
    8*hubbleC[]^2*pertpsi[LI[1]]*timevec[-a]*PD[-i][pertB[LI[1]]] - 
    4*pertpsi[LI[1]]*primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[1]]] - 
    10*hubbleC[]*timevec[-a]*timevec[h$163504]*PD[-h$163504][pertphi[LI[1]]]*
     PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][pertpsi[LI[1]]]*PD[-i][pertB[LI[1]]] - 
    2*timevec[-a]*timevec[h$163504]*timevec[h$163507]*
     PD[-h$163507][PD[-h$163504][pertphi[LI[1]]]]*PD[-i][pertB[LI[1]]] + 
    2*hubbleC[]^2*timevec[-a]*PD[-i][pertB[LI[2]]] + 
    primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[2]]] + 
    (metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
      timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -p$163505, 
        -p$163506]]*PD[-i][perth[LI[1], -p$163502, -p$163503]])/2 + 
    8*timevec[-a]*timevec[h$163504]*PD[-h$163504][pertphi[LI[1]]]*
     PD[-i][pertphi[LI[1]]] - 8*hubbleC[]*pertpsi[LI[1]]*timevec[-a]*
     PD[-i][pertpsi[LI[1]]] - 4*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][pertphi[LI[1]]]*PD[-i][pertpsi[LI[1]]] + 
    2*hubbleC[]*timevec[-a]*PD[-i][pertpsi[LI[2]]] + 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163503]] + 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     timevec[h$163504]*PD[-h$163504][perth[LI[1], -i, -p$163503]]*
     PD[-p$163502][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$163502, 
      p$163503]*timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][pertF[LI[1], -p$163503]]]*PD[-p$163502][pertB[LI[1]]] + 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][pertS[LI[1], -p$163503]]]*
     PD[-p$163502][pertB[LI[1]]] + metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*timevec[h$163507]*
     PD[-h$163507][PD[-h$163504][perth[LI[1], -i, -p$163503]]]*
     PD[-p$163502][pertB[LI[1]]] + metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*timevec[h$163507]*
     PD[-h$163507][PD[-h$163504][PD[-i][pertF[LI[1], -p$163503]]]]*
     PD[-p$163502][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$163502, 
      p$163503]*timevec[-a]*PD[-i][pertS[LI[1], -p$163503]]*
     PD[-p$163502][pertB[LI[1]]] - metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -i, -p$163503]]*
     PD[-p$163502][pertphi[LI[1]]] - metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][pertF[LI[1], -p$163503]]]*PD[-p$163502][pertphi[LI[1]]] - 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-i][pertS[LI[1], -p$163503]]*PD[-p$163502][pertphi[LI[1]]] - 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][perth[LI[1], -i, -p$163503]]*
     PD[-p$163502][pertpsi[LI[1]]] - metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][pertF[LI[1], -p$163503]]]*PD[-p$163502][pertpsi[LI[1]]] - 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-i][pertS[LI[1], -p$163503]]*PD[-p$163502][pertpsi[LI[1]]] + 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-i][pertF[LI[1], -p$163503]]*PD[-p$163502][
      PD[-h$163504][pertphi[LI[1]]]] + 2*hubbleC[]*metric\[Delta][p$163502, 
      p$163503]*pertS[LI[1], -i]*timevec[-a]*PD[-p$163502][
      PD[-p$163503][pertB[LI[1]]]] - 2*hubbleC[]*metric\[Delta][p$163502, 
      p$163503]*timevec[-a]*PD[-i][pertB[LI[1]]]*
     PD[-p$163502][PD[-p$163503][pertB[LI[1]]]] - 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*PD[-i][pertpsi[LI[1]]]*
     PD[-p$163502][PD[-p$163503][pertB[LI[1]]]] - 
    4*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-h$163504][PD[-i][pertphi[LI[1]]]]*PD[-p$163502][
      PD[-p$163503][pertE[LI[1]]]] + 2*metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][pertphi[LI[1]]]*
     PD[-p$163502][PD[-p$163503][pertF[LI[1], -i]]] + 
    2*metric\[Delta][p$163502, p$163503]*pertphi[LI[1]]*timevec[-a]*
     PD[-p$163502][PD[-p$163503][pertS[LI[1], -i]]] + 
    (metric\[Delta][p$163502, p$163503]*timevec[-a]*
      PD[-p$163502][PD[-p$163503][pertS[LI[2], -i]]])/2 - 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -i]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-p$163503][PD[-h$163504][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     timevec[h$163504]*PD[-i][pertB[LI[1]]]*PD[-p$163502][
      PD[-p$163503][PD[-h$163504][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-i][pertphi[LI[1]]]*PD[-p$163502][PD[-p$163503][
       PD[-h$163504][pertE[LI[1]]]]] + 2*metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-i][pertpsi[LI[1]]]*
     PD[-p$163502][PD[-p$163503][PD[-h$163504][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$163502, p$163503]*pertphi[LI[1]]*timevec[-a]*
     timevec[h$163504]*PD[-p$163502][PD[-p$163503][
       PD[-h$163504][pertF[LI[1], -i]]]] + 
    (metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
      PD[-p$163502][PD[-p$163503][PD[-h$163504][pertF[LI[2], -i]]]])/2 + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][perth[LI[1], -p$163505, -p$163506]]]*
     PD[-p$163503][pertF[LI[1], -p$163502]] - 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][perth[LI[1], -i, -p$163505]]]*
     PD[-p$163503][pertF[LI[1], -p$163506]] + 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][PD[-i][pertF[LI[1], -p$163505]]]]*
     PD[-p$163503][pertF[LI[1], -p$163506]] + 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*PD[-p$163502][PD[-i][pertS[LI[1], -p$163505]]]*
     PD[-p$163503][pertF[LI[1], -p$163506]] - 
    2*metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*PD[-p$163502][PD[-p$163505][pertS[LI[1], -i]]]*
     PD[-p$163503][pertF[LI[1], -p$163506]] - 
    2*metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-p$163505][PD[-h$163504][pertF[LI[1], -i]]]]*
     PD[-p$163503][pertF[LI[1], -p$163506]] - 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*
     timevec[-a]*PD[-p$163503][pertS[LI[1], -i]] + 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-p$163502][pertB[LI[1]]]*PD[-p$163503][pertS[LI[1], -i]] + 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-p$163502][pertphi[LI[1]]]*PD[-p$163503][pertS[LI[1], -i]] - 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-p$163502][pertpsi[LI[1]]]*PD[-p$163503][pertS[LI[1], -i]] + 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*PD[-p$163502][perth[LI[1], -i, -p$163505]]*
     PD[-p$163503][pertS[LI[1], -p$163506]] + 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*PD[-p$163502][PD[-i][pertF[LI[1], -p$163505]]]*
     PD[-p$163503][pertS[LI[1], -p$163506]] - 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-h$163504][pertF[LI[1], -i]]] + 
    2*hubbleC[]*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     timevec[h$163504]*PD[-p$163502][pertB[LI[1]]]*
     PD[-p$163503][PD[-h$163504][pertF[LI[1], -i]]] - 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][pertphi[LI[1]]]*PD[-p$163503][
      PD[-h$163504][pertF[LI[1], -i]]] - metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][pertpsi[LI[1]]]*
     PD[-p$163503][PD[-h$163504][pertF[LI[1], -i]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-i][perth[LI[1], -p$163505, -p$163506]]*
     PD[-p$163503][PD[-h$163504][pertF[LI[1], -p$163502]]] + 
    2*metric\[Delta][p$163502, p$163503]*perth[LI[1], -i, -p$163502]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-h$163504][pertphi[LI[1]]]] + 2*metric\[Delta][p$163502, p$163503]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][pertF[LI[1], -i]]*
     PD[-p$163503][PD[-h$163504][pertphi[LI[1]]]] + 
    4*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][PD[-i][pertE[LI[1]]]]*PD[-p$163503][
      PD[-h$163504][pertphi[LI[1]]]] - metric\[Delta][p$163502, p$163503]*
     pertS[LI[1], -p$163502]*timevec[-a]*timevec[h$163504]*
     PD[-p$163503][PD[-h$163504][pertS[LI[1], -i]]] + 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][pertB[LI[1]]]*PD[-p$163503][PD[-h$163504][
       pertS[LI[1], -i]]] - metric\[Delta][p$163502, p$163503]*
     pertS[LI[1], -p$163502]*timevec[-a]*timevec[h$163504]*timevec[h$163507]*
     PD[-p$163503][PD[-h$163507][PD[-h$163504][pertF[LI[1], -i]]]] + 
    metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     timevec[h$163507]*PD[-p$163502][pertB[LI[1]]]*
     PD[-p$163503][PD[-h$163507][PD[-h$163504][pertF[LI[1], -i]]]] + 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     PD[-p$163502][pertpsi[LI[1]]]*PD[-p$163503][PD[-i][pertB[LI[1]]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -p$163505, 
       -p$163506]]*PD[-p$163503][PD[-i][pertF[LI[1], -p$163502]]] + 
    metric\[Delta][p$163502, p$163506]*metric\[Delta][p$163503, p$163505]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][pertF[LI[1], -p$163505]]]*PD[-p$163503][
      PD[-i][pertF[LI[1], -p$163506]]] + 2*metric\[Delta][p$163502, p$163503]*
     pertS[LI[1], -p$163502]*timevec[-a]*PD[-p$163503][
      PD[-i][pertpsi[LI[1]]]] - 2*metric\[Delta][p$163502, p$163503]*
     timevec[-a]*PD[-p$163502][pertB[LI[1]]]*PD[-p$163503][
      PD[-i][pertpsi[LI[1]]]] + 2*metric\[Delta][p$163502, p$163503]*
     pertS[LI[1], -p$163502]*timevec[-a]*timevec[h$163504]*
     PD[-p$163503][PD[-i][PD[-h$163504][pertB[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][pertB[LI[1]]]*PD[-p$163503][
      PD[-i][PD[-h$163504][pertB[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-i][PD[-h$163504][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][p$163502, p$163503]*timevec[-a]*
     timevec[h$163504]*PD[-p$163502][pertB[LI[1]]]*
     PD[-p$163503][PD[-i][PD[-h$163504][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][pertphi[LI[1]]]*PD[-p$163503][
      PD[-i][PD[-h$163504][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163502][pertpsi[LI[1]]]*PD[-p$163503][
      PD[-i][PD[-h$163504][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163503]*pertS[LI[1], -p$163502]*timevec[-a]*
     timevec[h$163504]*timevec[h$163507]*PD[-p$163503][
      PD[-i][PD[-h$163507][PD[-h$163504][pertE[LI[1]]]]]] + 
    2*metric\[Delta][p$163502, p$163503]*timevec[-a]*timevec[h$163504]*
     timevec[h$163507]*PD[-p$163502][pertB[LI[1]]]*
     PD[-p$163503][PD[-i][PD[-h$163507][PD[-h$163504][pertE[LI[1]]]]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][perth[LI[1], -p$163505, -p$163506]]]*
     PD[-p$163503][PD[-p$163502][pertE[LI[1]]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-i][perth[LI[1], -p$163505, -p$163506]]*
     PD[-p$163503][PD[-p$163502][PD[-h$163504][pertE[LI[1]]]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -p$163505, 
       -p$163506]]*PD[-p$163503][PD[-p$163502][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -i, -p$163505]]*
     PD[-p$163503][PD[-p$163506][pertF[LI[1], -p$163502]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][pertF[LI[1], -p$163505]]]*PD[-p$163503][
      PD[-p$163506][pertF[LI[1], -p$163502]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163505]]*
     PD[-p$163503][PD[-p$163506][pertF[LI[1], -p$163502]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163502][pertS[LI[1], -i]]*
     PD[-p$163503][PD[-p$163506][pertF[LI[1], -p$163505]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][pertF[LI[1], -i]]]*PD[-p$163503][
      PD[-p$163506][pertF[LI[1], -p$163505]]] - 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][PD[-i][pertE[LI[1]]]]]*PD[-p$163503][
      PD[-p$163506][pertF[LI[1], -p$163505]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][perth[LI[1], -i, -p$163505]]*
     PD[-p$163503][PD[-p$163506][PD[-p$163502][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-h$163504][
      PD[-i][pertF[LI[1], -p$163505]]]*PD[-p$163503][
      PD[-p$163506][PD[-p$163502][pertE[LI[1]]]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163505]]*
     PD[-p$163503][PD[-p$163506][PD[-p$163502][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163502][pertS[LI[1], -i]]*
     PD[-p$163503][PD[-p$163506][PD[-p$163505][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][pertF[LI[1], -i]]]*PD[-p$163503][
      PD[-p$163506][PD[-p$163505][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163502][
      PD[-h$163504][PD[-i][pertE[LI[1]]]]]*PD[-p$163503][
      PD[-p$163506][PD[-p$163505][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163503][pertS[LI[1], -p$163505]]*
     PD[-p$163506][perth[LI[1], -i, -p$163502]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-i][pertF[LI[1], -p$163505]]]*PD[-p$163506][
      PD[-h$163504][pertF[LI[1], -p$163502]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][pertF[LI[1], -p$163505]]*
     PD[-p$163506][PD[-h$163504][perth[LI[1], -i, -p$163502]]] - 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][PD[-p$163505][pertE[LI[1]]]]*
     PD[-p$163506][PD[-h$163504][perth[LI[1], -i, -p$163502]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163506][PD[-h$163504][perth[LI[1], -i, -p$163505]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163503][pertS[LI[1], -p$163505]]*
     PD[-p$163506][PD[-i][pertF[LI[1], -p$163502]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163503][pertF[LI[1], -p$163505]]*
     PD[-p$163506][PD[-i][pertS[LI[1], -p$163502]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163503][PD[-p$163505][pertE[LI[1]]]]*
     PD[-p$163506][PD[-i][pertS[LI[1], -p$163502]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*
     PD[-p$163506][PD[-i][pertS[LI[1], -p$163505]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][pertF[LI[1], -p$163505]]*
     PD[-p$163506][PD[-i][PD[-h$163504][pertF[LI[1], -p$163502]]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][PD[-p$163505][pertE[LI[1]]]]*
     PD[-p$163506][PD[-i][PD[-h$163504][pertF[LI[1], -p$163502]]]] + 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163506][PD[-i][PD[-h$163504][pertF[LI[1], -p$163505]]]] - 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*PD[-p$163503][PD[-p$163505][pertE[LI[1]]]]*
     PD[-p$163506][PD[-p$163502][pertS[LI[1], -i]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-i][pertF[LI[1], -p$163505]]]*PD[-p$163506][
      PD[-p$163502][PD[-h$163504][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-p$163505][PD[-i][pertE[LI[1]]]]]*PD[-p$163506][
      PD[-p$163502][PD[-h$163504][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][PD[-p$163505][pertE[LI[1]]]]*
     PD[-p$163506][PD[-p$163502][PD[-h$163504][pertF[LI[1], -i]]]] + 
    2*metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     timevec[-a]*timevec[h$163504]*PD[-p$163503][
      PD[-h$163504][pertF[LI[1], -p$163505]]]*PD[-p$163506][
      PD[-p$163502][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*
     PD[-p$163506][PD[-p$163505][pertS[LI[1], -i]]] - 
    metric\[Delta][p$163502, p$163505]*metric\[Delta][p$163503, p$163506]*
     perth[LI[1], -p$163502, -p$163503]*timevec[-a]*timevec[h$163504]*
     PD[-p$163506][PD[-p$163505][PD[-h$163504][pertF[LI[1], -i]]]]], 
 HoldPattern[pertRicciCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{p$163511, p$163512, h$163513, 
    p$163514, p$163515, h$163516}, 8*hubbleC[]^2*pertpsi[LI[1]]*
     pertS[LI[1], -i]*timevec[-a] - 2*hubbleC[]^2*pertS[LI[2], -i]*
     timevec[-a] + 4*pertpsi[LI[1]]*pertS[LI[1], -i]*primehubbleC[]*
     timevec[-a] - pertS[LI[2], -i]*primehubbleC[]*timevec[-a] - 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -i, 
       -p$163512]] + 10*hubbleC[]*pertS[LI[1], -i]*timevec[-a]*
     timevec[h$163513]*PD[-h$163513][pertphi[LI[1]]] + 
    2*hubbleC[]*pertS[LI[1], -i]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][pertpsi[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$163511, 
      p$163512]*pertS[LI[1], -p$163511]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][pertF[LI[1], -p$163512]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][perth[LI[1], -p$163514, -p$163515]]] + 
    8*pertphi[LI[1]]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][pertphi[LI[1]]]] + 2*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][pertphi[LI[2]]]] - 
    metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*timevec[-a]*
     timevec[h$163513]*PD[-h$163513][PD[-i][pertS[LI[1], -p$163512]]] - 
    metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*timevec[-a]*
     timevec[h$163513]*timevec[h$163516]*PD[-h$163516][
      PD[-h$163513][perth[LI[1], -i, -p$163512]]] + 
    2*pertS[LI[1], -i]*timevec[-a]*timevec[h$163513]*timevec[h$163516]*
     PD[-h$163516][PD[-h$163513][pertphi[LI[1]]]] - 
    metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*timevec[-a]*
     timevec[h$163513]*timevec[h$163516]*PD[-h$163516][
      PD[-h$163513][PD[-i][pertF[LI[1], -p$163512]]]] - 
    8*hubbleC[]^2*pertpsi[LI[1]]*timevec[-a]*PD[-i][pertB[LI[1]]] - 
    4*pertpsi[LI[1]]*primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[1]]] - 
    10*hubbleC[]*timevec[-a]*timevec[h$163513]*PD[-h$163513][pertphi[LI[1]]]*
     PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][pertpsi[LI[1]]]*PD[-i][pertB[LI[1]]] - 
    2*timevec[-a]*timevec[h$163513]*timevec[h$163516]*
     PD[-h$163516][PD[-h$163513][pertphi[LI[1]]]]*PD[-i][pertB[LI[1]]] + 
    2*hubbleC[]^2*timevec[-a]*PD[-i][pertB[LI[2]]] + 
    primehubbleC[]*timevec[-a]*PD[-i][pertB[LI[2]]] + 
    (metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
      timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -p$163514, 
        -p$163515]]*PD[-i][perth[LI[1], -p$163511, -p$163512]])/2 + 
    8*timevec[-a]*timevec[h$163513]*PD[-h$163513][pertphi[LI[1]]]*
     PD[-i][pertphi[LI[1]]] - 8*hubbleC[]*pertpsi[LI[1]]*timevec[-a]*
     PD[-i][pertpsi[LI[1]]] - 4*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][pertphi[LI[1]]]*PD[-i][pertpsi[LI[1]]] + 
    2*hubbleC[]*timevec[-a]*PD[-i][pertpsi[LI[2]]] + 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163512]] + 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     timevec[h$163513]*PD[-h$163513][perth[LI[1], -i, -p$163512]]*
     PD[-p$163511][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$163511, 
      p$163512]*timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][pertF[LI[1], -p$163512]]]*PD[-p$163511][pertB[LI[1]]] + 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][pertS[LI[1], -p$163512]]]*
     PD[-p$163511][pertB[LI[1]]] + metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*timevec[h$163516]*
     PD[-h$163516][PD[-h$163513][perth[LI[1], -i, -p$163512]]]*
     PD[-p$163511][pertB[LI[1]]] + metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*timevec[h$163516]*
     PD[-h$163516][PD[-h$163513][PD[-i][pertF[LI[1], -p$163512]]]]*
     PD[-p$163511][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$163511, 
      p$163512]*timevec[-a]*PD[-i][pertS[LI[1], -p$163512]]*
     PD[-p$163511][pertB[LI[1]]] - metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -i, -p$163512]]*
     PD[-p$163511][pertphi[LI[1]]] - metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][pertF[LI[1], -p$163512]]]*PD[-p$163511][pertphi[LI[1]]] - 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-i][pertS[LI[1], -p$163512]]*PD[-p$163511][pertphi[LI[1]]] - 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][perth[LI[1], -i, -p$163512]]*
     PD[-p$163511][pertpsi[LI[1]]] - metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][pertF[LI[1], -p$163512]]]*PD[-p$163511][pertpsi[LI[1]]] - 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-i][pertS[LI[1], -p$163512]]*PD[-p$163511][pertpsi[LI[1]]] + 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-i][pertF[LI[1], -p$163512]]*PD[-p$163511][
      PD[-h$163513][pertphi[LI[1]]]] + 2*hubbleC[]*metric\[Delta][p$163511, 
      p$163512]*pertS[LI[1], -i]*timevec[-a]*PD[-p$163511][
      PD[-p$163512][pertB[LI[1]]]] - 2*hubbleC[]*metric\[Delta][p$163511, 
      p$163512]*timevec[-a]*PD[-i][pertB[LI[1]]]*
     PD[-p$163511][PD[-p$163512][pertB[LI[1]]]] - 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*PD[-i][pertpsi[LI[1]]]*
     PD[-p$163511][PD[-p$163512][pertB[LI[1]]]] - 
    4*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-h$163513][PD[-i][pertphi[LI[1]]]]*PD[-p$163511][
      PD[-p$163512][pertE[LI[1]]]] + 2*metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][pertphi[LI[1]]]*
     PD[-p$163511][PD[-p$163512][pertF[LI[1], -i]]] + 
    2*metric\[Delta][p$163511, p$163512]*pertphi[LI[1]]*timevec[-a]*
     PD[-p$163511][PD[-p$163512][pertS[LI[1], -i]]] + 
    (metric\[Delta][p$163511, p$163512]*timevec[-a]*
      PD[-p$163511][PD[-p$163512][pertS[LI[2], -i]]])/2 - 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -i]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-p$163512][PD[-h$163513][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     timevec[h$163513]*PD[-i][pertB[LI[1]]]*PD[-p$163511][
      PD[-p$163512][PD[-h$163513][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-i][pertphi[LI[1]]]*PD[-p$163511][PD[-p$163512][
       PD[-h$163513][pertE[LI[1]]]]] + 2*metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-i][pertpsi[LI[1]]]*
     PD[-p$163511][PD[-p$163512][PD[-h$163513][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$163511, p$163512]*pertphi[LI[1]]*timevec[-a]*
     timevec[h$163513]*PD[-p$163511][PD[-p$163512][
       PD[-h$163513][pertF[LI[1], -i]]]] + 
    (metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
      PD[-p$163511][PD[-p$163512][PD[-h$163513][pertF[LI[2], -i]]]])/2 + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][perth[LI[1], -p$163514, -p$163515]]]*
     PD[-p$163512][pertF[LI[1], -p$163511]] - 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][perth[LI[1], -i, -p$163514]]]*
     PD[-p$163512][pertF[LI[1], -p$163515]] + 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][PD[-i][pertF[LI[1], -p$163514]]]]*
     PD[-p$163512][pertF[LI[1], -p$163515]] + 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*PD[-p$163511][PD[-i][pertS[LI[1], -p$163514]]]*
     PD[-p$163512][pertF[LI[1], -p$163515]] - 
    2*metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*PD[-p$163511][PD[-p$163514][pertS[LI[1], -i]]]*
     PD[-p$163512][pertF[LI[1], -p$163515]] - 
    2*metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-p$163514][PD[-h$163513][pertF[LI[1], -i]]]]*
     PD[-p$163512][pertF[LI[1], -p$163515]] - 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*
     timevec[-a]*PD[-p$163512][pertS[LI[1], -i]] + 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-p$163511][pertB[LI[1]]]*PD[-p$163512][pertS[LI[1], -i]] + 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-p$163511][pertphi[LI[1]]]*PD[-p$163512][pertS[LI[1], -i]] - 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-p$163511][pertpsi[LI[1]]]*PD[-p$163512][pertS[LI[1], -i]] + 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*PD[-p$163511][perth[LI[1], -i, -p$163514]]*
     PD[-p$163512][pertS[LI[1], -p$163515]] + 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*PD[-p$163511][PD[-i][pertF[LI[1], -p$163514]]]*
     PD[-p$163512][pertS[LI[1], -p$163515]] - 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-h$163513][pertF[LI[1], -i]]] + 
    2*hubbleC[]*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     timevec[h$163513]*PD[-p$163511][pertB[LI[1]]]*
     PD[-p$163512][PD[-h$163513][pertF[LI[1], -i]]] - 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][pertphi[LI[1]]]*PD[-p$163512][
      PD[-h$163513][pertF[LI[1], -i]]] - metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][pertpsi[LI[1]]]*
     PD[-p$163512][PD[-h$163513][pertF[LI[1], -i]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-i][perth[LI[1], -p$163514, -p$163515]]*
     PD[-p$163512][PD[-h$163513][pertF[LI[1], -p$163511]]] + 
    2*metric\[Delta][p$163511, p$163512]*perth[LI[1], -i, -p$163511]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-h$163513][pertphi[LI[1]]]] + 2*metric\[Delta][p$163511, p$163512]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][pertF[LI[1], -i]]*
     PD[-p$163512][PD[-h$163513][pertphi[LI[1]]]] + 
    4*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][PD[-i][pertE[LI[1]]]]*PD[-p$163512][
      PD[-h$163513][pertphi[LI[1]]]] - metric\[Delta][p$163511, p$163512]*
     pertS[LI[1], -p$163511]*timevec[-a]*timevec[h$163513]*
     PD[-p$163512][PD[-h$163513][pertS[LI[1], -i]]] + 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][pertB[LI[1]]]*PD[-p$163512][PD[-h$163513][
       pertS[LI[1], -i]]] - metric\[Delta][p$163511, p$163512]*
     pertS[LI[1], -p$163511]*timevec[-a]*timevec[h$163513]*timevec[h$163516]*
     PD[-p$163512][PD[-h$163516][PD[-h$163513][pertF[LI[1], -i]]]] + 
    metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     timevec[h$163516]*PD[-p$163511][pertB[LI[1]]]*
     PD[-p$163512][PD[-h$163516][PD[-h$163513][pertF[LI[1], -i]]]] + 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     PD[-p$163511][pertpsi[LI[1]]]*PD[-p$163512][PD[-i][pertB[LI[1]]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -p$163514, 
       -p$163515]]*PD[-p$163512][PD[-i][pertF[LI[1], -p$163511]]] + 
    metric\[Delta][p$163511, p$163515]*metric\[Delta][p$163512, p$163514]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][pertF[LI[1], -p$163514]]]*PD[-p$163512][
      PD[-i][pertF[LI[1], -p$163515]]] + 2*metric\[Delta][p$163511, p$163512]*
     pertS[LI[1], -p$163511]*timevec[-a]*PD[-p$163512][
      PD[-i][pertpsi[LI[1]]]] - 2*metric\[Delta][p$163511, p$163512]*
     timevec[-a]*PD[-p$163511][pertB[LI[1]]]*PD[-p$163512][
      PD[-i][pertpsi[LI[1]]]] + 2*metric\[Delta][p$163511, p$163512]*
     pertS[LI[1], -p$163511]*timevec[-a]*timevec[h$163513]*
     PD[-p$163512][PD[-i][PD[-h$163513][pertB[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][pertB[LI[1]]]*PD[-p$163512][
      PD[-i][PD[-h$163513][pertB[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-i][PD[-h$163513][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][p$163511, p$163512]*timevec[-a]*
     timevec[h$163513]*PD[-p$163511][pertB[LI[1]]]*
     PD[-p$163512][PD[-i][PD[-h$163513][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][pertphi[LI[1]]]*PD[-p$163512][
      PD[-i][PD[-h$163513][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163511][pertpsi[LI[1]]]*PD[-p$163512][
      PD[-i][PD[-h$163513][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163512]*pertS[LI[1], -p$163511]*timevec[-a]*
     timevec[h$163513]*timevec[h$163516]*PD[-p$163512][
      PD[-i][PD[-h$163516][PD[-h$163513][pertE[LI[1]]]]]] + 
    2*metric\[Delta][p$163511, p$163512]*timevec[-a]*timevec[h$163513]*
     timevec[h$163516]*PD[-p$163511][pertB[LI[1]]]*
     PD[-p$163512][PD[-i][PD[-h$163516][PD[-h$163513][pertE[LI[1]]]]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][perth[LI[1], -p$163514, -p$163515]]]*
     PD[-p$163512][PD[-p$163511][pertE[LI[1]]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-i][perth[LI[1], -p$163514, -p$163515]]*
     PD[-p$163512][PD[-p$163511][PD[-h$163513][pertE[LI[1]]]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -p$163514, 
       -p$163515]]*PD[-p$163512][PD[-p$163511][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -i, -p$163514]]*
     PD[-p$163512][PD[-p$163515][pertF[LI[1], -p$163511]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][pertF[LI[1], -p$163514]]]*PD[-p$163512][
      PD[-p$163515][pertF[LI[1], -p$163511]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163514]]*
     PD[-p$163512][PD[-p$163515][pertF[LI[1], -p$163511]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163511][pertS[LI[1], -i]]*
     PD[-p$163512][PD[-p$163515][pertF[LI[1], -p$163514]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][pertF[LI[1], -i]]]*PD[-p$163512][
      PD[-p$163515][pertF[LI[1], -p$163514]]] - 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][PD[-i][pertE[LI[1]]]]]*PD[-p$163512][
      PD[-p$163515][pertF[LI[1], -p$163514]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][perth[LI[1], -i, -p$163514]]*
     PD[-p$163512][PD[-p$163515][PD[-p$163511][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-h$163513][
      PD[-i][pertF[LI[1], -p$163514]]]*PD[-p$163512][
      PD[-p$163515][PD[-p$163511][pertE[LI[1]]]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-i][pertS[LI[1], -p$163514]]*
     PD[-p$163512][PD[-p$163515][PD[-p$163511][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163511][pertS[LI[1], -i]]*
     PD[-p$163512][PD[-p$163515][PD[-p$163514][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][pertF[LI[1], -i]]]*PD[-p$163512][
      PD[-p$163515][PD[-p$163514][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163511][
      PD[-h$163513][PD[-i][pertE[LI[1]]]]]*PD[-p$163512][
      PD[-p$163515][PD[-p$163514][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163512][pertS[LI[1], -p$163514]]*
     PD[-p$163515][perth[LI[1], -i, -p$163511]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-i][pertF[LI[1], -p$163514]]]*PD[-p$163515][
      PD[-h$163513][pertF[LI[1], -p$163511]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][pertF[LI[1], -p$163514]]*
     PD[-p$163515][PD[-h$163513][perth[LI[1], -i, -p$163511]]] - 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][PD[-p$163514][pertE[LI[1]]]]*
     PD[-p$163515][PD[-h$163513][perth[LI[1], -i, -p$163511]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163515][PD[-h$163513][perth[LI[1], -i, -p$163514]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163512][pertS[LI[1], -p$163514]]*
     PD[-p$163515][PD[-i][pertF[LI[1], -p$163511]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163512][pertF[LI[1], -p$163514]]*
     PD[-p$163515][PD[-i][pertS[LI[1], -p$163511]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163512][PD[-p$163514][pertE[LI[1]]]]*
     PD[-p$163515][PD[-i][pertS[LI[1], -p$163511]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*
     PD[-p$163515][PD[-i][pertS[LI[1], -p$163514]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][pertF[LI[1], -p$163514]]*
     PD[-p$163515][PD[-i][PD[-h$163513][pertF[LI[1], -p$163511]]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][PD[-p$163514][pertE[LI[1]]]]*
     PD[-p$163515][PD[-i][PD[-h$163513][pertF[LI[1], -p$163511]]]] + 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163515][PD[-i][PD[-h$163513][pertF[LI[1], -p$163514]]]] - 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*PD[-p$163512][PD[-p$163514][pertE[LI[1]]]]*
     PD[-p$163515][PD[-p$163511][pertS[LI[1], -i]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-i][pertF[LI[1], -p$163514]]]*PD[-p$163515][
      PD[-p$163511][PD[-h$163513][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-p$163514][PD[-i][pertE[LI[1]]]]]*PD[-p$163515][
      PD[-p$163511][PD[-h$163513][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][PD[-p$163514][pertE[LI[1]]]]*
     PD[-p$163515][PD[-p$163511][PD[-h$163513][pertF[LI[1], -i]]]] + 
    2*metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     timevec[-a]*timevec[h$163513]*PD[-p$163512][
      PD[-h$163513][pertF[LI[1], -p$163514]]]*PD[-p$163515][
      PD[-p$163511][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*
     PD[-p$163515][PD[-p$163514][pertS[LI[1], -i]]] - 
    metric\[Delta][p$163511, p$163514]*metric\[Delta][p$163512, p$163515]*
     perth[LI[1], -p$163511, -p$163512]*timevec[-a]*timevec[h$163513]*
     PD[-p$163515][PD[-p$163514][PD[-h$163513][pertF[LI[1], -i]]]]], 
 HoldPattern[pertRicciCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{p$208322, p$208323, h$208324, 
    p$208325, p$208326, h$208327}, 2*hubbleC[]^2*perth[LI[2], -i, -j] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[2]] - 
    8*hubbleC[]^2*perth[LI[1], -i, -j]*pertpsi[LI[1]] + 
    16*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertpsi[LI[1]] + 
    16*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]^2 - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[2]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*pertS[LI[1], -p$208323] + 
    perth[LI[2], -i, -j]*primehubbleC[] - 2*metric\[Delta][-i, -j]*
     pertphi[LI[2]]*primehubbleC[] - 4*perth[LI[1], -i, -j]*pertpsi[LI[1]]*
     primehubbleC[] + 8*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertpsi[LI[1]]*
     primehubbleC[] + 8*metric\[Delta][-i, -j]*pertpsi[LI[1]]^2*
     primehubbleC[] - 2*metric\[Delta][-i, -j]*pertpsi[LI[2]]*
     primehubbleC[] - 2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, 
      p$208323]*pertS[LI[1], -p$208322]*pertS[LI[1], -p$208323]*
     primehubbleC[] - 4*hubbleC[]*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -i, -j]] - hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -p$208325, -p$208326]] + 
    hubbleC[]*timevec[h$208324]*PD[-h$208324][perth[LI[2], -i, -j]] - 
    6*hubbleC[]*perth[LI[1], -i, -j]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]] + 20*hubbleC[]*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$208324]*PD[-h$208324][pertphi[LI[1]]] - 
    5*hubbleC[]*metric\[Delta][-i, -j]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[2]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*
     timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][pertpsi[LI[1]]] + 8*hubbleC[]*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*timevec[h$208324]*
     PD[-h$208324][pertpsi[LI[2]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-h$208324][pertS[LI[1], -p$208323]] - 
    4*hubbleC[]*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][PD[-i][pertF[LI[1], -j]]] + hubbleC[]*timevec[h$208324]*
     PD[-h$208324][PD[-i][pertF[LI[2], -j]]] - 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-h$208324][PD[-i][perth[LI[1], -j, -p$208323]]] + 
    2*pertS[LI[1], -j]*timevec[h$208324]*PD[-h$208324][
      PD[-i][pertphi[LI[1]]]] - 2*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][PD[-i][pertS[LI[1], -j]]] + 
    (timevec[h$208324]*PD[-h$208324][PD[-i][pertS[LI[2], -j]]])/2 - 
    4*hubbleC[]*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][PD[-j][pertF[LI[1], -i]]] + hubbleC[]*timevec[h$208324]*
     PD[-h$208324][PD[-j][pertF[LI[2], -i]]] - 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-h$208324][PD[-j][perth[LI[1], -i, -p$208323]]] + 
    2*pertS[LI[1], -i]*timevec[h$208324]*PD[-h$208324][
      PD[-j][pertphi[LI[1]]]] - 2*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][PD[-j][pertS[LI[1], -i]]] + 
    (timevec[h$208324]*PD[-h$208324][PD[-j][pertS[LI[2], -i]]])/2 + 
    4*pertpsi[LI[1]]*timevec[h$208324]*PD[-h$208324][
      PD[-j][PD[-i][pertB[LI[1]]]]] - timevec[h$208324]*
     PD[-h$208324][PD[-j][PD[-i][pertB[LI[2]]]]] - 
    8*hubbleC[]*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-h$208324][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    2*hubbleC[]*timevec[h$208324]*PD[-h$208324][
      PD[-j][PD[-i][pertE[LI[2]]]]] - 2*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*timevec[h$208324]*
     PD[-h$208324][PD[-j][PD[-i][pertF[LI[1], -p$208323]]]] + 
    timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][perth[LI[1], -i, -j]] - timevec[h$208324]*
     timevec[h$208327]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-h$208327][perth[LI[1], -i, -j]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*timevec[h$208327]*PD[-h$208324][
      PD[-j][pertF[LI[1], -p$208323]]]*PD[-h$208327][
      perth[LI[1], -i, -p$208322]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*timevec[h$208327]*PD[-h$208324][
      perth[LI[1], -i, -p$208323]]*PD[-h$208327][perth[LI[1], -j, 
       -p$208322]] - metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     timevec[h$208327]*PD[-h$208324][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-h$208327][perth[LI[1], -j, -p$208322]] + 2*metric\[Delta][-i, -j]*
     timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][pertphi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][pertpsi[LI[1]]] - 2*pertpsi[LI[1]]*timevec[h$208324]*
     timevec[h$208327]*PD[-h$208327][PD[-h$208324][perth[LI[1], -i, -j]]] + 
    (timevec[h$208324]*timevec[h$208327]*PD[-h$208327][
       PD[-h$208324][perth[LI[2], -i, -j]]])/2 + 4*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-h$208324][pertphi[LI[1]]]] - 
    metric\[Delta][-i, -j]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-h$208324][pertphi[LI[2]]]] - 
    2*pertpsi[LI[1]]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-h$208324][PD[-i][pertF[LI[1], -j]]]] + 
    (timevec[h$208324]*timevec[h$208327]*PD[-h$208327][
       PD[-h$208324][PD[-i][pertF[LI[2], -j]]]])/2 - 
    2*pertpsi[LI[1]]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-h$208324][PD[-j][pertF[LI[1], -i]]]] + 
    (timevec[h$208324]*timevec[h$208327]*PD[-h$208327][
       PD[-h$208324][PD[-j][pertF[LI[2], -i]]]])/2 - 
    4*pertpsi[LI[1]]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-h$208324][PD[-j][PD[-i][pertE[LI[1]]]]]] + 
    timevec[h$208324]*timevec[h$208327]*PD[-h$208327][
      PD[-h$208324][PD[-j][PD[-i][pertE[LI[2]]]]]] + 
    timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][PD[-i][pertF[LI[1], -j]]] - timevec[h$208324]*
     timevec[h$208327]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-h$208327][PD[-i][pertF[LI[1], -j]]] + timevec[h$208324]*
     timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][PD[-j][pertF[LI[1], -i]]] - timevec[h$208324]*
     timevec[h$208327]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-h$208327][PD[-j][pertF[LI[1], -i]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-h$208327][PD[-j][pertF[LI[1], -p$208322]]] + 
    2*timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-h$208327][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*timevec[h$208324]*timevec[h$208327]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-h$208327][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*timevec[h$208324]*PD[-h$208324][PD[-j][pertphi[LI[1]]]]*
     PD[-i][pertB[LI[1]]] - 8*hubbleC[]^2*pertpsi[LI[1]]*
     PD[-i][pertF[LI[1], -j]] - 4*pertpsi[LI[1]]*primehubbleC[]*
     PD[-i][pertF[LI[1], -j]] - 6*hubbleC[]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-i][pertF[LI[1], -j]] - 
    2*hubbleC[]*timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-i][pertF[LI[1], -j]] + 2*hubbleC[]^2*PD[-i][pertF[LI[2], -j]] + 
    primehubbleC[]*PD[-i][pertF[LI[2], -j]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -p$208323]]*
     PD[-i][perth[LI[1], -j, -p$208322]] - 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-i][perth[LI[1], -j, -p$208323]] + 4*hubbleC[]*pertS[LI[1], -j]*
     PD[-i][pertphi[LI[1]]] + 2*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -j]]*PD[-i][pertphi[LI[1]]] - 
    2*timevec[h$208324]*PD[-h$208324][PD[-j][pertB[LI[1]]]]*
     PD[-i][pertphi[LI[1]]] - 4*hubbleC[]*pertpsi[LI[1]]*
     PD[-i][pertS[LI[1], -j]] - timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-i][pertS[LI[1], -j]] - 
    timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-i][pertS[LI[1], -j]] + hubbleC[]*PD[-i][pertS[LI[2], -j]] - 
    2*timevec[h$208324]*PD[-h$208324][PD[-i][pertphi[LI[1]]]]*
     PD[-j][pertB[LI[1]]] - 4*hubbleC[]*PD[-i][pertphi[LI[1]]]*
     PD[-j][pertB[LI[1]]] - 8*hubbleC[]^2*pertpsi[LI[1]]*
     PD[-j][pertF[LI[1], -i]] - 4*pertpsi[LI[1]]*primehubbleC[]*
     PD[-j][pertF[LI[1], -i]] - 6*hubbleC[]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-j][pertF[LI[1], -i]] - 
    2*hubbleC[]*timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-j][pertF[LI[1], -i]] + 2*hubbleC[]^2*PD[-j][pertF[LI[2], -i]] + 
    primehubbleC[]*PD[-j][pertF[LI[2], -i]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -p$208323]]*
     PD[-j][perth[LI[1], -i, -p$208322]] - 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-j][perth[LI[1], -i, -p$208323]] + 
    (metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
      PD[-i][perth[LI[1], -p$208325, -p$208326]]*
      PD[-j][perth[LI[1], -p$208322, -p$208323]])/2 + 
    4*hubbleC[]*pertS[LI[1], -i]*PD[-j][pertphi[LI[1]]] + 
    2*timevec[h$208324]*PD[-h$208324][pertS[LI[1], -i]]*
     PD[-j][pertphi[LI[1]]] - 2*timevec[h$208324]*
     PD[-h$208324][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] - 
    4*hubbleC[]*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
    6*PD[-i][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
    2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
    2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
    2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
    4*hubbleC[]*pertpsi[LI[1]]*PD[-j][pertS[LI[1], -i]] - 
    timevec[h$208324]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-j][pertS[LI[1], -i]] - timevec[h$208324]*
     PD[-h$208324][pertpsi[LI[1]]]*PD[-j][pertS[LI[1], -i]] - 
    metric\[Delta][p$208322, p$208323]*PD[-i][pertS[LI[1], -p$208323]]*
     PD[-j][pertS[LI[1], -p$208322]] + hubbleC[]*PD[-j][pertS[LI[2], -i]] + 
    8*hubbleC[]*pertpsi[LI[1]]*PD[-j][PD[-i][pertB[LI[1]]]] + 
    2*timevec[h$208324]*PD[-h$208324][pertphi[LI[1]]]*
     PD[-j][PD[-i][pertB[LI[1]]]] + 2*timevec[h$208324]*
     PD[-h$208324][pertpsi[LI[1]]]*PD[-j][PD[-i][pertB[LI[1]]]] - 
    2*hubbleC[]*PD[-j][PD[-i][pertB[LI[2]]]] - 16*hubbleC[]^2*pertpsi[LI[1]]*
     PD[-j][PD[-i][pertE[LI[1]]]] - 8*pertpsi[LI[1]]*primehubbleC[]*
     PD[-j][PD[-i][pertE[LI[1]]]] - 12*hubbleC[]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]*timevec[h$208324]*PD[-h$208324][pertpsi[LI[1]]]*
     PD[-j][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]^2*
     PD[-j][PD[-i][pertE[LI[2]]]] + 2*primehubbleC[]*
     PD[-j][PD[-i][pertE[LI[2]]]] - 2*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][pertS[LI[1], -p$208323]]*
     PD[-j][PD[-i][pertF[LI[1], -p$208322]]] - 
    4*hubbleC[]*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-j][PD[-i][pertF[LI[1], -p$208323]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*
     PD[-j][PD[-i][perth[LI[1], -p$208325, -p$208326]]] + 
    4*pertphi[LI[1]]*PD[-j][PD[-i][pertphi[LI[1]]]] + 
    PD[-j][PD[-i][pertphi[LI[2]]]] + 4*pertpsi[LI[1]]*
     PD[-j][PD[-i][pertpsi[LI[1]]]] - PD[-j][PD[-i][pertpsi[LI[2]]]] - 
    2*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-j][PD[-i][pertS[LI[1], -p$208323]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][pertS[LI[1], -p$208323]]*
     PD[-p$208322][pertB[LI[1]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-i][perth[LI[1], -j, -p$208323]]]*
     PD[-p$208322][pertB[LI[1]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-j][perth[LI[1], -i, -p$208323]]]*
     PD[-p$208322][pertB[LI[1]]] + 2*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-j][PD[-i][pertF[LI[1], -p$208323]]]]*
     PD[-p$208322][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$208322, 
      p$208323]*PD[-i][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$208322, 
      p$208323]*PD[-j][perth[LI[1], -i, -p$208323]]*
     PD[-p$208322][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][p$208322, 
      p$208323]*PD[-j][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][pertB[LI[1]]] + 2*metric\[Delta][p$208322, p$208323]*
     PD[-j][PD[-i][pertS[LI[1], -p$208323]]]*PD[-p$208322][pertB[LI[1]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -p$208323]]*PD[-p$208322][
      perth[LI[1], -i, -j]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -p$208323]]*PD[-p$208322][pertphi[LI[1]]] + 
    metric\[Delta][p$208322, p$208323]*PD[-i][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][pertphi[LI[1]]] + metric\[Delta][p$208322, p$208323]*
     PD[-j][perth[LI[1], -i, -p$208323]]*PD[-p$208322][pertphi[LI[1]]] + 
    2*metric\[Delta][p$208322, p$208323]*
     PD[-j][PD[-i][pertF[LI[1], -p$208323]]]*PD[-p$208322][pertphi[LI[1]]] + 
    metric\[Delta][p$208322, p$208323]*PD[-i][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][pertpsi[LI[1]]] + metric\[Delta][p$208322, p$208323]*
     PD[-j][perth[LI[1], -i, -p$208323]]*PD[-p$208322][pertpsi[LI[1]]] + 
    2*metric\[Delta][p$208322, p$208323]*
     PD[-j][PD[-i][pertF[LI[1], -p$208323]]]*PD[-p$208322][pertpsi[LI[1]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][pertS[LI[1], -i]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-j][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][pertS[LI[1], -i]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][perth[LI[1], -i, -p$208323]]*
     PD[-p$208322][pertS[LI[1], -j]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][pertS[LI[1], -j]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-i][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][PD[-h$208324][pertB[LI[1]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-j][perth[LI[1], -i, -p$208323]]*PD[-p$208322][
      PD[-h$208324][pertB[LI[1]]]] + 2*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-j][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-h$208324][pertB[LI[1]]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][PD[-h$208324][pertF[LI[1], -i]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-j][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-h$208324][pertF[LI[1], -i]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][perth[LI[1], -i, -p$208323]]*
     PD[-p$208322][PD[-h$208324][pertF[LI[1], -j]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-h$208324][pertF[LI[1], -j]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][PD[-h$208327][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][PD[-j][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-h$208327][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][perth[LI[1], -i, -p$208323]]*
     PD[-p$208322][PD[-h$208327][PD[-j][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-h$208327][PD[-j][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -j, -p$208323]]*
     PD[-p$208322][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-j][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$208322, p$208323]*
     PD[-j][pertS[LI[1], -p$208323]]*PD[-p$208322][PD[-i][pertB[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-j][pertF[LI[1], -p$208323]]*
     PD[-p$208322][PD[-i][pertphi[LI[1]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -i, -p$208323]]*
     PD[-p$208322][PD[-j][pertB[LI[1]]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-i][pertF[LI[1], -p$208323]]]*
     PD[-p$208322][PD[-j][pertB[LI[1]]]] + metric\[Delta][p$208322, p$208323]*
     PD[-i][pertS[LI[1], -p$208323]]*PD[-p$208322][PD[-j][pertB[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-i][pertF[LI[1], -p$208323]]*
     PD[-p$208322][PD[-j][pertphi[LI[1]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertS[LI[1], -p$208323]]*PD[-p$208322][
      PD[-j][PD[-i][pertE[LI[1]]]]] - 2*hubbleC[]*metric\[Delta][p$208322, 
      p$208323]*perth[LI[1], -i, -j]*PD[-p$208322][
      PD[-p$208323][pertB[LI[1]]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertpsi[LI[1]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -i, -j]]*PD[-p$208322][
      PD[-p$208323][pertB[LI[1]]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-p$208322][
      PD[-p$208323][pertB[LI[1]]]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-i][pertF[LI[1], -j]]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][PD[-j][pertF[LI[1], -i]]]*PD[-p$208322][
      PD[-p$208323][pertB[LI[1]]]] - 2*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-h$208324][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*PD[-i][pertF[LI[1], -j]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    metric\[Delta][p$208322, p$208323]*PD[-i][pertS[LI[1], -j]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*PD[-j][pertF[LI[1], -i]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    metric\[Delta][p$208322, p$208323]*PD[-j][pertS[LI[1], -i]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-j][PD[-i][pertB[LI[1]]]]*
     PD[-p$208322][PD[-p$208323][pertB[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][p$208322, p$208323]*
     PD[-j][PD[-i][pertE[LI[1]]]]*PD[-p$208322][PD[-p$208323][
       pertB[LI[1]]]] - hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*PD[-p$208322][
      PD[-p$208323][pertB[LI[2]]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-p$208322][
      PD[-p$208323][pertE[LI[1]]]] - 4*metric\[Delta][p$208322, p$208323]*
     PD[-j][PD[-i][pertphi[LI[1]]]]*PD[-p$208322][
      PD[-p$208323][pertE[LI[1]]]] + 2*metric\[Delta][p$208322, p$208323]*
     PD[-j][pertphi[LI[1]]]*PD[-p$208322][PD[-p$208323][pertF[LI[1], -i]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-i][pertphi[LI[1]]]*
     PD[-p$208322][PD[-p$208323][pertF[LI[1], -j]]] - 
    2*metric\[Delta][p$208322, p$208323]*pertphi[LI[1]]*
     PD[-p$208322][PD[-p$208323][perth[LI[1], -i, -j]]] - 
    (metric\[Delta][p$208322, p$208323]*PD[-p$208322][
       PD[-p$208323][perth[LI[2], -i, -j]]])/2 + 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertphi[LI[1]]*
     PD[-p$208322][PD[-p$208323][pertphi[LI[1]]]] + 
    metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][PD[-p$208323][pertphi[LI[2]]]] + 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*perth[LI[1], -i, -j]*
     timevec[h$208324]*PD[-p$208322][PD[-p$208323][
       PD[-h$208324][pertE[LI[1]]]]] - 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertpsi[LI[1]]*timevec[h$208324]*
     PD[-p$208322][PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][perth[LI[1], -i, -j]]*PD[-p$208322][
      PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-i][pertF[LI[1], -j]]]*PD[-p$208322][
      PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-j][pertF[LI[1], -i]]]*PD[-p$208322][
      PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208327][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$208322][PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-i][pertF[LI[1], -j]]*PD[-p$208322][PD[-p$208323][
       PD[-h$208324][pertE[LI[1]]]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-i][pertS[LI[1], -j]]*
     PD[-p$208322][PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-j][pertF[LI[1], -i]]*PD[-p$208322][PD[-p$208323][
       PD[-h$208324][pertE[LI[1]]]]] + metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-j][pertS[LI[1], -i]]*
     PD[-p$208322][PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-j][PD[-i][pertB[LI[1]]]]*PD[-p$208322][PD[-p$208323][
       PD[-h$208324][pertE[LI[1]]]]] + 4*hubbleC[]*metric\[Delta][p$208322, 
      p$208323]*timevec[h$208324]*PD[-j][PD[-i][pertE[LI[1]]]]*
     PD[-p$208322][PD[-p$208323][PD[-h$208324][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][PD[-p$208323][
       PD[-h$208324][pertE[LI[2]]]]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-h$208324][pertphi[LI[1]]]*PD[-p$208322][
      PD[-p$208323][PD[-h$208327][pertE[LI[1]]]]] + 
    8*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*PD[-p$208323][pertB[LI[1]]] + 
    4*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*primehubbleC[]*PD[-p$208323][pertB[LI[1]]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertB[LI[1]]]*PD[-p$208323][pertB[LI[1]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     primehubbleC[]*PD[-p$208322][pertB[LI[1]]]*PD[-p$208323][pertB[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][pertF[LI[1], -p$208322]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][PD[-i][perth[LI[1], -p$208325, -p$208326]]]*
     PD[-p$208323][pertF[LI[1], -p$208322]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*PD[-p$208322][
      pertS[LI[1], -p$208325]]*PD[-p$208323][pertF[LI[1], -p$208326]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*timevec[h$208324]*
     PD[-p$208322][PD[-h$208324][pertF[LI[1], -p$208325]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] - 
    metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][PD[-i][perth[LI[1], -j, -p$208325]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] - 
    metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][PD[-j][perth[LI[1], -i, -p$208325]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*PD[-p$208322][
      PD[-p$208325][pertB[LI[1]]]]*PD[-p$208323][pertF[LI[1], -p$208326]] + 
    2*metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][PD[-p$208325][perth[LI[1], -i, -j]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] - 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][PD[-p$208325][pertphi[LI[1]]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*timevec[h$208324]*
     PD[-p$208322][PD[-p$208325][PD[-h$208324][pertE[LI[1]]]]]*
     PD[-p$208323][pertF[LI[1], -p$208326]] + 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][perth[LI[1], -i, -j]] - 
    2*hubbleC[]*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertB[LI[1]]]*PD[-p$208323][perth[LI[1], -i, -j]] - 
    3*metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][perth[LI[1], -i, -j]] - metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertpsi[LI[1]]]*PD[-p$208323][perth[LI[1], -i, -j]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][PD[-h$208324][pertB[LI[1]]]]*
     PD[-p$208323][perth[LI[1], -i, -j]] - metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*PD[-p$208322][
      perth[LI[1], -j, -p$208325]]*PD[-p$208323][perth[LI[1], -i, 
       -p$208326]] - 6*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][pertphi[LI[1]]] + 6*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][pertphi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][pertpsi[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][pertpsi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][pertpsi[LI[1]]] - metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertS[LI[1], -i]]*PD[-p$208323][pertS[LI[1], -j]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*perth[LI[1], -p$208322, -p$208325]*
     PD[-p$208323][pertS[LI[1], -p$208326]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208326]*
     metric\[Delta][p$208323, p$208325]*PD[-p$208322][
      PD[-p$208325][pertE[LI[1]]]]*PD[-p$208323][pertS[LI[1], -p$208326]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*timevec[h$208324]*
     PD[-p$208323][PD[-h$208324][pertB[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-h$208324][pertB[LI[1]]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][pertphi[LI[1]]]*PD[-p$208323][
      PD[-h$208324][pertB[LI[1]]]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertS[LI[1], -j]]*
     PD[-p$208323][PD[-h$208324][pertF[LI[1], -i]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][PD[-j][pertB[LI[1]]]]*PD[-p$208323][
      PD[-h$208324][pertF[LI[1], -i]]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertS[LI[1], -i]]*
     PD[-p$208323][PD[-h$208324][pertF[LI[1], -j]]] - 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-p$208322][PD[-h$208327][pertF[LI[1], -i]]]*
     PD[-p$208323][PD[-h$208324][pertF[LI[1], -j]]] + 
    metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][PD[-i][pertB[LI[1]]]]*PD[-p$208323][
      PD[-h$208324][pertF[LI[1], -j]]] + 2*metric\[Delta][p$208322, p$208323]*
     pertS[LI[1], -p$208322]*timevec[h$208324]*
     PD[-p$208323][PD[-h$208324][perth[LI[1], -i, -j]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][pertB[LI[1]]]*PD[-p$208323][PD[-h$208324][
       perth[LI[1], -i, -j]]] - 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-p$208323][PD[-h$208324][pertphi[LI[1]]]] + 
    4*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-h$208324][pertphi[LI[1]]]] + 
    metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertS[LI[1], -j]]*
     PD[-p$208323][PD[-i][pertB[LI[1]]]] - 
    2*metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][PD[-i][pertF[LI[1], -j]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][PD[-i][pertF[LI[1], -p$208322]]] - 
    metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][perth[LI[1], -j, -p$208325]]*
     PD[-p$208323][PD[-i][pertF[LI[1], -p$208326]]] + 
    2*metric\[Delta][p$208322, p$208323]*perth[LI[1], -j, -p$208322]*
     PD[-p$208323][PD[-i][pertphi[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertF[LI[1], -j]]*
     PD[-p$208323][PD[-i][pertphi[LI[1]]]] + 
    4*metric\[Delta][p$208322, p$208323]*PD[-p$208322][PD[-j][pertE[LI[1]]]]*
     PD[-p$208323][PD[-i][pertphi[LI[1]]]] + 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][PD[-i][pertS[LI[1], -j]]] - 
    metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-i][pertS[LI[1], -j]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][pertS[LI[1], -j]]*PD[-p$208323][
      PD[-i][PD[-h$208324][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-p$208322][PD[-h$208327][pertF[LI[1], -j]]]*
     PD[-p$208323][PD[-i][PD[-h$208324][pertE[LI[1]]]]] - 
    4*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-p$208322][PD[-h$208327][PD[-j][pertE[LI[1]]]]]*
     PD[-p$208323][PD[-i][PD[-h$208324][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][PD[-j][pertB[LI[1]]]]*PD[-p$208323][
      PD[-i][PD[-h$208324][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-p$208323][PD[-i][PD[-h$208324][
        pertF[LI[1], -j]]]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-i][PD[-h$208324][pertF[LI[1], -j]]]] + 
    metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertS[LI[1], -i]]*
     PD[-p$208323][PD[-j][pertB[LI[1]]]] - 
    2*metric\[Delta][p$208322, p$208323]*PD[-p$208322][PD[-i][pertB[LI[1]]]]*
     PD[-p$208323][PD[-j][pertB[LI[1]]]] - 
    2*metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][PD[-j][pertF[LI[1], -i]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-i][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][PD[-j][pertF[LI[1], -p$208322]]] - 
    metric\[Delta][p$208322, p$208326]*metric\[Delta][p$208323, p$208325]*
     PD[-p$208322][perth[LI[1], -i, -p$208325]]*
     PD[-p$208323][PD[-j][pertF[LI[1], -p$208326]]] + 
    2*metric\[Delta][p$208322, p$208323]*perth[LI[1], -i, -p$208322]*
     PD[-p$208323][PD[-j][pertphi[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertF[LI[1], -i]]*
     PD[-p$208323][PD[-j][pertphi[LI[1]]]] + 
    4*metric\[Delta][p$208322, p$208323]*PD[-p$208322][PD[-i][pertE[LI[1]]]]*
     PD[-p$208323][PD[-j][pertphi[LI[1]]]] + 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][PD[-j][pertS[LI[1], -i]]] - 
    metric\[Delta][p$208322, p$208323]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-j][pertS[LI[1], -i]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][pertS[LI[1], -i]]*PD[-p$208323][
      PD[-j][PD[-h$208324][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*timevec[h$208327]*
     PD[-p$208322][PD[-h$208327][pertF[LI[1], -i]]]*
     PD[-p$208323][PD[-j][PD[-h$208324][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208323]*timevec[h$208324]*
     PD[-p$208322][PD[-i][pertB[LI[1]]]]*PD[-p$208323][
      PD[-j][PD[-h$208324][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     timevec[h$208324]*PD[-p$208323][PD[-j][PD[-h$208324][
        pertF[LI[1], -i]]]] - metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-j][PD[-h$208324][pertF[LI[1], -i]]]] - 
    4*hubbleC[]*metric\[Delta][p$208322, p$208323]*pertS[LI[1], -p$208322]*
     PD[-p$208323][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertB[LI[1]]]*PD[-p$208323][
      PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertphi[LI[1]]]*PD[-p$208323][
      PD[-j][PD[-i][pertE[LI[1]]]]] + 2*metric\[Delta][p$208322, p$208323]*
     PD[-p$208322][pertpsi[LI[1]]]*PD[-p$208323][
      PD[-j][PD[-i][pertE[LI[1]]]]] + 2*metric\[Delta][p$208322, p$208323]*
     timevec[h$208324]*PD[-p$208322][PD[-h$208324][pertB[LI[1]]]]*
     PD[-p$208323][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*timevec[h$208324]*
     PD[-h$208324][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][PD[-p$208322][pertE[LI[1]]]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][PD[-i][perth[LI[1], -p$208325, -p$208326]]]*
     PD[-p$208323][PD[-p$208322][pertE[LI[1]]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][PD[-p$208322][PD[-i][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-i][perth[LI[1], -p$208325, -p$208326]]*
     PD[-p$208323][PD[-p$208322][PD[-j][pertE[LI[1]]]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-i][perth[LI[1], -j, -p$208325]]*PD[-p$208323][
      PD[-p$208326][pertF[LI[1], -p$208322]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][perth[LI[1], -i, -p$208325]]*PD[-p$208323][
      PD[-p$208326][pertF[LI[1], -p$208322]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][PD[-i][pertF[LI[1], -p$208325]]]*PD[-p$208323][
      PD[-p$208326][pertF[LI[1], -p$208322]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*pertS[LI[1], -p$208322]*
     PD[-p$208323][PD[-p$208326][pertF[LI[1], -p$208325]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-p$208326][pertF[LI[1], -p$208325]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208322][perth[LI[1], -i, -j]]*PD[-p$208323][
      PD[-p$208326][pertF[LI[1], -p$208325]]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208322][pertphi[LI[1]]]*PD[-p$208323][
      PD[-p$208326][pertF[LI[1], -p$208325]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208322][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$208323][PD[-p$208326][pertF[LI[1], -p$208325]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-i][perth[LI[1], -j, -p$208325]]*PD[-p$208323][
      PD[-p$208326][PD[-p$208322][pertE[LI[1]]]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][perth[LI[1], -i, -p$208325]]*PD[-p$208323][
      PD[-p$208326][PD[-p$208322][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-j][PD[-i][pertF[LI[1], -p$208325]]]*PD[-p$208323][
      PD[-p$208326][PD[-p$208322][pertE[LI[1]]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*pertS[LI[1], -p$208322]*
     PD[-p$208323][PD[-p$208326][PD[-p$208325][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208322][pertB[LI[1]]]*
     PD[-p$208323][PD[-p$208326][PD[-p$208325][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208322][perth[LI[1], -i, -j]]*PD[-p$208323][
      PD[-p$208326][PD[-p$208325][pertE[LI[1]]]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208322][pertphi[LI[1]]]*
     PD[-p$208323][PD[-p$208326][PD[-p$208325][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208322][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$208323][PD[-p$208326][PD[-p$208325][pertE[LI[1]]]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-j][pertF[LI[1], -p$208325]]]*
     PD[-p$208326][perth[LI[1], -i, -p$208322]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][perth[LI[1], -i, -p$208325]]*
     PD[-p$208326][perth[LI[1], -j, -p$208322]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-i][pertF[LI[1], -p$208325]]]*
     PD[-p$208326][perth[LI[1], -j, -p$208322]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208323][
      pertF[LI[1], -p$208325]]*PD[-p$208326][pertS[LI[1], -p$208322]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*timevec[h$208324]*
     PD[-p$208323][pertF[LI[1], -p$208325]]*PD[-p$208326][
      PD[-h$208324][pertF[LI[1], -p$208322]]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*timevec[h$208324]*
     PD[-p$208323][PD[-p$208325][pertE[LI[1]]]]*
     PD[-p$208326][PD[-h$208324][pertF[LI[1], -p$208322]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*perth[LI[1], -p$208322, -p$208323]*
     timevec[h$208324]*PD[-p$208326][PD[-h$208324][
       pertF[LI[1], -p$208325]]] - metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208323][
      pertF[LI[1], -p$208325]]*PD[-p$208326][
      PD[-i][perth[LI[1], -j, -p$208322]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-p$208325][pertE[LI[1]]]]*
     PD[-p$208326][PD[-i][perth[LI[1], -j, -p$208322]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*PD[-p$208326][
      PD[-i][perth[LI[1], -j, -p$208325]]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-i][pertF[LI[1], -p$208325]]]*
     PD[-p$208326][PD[-j][pertF[LI[1], -p$208322]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][pertF[LI[1], -p$208325]]*PD[-p$208326][
      PD[-j][perth[LI[1], -i, -p$208322]]] - 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-p$208325][pertE[LI[1]]]]*
     PD[-p$208326][PD[-j][perth[LI[1], -i, -p$208322]]] - 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*PD[-p$208326][
      PD[-j][perth[LI[1], -i, -p$208325]]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208323][
      PD[-p$208325][pertB[LI[1]]]]*PD[-p$208326][
      PD[-p$208322][pertE[LI[1]]]] + 2*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*PD[-p$208323][
      PD[-p$208325][pertE[LI[1]]]]*PD[-p$208326][
      PD[-p$208322][perth[LI[1], -i, -j]]] - 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-p$208325][pertE[LI[1]]]]*
     PD[-p$208326][PD[-p$208322][pertphi[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*timevec[h$208324]*
     PD[-p$208323][PD[-p$208325][pertE[LI[1]]]]*
     PD[-p$208326][PD[-p$208322][PD[-h$208324][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-j][pertF[LI[1], -p$208325]]]*
     PD[-p$208326][PD[-p$208322][PD[-i][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-i][pertF[LI[1], -p$208325]]]*
     PD[-p$208326][PD[-p$208322][PD[-j][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     PD[-p$208323][PD[-p$208325][PD[-i][pertE[LI[1]]]]]*
     PD[-p$208326][PD[-p$208322][PD[-j][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$208322, p$208325]*
     metric\[Delta][p$208323, p$208326]*perth[LI[1], -p$208322, -p$208323]*
     PD[-p$208326][PD[-p$208325][pertB[LI[1]]]] + 
    metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*PD[-p$208326][
      PD[-p$208325][perth[LI[1], -i, -j]]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*PD[-p$208326][
      PD[-p$208325][pertphi[LI[1]]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$208322, p$208325]*metric\[Delta][p$208323, p$208326]*
     perth[LI[1], -p$208322, -p$208323]*timevec[h$208324]*
     PD[-p$208326][PD[-p$208325][PD[-h$208324][pertE[LI[1]]]]]], 
 HoldPattern[pertRicciScalarCDP[LI[1]]] :> 
  Module[{}, (-12*hubbleC[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[pertpsi[LI[1]]])/scale[]^2 - 
    (18*hubbleC[]*Scalar[timevec[h$116070]*PD[-h$116070][pertphi[LI[1]]]])/
     scale[]^2 - (6*hubbleC[]*Scalar[timevec[h$116072]*
        PD[-h$116072][pertpsi[LI[1]]]])/scale[]^2 - 
    (6*Scalar[timevec[h$116074]*timevec[h$116075]*PD[-h$116075][
         PD[-h$116074][pertphi[LI[1]]]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[metric\[Delta][p$116077, p$116078]*
        PD[-p$116077][PD[-p$116078][pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$116080, p$116081]*PD[-p$116080][
         PD[-p$116081][pertphi[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$116083, p$116084]*PD[-p$116083][
         PD[-p$116084][pertpsi[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$116086, p$116087]*timevec[h$116088]*
        PD[-p$116086][PD[-p$116087][PD[-h$116088][pertB[LI[1]]]]]])/
     scale[]^2 + (6*hubbleC[]*Scalar[metric\[Delta][p$116090, p$116091]*
        timevec[h$116092]*PD[-p$116090][PD[-p$116091][PD[-h$116092][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$116094, p$116095]*timevec[h$116096]*
        timevec[h$116097]*PD[-p$116094][PD[-p$116095][PD[-h$116097][
           PD[-h$116096][pertE[LI[1]]]]]]])/scale[]^2], 
 HoldPattern[pertRicciScalarCDP[LI[2]]] :> 
  Module[{}, (48*hubbleC[]^2*pertpsi[LI[1]]^2)/scale[]^2 + 
    (48*pertpsi[LI[1]]^2*primehubbleC[])/scale[]^2 - 
    (12*hubbleC[]^2*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (12*hubbleC[]^2*Scalar[metric\[Delta][p$240275, p$240276]*
        pertS[LI[1], -p$240275]*pertS[LI[1], -p$240276]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[metric\[Delta][p$240278, p$240279]*
        pertS[LI[1], -p$240278]*pertS[LI[1], -p$240279]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[metric\[Delta][p$240281, p$240282]*
        metric\[Delta][p$240283, p$240284]*perth[LI[1], -p$240281, -p$240283]*
        timevec[h$240285]*PD[-h$240285][perth[LI[1], -p$240282, -p$240284]]])/
     scale[]^2 - (72*hubbleC[]*Scalar[pertphi[LI[1]]*timevec[h$240287]*
        PD[-h$240287][pertphi[LI[1]]]])/scale[]^2 + 
    (72*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$240289]*
        PD[-h$240289][pertphi[LI[1]]]])/scale[]^2 - 
    (18*hubbleC[]*Scalar[timevec[h$240291]*PD[-h$240291][pertphi[LI[2]]]])/
     scale[]^2 + (48*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$240293]*
        PD[-h$240293][pertpsi[LI[1]]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[timevec[h$240295]*PD[-h$240295][pertpsi[LI[2]]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240297, p$240298]*
        pertS[LI[1], -p$240297]*timevec[h$240299]*PD[-h$240299][
         pertS[LI[1], -p$240298]]])/scale[]^2 - 
    (3*Scalar[metric\[Delta][p$240301, p$240302]*metric\[Delta][p$240303, 
         p$240304]*timevec[h$240305]*timevec[h$240306]*
        PD[-h$240305][perth[LI[1], -p$240302, -p$240304]]*
        PD[-h$240306][perth[LI[1], -p$240301, -p$240303]]])/(2*scale[]^2) + 
    (12*Scalar[timevec[h$240308]*timevec[h$240309]*PD[-h$240308][
         pertphi[LI[1]]]*PD[-h$240309][pertpsi[LI[1]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240311, p$240312]*metric\[Delta][p$240313, 
         p$240314]*perth[LI[1], -p$240311, -p$240313]*timevec[h$240315]*
        timevec[h$240316]*PD[-h$240316][PD[-h$240315][perth[LI[1], -p$240312, 
           -p$240314]]]])/scale[]^2 - 
    (24*Scalar[pertphi[LI[1]]*timevec[h$240318]*timevec[h$240319]*
        PD[-h$240319][PD[-h$240318][pertphi[LI[1]]]]])/scale[]^2 + 
    (24*Scalar[pertpsi[LI[1]]*timevec[h$240321]*timevec[h$240322]*
        PD[-h$240322][PD[-h$240321][pertphi[LI[1]]]]])/scale[]^2 - 
    (6*Scalar[timevec[h$240324]*timevec[h$240325]*PD[-h$240325][
         PD[-h$240324][pertphi[LI[2]]]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240327, p$240328]*timevec[h$240329]*
        PD[-h$240329][pertS[LI[1], -p$240328]]*PD[-p$240327][pertB[LI[1]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$240331, p$240332]*
        timevec[h$240333]*PD[-h$240333][pertS[LI[1], -p$240332]]*
        PD[-p$240331][pertphi[LI[1]]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240335, p$240336]*pertphi[LI[1]]*
        PD[-p$240335][PD[-p$240336][pertB[LI[1]]]]])/scale[]^2 + 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240338, p$240339]*pertpsi[LI[1]]*
        PD[-p$240338][PD[-p$240339][pertB[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240341, p$240342]*timevec[h$240343]*
        PD[-h$240343][pertphi[LI[1]]]*PD[-p$240341][PD[-p$240342][
          pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240345, p$240346]*timevec[h$240347]*
        PD[-h$240347][pertpsi[LI[1]]]*PD[-p$240345][PD[-p$240346][
          pertB[LI[1]]]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[metric\[Delta][p$240349, p$240350]*
        PD[-p$240349][PD[-p$240350][pertB[LI[2]]]]])/scale[]^2 + 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240352, p$240353]*timevec[h$240354]*
        PD[-h$240354][pertphi[LI[1]]]*PD[-p$240352][PD[-p$240353][
          pertE[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240356, p$240357]*timevec[h$240358]*
        timevec[h$240359]*PD[-h$240359][PD[-h$240358][pertphi[LI[1]]]]*
        PD[-p$240356][PD[-p$240357][pertE[LI[1]]]]])/scale[]^2 + 
    (32*Scalar[metric\[Delta][p$240361, p$240362]*pertphi[LI[1]]*
        PD[-p$240361][PD[-p$240362][pertphi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240364, p$240365]*PD[-p$240364][
         PD[-p$240365][pertphi[LI[2]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240367, p$240368]*pertphi[LI[1]]*
        PD[-p$240367][PD[-p$240368][pertpsi[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240370, p$240371]*pertpsi[LI[1]]*
        PD[-p$240370][PD[-p$240371][pertpsi[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240373, p$240374]*PD[-p$240373][
         PD[-p$240374][pertpsi[LI[2]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240376, p$240377]*pertphi[LI[1]]*
        timevec[h$240378]*PD[-p$240376][PD[-p$240377][PD[-h$240378][
           pertB[LI[1]]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240380, p$240381]*pertpsi[LI[1]]*
        timevec[h$240382]*PD[-p$240380][PD[-p$240381][PD[-h$240382][
           pertB[LI[1]]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240384, p$240385]*timevec[h$240386]*
        PD[-p$240384][PD[-p$240385][PD[-h$240386][pertB[LI[2]]]]]])/
     scale[]^2 + (24*hubbleC[]*Scalar[metric\[Delta][p$240388, p$240389]*
        pertphi[LI[1]]*timevec[h$240390]*PD[-p$240388][
         PD[-p$240389][PD[-h$240390][pertE[LI[1]]]]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240392, p$240393]*pertpsi[LI[1]]*
        timevec[h$240394]*PD[-p$240392][PD[-p$240393][PD[-h$240394][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (6*hubbleC[]*Scalar[metric\[Delta][p$240396, p$240397]*timevec[h$240398]*
        PD[-p$240396][PD[-p$240397][PD[-h$240398][pertE[LI[2]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$240400, p$240401]*
        timevec[h$240402]*timevec[h$240403]*PD[-h$240402][pertpsi[LI[1]]]*
        PD[-p$240400][PD[-p$240401][PD[-h$240403][pertE[LI[1]]]]]])/
     scale[]^2 + (8*Scalar[metric\[Delta][p$240405, p$240406]*pertphi[LI[1]]*
        timevec[h$240407]*timevec[h$240408]*PD[-p$240405][
         PD[-p$240406][PD[-h$240408][PD[-h$240407][pertE[LI[1]]]]]]])/
     scale[]^2 - (8*Scalar[metric\[Delta][p$240410, p$240411]*pertpsi[LI[1]]*
        timevec[h$240412]*timevec[h$240413]*PD[-p$240410][
         PD[-p$240411][PD[-h$240413][PD[-h$240412][pertE[LI[1]]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$240415, p$240416]*
        timevec[h$240417]*timevec[h$240418]*PD[-p$240415][
         PD[-p$240416][PD[-h$240418][PD[-h$240417][pertE[LI[2]]]]]]])/
     scale[]^2 + (24*hubbleC[]^2*Scalar[metric\[Delta][p$240420, p$240421]*
        pertS[LI[1], -p$240420]*PD[-p$240421][pertB[LI[1]]]])/scale[]^2 + 
    (24*primehubbleC[]*Scalar[metric\[Delta][p$240423, p$240424]*
        pertS[LI[1], -p$240423]*PD[-p$240424][pertB[LI[1]]]])/scale[]^2 - 
    (12*hubbleC[]^2*Scalar[metric\[Delta][p$240426, p$240427]*
        PD[-p$240426][pertB[LI[1]]]*PD[-p$240427][pertB[LI[1]]]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[metric\[Delta][p$240429, p$240430]*
        PD[-p$240429][pertB[LI[1]]]*PD[-p$240430][pertB[LI[1]]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240432, p$240433]*
        metric\[Delta][p$240434, p$240435]*timevec[h$240436]*
        PD[-h$240436][perth[LI[1], -p$240433, -p$240435]]*
        PD[-p$240434][pertF[LI[1], -p$240432]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240438, p$240439]*metric\[Delta][p$240440, 
         p$240441]*timevec[h$240442]*timevec[h$240443]*
        PD[-h$240443][PD[-h$240442][perth[LI[1], -p$240439, -p$240441]]]*
        PD[-p$240440][pertF[LI[1], -p$240438]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240445, p$240446]*
        metric\[Delta][p$240447, p$240448]*PD[-p$240445][
         pertS[LI[1], -p$240448]]*PD[-p$240447][pertF[LI[1], -p$240446]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240450, p$240451]*
        metric\[Delta][p$240452, p$240453]*timevec[h$240454]*
        PD[-p$240450][PD[-h$240454][pertF[LI[1], -p$240453]]]*
        PD[-p$240452][pertF[LI[1], -p$240451]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240456, p$240457]*metric\[Delta][p$240458, 
         p$240459]*timevec[h$240460]*PD[-p$240456][PD[-h$240460][
          pertS[LI[1], -p$240459]]]*PD[-p$240458][pertF[LI[1], -p$240457]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$240462, p$240463]*
        metric\[Delta][p$240464, p$240465]*timevec[h$240466]*
        timevec[h$240467]*PD[-p$240462][PD[-h$240467][PD[-h$240466][
           pertF[LI[1], -p$240465]]]]*PD[-p$240464][pertF[LI[1], 
          -p$240463]]])/scale[]^2 + 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240469, p$240470]*
        metric\[Delta][p$240471, p$240472]*PD[-p$240469][
         PD[-p$240472][pertB[LI[1]]]]*PD[-p$240471][pertF[LI[1], 
          -p$240470]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240474, p$240475]*metric\[Delta][p$240476, 
         p$240477]*PD[-p$240474][PD[-p$240477][pertphi[LI[1]]]]*
        PD[-p$240476][pertF[LI[1], -p$240475]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240479, p$240480]*metric\[Delta][p$240481, 
         p$240482]*PD[-p$240479][PD[-p$240482][pertpsi[LI[1]]]]*
        PD[-p$240481][pertF[LI[1], -p$240480]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240484, p$240485]*metric\[Delta][p$240486, 
         p$240487]*timevec[h$240488]*PD[-p$240484][PD[-p$240487][
          PD[-h$240488][pertB[LI[1]]]]]*PD[-p$240486][
         pertF[LI[1], -p$240485]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240490, p$240491]*
        metric\[Delta][p$240492, p$240493]*timevec[h$240494]*
        PD[-p$240490][PD[-p$240493][PD[-h$240494][pertE[LI[1]]]]]*
        PD[-p$240492][pertF[LI[1], -p$240491]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240496, p$240497]*metric\[Delta][p$240498, 
         p$240499]*timevec[h$240500]*timevec[h$240501]*
        PD[-p$240496][PD[-p$240499][PD[-h$240501][PD[-h$240500][
            pertE[LI[1]]]]]]*PD[-p$240498][pertF[LI[1], -p$240497]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240503, p$240504]*
        pertS[LI[1], -p$240503]*PD[-p$240504][pertphi[LI[1]]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240506, p$240507]*
        PD[-p$240506][pertB[LI[1]]]*PD[-p$240507][pertphi[LI[1]]]])/
     scale[]^2 + (12*Scalar[metric\[Delta][p$240509, p$240510]*
        PD[-p$240509][pertphi[LI[1]]]*PD[-p$240510][pertphi[LI[1]]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240512, p$240513]*
        pertS[LI[1], -p$240512]*PD[-p$240513][pertpsi[LI[1]]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240515, p$240516]*
        PD[-p$240515][pertB[LI[1]]]*PD[-p$240516][pertpsi[LI[1]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240518, p$240519]*
        PD[-p$240518][pertphi[LI[1]]]*PD[-p$240519][pertpsi[LI[1]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240521, p$240522]*
        PD[-p$240521][pertpsi[LI[1]]]*PD[-p$240522][pertpsi[LI[1]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$240524, p$240525]*
        metric\[Delta][p$240526, p$240527]*timevec[h$240528]*
        PD[-h$240528][perth[LI[1], -p$240525, -p$240527]]*
        PD[-p$240526][pertS[LI[1], -p$240524]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240530, p$240531]*
        metric\[Delta][p$240532, p$240533]*perth[LI[1], -p$240530, -p$240533]*
        PD[-p$240532][pertS[LI[1], -p$240531]]])/scale[]^2 + 
    Scalar[metric\[Delta][p$240535, p$240536]*metric\[Delta][p$240537, 
        p$240538]*PD[-p$240535][pertS[LI[1], -p$240538]]*
       PD[-p$240537][pertS[LI[1], -p$240536]]]/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240540, p$240541]*metric\[Delta][p$240542, 
         p$240543]*timevec[h$240544]*PD[-p$240540][PD[-h$240544][
          pertF[LI[1], -p$240543]]]*PD[-p$240542][pertS[LI[1], -p$240541]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240546, p$240547]*
        metric\[Delta][p$240548, p$240549]*PD[-p$240546][
         PD[-p$240549][pertB[LI[1]]]]*PD[-p$240548][pertS[LI[1], 
          -p$240547]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240551, p$240552]*
        metric\[Delta][p$240553, p$240554]*PD[-p$240551][
         PD[-p$240554][pertE[LI[1]]]]*PD[-p$240553][pertS[LI[1], 
          -p$240552]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240556, p$240557]*metric\[Delta][p$240558, 
         p$240559]*timevec[h$240560]*PD[-p$240556][PD[-p$240559][
          PD[-h$240560][pertE[LI[1]]]]]*PD[-p$240558][
         pertS[LI[1], -p$240557]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240562, p$240563]*
        pertS[LI[1], -p$240562]*timevec[h$240564]*PD[-p$240563][
         PD[-h$240564][pertB[LI[1]]]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240566, p$240567]*timevec[h$240568]*
        PD[-p$240566][pertB[LI[1]]]*PD[-p$240567][PD[-h$240568][
          pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240570, p$240571]*timevec[h$240572]*
        PD[-p$240570][pertphi[LI[1]]]*PD[-p$240571][PD[-h$240572][
          pertB[LI[1]]]]])/scale[]^2 - 
    (6*Scalar[metric\[Delta][p$240574, p$240575]*metric\[Delta][p$240576, 
         p$240577]*timevec[h$240578]*timevec[h$240579]*
        PD[-h$240579][perth[LI[1], -p$240575, -p$240577]]*
        PD[-p$240576][PD[-h$240578][pertF[LI[1], -p$240574]]]])/scale[]^2 - 
    (3*Scalar[metric\[Delta][p$240581, p$240582]*metric\[Delta][p$240583, 
         p$240584]*timevec[h$240585]*timevec[h$240586]*
        PD[-p$240581][PD[-h$240586][pertF[LI[1], -p$240584]]]*
        PD[-p$240583][PD[-h$240585][pertF[LI[1], -p$240582]]]])/scale[]^2 - 
    (16*Scalar[metric\[Delta][p$240588, p$240589]*pertS[LI[1], -p$240588]*
        timevec[h$240590]*PD[-p$240589][PD[-h$240590][pertphi[LI[1]]]]])/
     scale[]^2 + (16*Scalar[metric\[Delta][p$240592, p$240593]*
        timevec[h$240594]*PD[-p$240592][pertB[LI[1]]]*
        PD[-p$240593][PD[-h$240594][pertphi[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$240596, p$240597]*metric\[Delta][p$240598, 
         p$240599]*timevec[h$240600]*PD[-h$240600][perth[LI[1], -p$240597, 
          -p$240599]]*PD[-p$240598][PD[-p$240596][pertB[LI[1]]]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240602, p$240603]*
        metric\[Delta][p$240604, p$240605]*timevec[h$240606]*
        PD[-h$240606][perth[LI[1], -p$240603, -p$240605]]*
        PD[-p$240604][PD[-p$240602][pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240608, p$240609]*metric\[Delta][p$240610, 
         p$240611]*timevec[h$240612]*timevec[h$240613]*
        PD[-h$240613][PD[-h$240612][perth[LI[1], -p$240609, -p$240611]]]*
        PD[-p$240610][PD[-p$240608][pertE[LI[1]]]]])/scale[]^2 - 
    (6*Scalar[metric\[Delta][p$240615, p$240616]*metric\[Delta][p$240617, 
         p$240618]*timevec[h$240619]*timevec[h$240620]*
        PD[-h$240619][perth[LI[1], -p$240616, -p$240618]]*
        PD[-p$240617][PD[-p$240615][PD[-h$240620][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$240622, p$240623]*
        metric\[Delta][p$240624, p$240625]*PD[-p$240622][
         PD[-p$240623][pertB[LI[1]]]]*PD[-p$240624][PD[-p$240625][
          pertB[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240627, p$240628]*metric\[Delta][p$240629, 
         p$240630]*timevec[h$240631]*PD[-h$240631][pertS[LI[1], -p$240628]]*
        PD[-p$240629][PD[-p$240630][pertF[LI[1], -p$240627]]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240633, p$240634]*
        metric\[Delta][p$240635, p$240636]*pertS[LI[1], -p$240633]*
        PD[-p$240635][PD[-p$240636][pertF[LI[1], -p$240634]]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240638, p$240639]*
        metric\[Delta][p$240640, p$240641]*PD[-p$240638][pertB[LI[1]]]*
        PD[-p$240640][PD[-p$240641][pertF[LI[1], -p$240639]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240643, p$240644]*metric\[Delta][p$240645, 
         p$240646]*PD[-p$240643][pertpsi[LI[1]]]*PD[-p$240645][
         PD[-p$240646][pertF[LI[1], -p$240644]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240648, p$240649]*metric\[Delta][p$240650, 
         p$240651]*timevec[h$240652]*PD[-p$240648][PD[-h$240652][
          pertB[LI[1]]]]*PD[-p$240650][PD[-p$240651][pertF[LI[1], 
           -p$240649]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240654, p$240655]*metric\[Delta][p$240656, 
         p$240657]*PD[-p$240654][PD[-p$240655][pertE[LI[1]]]]*
        PD[-p$240656][PD[-p$240657][pertphi[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240659, p$240660]*metric\[Delta][p$240661, 
         p$240662]*pertS[LI[1], -p$240659]*PD[-p$240661][
         PD[-p$240662][pertS[LI[1], -p$240660]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240664, p$240665]*metric\[Delta][p$240666, 
         p$240667]*PD[-p$240664][pertB[LI[1]]]*PD[-p$240666][
         PD[-p$240667][pertS[LI[1], -p$240665]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240669, p$240670]*metric\[Delta][p$240671, 
         p$240672]*timevec[h$240673]*PD[-p$240669][PD[-p$240670][
          pertB[LI[1]]]]*PD[-p$240671][PD[-p$240672][PD[-h$240673][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240675, p$240676]*metric\[Delta][p$240677, 
         p$240678]*pertS[LI[1], -p$240675]*timevec[h$240679]*
        PD[-p$240677][PD[-p$240678][PD[-h$240679][pertF[LI[1], 
            -p$240676]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240681, p$240682]*metric\[Delta][p$240683, 
         p$240684]*timevec[h$240685]*PD[-p$240681][pertB[LI[1]]]*
        PD[-p$240683][PD[-p$240684][PD[-h$240685][pertF[LI[1], 
            -p$240682]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$240687, p$240688]*metric\[Delta][p$240689, 
         p$240690]*timevec[h$240691]*timevec[h$240692]*
        PD[-p$240687][PD[-p$240688][PD[-h$240691][pertE[LI[1]]]]]*
        PD[-p$240689][PD[-p$240690][PD[-h$240692][pertE[LI[1]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$240694, p$240695]*
        metric\[Delta][p$240696, p$240697]*timevec[h$240698]*
        PD[-h$240698][pertS[LI[1], -p$240695]]*PD[-p$240696][
         PD[-p$240697][PD[-p$240694][pertE[LI[1]]]]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240700, p$240701]*
        metric\[Delta][p$240702, p$240703]*pertS[LI[1], -p$240700]*
        PD[-p$240702][PD[-p$240703][PD[-p$240701][pertE[LI[1]]]]]])/
     scale[]^2 + (12*hubbleC[]*Scalar[metric\[Delta][p$240705, p$240706]*
        metric\[Delta][p$240707, p$240708]*PD[-p$240705][pertB[LI[1]]]*
        PD[-p$240707][PD[-p$240708][PD[-p$240706][pertE[LI[1]]]]]])/
     scale[]^2 - (8*Scalar[metric\[Delta][p$240710, p$240711]*
        metric\[Delta][p$240712, p$240713]*PD[-p$240710][pertphi[LI[1]]]*
        PD[-p$240712][PD[-p$240713][PD[-p$240711][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240715, p$240716]*
        metric\[Delta][p$240717, p$240718]*PD[-p$240715][pertpsi[LI[1]]]*
        PD[-p$240717][PD[-p$240718][PD[-p$240716][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240720, p$240721]*
        metric\[Delta][p$240722, p$240723]*timevec[h$240724]*
        PD[-p$240720][PD[-h$240724][pertB[LI[1]]]]*PD[-p$240722][
         PD[-p$240723][PD[-p$240721][pertE[LI[1]]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$240726, p$240727]*metric\[Delta][p$240728, 
        p$240729]*metric\[Delta][p$240730, p$240731]*
       PD[-p$240728][perth[LI[1], -p$240726, -p$240731]]*
       PD[-p$240730][perth[LI[1], -p$240727, -p$240729]]]/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240733, p$240734]*metric\[Delta][p$240735, 
         p$240736]*metric\[Delta][p$240737, p$240738]*
        PD[-p$240733][perth[LI[1], -p$240736, -p$240738]]*
        PD[-p$240737][PD[-p$240735][pertF[LI[1], -p$240734]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240740, p$240741]*metric\[Delta][p$240742, 
         p$240743]*metric\[Delta][p$240744, p$240745]*
        PD[-p$240742][PD[-p$240743][pertF[LI[1], -p$240741]]]*
        PD[-p$240744][PD[-p$240745][pertF[LI[1], -p$240740]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240747, p$240748]*metric\[Delta][p$240749, 
         p$240750]*metric\[Delta][p$240751, p$240752]*
        PD[-p$240749][pertF[LI[1], -p$240748]]*PD[-p$240751][
         PD[-p$240752][perth[LI[1], -p$240747, -p$240750]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240754, p$240755]*metric\[Delta][p$240756, 
         p$240757]*metric\[Delta][p$240758, p$240759]*
        PD[-p$240756][PD[-p$240755][pertE[LI[1]]]]*PD[-p$240758][
         PD[-p$240759][perth[LI[1], -p$240754, -p$240757]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$240761, p$240762]*metric\[Delta][p$240763, 
         p$240764]*metric\[Delta][p$240765, p$240766]*perth[LI[1], -p$240761, 
         -p$240763]*PD[-p$240765][PD[-p$240766][perth[LI[1], -p$240762, 
           -p$240764]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240768, p$240769]*metric\[Delta][p$240770, 
         p$240771]*metric\[Delta][p$240772, p$240773]*
        PD[-p$240770][PD[-p$240771][pertF[LI[1], -p$240769]]]*
        PD[-p$240772][PD[-p$240773][PD[-p$240768][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$240775, p$240776]*
        metric\[Delta][p$240777, p$240778]*metric\[Delta][p$240779, p$240780]*
        PD[-p$240777][PD[-p$240778][PD[-p$240776][pertE[LI[1]]]]]*
        PD[-p$240779][PD[-p$240780][PD[-p$240775][pertE[LI[1]]]]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240782, p$240783]*
        metric\[Delta][p$240784, p$240785]*PD[-p$240784][
         pertF[LI[1], -p$240783]]*PD[-p$240785][pertS[LI[1], -p$240782]]])/
     scale[]^2 - (3*Scalar[metric\[Delta][p$240787, p$240788]*
        metric\[Delta][p$240789, p$240790]*PD[-p$240789][
         pertS[LI[1], -p$240788]]*PD[-p$240790][pertS[LI[1], -p$240787]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240792, p$240793]*
        metric\[Delta][p$240794, p$240795]*timevec[h$240796]*
        PD[-p$240794][pertF[LI[1], -p$240793]]*PD[-p$240795][
         PD[-h$240796][pertF[LI[1], -p$240792]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240798, p$240799]*metric\[Delta][p$240800, 
         p$240801]*timevec[h$240802]*PD[-p$240800][pertS[LI[1], -p$240799]]*
        PD[-p$240801][PD[-h$240802][pertF[LI[1], -p$240798]]]])/scale[]^2 - 
    (3*Scalar[metric\[Delta][p$240804, p$240805]*metric\[Delta][p$240806, 
         p$240807]*timevec[h$240808]*timevec[h$240809]*
        PD[-p$240806][PD[-h$240809][pertF[LI[1], -p$240805]]]*
        PD[-p$240807][PD[-h$240808][pertF[LI[1], -p$240804]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240811, p$240812]*metric\[Delta][p$240813, 
         p$240814]*timevec[h$240815]*PD[-p$240813][PD[-p$240812][
          pertB[LI[1]]]]*PD[-p$240814][PD[-h$240815][pertF[LI[1], 
           -p$240811]]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240817, p$240818]*
        metric\[Delta][p$240819, p$240820]*timevec[h$240821]*
        PD[-p$240819][PD[-p$240818][pertE[LI[1]]]]*PD[-p$240820][
         PD[-h$240821][pertF[LI[1], -p$240817]]]])/scale[]^2 - 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240823, p$240824]*
        metric\[Delta][p$240825, p$240826]*perth[LI[1], -p$240823, -p$240825]*
        timevec[h$240827]*PD[-p$240826][PD[-h$240827][pertF[LI[1], 
           -p$240824]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240829, p$240830]*metric\[Delta][p$240831, 
         p$240832]*timevec[h$240833]*PD[-p$240831][pertF[LI[1], -p$240830]]*
        PD[-p$240832][PD[-h$240833][pertS[LI[1], -p$240829]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240835, p$240836]*metric\[Delta][p$240837, 
         p$240838]*timevec[h$240839]*PD[-p$240837][PD[-p$240836][
          pertE[LI[1]]]]*PD[-p$240838][PD[-h$240839][pertS[LI[1], 
           -p$240835]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240841, p$240842]*metric\[Delta][p$240843, 
         p$240844]*perth[LI[1], -p$240841, -p$240843]*timevec[h$240845]*
        PD[-p$240844][PD[-h$240845][pertS[LI[1], -p$240842]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240847, p$240848]*metric\[Delta][p$240849, 
         p$240850]*timevec[h$240851]*timevec[h$240852]*
        PD[-p$240849][pertF[LI[1], -p$240848]]*PD[-p$240850][
         PD[-h$240852][PD[-h$240851][pertF[LI[1], -p$240847]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240854, p$240855]*metric\[Delta][p$240856, 
         p$240857]*timevec[h$240858]*timevec[h$240859]*
        PD[-p$240856][PD[-p$240855][pertE[LI[1]]]]*PD[-p$240857][
         PD[-h$240859][PD[-h$240858][pertF[LI[1], -p$240854]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240861, p$240862]*metric\[Delta][p$240863, 
         p$240864]*perth[LI[1], -p$240861, -p$240863]*timevec[h$240865]*
        timevec[h$240866]*PD[-p$240864][PD[-h$240866][PD[-h$240865][
           pertF[LI[1], -p$240862]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$240868, p$240869]*metric\[Delta][p$240870, 
         p$240871]*PD[-p$240870][PD[-p$240869][pertB[LI[1]]]]*
        PD[-p$240871][PD[-p$240868][pertB[LI[1]]]]])/scale[]^2 + 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240873, p$240874]*
        metric\[Delta][p$240875, p$240876]*PD[-p$240875][
         PD[-p$240874][pertB[LI[1]]]]*PD[-p$240876][PD[-p$240873][
          pertE[LI[1]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$240878, p$240879]*metric\[Delta][p$240880, 
         p$240881]*PD[-p$240880][PD[-p$240879][pertE[LI[1]]]]*
        PD[-p$240881][PD[-p$240878][pertphi[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240883, p$240884]*metric\[Delta][p$240885, 
         p$240886]*PD[-p$240885][PD[-p$240884][pertE[LI[1]]]]*
        PD[-p$240886][PD[-p$240883][pertpsi[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$240888, p$240889]*metric\[Delta][p$240890, 
         p$240891]*timevec[h$240892]*PD[-p$240890][PD[-p$240889][
          pertE[LI[1]]]]*PD[-p$240891][PD[-p$240888][PD[-h$240892][
           pertB[LI[1]]]]]])/scale[]^2 - 
    (12*Scalar[metric\[Delta][p$240894, p$240895]*metric\[Delta][p$240896, 
         p$240897]*timevec[h$240898]*timevec[h$240899]*
        PD[-p$240896][PD[-h$240899][pertF[LI[1], -p$240895]]]*
        PD[-p$240897][PD[-p$240894][PD[-h$240898][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240901, p$240902]*
        metric\[Delta][p$240903, p$240904]*timevec[h$240905]*
        PD[-p$240903][PD[-p$240902][pertB[LI[1]]]]*PD[-p$240904][
         PD[-p$240901][PD[-h$240905][pertE[LI[1]]]]]])/scale[]^2 - 
    (24*hubbleC[]*Scalar[metric\[Delta][p$240907, p$240908]*
        metric\[Delta][p$240909, p$240910]*timevec[h$240911]*
        PD[-p$240909][PD[-p$240908][pertE[LI[1]]]]*PD[-p$240910][
         PD[-p$240907][PD[-h$240911][pertE[LI[1]]]]]])/scale[]^2 - 
    (6*Scalar[metric\[Delta][p$240913, p$240914]*metric\[Delta][p$240915, 
         p$240916]*timevec[h$240917]*timevec[h$240918]*
        PD[-p$240915][PD[-p$240914][PD[-h$240917][pertE[LI[1]]]]]*
        PD[-p$240916][PD[-p$240913][PD[-h$240918][pertE[LI[1]]]]]])/
     scale[]^2 - (8*Scalar[metric\[Delta][p$240920, p$240921]*
        metric\[Delta][p$240922, p$240923]*timevec[h$240924]*
        timevec[h$240925]*PD[-p$240922][PD[-p$240921][pertE[LI[1]]]]*
        PD[-p$240923][PD[-p$240920][PD[-h$240925][PD[-h$240924][
            pertE[LI[1]]]]]]])/scale[]^2 + 
    (12*hubbleC[]*Scalar[metric\[Delta][p$240927, p$240928]*
        metric\[Delta][p$240929, p$240930]*perth[LI[1], -p$240927, -p$240929]*
        PD[-p$240930][PD[-p$240928][pertB[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240932, p$240933]*metric\[Delta][p$240934, 
         p$240935]*perth[LI[1], -p$240932, -p$240934]*
        PD[-p$240935][PD[-p$240933][pertphi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240937, p$240938]*metric\[Delta][p$240939, 
         p$240940]*perth[LI[1], -p$240937, -p$240939]*
        PD[-p$240940][PD[-p$240938][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$240942, p$240943]*metric\[Delta][p$240944, 
         p$240945]*perth[LI[1], -p$240942, -p$240944]*timevec[h$240946]*
        PD[-p$240945][PD[-p$240943][PD[-h$240946][pertB[LI[1]]]]]])/
     scale[]^2 - (12*hubbleC[]*Scalar[metric\[Delta][p$240948, p$240949]*
        metric\[Delta][p$240950, p$240951]*perth[LI[1], -p$240948, -p$240950]*
        timevec[h$240952]*PD[-p$240951][PD[-p$240949][PD[-h$240952][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$240954, p$240955]*metric\[Delta][p$240956, 
         p$240957]*perth[LI[1], -p$240954, -p$240956]*timevec[h$240958]*
        timevec[h$240959]*PD[-p$240957][PD[-p$240955][PD[-h$240959][
           PD[-h$240958][pertE[LI[1]]]]]]])/scale[]^2 + 
    (3*Scalar[metric\[Delta][p$240961, p$240962]*metric\[Delta][p$240963, 
         p$240964]*metric\[Delta][p$240965, p$240966]*
        PD[-p$240965][perth[LI[1], -p$240962, -p$240964]]*
        PD[-p$240966][perth[LI[1], -p$240961, -p$240963]]])/(2*scale[]^2) + 
    (4*Scalar[metric\[Delta][p$240968, p$240969]*metric\[Delta][p$240970, 
         p$240971]*metric\[Delta][p$240972, p$240973]*
        PD[-p$240972][PD[-p$240971][pertF[LI[1], -p$240969]]]*
        PD[-p$240973][perth[LI[1], -p$240968, -p$240970]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$240975, p$240976]*metric\[Delta][p$240977, 
         p$240978]*metric\[Delta][p$240979, p$240980]*
        PD[-p$240979][PD[-p$240978][pertF[LI[1], -p$240976]]]*
        PD[-p$240980][PD[-p$240977][pertF[LI[1], -p$240975]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$240982, p$240983]*metric\[Delta][p$240984, 
         p$240985]*metric\[Delta][p$240986, p$240987]*
        PD[-p$240986][perth[LI[1], -p$240983, -p$240985]]*
        PD[-p$240987][PD[-p$240984][PD[-p$240982][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$240989, p$240990]*
        metric\[Delta][p$240991, p$240992]*metric\[Delta][p$240993, p$240994]*
        PD[-p$240993][PD[-p$240992][pertF[LI[1], -p$240990]]]*
        PD[-p$240994][PD[-p$240991][PD[-p$240989][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$240996, p$240997]*
        metric\[Delta][p$240998, p$240999]*metric\[Delta][p$241000, p$241001]*
        PD[-p$241000][PD[-p$240999][PD[-p$240997][pertE[LI[1]]]]]*
        PD[-p$241001][PD[-p$240998][PD[-p$240996][pertE[LI[1]]]]]])/
     scale[]^2], HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(c_Symbol)?TangentM1`Q, 
    -(d_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(c_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(c_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(b_Symbol)?TangentM1`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{h$97432, h$97433}, 
   timevec[-a]*timevec[-b]*(-(perth[LI[1], -i, -j]*primehubbleC[]*
       scale[]^2) + 2*metric\[Delta][-i, -j]*pertphi[LI[1]]*primehubbleC[]*
      scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$97432]*
       PD[-h$97432][perth[LI[1], -i, -j]])/2 + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$97432]*
      PD[-h$97432][pertphi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -j]*
      scale[]^2*timevec[h$97432]*PD[-h$97432][pertpsi[LI[1]]] - 
     (hubbleC[]*scale[]^2*timevec[h$97432]*PD[-h$97432][
        PD[-i][pertF[LI[1], -j]]])/2 - (scale[]^2*timevec[h$97432]*
       PD[-h$97432][PD[-i][pertS[LI[1], -j]]])/2 - 
     (hubbleC[]*scale[]^2*timevec[h$97432]*PD[-h$97432][
        PD[-j][pertF[LI[1], -i]]])/2 - (scale[]^2*timevec[h$97432]*
       PD[-h$97432][PD[-j][pertS[LI[1], -i]]])/2 + scale[]^2*timevec[h$97432]*
      PD[-h$97432][PD[-j][PD[-i][pertB[LI[1]]]]] - 
     hubbleC[]*scale[]^2*timevec[h$97432]*PD[-h$97432][
       PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$97432]*
       timevec[h$97433]*PD[-h$97433][PD[-h$97432][perth[LI[1], -i, -j]]])/2 + 
     metric\[Delta][-i, -j]*scale[]^2*timevec[h$97432]*timevec[h$97433]*
      PD[-h$97433][PD[-h$97432][pertphi[LI[1]]]] - 
     (scale[]^2*timevec[h$97432]*timevec[h$97433]*
       PD[-h$97433][PD[-h$97432][PD[-i][pertF[LI[1], -j]]]])/2 - 
     (scale[]^2*timevec[h$97432]*timevec[h$97433]*
       PD[-h$97433][PD[-h$97432][PD[-j][pertF[LI[1], -i]]]])/2 - 
     scale[]^2*timevec[h$97432]*timevec[h$97433]*
      PD[-h$97433][PD[-h$97432][PD[-j][PD[-i][pertE[LI[1]]]]]] - 
     primehubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
     (hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]])/2 - 
     primehubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
     (hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]])/2 + 
     hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] - 
     2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
     scale[]^2*PD[-j][PD[-i][pertpsi[LI[1]]]])], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{h$97437, h$97438}, 
   -(timevec[-a]*timevec[-b]*(-(perth[LI[1], -i, -j]*primehubbleC[]*
        scale[]^2) + 2*metric\[Delta][-i, -j]*pertphi[LI[1]]*primehubbleC[]*
       scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$97437]*
        PD[-h$97437][perth[LI[1], -i, -j]])/2 + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$97437]*
       PD[-h$97437][pertphi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -j]*
       scale[]^2*timevec[h$97437]*PD[-h$97437][pertpsi[LI[1]]] - 
      (hubbleC[]*scale[]^2*timevec[h$97437]*PD[-h$97437][
         PD[-i][pertF[LI[1], -j]]])/2 - (scale[]^2*timevec[h$97437]*
        PD[-h$97437][PD[-i][pertS[LI[1], -j]]])/2 - 
      (hubbleC[]*scale[]^2*timevec[h$97437]*PD[-h$97437][
         PD[-j][pertF[LI[1], -i]]])/2 - (scale[]^2*timevec[h$97437]*
        PD[-h$97437][PD[-j][pertS[LI[1], -i]]])/2 + 
      scale[]^2*timevec[h$97437]*PD[-h$97437][PD[-j][PD[-i][pertB[LI[1]]]]] - 
      hubbleC[]*scale[]^2*timevec[h$97437]*PD[-h$97437][
        PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$97437]*
        timevec[h$97438]*PD[-h$97438][PD[-h$97437][perth[LI[1], -i, -j]]])/
       2 + metric\[Delta][-i, -j]*scale[]^2*timevec[h$97437]*timevec[h$97438]*
       PD[-h$97438][PD[-h$97437][pertphi[LI[1]]]] - 
      (scale[]^2*timevec[h$97437]*timevec[h$97438]*PD[-h$97438][
         PD[-h$97437][PD[-i][pertF[LI[1], -j]]]])/2 - 
      (scale[]^2*timevec[h$97437]*timevec[h$97438]*PD[-h$97438][
         PD[-h$97437][PD[-j][pertF[LI[1], -i]]]])/2 - 
      scale[]^2*timevec[h$97437]*timevec[h$97438]*
       PD[-h$97438][PD[-h$97437][PD[-j][PD[-i][pertE[LI[1]]]]]] - 
      primehubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
      (hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]])/2 - 
      primehubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
      (hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]])/2 + 
      hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] - 
      2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
      scale[]^2*PD[-j][PD[-i][pertpsi[LI[1]]]]))], 
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q]] :> Module[{h$100752}, 
   timevec[-a]*(-(hubbleC[]^2*metric\[Delta][-i, -k]*pertS[LI[1], -j]*
       scale[]^2) + hubbleC[]^2*metric\[Delta][-i, -j]*pertS[LI[1], -k]*
      scale[]^2 - (scale[]^2*timevec[h$100752]*PD[-h$100752][
        PD[-j][perth[LI[1], -i, -k]]])/2 + metric\[Delta][-i, -k]*scale[]^2*
      timevec[h$100752]*PD[-h$100752][PD[-j][pertphi[LI[1]]]] - 
     (scale[]^2*timevec[h$100752]*PD[-h$100752][
        PD[-j][PD[-i][pertF[LI[1], -k]]]])/2 + 
     (scale[]^2*timevec[h$100752]*PD[-h$100752][
        PD[-k][perth[LI[1], -i, -j]]])/2 - metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$100752]*PD[-h$100752][PD[-k][pertphi[LI[1]]]] + 
     (scale[]^2*timevec[h$100752]*PD[-h$100752][
        PD[-k][PD[-i][pertF[LI[1], -j]]]])/2 + 
     hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     (scale[]^2*PD[-j][PD[-i][pertS[LI[1], -k]]])/2 - 
     hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
     (scale[]^2*PD[-k][PD[-i][pertS[LI[1], -j]]])/2)], 
 HoldPattern[pertRiemannCDP[LI[1], -(c_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{h$97442, h$97443}, 
   -(timevec[-a]*timevec[-b]*(-(perth[LI[1], -i, -j]*primehubbleC[]*
        scale[]^2) + 2*metric\[Delta][-i, -j]*pertphi[LI[1]]*primehubbleC[]*
       scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$97442]*
        PD[-h$97442][perth[LI[1], -i, -j]])/2 + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$97442]*
       PD[-h$97442][pertphi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -j]*
       scale[]^2*timevec[h$97442]*PD[-h$97442][pertpsi[LI[1]]] - 
      (hubbleC[]*scale[]^2*timevec[h$97442]*PD[-h$97442][
         PD[-i][pertF[LI[1], -j]]])/2 - (scale[]^2*timevec[h$97442]*
        PD[-h$97442][PD[-i][pertS[LI[1], -j]]])/2 - 
      (hubbleC[]*scale[]^2*timevec[h$97442]*PD[-h$97442][
         PD[-j][pertF[LI[1], -i]]])/2 - (scale[]^2*timevec[h$97442]*
        PD[-h$97442][PD[-j][pertS[LI[1], -i]]])/2 + 
      scale[]^2*timevec[h$97442]*PD[-h$97442][PD[-j][PD[-i][pertB[LI[1]]]]] - 
      hubbleC[]*scale[]^2*timevec[h$97442]*PD[-h$97442][
        PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$97442]*
        timevec[h$97443]*PD[-h$97443][PD[-h$97442][perth[LI[1], -i, -j]]])/
       2 + metric\[Delta][-i, -j]*scale[]^2*timevec[h$97442]*timevec[h$97443]*
       PD[-h$97443][PD[-h$97442][pertphi[LI[1]]]] - 
      (scale[]^2*timevec[h$97442]*timevec[h$97443]*PD[-h$97443][
         PD[-h$97442][PD[-i][pertF[LI[1], -j]]]])/2 - 
      (scale[]^2*timevec[h$97442]*timevec[h$97443]*PD[-h$97443][
         PD[-h$97442][PD[-j][pertF[LI[1], -i]]]])/2 - 
      scale[]^2*timevec[h$97442]*timevec[h$97443]*
       PD[-h$97443][PD[-h$97442][PD[-j][PD[-i][pertE[LI[1]]]]]] - 
      primehubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
      (hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]])/2 - 
      primehubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
      (hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]])/2 + 
      hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] - 
      2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
      scale[]^2*PD[-j][PD[-i][pertpsi[LI[1]]]]))], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{h$97447, h$97448}, 
   timevec[-a]*timevec[-b]*(-(perth[LI[1], -i, -j]*primehubbleC[]*
       scale[]^2) + 2*metric\[Delta][-i, -j]*pertphi[LI[1]]*primehubbleC[]*
      scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$97447]*
       PD[-h$97447][perth[LI[1], -i, -j]])/2 + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$97447]*
      PD[-h$97447][pertphi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -j]*
      scale[]^2*timevec[h$97447]*PD[-h$97447][pertpsi[LI[1]]] - 
     (hubbleC[]*scale[]^2*timevec[h$97447]*PD[-h$97447][
        PD[-i][pertF[LI[1], -j]]])/2 - (scale[]^2*timevec[h$97447]*
       PD[-h$97447][PD[-i][pertS[LI[1], -j]]])/2 - 
     (hubbleC[]*scale[]^2*timevec[h$97447]*PD[-h$97447][
        PD[-j][pertF[LI[1], -i]]])/2 - (scale[]^2*timevec[h$97447]*
       PD[-h$97447][PD[-j][pertS[LI[1], -i]]])/2 + scale[]^2*timevec[h$97447]*
      PD[-h$97447][PD[-j][PD[-i][pertB[LI[1]]]]] - 
     hubbleC[]*scale[]^2*timevec[h$97447]*PD[-h$97447][
       PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$97447]*
       timevec[h$97448]*PD[-h$97448][PD[-h$97447][perth[LI[1], -i, -j]]])/2 + 
     metric\[Delta][-i, -j]*scale[]^2*timevec[h$97447]*timevec[h$97448]*
      PD[-h$97448][PD[-h$97447][pertphi[LI[1]]]] - 
     (scale[]^2*timevec[h$97447]*timevec[h$97448]*
       PD[-h$97448][PD[-h$97447][PD[-i][pertF[LI[1], -j]]]])/2 - 
     (scale[]^2*timevec[h$97447]*timevec[h$97448]*
       PD[-h$97448][PD[-h$97447][PD[-j][pertF[LI[1], -i]]]])/2 - 
     scale[]^2*timevec[h$97447]*timevec[h$97448]*
      PD[-h$97448][PD[-h$97447][PD[-j][PD[-i][pertE[LI[1]]]]]] - 
     primehubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
     (hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]])/2 - 
     primehubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
     (hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]])/2 + 
     hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] - 
     2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] + 
     scale[]^2*PD[-j][PD[-i][pertpsi[LI[1]]]])], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q]] :> Module[{h$100756}, 
   -(timevec[-a]*(-(hubbleC[]^2*metric\[Delta][-i, -k]*pertS[LI[1], -j]*
        scale[]^2) + hubbleC[]^2*metric\[Delta][-i, -j]*pertS[LI[1], -k]*
       scale[]^2 - (scale[]^2*timevec[h$100756]*PD[-h$100756][
         PD[-j][perth[LI[1], -i, -k]]])/2 + metric\[Delta][-i, -k]*scale[]^2*
       timevec[h$100756]*PD[-h$100756][PD[-j][pertphi[LI[1]]]] - 
      (scale[]^2*timevec[h$100756]*PD[-h$100756][
         PD[-j][PD[-i][pertF[LI[1], -k]]]])/2 + 
      (scale[]^2*timevec[h$100756]*PD[-h$100756][
         PD[-k][perth[LI[1], -i, -j]]])/2 - metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$100756]*PD[-h$100756][PD[-k][pertphi[LI[1]]]] + 
      (scale[]^2*timevec[h$100756]*PD[-h$100756][
         PD[-k][PD[-i][pertF[LI[1], -j]]]])/2 + 
      hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      (scale[]^2*PD[-j][PD[-i][pertS[LI[1], -k]]])/2 - 
      hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
      (scale[]^2*PD[-k][PD[-i][pertS[LI[1], -j]]])/2))], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(c_Symbol)?TangentM1`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[1], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q, -(k_Symbol)?TangentM3`Q, 
    -(l_Symbol)?TangentM3`Q]] :> Module[{h$105192}, 
   hubbleC[]^2*metric\[Delta][-j, -l]*perth[LI[1], -i, -k]*scale[]^2 - 
    hubbleC[]^2*metric\[Delta][-j, -k]*perth[LI[1], -i, -l]*scale[]^2 - 
    hubbleC[]^2*metric\[Delta][-i, -l]*perth[LI[1], -j, -k]*scale[]^2 + 
    hubbleC[]^2*metric\[Delta][-i, -k]*perth[LI[1], -j, -l]*scale[]^2 + 
    4*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     pertphi[LI[1]]*scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2 + 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]*scale[]^2 - 2*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*pertpsi[LI[1]]*scale[]^2 + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][perth[LI[1], -i, -k]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][perth[LI[1], -i, -l]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][perth[LI[1], -j, -k]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][perth[LI[1], -j, -l]])/2 + 
    2*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$105192]*PD[-h$105192][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$105192]*PD[-h$105192][pertphi[LI[1]]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-i][pertF[LI[1], -k]]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-i][pertF[LI[1], -l]]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-j][pertF[LI[1], -k]]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-j][pertF[LI[1], -l]]])/2 + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-k][pertF[LI[1], -i]]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-k][pertF[LI[1], -j]]])/2 + 
    hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$105192]*
     PD[-h$105192][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$105192]*
     PD[-h$105192][PD[-k][PD[-j][pertE[LI[1]]]]] - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-l][pertF[LI[1], -i]]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$105192]*
      PD[-h$105192][PD[-l][pertF[LI[1], -j]]])/2 - 
    hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$105192]*
     PD[-h$105192][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$105192]*
     PD[-h$105192][PD[-l][PD[-j][pertE[LI[1]]]]] + 
    hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertF[LI[1], -k]] - 
    hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertF[LI[1], -l]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertS[LI[1], -k]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertS[LI[1], -l]])/2 - 
    hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*PD[-j][pertF[LI[1], -k]] + 
    hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertF[LI[1], -l]] - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-j][pertS[LI[1], -k]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertS[LI[1], -l]])/2 + 
    hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*PD[-k][pertF[LI[1], -i]] - 
    hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*PD[-k][pertF[LI[1], -j]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-k][pertS[LI[1], -i]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-k][pertS[LI[1], -j]])/2 - 
    hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] + 
    2*hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]] - 
    (scale[]^2*PD[-k][PD[-i][perth[LI[1], -j, -l]]])/2 + 
    metric\[Delta][-j, -l]*scale[]^2*PD[-k][PD[-i][pertphi[LI[1]]]] + 
    hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]] - 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]] + 
    (scale[]^2*PD[-k][PD[-j][perth[LI[1], -i, -l]]])/2 - 
    metric\[Delta][-i, -l]*scale[]^2*PD[-k][PD[-j][pertphi[LI[1]]]] - 
    hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*PD[-l][pertF[LI[1], -i]] + 
    hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-l][pertF[LI[1], -j]] - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-l][pertS[LI[1], -i]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-l][pertS[LI[1], -j]])/2 + 
    hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-l][PD[-i][pertB[LI[1]]]] - 
    2*hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*
     PD[-l][PD[-i][pertE[LI[1]]]] + 
    (scale[]^2*PD[-l][PD[-i][perth[LI[1], -j, -k]]])/2 - 
    metric\[Delta][-j, -k]*scale[]^2*PD[-l][PD[-i][pertphi[LI[1]]]] - 
    hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-l][PD[-j][pertB[LI[1]]]] + 
    2*hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*
     PD[-l][PD[-j][pertE[LI[1]]]] - 
    (scale[]^2*PD[-l][PD[-j][perth[LI[1], -i, -k]]])/2 + 
    metric\[Delta][-i, -k]*scale[]^2*PD[-l][PD[-j][pertphi[LI[1]]]]], 
 HoldPattern[pertRiemannCDP[LI[1], -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{h$100760}, 
   timevec[-a]*(-(hubbleC[]^2*metric\[Delta][-i, -k]*pertS[LI[1], -j]*
       scale[]^2) + hubbleC[]^2*metric\[Delta][-i, -j]*pertS[LI[1], -k]*
      scale[]^2 - (scale[]^2*timevec[h$100760]*PD[-h$100760][
        PD[-j][perth[LI[1], -i, -k]]])/2 + metric\[Delta][-i, -k]*scale[]^2*
      timevec[h$100760]*PD[-h$100760][PD[-j][pertphi[LI[1]]]] - 
     (scale[]^2*timevec[h$100760]*PD[-h$100760][
        PD[-j][PD[-i][pertF[LI[1], -k]]]])/2 + 
     (scale[]^2*timevec[h$100760]*PD[-h$100760][
        PD[-k][perth[LI[1], -i, -j]]])/2 - metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$100760]*PD[-h$100760][PD[-k][pertphi[LI[1]]]] + 
     (scale[]^2*timevec[h$100760]*PD[-h$100760][
        PD[-k][PD[-i][pertF[LI[1], -j]]]])/2 + 
     hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     (scale[]^2*PD[-j][PD[-i][pertS[LI[1], -k]]])/2 - 
     hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
     (scale[]^2*PD[-k][PD[-i][pertS[LI[1], -j]]])/2)], 
 HoldPattern[pertRiemannCDP[LI[1], -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{h$100764}, 
   -(timevec[-a]*(-(hubbleC[]^2*metric\[Delta][-i, -k]*pertS[LI[1], -j]*
        scale[]^2) + hubbleC[]^2*metric\[Delta][-i, -j]*pertS[LI[1], -k]*
       scale[]^2 - (scale[]^2*timevec[h$100764]*PD[-h$100764][
         PD[-j][perth[LI[1], -i, -k]]])/2 + metric\[Delta][-i, -k]*scale[]^2*
       timevec[h$100764]*PD[-h$100764][PD[-j][pertphi[LI[1]]]] - 
      (scale[]^2*timevec[h$100764]*PD[-h$100764][
         PD[-j][PD[-i][pertF[LI[1], -k]]]])/2 + 
      (scale[]^2*timevec[h$100764]*PD[-h$100764][
         PD[-k][perth[LI[1], -i, -j]]])/2 - metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$100764]*PD[-h$100764][PD[-k][pertphi[LI[1]]]] + 
      (scale[]^2*timevec[h$100764]*PD[-h$100764][
         PD[-k][PD[-i][pertF[LI[1], -j]]]])/2 + 
      hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      (scale[]^2*PD[-j][PD[-i][pertS[LI[1], -k]]])/2 - 
      hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
      (scale[]^2*PD[-k][PD[-i][pertS[LI[1], -j]]])/2))], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(c_Symbol)?TangentM1`Q, 
    -(d_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(c_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(c_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q, -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(b_Symbol)?TangentM1`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{p$55337, p$55338, h$55339, h$55340}, 
   timevec[-a]*timevec[-b]*(-2*hubbleC[]^2*pertS[LI[1], -i]*pertS[LI[1], -j]*
      scale[]^2 + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*
      pertS[LI[1], -p$55338]*scale[]^2 - perth[LI[2], -i, -j]*primehubbleC[]*
      scale[]^2 + 2*metric\[Delta][-i, -j]*pertphi[LI[2]]*primehubbleC[]*
      scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$55339]*
       PD[-h$55339][perth[LI[2], -i, -j]])/2 + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertphi[LI[2]]] + 2*hubbleC[]*perth[LI[1], -i, -j]*
      scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertpsi[LI[2]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertS[LI[1], -p$55338]] - 
     (hubbleC[]*scale[]^2*timevec[h$55339]*PD[-h$55339][
        PD[-i][pertF[LI[2], -j]]])/2 - (scale[]^2*timevec[h$55339]*
       PD[-h$55339][PD[-i][pertS[LI[2], -j]]])/2 - 
     (hubbleC[]*scale[]^2*timevec[h$55339]*PD[-h$55339][
        PD[-j][pertF[LI[2], -i]]])/2 - (scale[]^2*timevec[h$55339]*
       PD[-h$55339][PD[-j][pertS[LI[2], -i]]])/2 + scale[]^2*timevec[h$55339]*
      PD[-h$55339][PD[-j][PD[-i][pertB[LI[2]]]]] - 
     hubbleC[]*scale[]^2*timevec[h$55339]*PD[-h$55339][
       PD[-j][PD[-i][pertE[LI[2]]]]] - 2*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][pertphi[LI[1]]]*
      PD[-h$55340][perth[LI[1], -i, -j]] + scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-h$55340][perth[LI[1], -i, -j]] + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55339][PD[-j][pertF[LI[1], -p$55338]]]*
       PD[-h$55340][perth[LI[1], -i, -p$55337]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55339][perth[LI[1], -i, -p$55338]]*
       PD[-h$55340][perth[LI[1], -j, -p$55337]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55339][PD[-i][pertF[LI[1], -p$55338]]]*
       PD[-h$55340][perth[LI[1], -j, -p$55337]])/2 + 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][pertphi[LI[1]]]*PD[-h$55340][pertphi[LI[1]]] - 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][pertphi[LI[1]]]*PD[-h$55340][pertpsi[LI[1]]] - 
     (scale[]^2*timevec[h$55339]*timevec[h$55340]*
       PD[-h$55340][PD[-h$55339][perth[LI[2], -i, -j]]])/2 + 
     metric\[Delta][-i, -j]*scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55340][PD[-h$55339][pertphi[LI[2]]]] - 
     (scale[]^2*timevec[h$55339]*timevec[h$55340]*
       PD[-h$55340][PD[-h$55339][PD[-i][pertF[LI[2], -j]]]])/2 - 
     (scale[]^2*timevec[h$55339]*timevec[h$55340]*
       PD[-h$55340][PD[-h$55339][PD[-j][pertF[LI[2], -i]]]])/2 - 
     scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55340][PD[-h$55339][PD[-j][PD[-i][pertE[LI[2]]]]]] - 
     2*scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][pertphi[LI[1]]]*PD[-h$55340][PD[-i][pertF[LI[1], -j]]] + 
     scale[]^2*timevec[h$55339]*timevec[h$55340]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-h$55340][PD[-i][pertF[LI[1], -j]]] - 2*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][pertphi[LI[1]]]*
      PD[-h$55340][PD[-j][pertF[LI[1], -i]]] + scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-h$55340][PD[-j][pertF[LI[1], -i]]] + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55339][PD[-i][pertF[LI[1], -p$55338]]]*
       PD[-h$55340][PD[-j][pertF[LI[1], -p$55337]]])/2 - 
     4*scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][pertphi[LI[1]]]*PD[-h$55340][
       PD[-j][PD[-i][pertE[LI[1]]]]] + 2*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-h$55340][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-i][pertF[LI[1], -j]] - primehubbleC[]*scale[]^2*
      PD[-i][pertF[LI[2], -j]] + metric\[Delta][p$55337, p$55338]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertS[LI[1], -p$55338]]*
      PD[-i][perth[LI[1], -j, -p$55337]] + 
     hubbleC[]*metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*
      scale[]^2*PD[-i][perth[LI[1], -j, -p$55338]] - 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$55339]*PD[-h$55339][pertS[LI[1], -j]]*
      PD[-i][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55339]*
      PD[-h$55339][PD[-j][pertB[LI[1]]]]*PD[-i][pertphi[LI[1]]] + 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-i][pertS[LI[1], -j]] - (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*PD[-h$55339][perth[LI[1], -j, -p$55338]]*
       PD[-i][pertS[LI[1], -p$55337]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-h$55339][PD[-j][pertF[LI[1], -p$55338]]]*
       PD[-i][pertS[LI[1], -p$55337]])/2 - 
     (hubbleC[]*scale[]^2*PD[-i][pertS[LI[2], -j]])/2 + 
     2*hubbleC[]^2*pertS[LI[1], -i]*scale[]^2*PD[-j][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] - 
     2*hubbleC[]*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-j][pertF[LI[1], -i]] - primehubbleC[]*scale[]^2*
      PD[-j][pertF[LI[2], -i]] + metric\[Delta][p$55337, p$55338]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertS[LI[1], -p$55338]]*
      PD[-j][perth[LI[1], -i, -p$55337]] + 
     hubbleC[]*metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*
      scale[]^2*PD[-j][perth[LI[1], -i, -p$55338]] - 
     2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$55339]*PD[-h$55339][pertS[LI[1], -i]]*
      PD[-j][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55339]*
      PD[-h$55339][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
     2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
     2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
     2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-j][pertS[LI[1], -i]] - (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*PD[-h$55339][perth[LI[1], -i, -p$55338]]*
       PD[-j][pertS[LI[1], -p$55337]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-h$55339][PD[-i][pertF[LI[1], -p$55338]]]*
       PD[-j][pertS[LI[1], -p$55337]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*
       PD[-i][pertS[LI[1], -p$55338]]*PD[-j][pertS[LI[1], -p$55337]])/2 - 
     (hubbleC[]*scale[]^2*PD[-j][pertS[LI[2], -i]])/2 - 
     2*scale[]^2*timevec[h$55339]*PD[-h$55339][pertpsi[LI[1]]]*
      PD[-j][PD[-i][pertB[LI[1]]]] + hubbleC[]*scale[]^2*
      PD[-j][PD[-i][pertB[LI[2]]]] + 4*hubbleC[]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertpsi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
     2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[2]]]] + 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertS[LI[1], -p$55338]]*
      PD[-j][PD[-i][pertF[LI[1], -p$55337]]] + 
     2*hubbleC[]*metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*
      scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55338]]] + 
     scale[]^2*PD[-j][PD[-i][pertpsi[LI[2]]]] - 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*PD[-h$55339][pertS[LI[1], -p$55338]]*
      PD[-p$55337][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55337, p$55338]*
      scale[]^2*PD[-i][perth[LI[1], -j, -p$55338]]*
      PD[-p$55337][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55337, p$55338]*
      scale[]^2*PD[-j][perth[LI[1], -i, -p$55338]]*
      PD[-p$55337][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$55337, 
       p$55338]*scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55338]]]*
      PD[-p$55337][pertB[LI[1]]] - metric\[Delta][p$55337, p$55338]*scale[]^2*
      timevec[h$55339]*PD[-h$55339][pertS[LI[1], -p$55338]]*
      PD[-p$55337][perth[LI[1], -i, -j]] + 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertS[LI[1], -p$55338]]*PD[-p$55337][pertphi[LI[1]]] - 
     metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-i][perth[LI[1], -j, -p$55338]]*PD[-p$55337][pertpsi[LI[1]]] - 
     metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-j][perth[LI[1], -i, -p$55338]]*PD[-p$55337][pertpsi[LI[1]]] - 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$55338]]]*PD[-p$55337][pertpsi[LI[1]]] + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-h$55339][perth[LI[1], -j, -p$55338]]*PD[-p$55337][
        pertS[LI[1], -i]])/2 + (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*PD[-h$55339][PD[-j][pertF[LI[1], -p$55338]]]*
       PD[-p$55337][pertS[LI[1], -i]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*
       PD[-j][pertS[LI[1], -p$55338]]*PD[-p$55337][pertS[LI[1], -i]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-h$55339][perth[LI[1], -i, -p$55338]]*PD[-p$55337][
        pertS[LI[1], -j]])/2 + (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*PD[-h$55339][PD[-i][pertF[LI[1], -p$55338]]]*
       PD[-p$55337][pertS[LI[1], -j]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*
       PD[-i][pertS[LI[1], -p$55338]]*PD[-p$55337][pertS[LI[1], -j]])/2 - 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-i][perth[LI[1], -j, -p$55338]]*PD[-p$55337][
       PD[-h$55339][pertB[LI[1]]]] - metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*PD[-j][perth[LI[1], -i, -p$55338]]*
      PD[-p$55337][PD[-h$55339][pertB[LI[1]]]] - 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-j][PD[-i][pertF[LI[1], -p$55338]]]*PD[-p$55337][
       PD[-h$55339][pertB[LI[1]]]] + (metric\[Delta][p$55337, p$55338]*
       scale[]^2*timevec[h$55339]*timevec[h$55340]*
       PD[-h$55340][perth[LI[1], -j, -p$55338]]*PD[-p$55337][
        PD[-h$55339][pertF[LI[1], -i]]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55340][PD[-j][pertF[LI[1], -p$55338]]]*
       PD[-p$55337][PD[-h$55339][pertF[LI[1], -i]]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-j][pertS[LI[1], -p$55338]]*PD[-p$55337][PD[-h$55339][
         pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*timevec[h$55340]*PD[-h$55340][perth[LI[1], -i, 
         -p$55338]]*PD[-p$55337][PD[-h$55339][pertF[LI[1], -j]]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-h$55340][PD[-i][pertF[LI[1], -p$55338]]]*
       PD[-p$55337][PD[-h$55339][pertF[LI[1], -j]]])/2 - 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-i][pertS[LI[1], -p$55338]]*PD[-p$55337][PD[-h$55339][
         pertF[LI[1], -j]]])/2 - metric\[Delta][p$55337, p$55338]*scale[]^2*
      timevec[h$55339]*PD[-j][pertS[LI[1], -p$55338]]*
      PD[-p$55337][PD[-h$55339][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-i][pertS[LI[1], -p$55338]]*PD[-p$55337][
       PD[-h$55339][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][perth[LI[1], -j, -p$55338]]*PD[-p$55337][
       PD[-h$55340][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-h$55339][PD[-j][pertF[LI[1], -p$55338]]]*
      PD[-p$55337][PD[-h$55340][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][perth[LI[1], -i, -p$55338]]*
      PD[-p$55337][PD[-h$55340][PD[-j][pertE[LI[1]]]]] + 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-h$55339][PD[-i][pertF[LI[1], -p$55338]]]*
      PD[-p$55337][PD[-h$55340][PD[-j][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-h$55339][pertS[LI[1], -p$55338]]*PD[-p$55337][
       PD[-j][PD[-i][pertE[LI[1]]]]] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*scale[]^2*
      PD[-p$55338][pertB[LI[1]]] + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*PD[-p$55337][pertB[LI[1]]]*
      PD[-p$55338][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55337, p$55338]*
      pertS[LI[1], -p$55337]*scale[]^2*PD[-p$55338][perth[LI[1], -i, -j]] + 
     hubbleC[]*metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-p$55337][pertB[LI[1]]]*PD[-p$55338][perth[LI[1], -i, -j]] + 
     metric\[Delta][p$55337, p$55338]*scale[]^2*PD[-p$55337][pertpsi[LI[1]]]*
      PD[-p$55338][perth[LI[1], -i, -j]] + metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*PD[-p$55337][PD[-h$55339][pertB[LI[1]]]]*
      PD[-p$55338][perth[LI[1], -i, -j]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*scale[]^2*
      PD[-p$55338][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*PD[-p$55337][pertB[LI[1]]]*
      PD[-p$55338][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*scale[]^2*
      PD[-p$55338][pertpsi[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*PD[-p$55337][pertB[LI[1]]]*
      PD[-p$55338][pertpsi[LI[1]]] - 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*PD[-p$55337][pertphi[LI[1]]]*
      PD[-p$55338][pertpsi[LI[1]]] + (metric\[Delta][p$55337, p$55338]*
       scale[]^2*PD[-p$55337][pertS[LI[1], -i]]*PD[-p$55338][
        pertS[LI[1], -j]])/2 - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*scale[]^2*
      timevec[h$55339]*PD[-p$55338][PD[-h$55339][pertB[LI[1]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*PD[-p$55337][pertB[LI[1]]]*
      PD[-p$55338][PD[-h$55339][pertB[LI[1]]]] - 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-p$55337][pertphi[LI[1]]]*PD[-p$55338][PD[-h$55339][pertB[LI[1]]]] + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       PD[-p$55337][pertS[LI[1], -j]]*PD[-p$55338][PD[-h$55339][
         pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55337, p$55338]*scale[]^2*
       timevec[h$55339]*PD[-p$55337][pertS[LI[1], -i]]*
       PD[-p$55338][PD[-h$55339][pertF[LI[1], -j]]])/2 + 
     (metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
       timevec[h$55340]*PD[-p$55337][PD[-h$55340][pertF[LI[1], -i]]]*
       PD[-p$55338][PD[-h$55339][pertF[LI[1], -j]]])/2 + 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-p$55337][pertS[LI[1], -j]]*PD[-p$55338][
       PD[-i][PD[-h$55339][pertE[LI[1]]]]] + metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-p$55337][PD[-h$55340][pertF[LI[1], -j]]]*
      PD[-p$55338][PD[-i][PD[-h$55339][pertE[LI[1]]]]] + 
     metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      PD[-p$55337][pertS[LI[1], -i]]*PD[-p$55338][
       PD[-j][PD[-h$55339][pertE[LI[1]]]]] + metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*timevec[h$55340]*
      PD[-p$55337][PD[-h$55340][pertF[LI[1], -i]]]*
      PD[-p$55338][PD[-j][PD[-h$55339][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*timevec[h$55339]*
      timevec[h$55340]*PD[-p$55337][PD[-h$55340][PD[-i][pertE[LI[1]]]]]*
      PD[-p$55338][PD[-j][PD[-h$55339][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][p$55337, p$55338]*pertS[LI[1], -p$55337]*
      scale[]^2*PD[-p$55338][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     2*hubbleC[]*metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-p$55337][pertB[LI[1]]]*PD[-p$55338][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$55337, p$55338]*scale[]^2*
      PD[-p$55337][pertpsi[LI[1]]]*PD[-p$55338][
       PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55337, p$55338]*
      scale[]^2*timevec[h$55339]*PD[-p$55337][PD[-h$55339][pertB[LI[1]]]]*
      PD[-p$55338][PD[-j][PD[-i][pertE[LI[1]]]]])], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{p$55344, p$55345, h$55346, h$55347}, 
   -(timevec[-a]*timevec[-b]*(-2*hubbleC[]^2*pertS[LI[1], -i]*
       pertS[LI[1], -j]*scale[]^2 + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*
       pertS[LI[1], -p$55345]*scale[]^2 - perth[LI[2], -i, -j]*primehubbleC[]*
       scale[]^2 + 2*metric\[Delta][-i, -j]*pertphi[LI[2]]*primehubbleC[]*
       scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$55346]*
        PD[-h$55346][perth[LI[2], -i, -j]])/2 + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertphi[LI[2]]] + 2*hubbleC[]*perth[LI[1], -i, -j]*
       scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
       timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
       timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertpsi[LI[2]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*scale[]^2*
       timevec[h$55346]*PD[-h$55346][pertS[LI[1], -p$55345]] - 
      (hubbleC[]*scale[]^2*timevec[h$55346]*PD[-h$55346][
         PD[-i][pertF[LI[2], -j]]])/2 - (scale[]^2*timevec[h$55346]*
        PD[-h$55346][PD[-i][pertS[LI[2], -j]]])/2 - 
      (hubbleC[]*scale[]^2*timevec[h$55346]*PD[-h$55346][
         PD[-j][pertF[LI[2], -i]]])/2 - (scale[]^2*timevec[h$55346]*
        PD[-h$55346][PD[-j][pertS[LI[2], -i]]])/2 + 
      scale[]^2*timevec[h$55346]*PD[-h$55346][PD[-j][PD[-i][pertB[LI[2]]]]] - 
      hubbleC[]*scale[]^2*timevec[h$55346]*PD[-h$55346][
        PD[-j][PD[-i][pertE[LI[2]]]]] - 2*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][pertphi[LI[1]]]*
       PD[-h$55347][perth[LI[1], -i, -j]] + scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-h$55347][perth[LI[1], -i, -j]] + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55346][PD[-j][pertF[LI[1], -p$55345]]]*
        PD[-h$55347][perth[LI[1], -i, -p$55344]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55346][perth[LI[1], -i, -p$55345]]*
        PD[-h$55347][perth[LI[1], -j, -p$55344]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55346][PD[-i][pertF[LI[1], -p$55345]]]*
        PD[-h$55347][perth[LI[1], -j, -p$55344]])/2 + 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertphi[LI[1]]]*PD[-h$55347][pertphi[LI[1]]] - 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertphi[LI[1]]]*PD[-h$55347][pertpsi[LI[1]]] - 
      (scale[]^2*timevec[h$55346]*timevec[h$55347]*PD[-h$55347][
         PD[-h$55346][perth[LI[2], -i, -j]]])/2 + metric\[Delta][-i, -j]*
       scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55347][PD[-h$55346][pertphi[LI[2]]]] - 
      (scale[]^2*timevec[h$55346]*timevec[h$55347]*PD[-h$55347][
         PD[-h$55346][PD[-i][pertF[LI[2], -j]]]])/2 - 
      (scale[]^2*timevec[h$55346]*timevec[h$55347]*PD[-h$55347][
         PD[-h$55346][PD[-j][pertF[LI[2], -i]]]])/2 - 
      scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55347][PD[-h$55346][PD[-j][PD[-i][pertE[LI[2]]]]]] - 
      2*scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertphi[LI[1]]]*PD[-h$55347][PD[-i][pertF[LI[1], -j]]] + 
      scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertpsi[LI[1]]]*PD[-h$55347][PD[-i][pertF[LI[1], -j]]] - 
      2*scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertphi[LI[1]]]*PD[-h$55347][PD[-j][pertF[LI[1], -i]]] + 
      scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertpsi[LI[1]]]*PD[-h$55347][PD[-j][pertF[LI[1], -i]]] + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55346][PD[-i][pertF[LI[1], -p$55345]]]*
        PD[-h$55347][PD[-j][pertF[LI[1], -p$55344]]])/2 - 
      4*scale[]^2*timevec[h$55346]*timevec[h$55347]*
       PD[-h$55346][pertphi[LI[1]]]*PD[-h$55347][
        PD[-j][PD[-i][pertE[LI[1]]]]] + 2*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-h$55347][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-i][pertF[LI[1], -j]] - primehubbleC[]*scale[]^2*
       PD[-i][pertF[LI[2], -j]] + metric\[Delta][p$55344, p$55345]*scale[]^2*
       timevec[h$55346]*PD[-h$55346][pertS[LI[1], -p$55345]]*
       PD[-i][perth[LI[1], -j, -p$55344]] + 
      hubbleC[]*metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*
       scale[]^2*PD[-i][perth[LI[1], -j, -p$55345]] - 
      2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$55346]*PD[-h$55346][pertS[LI[1], -j]]*
       PD[-i][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55346]*
       PD[-h$55346][PD[-j][pertB[LI[1]]]]*PD[-i][pertphi[LI[1]]] + 
      2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-i][pertS[LI[1], -j]] - (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*PD[-h$55346][perth[LI[1], -j, -p$55345]]*
        PD[-i][pertS[LI[1], -p$55344]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-h$55346][PD[-j][pertF[LI[1], -p$55345]]]*
        PD[-i][pertS[LI[1], -p$55344]])/2 - 
      (hubbleC[]*scale[]^2*PD[-i][pertS[LI[2], -j]])/2 + 
      2*hubbleC[]^2*pertS[LI[1], -i]*scale[]^2*PD[-j][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-j][pertF[LI[1], -i]] - primehubbleC[]*scale[]^2*
       PD[-j][pertF[LI[2], -i]] + metric\[Delta][p$55344, p$55345]*scale[]^2*
       timevec[h$55346]*PD[-h$55346][pertS[LI[1], -p$55345]]*
       PD[-j][perth[LI[1], -i, -p$55344]] + 
      hubbleC[]*metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*
       scale[]^2*PD[-j][perth[LI[1], -i, -p$55345]] - 
      2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$55346]*PD[-h$55346][pertS[LI[1], -i]]*
       PD[-j][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55346]*
       PD[-h$55346][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
      2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
      2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
      2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-j][pertS[LI[1], -i]] - (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*PD[-h$55346][perth[LI[1], -i, -p$55345]]*
        PD[-j][pertS[LI[1], -p$55344]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-h$55346][PD[-i][pertF[LI[1], -p$55345]]]*
        PD[-j][pertS[LI[1], -p$55344]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*
        PD[-i][pertS[LI[1], -p$55345]]*PD[-j][pertS[LI[1], -p$55344]])/2 - 
      (hubbleC[]*scale[]^2*PD[-j][pertS[LI[2], -i]])/2 - 
      2*scale[]^2*timevec[h$55346]*PD[-h$55346][pertpsi[LI[1]]]*
       PD[-j][PD[-i][pertB[LI[1]]]] + hubbleC[]*scale[]^2*
       PD[-j][PD[-i][pertB[LI[2]]]] + 4*hubbleC[]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertpsi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
      2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[2]]]] + 
      2*metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertS[LI[1], -p$55345]]*
       PD[-j][PD[-i][pertF[LI[1], -p$55344]]] + 
      2*hubbleC[]*metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*
       scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55345]]] + 
      scale[]^2*PD[-j][PD[-i][pertpsi[LI[2]]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-h$55346][pertS[LI[1], -p$55345]]*
       PD[-p$55344][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55344, 
        p$55345]*scale[]^2*PD[-i][perth[LI[1], -j, -p$55345]]*
       PD[-p$55344][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55344, 
        p$55345]*scale[]^2*PD[-j][perth[LI[1], -i, -p$55345]]*
       PD[-p$55344][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$55344, 
        p$55345]*scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55345]]]*
       PD[-p$55344][pertB[LI[1]]] - metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-h$55346][pertS[LI[1], -p$55345]]*
       PD[-p$55344][perth[LI[1], -i, -j]] + 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertS[LI[1], -p$55345]]*PD[-p$55344][pertphi[LI[1]]] - 
      metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$55345]]*PD[-p$55344][pertpsi[LI[1]]] - 
      metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$55345]]*PD[-p$55344][pertpsi[LI[1]]] - 
      2*metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$55345]]]*PD[-p$55344][pertpsi[LI[1]]] + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-h$55346][perth[LI[1], -j, -p$55345]]*PD[-p$55344][
         pertS[LI[1], -i]])/2 + (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*PD[-h$55346][PD[-j][pertF[LI[1], -p$55345]]]*
        PD[-p$55344][pertS[LI[1], -i]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*
        PD[-j][pertS[LI[1], -p$55345]]*PD[-p$55344][pertS[LI[1], -i]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-h$55346][perth[LI[1], -i, -p$55345]]*PD[-p$55344][
         pertS[LI[1], -j]])/2 + (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*PD[-h$55346][PD[-i][pertF[LI[1], -p$55345]]]*
        PD[-p$55344][pertS[LI[1], -j]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*
        PD[-i][pertS[LI[1], -p$55345]]*PD[-p$55344][pertS[LI[1], -j]])/2 - 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-i][perth[LI[1], -j, -p$55345]]*PD[-p$55344][
        PD[-h$55346][pertB[LI[1]]]] - metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-j][perth[LI[1], -i, -p$55345]]*
       PD[-p$55344][PD[-h$55346][pertB[LI[1]]]] - 
      2*metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-j][PD[-i][pertF[LI[1], -p$55345]]]*PD[-p$55344][
        PD[-h$55346][pertB[LI[1]]]] + (metric\[Delta][p$55344, p$55345]*
        scale[]^2*timevec[h$55346]*timevec[h$55347]*
        PD[-h$55347][perth[LI[1], -j, -p$55345]]*PD[-p$55344][
         PD[-h$55346][pertF[LI[1], -i]]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55347][PD[-j][pertF[LI[1], -p$55345]]]*
        PD[-p$55344][PD[-h$55346][pertF[LI[1], -i]]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-j][pertS[LI[1], -p$55345]]*PD[-p$55344][PD[-h$55346][
          pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*timevec[h$55347]*PD[-h$55347][perth[LI[1], -i, 
          -p$55345]]*PD[-p$55344][PD[-h$55346][pertF[LI[1], -j]]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        timevec[h$55347]*PD[-h$55347][PD[-i][pertF[LI[1], -p$55345]]]*
        PD[-p$55344][PD[-h$55346][pertF[LI[1], -j]]])/2 - 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-i][pertS[LI[1], -p$55345]]*PD[-p$55344][PD[-h$55346][
          pertF[LI[1], -j]]])/2 - metric\[Delta][p$55344, p$55345]*scale[]^2*
       timevec[h$55346]*PD[-j][pertS[LI[1], -p$55345]]*
       PD[-p$55344][PD[-h$55346][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-i][pertS[LI[1], -p$55345]]*PD[-p$55344][PD[-h$55346][
         PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$55344, p$55345]*scale[]^2*
       timevec[h$55346]*timevec[h$55347]*PD[-h$55346][perth[LI[1], -j, 
         -p$55345]]*PD[-p$55344][PD[-h$55347][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][PD[-j][pertF[LI[1], -p$55345]]]*
       PD[-p$55344][PD[-h$55347][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][perth[LI[1], -i, -p$55345]]*
       PD[-p$55344][PD[-h$55347][PD[-j][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-h$55346][PD[-i][pertF[LI[1], -p$55345]]]*
       PD[-p$55344][PD[-h$55347][PD[-j][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-h$55346][pertS[LI[1], -p$55345]]*PD[-p$55344][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*scale[]^2*
       PD[-p$55345][pertB[LI[1]]] + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*scale[]^2*PD[-p$55344][pertB[LI[1]]]*
       PD[-p$55345][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55344, 
        p$55345]*pertS[LI[1], -p$55344]*scale[]^2*
       PD[-p$55345][perth[LI[1], -i, -j]] + 
      hubbleC[]*metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-p$55344][pertB[LI[1]]]*PD[-p$55345][perth[LI[1], -i, -j]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*PD[-p$55344][pertpsi[LI[1]]]*
       PD[-p$55345][perth[LI[1], -i, -j]] + metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-p$55344][PD[-h$55346][pertB[LI[1]]]]*
       PD[-p$55345][perth[LI[1], -i, -j]] + 2*hubbleC[]*
       metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       pertS[LI[1], -p$55344]*scale[]^2*PD[-p$55345][pertphi[LI[1]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       scale[]^2*PD[-p$55344][pertB[LI[1]]]*PD[-p$55345][pertphi[LI[1]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       pertS[LI[1], -p$55344]*scale[]^2*PD[-p$55345][pertpsi[LI[1]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       scale[]^2*PD[-p$55344][pertB[LI[1]]]*PD[-p$55345][pertpsi[LI[1]]] - 
      2*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-p$55344][pertphi[LI[1]]]*PD[-p$55345][pertpsi[LI[1]]] + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*PD[-p$55344][
         pertS[LI[1], -i]]*PD[-p$55345][pertS[LI[1], -j]])/2 - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       pertS[LI[1], -p$55344]*scale[]^2*timevec[h$55346]*
       PD[-p$55345][PD[-h$55346][pertB[LI[1]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-p$55344][pertB[LI[1]]]*
       PD[-p$55345][PD[-h$55346][pertB[LI[1]]]] - 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-p$55344][pertphi[LI[1]]]*PD[-p$55345][PD[-h$55346][
         pertB[LI[1]]]] + (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*PD[-p$55344][pertS[LI[1], -j]]*
        PD[-p$55345][PD[-h$55346][pertF[LI[1], -i]]])/2 + 
      (metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
        PD[-p$55344][pertS[LI[1], -i]]*PD[-p$55345][PD[-h$55346][
          pertF[LI[1], -j]]])/2 + (metric\[Delta][p$55344, p$55345]*scale[]^2*
        timevec[h$55346]*timevec[h$55347]*PD[-p$55344][
         PD[-h$55347][pertF[LI[1], -i]]]*PD[-p$55345][
         PD[-h$55346][pertF[LI[1], -j]]])/2 + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-p$55344][pertS[LI[1], -j]]*PD[-p$55345][
        PD[-i][PD[-h$55346][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-p$55344][PD[-h$55347][pertF[LI[1], -j]]]*
       PD[-p$55345][PD[-i][PD[-h$55346][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       PD[-p$55344][pertS[LI[1], -i]]*PD[-p$55345][
        PD[-j][PD[-h$55346][pertE[LI[1]]]]] + 
      metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-p$55344][PD[-h$55347][pertF[LI[1], -i]]]*
       PD[-p$55345][PD[-j][PD[-h$55346][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$55344, p$55345]*scale[]^2*timevec[h$55346]*
       timevec[h$55347]*PD[-p$55344][PD[-h$55347][PD[-i][pertE[LI[1]]]]]*
       PD[-p$55345][PD[-j][PD[-h$55346][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][p$55344, p$55345]*pertS[LI[1], -p$55344]*
       scale[]^2*PD[-p$55345][PD[-j][PD[-i][pertE[LI[1]]]]] - 
      2*hubbleC[]*metric\[Delta][p$55344, p$55345]*scale[]^2*
       PD[-p$55344][pertB[LI[1]]]*PD[-p$55345][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55344, p$55345]*
       scale[]^2*PD[-p$55344][pertpsi[LI[1]]]*PD[-p$55345][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55344, p$55345]*
       scale[]^2*timevec[h$55346]*PD[-p$55344][PD[-h$55346][pertB[LI[1]]]]*
       PD[-p$55345][PD[-j][PD[-i][pertE[LI[1]]]]]))], 
 HoldPattern[pertRiemannCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q]] :> Module[{h$76377, p$76378, p$76379}, 
   timevec[-a]*(-2*hubbleC[]^2*perth[LI[1], -i, -k]*pertS[LI[1], -j]*
      scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*
      pertS[LI[1], -j]*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*
      pertpsi[LI[1]]*pertS[LI[1], -j]*scale[]^2 + 
     2*hubbleC[]^2*perth[LI[1], -i, -j]*pertS[LI[1], -k]*scale[]^2 - 
     4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertS[LI[1], -k]*
      scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
      pertS[LI[1], -k]*scale[]^2 - hubbleC[]^2*metric\[Delta][-i, -k]*
      pertS[LI[2], -j]*scale[]^2 + hubbleC[]^2*metric\[Delta][-i, -j]*
      pertS[LI[2], -k]*scale[]^2 + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][perth[LI[1], -i, -j]] - 
     hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -i, -k]] - hubbleC[]*metric\[Delta][-i, -k]*
      metric\[Delta][p$76378, p$76379]*pertS[LI[1], -p$76378]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][perth[LI[1], -j, -p$76379]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -k, -p$76379]] + 
     4*hubbleC[]*metric\[Delta][-i, -k]*pertS[LI[1], -j]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertS[LI[1], -k]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]] + 
     hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-i][pertF[LI[1], -j]]] - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-i][pertF[LI[1], -k]]] + 
     hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -i]]] - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]] - 
     (scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-j][perth[LI[2], -i, -k]]])/
      2 + metric\[Delta][-i, -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertphi[LI[2]]]] + 2*hubbleC[]*pertS[LI[1], -k]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     (scale[]^2*timevec[h$76377]*PD[-h$76377][
        PD[-j][PD[-i][pertF[LI[2], -k]]]])/2 - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-k][pertF[LI[1], -i]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]] + 
     (scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-k][perth[LI[2], -i, -j]]])/
      2 - metric\[Delta][-i, -j]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertphi[LI[2]]]] - 2*hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-k][PD[-i][pertE[LI[1]]]]] + 
     (scale[]^2*timevec[h$76377]*PD[-h$76377][
        PD[-k][PD[-i][pertF[LI[2], -j]]]])/2 + 2*hubbleC[]^2*pertS[LI[1], -k]*
      scale[]^2*PD[-i][pertF[LI[1], -j]] - 2*hubbleC[]^2*pertS[LI[1], -j]*
      scale[]^2*PD[-i][pertF[LI[1], -k]] + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][perth[LI[1], -k, -p$76379]]*
       PD[-i][perth[LI[1], -j, -p$76378]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
       PD[-i][perth[LI[1], -j, -p$76378]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][perth[LI[1], -j, -p$76379]]*
       PD[-i][perth[LI[1], -k, -p$76378]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
       PD[-i][perth[LI[1], -k, -p$76378]])/2 + hubbleC[]*pertS[LI[1], -k]*
      scale[]^2*PD[-i][pertS[LI[1], -j]] - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*PD[-i][pertS[LI[1], -k]] + 2*hubbleC[]^2*perth[LI[1], -i, -k]*
      scale[]^2*PD[-j][pertB[LI[1]]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
      pertphi[LI[1]]*scale[]^2*PD[-j][pertB[LI[1]]] - 
     4*hubbleC[]^2*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
      PD[-j][pertB[LI[1]]] + hubbleC[]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -i, -k]]*PD[-j][pertB[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-i][pertF[LI[1], -k]]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-k][pertF[LI[1], -i]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[2]]] + 
     2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]]*
      PD[-j][perth[LI[1], -i, -k]] + (metric\[Delta][p$76378, p$76379]*
       scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -k, -p$76379]]*
       PD[-j][perth[LI[1], -i, -p$76378]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
       PD[-j][perth[LI[1], -i, -p$76378]])/2 - scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -i, -k]]*PD[-j][pertphi[LI[1]]] + 
     4*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
     scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-i][pertF[LI[1], -k]]]*
      PD[-j][pertphi[LI[1]]] - scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-j][pertphi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -k]]*
      PD[-j][pertphi[LI[1]]] + 2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*
      PD[-j][pertpsi[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*
      pertphi[LI[1]]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -i, -k]]*PD[-j][pertpsi[LI[1]]] - 
     2*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-i][pertF[LI[1], -k]]]*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertpsi[LI[1]]] + 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-j][pertpsi[LI[1]]] + 2*hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -k]]*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -k]]*
      PD[-j][pertpsi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
      PD[-j][pertpsi[LI[2]]] + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
      PD[-j][pertS[LI[1], -i]] - 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
      PD[-j][pertS[LI[1], -k]] + (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-i][perth[LI[1], -k, -p$76379]]*PD[-j][pertS[LI[1], -p$76378]])/2 + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*PD[-j][pertS[LI[1], -p$76379]] - 
     2*hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] + 
     4*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]]*
      PD[-j][PD[-i][pertF[LI[1], -k]]] + metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -k, -p$76379]]*
      PD[-j][PD[-i][pertF[LI[1], -p$76378]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
      PD[-j][PD[-i][pertF[LI[1], -p$76378]]] - 
     (scale[]^2*PD[-j][PD[-i][pertS[LI[2], -k]]])/2 - 
     2*hubbleC[]^2*perth[LI[1], -i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] + 
     4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
      PD[-k][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][-i, -j]*
      pertpsi[LI[1]]*scale[]^2*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -i, -j]]*
      PD[-k][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-i][pertF[LI[1], -j]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-j][pertF[LI[1], -i]]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]*scale[]^2*timevec[h$76377]*PD[-h$76377][
       PD[-j][PD[-i][pertE[LI[1]]]]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
      PD[-k][pertB[LI[1]]] - 4*hubbleC[]^2*scale[]^2*
      PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[2]]] - 
     2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][pertF[LI[1], -i]] + 
     2*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
     2*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]]*
      PD[-k][perth[LI[1], -i, -j]] - (metric\[Delta][p$76378, p$76379]*
       scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -j, -p$76379]]*
       PD[-k][perth[LI[1], -i, -p$76378]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
       PD[-k][perth[LI[1], -i, -p$76378]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76379]]*PD[-k][perth[LI[1], -i, -p$76378]])/2 + 
     scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -i, -j]]*
      PD[-k][pertphi[LI[1]]] - 4*metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
     scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-i][pertF[LI[1], -j]]]*
      PD[-k][pertphi[LI[1]]] + scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertphi[LI[1]]] + 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-k][pertphi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -j]]*
      PD[-k][pertphi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
      PD[-k][pertphi[LI[1]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*scale[]^2*
      PD[-k][pertpsi[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
      pertphi[LI[1]]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -i, -j]]*PD[-k][pertpsi[LI[1]]] + 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][pertphi[LI[1]]]*PD[-k][pertpsi[LI[1]]] - 
     scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-i][pertF[LI[1], -j]]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertpsi[LI[1]]] - 
     2*scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -j]]*
      PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
      PD[-k][pertpsi[LI[1]]] + 2*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
      PD[-k][pertpsi[LI[1]]] - 4*hubbleC[]*scale[]^2*
      PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertpsi[LI[1]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[2]]] - 
     hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-k][pertS[LI[1], -i]] + 
     hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     scale[]^2*PD[-j][pertphi[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-k][pertS[LI[1], -j]] - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$76379]]*PD[-k][pertS[LI[1], -p$76378]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$76379]]*PD[-k][pertS[LI[1], -p$76378]])/2 - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$76379]]]*PD[-k][pertS[LI[1], -p$76378]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*PD[-k][pertS[LI[1], -p$76379]] + 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] - 
     2*hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*
      PD[-k][PD[-i][pertB[LI[1]]]] - 2*scale[]^2*PD[-j][pertpsi[LI[1]]]*
      PD[-k][PD[-i][pertB[LI[1]]]] - 4*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*
      PD[-k][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]^2*scale[]^2*
      PD[-j][pertB[LI[1]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
     4*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*
      PD[-k][PD[-i][pertE[LI[1]]]] + 2*scale[]^2*timevec[h$76377]*
      PD[-h$76377][pertphi[LI[1]]]*PD[-k][PD[-i][pertF[LI[1], -j]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -j, -p$76379]]*
      PD[-k][PD[-i][pertF[LI[1], -p$76378]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
      PD[-k][PD[-i][pertF[LI[1], -p$76378]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76379]]*PD[-k][PD[-i][pertF[LI[1], -p$76378]]] + 
     (scale[]^2*PD[-k][PD[-i][pertS[LI[2], -j]]])/2 + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -j, -p$76379]]*
      PD[-p$76378][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -k, -p$76379]]*PD[-p$76378][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -k]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76379]]*PD[-p$76378][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*PD[-k][pertS[LI[1], -p$76379]]*PD[-p$76378][pertB[LI[1]]] - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][perth[LI[1], -k, -p$76379]]*PD[-p$76378][
        perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76378, p$76379]*
       scale[]^2*timevec[h$76377]*PD[-h$76377][
        PD[-k][pertF[LI[1], -p$76379]]]*PD[-p$76378][perth[LI[1], -i, -j]])/
      2 + (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76379]]*PD[-p$76378][perth[LI[1], -i, -j]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-h$76377][perth[LI[1], -j, -p$76379]]*PD[-p$76378][
        perth[LI[1], -i, -k]])/2 + (metric\[Delta][p$76378, p$76379]*
       scale[]^2*timevec[h$76377]*PD[-h$76377][
        PD[-j][pertF[LI[1], -p$76379]]]*PD[-p$76378][perth[LI[1], -i, -k]])/
      2 - (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76379]]*PD[-p$76378][perth[LI[1], -i, -k]])/2 - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][perth[LI[1], -j, -p$76379]]*
      PD[-p$76378][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][perth[LI[1], -k, -p$76379]]*PD[-p$76378][pertphi[LI[1]]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      timevec[h$76377]*PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][pertphi[LI[1]]] + metric\[Delta][-i, -k]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76379]]*PD[-p$76378][pertphi[LI[1]]] - 
     metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-k][pertS[LI[1], -p$76379]]*PD[-p$76378][pertphi[LI[1]]] - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-i][perth[LI[1], -k, -p$76379]]*PD[-p$76378][pertS[LI[1], -j]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-k][perth[LI[1], -i, -p$76379]]*PD[-p$76378][pertS[LI[1], -j]])/2 - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-k][PD[-i][pertF[LI[1], -p$76379]]]*PD[-p$76378][pertS[LI[1], -j]] + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$76379]]*PD[-p$76378][pertS[LI[1], -k]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$76379]]*PD[-p$76378][pertS[LI[1], -k]])/2 + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$76379]]]*PD[-p$76378][pertS[LI[1], -k]] - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-i][perth[LI[1], -k, -p$76379]]*PD[-p$76378][
        PD[-h$76377][pertF[LI[1], -j]]])/2 - 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-k][perth[LI[1], -i, -p$76379]]*PD[-p$76378][
        PD[-h$76377][pertF[LI[1], -j]]])/2 - metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-k][PD[-i][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][PD[-h$76377][pertF[LI[1], -j]]] + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-i][perth[LI[1], -j, -p$76379]]*PD[-p$76378][
        PD[-h$76377][pertF[LI[1], -k]]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-j][perth[LI[1], -i, -p$76379]]*PD[-p$76378][
        PD[-h$76377][pertF[LI[1], -k]]])/2 + metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-j][PD[-i][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][PD[-h$76377][pertF[LI[1], -k]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-i][perth[LI[1], -k, -p$76379]]*PD[-p$76378][
       PD[-h$76377][PD[-j][pertE[LI[1]]]]] - metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-k][perth[LI[1], -i, -p$76379]]*
      PD[-p$76378][PD[-h$76377][PD[-j][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-k][PD[-i][pertF[LI[1], -p$76379]]]*PD[-p$76378][
       PD[-h$76377][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-i][perth[LI[1], -j, -p$76379]]*
      PD[-p$76378][PD[-h$76377][PD[-k][pertE[LI[1]]]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-j][perth[LI[1], -i, -p$76379]]*PD[-p$76378][
       PD[-h$76377][PD[-k][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-j][PD[-i][pertF[LI[1], -p$76379]]]*PD[-p$76378][
       PD[-h$76377][PD[-k][pertE[LI[1]]]]] + metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -k, -p$76379]]*
      PD[-p$76378][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-k][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-k][pertS[LI[1], -p$76379]]*PD[-p$76378][
       PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-h$76377][perth[LI[1], -j, -p$76379]]*
      PD[-p$76378][PD[-k][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-h$76377][PD[-j][pertF[LI[1], -p$76379]]]*
      PD[-p$76378][PD[-k][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76379]]*PD[-p$76378][
       PD[-k][PD[-i][pertE[LI[1]]]]] - (metric\[Delta][p$76378, p$76379]*
       scale[]^2*PD[-p$76378][pertS[LI[1], -k]]*PD[-p$76379][
        perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76378, p$76379]*
       scale[]^2*timevec[h$76377]*PD[-p$76378][PD[-h$76377][
         pertF[LI[1], -k]]]*PD[-p$76379][perth[LI[1], -i, -j]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*PD[-p$76378][
        pertS[LI[1], -j]]*PD[-p$76379][perth[LI[1], -i, -k]])/2 + 
     (metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
       PD[-p$76378][PD[-h$76377][pertF[LI[1], -j]]]*
       PD[-p$76379][perth[LI[1], -i, -k]])/2 - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*PD[-p$76379][pertS[LI[1], -j]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*PD[-p$76378][pertB[LI[1]]]*PD[-p$76379][pertS[LI[1], -j]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-p$76378][pertphi[LI[1]]]*PD[-p$76379][pertS[LI[1], -j]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*PD[-p$76379][pertS[LI[1], -k]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*PD[-p$76378][pertB[LI[1]]]*PD[-p$76379][pertS[LI[1], -k]] + 
     metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-p$76378][pertphi[LI[1]]]*PD[-p$76379][pertS[LI[1], -k]] - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -j]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][pertB[LI[1]]]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -j]]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      timevec[h$76377]*PD[-p$76378][pertphi[LI[1]]]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -j]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -k]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][pertB[LI[1]]]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -k]]] + 
     metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*scale[]^2*
      timevec[h$76377]*PD[-p$76378][pertphi[LI[1]]]*
      PD[-p$76379][PD[-h$76377][pertF[LI[1], -k]]] - 
     2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-p$76379][PD[-j][PD[-h$76377][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][pertB[LI[1]]]*
      PD[-p$76379][PD[-j][PD[-h$76377][pertE[LI[1]]]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][perth[LI[1], -i, -k]]*PD[-p$76379][
       PD[-j][PD[-h$76377][pertE[LI[1]]]]] - 2*metric\[Delta][-i, -k]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][pertphi[LI[1]]]*PD[-p$76379][
       PD[-j][PD[-h$76377][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-p$76379][PD[-j][PD[-h$76377][pertE[LI[1]]]]] + 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-p$76378][pertS[LI[1], -k]]*PD[-p$76379][
       PD[-j][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][PD[-h$76377][pertF[LI[1], -k]]]*
      PD[-p$76379][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      pertS[LI[1], -p$76378]*scale[]^2*timevec[h$76377]*
      PD[-p$76379][PD[-k][PD[-h$76377][pertE[LI[1]]]]] - 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][pertB[LI[1]]]*
      PD[-p$76379][PD[-k][PD[-h$76377][pertE[LI[1]]]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][perth[LI[1], -i, -j]]*PD[-p$76379][
       PD[-k][PD[-h$76377][pertE[LI[1]]]]] + 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][pertphi[LI[1]]]*PD[-p$76379][
       PD[-k][PD[-h$76377][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$76378, p$76379]*scale[]^2*timevec[h$76377]*
      PD[-p$76378][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-p$76379][PD[-k][PD[-h$76377][pertE[LI[1]]]]] - 
     metric\[Delta][p$76378, p$76379]*scale[]^2*
      PD[-p$76378][pertS[LI[1], -j]]*PD[-p$76379][
       PD[-k][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76378, p$76379]*
      scale[]^2*timevec[h$76377]*PD[-p$76378][PD[-h$76377][pertF[LI[1], -j]]]*
      PD[-p$76379][PD[-k][PD[-i][pertE[LI[1]]]]])], 
 HoldPattern[pertRiemannCDP[LI[2], -(c_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(b_Symbol)?TangentM1`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{p$55351, p$55352, h$55353, h$55354}, 
   -(timevec[-a]*timevec[-b]*(-2*hubbleC[]^2*pertS[LI[1], -i]*
       pertS[LI[1], -j]*scale[]^2 + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*
       pertS[LI[1], -p$55352]*scale[]^2 - perth[LI[2], -i, -j]*primehubbleC[]*
       scale[]^2 + 2*metric\[Delta][-i, -j]*pertphi[LI[2]]*primehubbleC[]*
       scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$55353]*
        PD[-h$55353][perth[LI[2], -i, -j]])/2 + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertphi[LI[2]]] + 2*hubbleC[]*perth[LI[1], -i, -j]*
       scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
       timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
       timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertpsi[LI[2]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*scale[]^2*
       timevec[h$55353]*PD[-h$55353][pertS[LI[1], -p$55352]] - 
      (hubbleC[]*scale[]^2*timevec[h$55353]*PD[-h$55353][
         PD[-i][pertF[LI[2], -j]]])/2 - (scale[]^2*timevec[h$55353]*
        PD[-h$55353][PD[-i][pertS[LI[2], -j]]])/2 - 
      (hubbleC[]*scale[]^2*timevec[h$55353]*PD[-h$55353][
         PD[-j][pertF[LI[2], -i]]])/2 - (scale[]^2*timevec[h$55353]*
        PD[-h$55353][PD[-j][pertS[LI[2], -i]]])/2 + 
      scale[]^2*timevec[h$55353]*PD[-h$55353][PD[-j][PD[-i][pertB[LI[2]]]]] - 
      hubbleC[]*scale[]^2*timevec[h$55353]*PD[-h$55353][
        PD[-j][PD[-i][pertE[LI[2]]]]] - 2*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][pertphi[LI[1]]]*
       PD[-h$55354][perth[LI[1], -i, -j]] + scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-h$55354][perth[LI[1], -i, -j]] + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55353][PD[-j][pertF[LI[1], -p$55352]]]*
        PD[-h$55354][perth[LI[1], -i, -p$55351]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55353][perth[LI[1], -i, -p$55352]]*
        PD[-h$55354][perth[LI[1], -j, -p$55351]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55353][PD[-i][pertF[LI[1], -p$55352]]]*
        PD[-h$55354][perth[LI[1], -j, -p$55351]])/2 + 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertphi[LI[1]]]*PD[-h$55354][pertphi[LI[1]]] - 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertphi[LI[1]]]*PD[-h$55354][pertpsi[LI[1]]] - 
      (scale[]^2*timevec[h$55353]*timevec[h$55354]*PD[-h$55354][
         PD[-h$55353][perth[LI[2], -i, -j]]])/2 + metric\[Delta][-i, -j]*
       scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55354][PD[-h$55353][pertphi[LI[2]]]] - 
      (scale[]^2*timevec[h$55353]*timevec[h$55354]*PD[-h$55354][
         PD[-h$55353][PD[-i][pertF[LI[2], -j]]]])/2 - 
      (scale[]^2*timevec[h$55353]*timevec[h$55354]*PD[-h$55354][
         PD[-h$55353][PD[-j][pertF[LI[2], -i]]]])/2 - 
      scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55354][PD[-h$55353][PD[-j][PD[-i][pertE[LI[2]]]]]] - 
      2*scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertphi[LI[1]]]*PD[-h$55354][PD[-i][pertF[LI[1], -j]]] + 
      scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertpsi[LI[1]]]*PD[-h$55354][PD[-i][pertF[LI[1], -j]]] - 
      2*scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertphi[LI[1]]]*PD[-h$55354][PD[-j][pertF[LI[1], -i]]] + 
      scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertpsi[LI[1]]]*PD[-h$55354][PD[-j][pertF[LI[1], -i]]] + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55353][PD[-i][pertF[LI[1], -p$55352]]]*
        PD[-h$55354][PD[-j][pertF[LI[1], -p$55351]]])/2 - 
      4*scale[]^2*timevec[h$55353]*timevec[h$55354]*
       PD[-h$55353][pertphi[LI[1]]]*PD[-h$55354][
        PD[-j][PD[-i][pertE[LI[1]]]]] + 2*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-h$55354][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-i][pertF[LI[1], -j]] - primehubbleC[]*scale[]^2*
       PD[-i][pertF[LI[2], -j]] + metric\[Delta][p$55351, p$55352]*scale[]^2*
       timevec[h$55353]*PD[-h$55353][pertS[LI[1], -p$55352]]*
       PD[-i][perth[LI[1], -j, -p$55351]] + 
      hubbleC[]*metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*
       scale[]^2*PD[-i][perth[LI[1], -j, -p$55352]] - 
      2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$55353]*PD[-h$55353][pertS[LI[1], -j]]*
       PD[-i][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55353]*
       PD[-h$55353][PD[-j][pertB[LI[1]]]]*PD[-i][pertphi[LI[1]]] + 
      2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-i][pertS[LI[1], -j]] - (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*PD[-h$55353][perth[LI[1], -j, -p$55352]]*
        PD[-i][pertS[LI[1], -p$55351]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-h$55353][PD[-j][pertF[LI[1], -p$55352]]]*
        PD[-i][pertS[LI[1], -p$55351]])/2 - 
      (hubbleC[]*scale[]^2*PD[-i][pertS[LI[2], -j]])/2 + 
      2*hubbleC[]^2*pertS[LI[1], -i]*scale[]^2*PD[-j][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-j][pertF[LI[1], -i]] - primehubbleC[]*scale[]^2*
       PD[-j][pertF[LI[2], -i]] + metric\[Delta][p$55351, p$55352]*scale[]^2*
       timevec[h$55353]*PD[-h$55353][pertS[LI[1], -p$55352]]*
       PD[-j][perth[LI[1], -i, -p$55351]] + 
      hubbleC[]*metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*
       scale[]^2*PD[-j][perth[LI[1], -i, -p$55352]] - 
      2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$55353]*PD[-h$55353][pertS[LI[1], -i]]*
       PD[-j][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55353]*
       PD[-h$55353][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
      2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
      2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
      2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-j][pertS[LI[1], -i]] - (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*PD[-h$55353][perth[LI[1], -i, -p$55352]]*
        PD[-j][pertS[LI[1], -p$55351]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-h$55353][PD[-i][pertF[LI[1], -p$55352]]]*
        PD[-j][pertS[LI[1], -p$55351]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*
        PD[-i][pertS[LI[1], -p$55352]]*PD[-j][pertS[LI[1], -p$55351]])/2 - 
      (hubbleC[]*scale[]^2*PD[-j][pertS[LI[2], -i]])/2 - 
      2*scale[]^2*timevec[h$55353]*PD[-h$55353][pertpsi[LI[1]]]*
       PD[-j][PD[-i][pertB[LI[1]]]] + hubbleC[]*scale[]^2*
       PD[-j][PD[-i][pertB[LI[2]]]] + 4*hubbleC[]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertpsi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
      2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[2]]]] + 
      2*metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertS[LI[1], -p$55352]]*
       PD[-j][PD[-i][pertF[LI[1], -p$55351]]] + 
      2*hubbleC[]*metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*
       scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55352]]] + 
      scale[]^2*PD[-j][PD[-i][pertpsi[LI[2]]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-h$55353][pertS[LI[1], -p$55352]]*
       PD[-p$55351][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55351, 
        p$55352]*scale[]^2*PD[-i][perth[LI[1], -j, -p$55352]]*
       PD[-p$55351][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55351, 
        p$55352]*scale[]^2*PD[-j][perth[LI[1], -i, -p$55352]]*
       PD[-p$55351][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$55351, 
        p$55352]*scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55352]]]*
       PD[-p$55351][pertB[LI[1]]] - metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-h$55353][pertS[LI[1], -p$55352]]*
       PD[-p$55351][perth[LI[1], -i, -j]] + 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertS[LI[1], -p$55352]]*PD[-p$55351][pertphi[LI[1]]] - 
      metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$55352]]*PD[-p$55351][pertpsi[LI[1]]] - 
      metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$55352]]*PD[-p$55351][pertpsi[LI[1]]] - 
      2*metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$55352]]]*PD[-p$55351][pertpsi[LI[1]]] + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-h$55353][perth[LI[1], -j, -p$55352]]*PD[-p$55351][
         pertS[LI[1], -i]])/2 + (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*PD[-h$55353][PD[-j][pertF[LI[1], -p$55352]]]*
        PD[-p$55351][pertS[LI[1], -i]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*
        PD[-j][pertS[LI[1], -p$55352]]*PD[-p$55351][pertS[LI[1], -i]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-h$55353][perth[LI[1], -i, -p$55352]]*PD[-p$55351][
         pertS[LI[1], -j]])/2 + (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*PD[-h$55353][PD[-i][pertF[LI[1], -p$55352]]]*
        PD[-p$55351][pertS[LI[1], -j]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*
        PD[-i][pertS[LI[1], -p$55352]]*PD[-p$55351][pertS[LI[1], -j]])/2 - 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-i][perth[LI[1], -j, -p$55352]]*PD[-p$55351][
        PD[-h$55353][pertB[LI[1]]]] - metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-j][perth[LI[1], -i, -p$55352]]*
       PD[-p$55351][PD[-h$55353][pertB[LI[1]]]] - 
      2*metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-j][PD[-i][pertF[LI[1], -p$55352]]]*PD[-p$55351][
        PD[-h$55353][pertB[LI[1]]]] + (metric\[Delta][p$55351, p$55352]*
        scale[]^2*timevec[h$55353]*timevec[h$55354]*
        PD[-h$55354][perth[LI[1], -j, -p$55352]]*PD[-p$55351][
         PD[-h$55353][pertF[LI[1], -i]]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55354][PD[-j][pertF[LI[1], -p$55352]]]*
        PD[-p$55351][PD[-h$55353][pertF[LI[1], -i]]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-j][pertS[LI[1], -p$55352]]*PD[-p$55351][PD[-h$55353][
          pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*timevec[h$55354]*PD[-h$55354][perth[LI[1], -i, 
          -p$55352]]*PD[-p$55351][PD[-h$55353][pertF[LI[1], -j]]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        timevec[h$55354]*PD[-h$55354][PD[-i][pertF[LI[1], -p$55352]]]*
        PD[-p$55351][PD[-h$55353][pertF[LI[1], -j]]])/2 - 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-i][pertS[LI[1], -p$55352]]*PD[-p$55351][PD[-h$55353][
          pertF[LI[1], -j]]])/2 - metric\[Delta][p$55351, p$55352]*scale[]^2*
       timevec[h$55353]*PD[-j][pertS[LI[1], -p$55352]]*
       PD[-p$55351][PD[-h$55353][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-i][pertS[LI[1], -p$55352]]*PD[-p$55351][PD[-h$55353][
         PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$55351, p$55352]*scale[]^2*
       timevec[h$55353]*timevec[h$55354]*PD[-h$55353][perth[LI[1], -j, 
         -p$55352]]*PD[-p$55351][PD[-h$55354][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][PD[-j][pertF[LI[1], -p$55352]]]*
       PD[-p$55351][PD[-h$55354][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][perth[LI[1], -i, -p$55352]]*
       PD[-p$55351][PD[-h$55354][PD[-j][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-h$55353][PD[-i][pertF[LI[1], -p$55352]]]*
       PD[-p$55351][PD[-h$55354][PD[-j][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-h$55353][pertS[LI[1], -p$55352]]*PD[-p$55351][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*scale[]^2*
       PD[-p$55352][pertB[LI[1]]] + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*scale[]^2*PD[-p$55351][pertB[LI[1]]]*
       PD[-p$55352][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55351, 
        p$55352]*pertS[LI[1], -p$55351]*scale[]^2*
       PD[-p$55352][perth[LI[1], -i, -j]] + 
      hubbleC[]*metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-p$55351][pertB[LI[1]]]*PD[-p$55352][perth[LI[1], -i, -j]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*PD[-p$55351][pertpsi[LI[1]]]*
       PD[-p$55352][perth[LI[1], -i, -j]] + metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-p$55351][PD[-h$55353][pertB[LI[1]]]]*
       PD[-p$55352][perth[LI[1], -i, -j]] + 2*hubbleC[]*
       metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       pertS[LI[1], -p$55351]*scale[]^2*PD[-p$55352][pertphi[LI[1]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       scale[]^2*PD[-p$55351][pertB[LI[1]]]*PD[-p$55352][pertphi[LI[1]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       pertS[LI[1], -p$55351]*scale[]^2*PD[-p$55352][pertpsi[LI[1]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       scale[]^2*PD[-p$55351][pertB[LI[1]]]*PD[-p$55352][pertpsi[LI[1]]] - 
      2*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-p$55351][pertphi[LI[1]]]*PD[-p$55352][pertpsi[LI[1]]] + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*PD[-p$55351][
         pertS[LI[1], -i]]*PD[-p$55352][pertS[LI[1], -j]])/2 - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       pertS[LI[1], -p$55351]*scale[]^2*timevec[h$55353]*
       PD[-p$55352][PD[-h$55353][pertB[LI[1]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-p$55351][pertB[LI[1]]]*
       PD[-p$55352][PD[-h$55353][pertB[LI[1]]]] - 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-p$55351][pertphi[LI[1]]]*PD[-p$55352][PD[-h$55353][
         pertB[LI[1]]]] + (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*PD[-p$55351][pertS[LI[1], -j]]*
        PD[-p$55352][PD[-h$55353][pertF[LI[1], -i]]])/2 + 
      (metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
        PD[-p$55351][pertS[LI[1], -i]]*PD[-p$55352][PD[-h$55353][
          pertF[LI[1], -j]]])/2 + (metric\[Delta][p$55351, p$55352]*scale[]^2*
        timevec[h$55353]*timevec[h$55354]*PD[-p$55351][
         PD[-h$55354][pertF[LI[1], -i]]]*PD[-p$55352][
         PD[-h$55353][pertF[LI[1], -j]]])/2 + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-p$55351][pertS[LI[1], -j]]*PD[-p$55352][
        PD[-i][PD[-h$55353][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-p$55351][PD[-h$55354][pertF[LI[1], -j]]]*
       PD[-p$55352][PD[-i][PD[-h$55353][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       PD[-p$55351][pertS[LI[1], -i]]*PD[-p$55352][
        PD[-j][PD[-h$55353][pertE[LI[1]]]]] + 
      metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-p$55351][PD[-h$55354][pertF[LI[1], -i]]]*
       PD[-p$55352][PD[-j][PD[-h$55353][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$55351, p$55352]*scale[]^2*timevec[h$55353]*
       timevec[h$55354]*PD[-p$55351][PD[-h$55354][PD[-i][pertE[LI[1]]]]]*
       PD[-p$55352][PD[-j][PD[-h$55353][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][p$55351, p$55352]*pertS[LI[1], -p$55351]*
       scale[]^2*PD[-p$55352][PD[-j][PD[-i][pertE[LI[1]]]]] - 
      2*hubbleC[]*metric\[Delta][p$55351, p$55352]*scale[]^2*
       PD[-p$55351][pertB[LI[1]]]*PD[-p$55352][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55351, p$55352]*
       scale[]^2*PD[-p$55351][pertpsi[LI[1]]]*PD[-p$55352][
        PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55351, p$55352]*
       scale[]^2*timevec[h$55353]*PD[-p$55351][PD[-h$55353][pertB[LI[1]]]]*
       PD[-p$55352][PD[-j][PD[-i][pertE[LI[1]]]]]))], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{p$55358, p$55359, h$55360, h$55361}, 
   timevec[-a]*timevec[-b]*(-2*hubbleC[]^2*pertS[LI[1], -i]*pertS[LI[1], -j]*
      scale[]^2 + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*
      pertS[LI[1], -p$55359]*scale[]^2 - perth[LI[2], -i, -j]*primehubbleC[]*
      scale[]^2 + 2*metric\[Delta][-i, -j]*pertphi[LI[2]]*primehubbleC[]*
      scale[]^2 - (hubbleC[]*scale[]^2*timevec[h$55360]*
       PD[-h$55360][perth[LI[2], -i, -j]])/2 + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertphi[LI[2]]] + 2*hubbleC[]*perth[LI[1], -i, -j]*
      scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertpsi[LI[2]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertS[LI[1], -p$55359]] - 
     (hubbleC[]*scale[]^2*timevec[h$55360]*PD[-h$55360][
        PD[-i][pertF[LI[2], -j]]])/2 - (scale[]^2*timevec[h$55360]*
       PD[-h$55360][PD[-i][pertS[LI[2], -j]]])/2 - 
     (hubbleC[]*scale[]^2*timevec[h$55360]*PD[-h$55360][
        PD[-j][pertF[LI[2], -i]]])/2 - (scale[]^2*timevec[h$55360]*
       PD[-h$55360][PD[-j][pertS[LI[2], -i]]])/2 + scale[]^2*timevec[h$55360]*
      PD[-h$55360][PD[-j][PD[-i][pertB[LI[2]]]]] - 
     hubbleC[]*scale[]^2*timevec[h$55360]*PD[-h$55360][
       PD[-j][PD[-i][pertE[LI[2]]]]] - 2*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][pertphi[LI[1]]]*
      PD[-h$55361][perth[LI[1], -i, -j]] + scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-h$55361][perth[LI[1], -i, -j]] + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55360][PD[-j][pertF[LI[1], -p$55359]]]*
       PD[-h$55361][perth[LI[1], -i, -p$55358]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55360][perth[LI[1], -i, -p$55359]]*
       PD[-h$55361][perth[LI[1], -j, -p$55358]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55360][PD[-i][pertF[LI[1], -p$55359]]]*
       PD[-h$55361][perth[LI[1], -j, -p$55358]])/2 + 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][pertphi[LI[1]]]*PD[-h$55361][pertphi[LI[1]]] - 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][pertphi[LI[1]]]*PD[-h$55361][pertpsi[LI[1]]] - 
     (scale[]^2*timevec[h$55360]*timevec[h$55361]*
       PD[-h$55361][PD[-h$55360][perth[LI[2], -i, -j]]])/2 + 
     metric\[Delta][-i, -j]*scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55361][PD[-h$55360][pertphi[LI[2]]]] - 
     (scale[]^2*timevec[h$55360]*timevec[h$55361]*
       PD[-h$55361][PD[-h$55360][PD[-i][pertF[LI[2], -j]]]])/2 - 
     (scale[]^2*timevec[h$55360]*timevec[h$55361]*
       PD[-h$55361][PD[-h$55360][PD[-j][pertF[LI[2], -i]]]])/2 - 
     scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55361][PD[-h$55360][PD[-j][PD[-i][pertE[LI[2]]]]]] - 
     2*scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][pertphi[LI[1]]]*PD[-h$55361][PD[-i][pertF[LI[1], -j]]] + 
     scale[]^2*timevec[h$55360]*timevec[h$55361]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-h$55361][PD[-i][pertF[LI[1], -j]]] - 2*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][pertphi[LI[1]]]*
      PD[-h$55361][PD[-j][pertF[LI[1], -i]]] + scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-h$55361][PD[-j][pertF[LI[1], -i]]] + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55360][PD[-i][pertF[LI[1], -p$55359]]]*
       PD[-h$55361][PD[-j][pertF[LI[1], -p$55358]]])/2 - 
     4*scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][pertphi[LI[1]]]*PD[-h$55361][
       PD[-j][PD[-i][pertE[LI[1]]]]] + 2*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-h$55361][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-i][pertF[LI[1], -j]] - primehubbleC[]*scale[]^2*
      PD[-i][pertF[LI[2], -j]] + metric\[Delta][p$55358, p$55359]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertS[LI[1], -p$55359]]*
      PD[-i][perth[LI[1], -j, -p$55358]] + 
     hubbleC[]*metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*
      scale[]^2*PD[-i][perth[LI[1], -j, -p$55359]] - 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$55360]*PD[-h$55360][pertS[LI[1], -j]]*
      PD[-i][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55360]*
      PD[-h$55360][PD[-j][pertB[LI[1]]]]*PD[-i][pertphi[LI[1]]] + 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-i][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-i][pertS[LI[1], -j]] - (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*PD[-h$55360][perth[LI[1], -j, -p$55359]]*
       PD[-i][pertS[LI[1], -p$55358]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-h$55360][PD[-j][pertF[LI[1], -p$55359]]]*
       PD[-i][pertS[LI[1], -p$55358]])/2 - 
     (hubbleC[]*scale[]^2*PD[-i][pertS[LI[2], -j]])/2 + 
     2*hubbleC[]^2*pertS[LI[1], -i]*scale[]^2*PD[-j][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] - 
     2*hubbleC[]*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-j][pertF[LI[1], -i]] - primehubbleC[]*scale[]^2*
      PD[-j][pertF[LI[2], -i]] + metric\[Delta][p$55358, p$55359]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertS[LI[1], -p$55359]]*
      PD[-j][perth[LI[1], -i, -p$55358]] + 
     hubbleC[]*metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*
      scale[]^2*PD[-j][perth[LI[1], -i, -p$55359]] - 
     2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$55360]*PD[-h$55360][pertS[LI[1], -i]]*
      PD[-j][pertphi[LI[1]]] + 2*scale[]^2*timevec[h$55360]*
      PD[-h$55360][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
     2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
     2*hubbleC[]*pertS[LI[1], -i]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     2*hubbleC[]*scale[]^2*PD[-i][pertB[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
     2*scale[]^2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-j][pertS[LI[1], -i]] - (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*PD[-h$55360][perth[LI[1], -i, -p$55359]]*
       PD[-j][pertS[LI[1], -p$55358]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-h$55360][PD[-i][pertF[LI[1], -p$55359]]]*
       PD[-j][pertS[LI[1], -p$55358]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*
       PD[-i][pertS[LI[1], -p$55359]]*PD[-j][pertS[LI[1], -p$55358]])/2 - 
     (hubbleC[]*scale[]^2*PD[-j][pertS[LI[2], -i]])/2 - 
     2*scale[]^2*timevec[h$55360]*PD[-h$55360][pertpsi[LI[1]]]*
      PD[-j][PD[-i][pertB[LI[1]]]] + hubbleC[]*scale[]^2*
      PD[-j][PD[-i][pertB[LI[2]]]] + 4*hubbleC[]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertpsi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
     2*primehubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[2]]]] + 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertS[LI[1], -p$55359]]*
      PD[-j][PD[-i][pertF[LI[1], -p$55358]]] + 
     2*hubbleC[]*metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*
      scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55359]]] + 
     scale[]^2*PD[-j][PD[-i][pertpsi[LI[2]]]] - 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*PD[-h$55360][pertS[LI[1], -p$55359]]*
      PD[-p$55358][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55358, p$55359]*
      scale[]^2*PD[-i][perth[LI[1], -j, -p$55359]]*
      PD[-p$55358][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55358, p$55359]*
      scale[]^2*PD[-j][perth[LI[1], -i, -p$55359]]*
      PD[-p$55358][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$55358, 
       p$55359]*scale[]^2*PD[-j][PD[-i][pertF[LI[1], -p$55359]]]*
      PD[-p$55358][pertB[LI[1]]] - metric\[Delta][p$55358, p$55359]*scale[]^2*
      timevec[h$55360]*PD[-h$55360][pertS[LI[1], -p$55359]]*
      PD[-p$55358][perth[LI[1], -i, -j]] + 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertS[LI[1], -p$55359]]*PD[-p$55358][pertphi[LI[1]]] - 
     metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-i][perth[LI[1], -j, -p$55359]]*PD[-p$55358][pertpsi[LI[1]]] - 
     metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-j][perth[LI[1], -i, -p$55359]]*PD[-p$55358][pertpsi[LI[1]]] - 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$55359]]]*PD[-p$55358][pertpsi[LI[1]]] + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-h$55360][perth[LI[1], -j, -p$55359]]*PD[-p$55358][
        pertS[LI[1], -i]])/2 + (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*PD[-h$55360][PD[-j][pertF[LI[1], -p$55359]]]*
       PD[-p$55358][pertS[LI[1], -i]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*
       PD[-j][pertS[LI[1], -p$55359]]*PD[-p$55358][pertS[LI[1], -i]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-h$55360][perth[LI[1], -i, -p$55359]]*PD[-p$55358][
        pertS[LI[1], -j]])/2 + (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*PD[-h$55360][PD[-i][pertF[LI[1], -p$55359]]]*
       PD[-p$55358][pertS[LI[1], -j]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*
       PD[-i][pertS[LI[1], -p$55359]]*PD[-p$55358][pertS[LI[1], -j]])/2 - 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-i][perth[LI[1], -j, -p$55359]]*PD[-p$55358][
       PD[-h$55360][pertB[LI[1]]]] - metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*PD[-j][perth[LI[1], -i, -p$55359]]*
      PD[-p$55358][PD[-h$55360][pertB[LI[1]]]] - 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-j][PD[-i][pertF[LI[1], -p$55359]]]*PD[-p$55358][
       PD[-h$55360][pertB[LI[1]]]] + (metric\[Delta][p$55358, p$55359]*
       scale[]^2*timevec[h$55360]*timevec[h$55361]*
       PD[-h$55361][perth[LI[1], -j, -p$55359]]*PD[-p$55358][
        PD[-h$55360][pertF[LI[1], -i]]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55361][PD[-j][pertF[LI[1], -p$55359]]]*
       PD[-p$55358][PD[-h$55360][pertF[LI[1], -i]]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-j][pertS[LI[1], -p$55359]]*PD[-p$55358][PD[-h$55360][
         pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*timevec[h$55361]*PD[-h$55361][perth[LI[1], -i, 
         -p$55359]]*PD[-p$55358][PD[-h$55360][pertF[LI[1], -j]]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-h$55361][PD[-i][pertF[LI[1], -p$55359]]]*
       PD[-p$55358][PD[-h$55360][pertF[LI[1], -j]]])/2 - 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-i][pertS[LI[1], -p$55359]]*PD[-p$55358][PD[-h$55360][
         pertF[LI[1], -j]]])/2 - metric\[Delta][p$55358, p$55359]*scale[]^2*
      timevec[h$55360]*PD[-j][pertS[LI[1], -p$55359]]*
      PD[-p$55358][PD[-h$55360][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-i][pertS[LI[1], -p$55359]]*PD[-p$55358][
       PD[-h$55360][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][perth[LI[1], -j, -p$55359]]*PD[-p$55358][
       PD[-h$55361][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-h$55360][PD[-j][pertF[LI[1], -p$55359]]]*
      PD[-p$55358][PD[-h$55361][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][perth[LI[1], -i, -p$55359]]*
      PD[-p$55358][PD[-h$55361][PD[-j][pertE[LI[1]]]]] + 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-h$55360][PD[-i][pertF[LI[1], -p$55359]]]*
      PD[-p$55358][PD[-h$55361][PD[-j][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-h$55360][pertS[LI[1], -p$55359]]*PD[-p$55358][
       PD[-j][PD[-i][pertE[LI[1]]]]] - 4*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*scale[]^2*
      PD[-p$55359][pertB[LI[1]]] + 2*hubbleC[]^2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*PD[-p$55358][pertB[LI[1]]]*
      PD[-p$55359][pertB[LI[1]]] - hubbleC[]*metric\[Delta][p$55358, p$55359]*
      pertS[LI[1], -p$55358]*scale[]^2*PD[-p$55359][perth[LI[1], -i, -j]] + 
     hubbleC[]*metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-p$55358][pertB[LI[1]]]*PD[-p$55359][perth[LI[1], -i, -j]] + 
     metric\[Delta][p$55358, p$55359]*scale[]^2*PD[-p$55358][pertpsi[LI[1]]]*
      PD[-p$55359][perth[LI[1], -i, -j]] + metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*PD[-p$55358][PD[-h$55360][pertB[LI[1]]]]*
      PD[-p$55359][perth[LI[1], -i, -j]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*scale[]^2*
      PD[-p$55359][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*PD[-p$55358][pertB[LI[1]]]*
      PD[-p$55359][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*scale[]^2*
      PD[-p$55359][pertpsi[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*PD[-p$55358][pertB[LI[1]]]*
      PD[-p$55359][pertpsi[LI[1]]] - 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*PD[-p$55358][pertphi[LI[1]]]*
      PD[-p$55359][pertpsi[LI[1]]] + (metric\[Delta][p$55358, p$55359]*
       scale[]^2*PD[-p$55358][pertS[LI[1], -i]]*PD[-p$55359][
        pertS[LI[1], -j]])/2 - 2*hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*scale[]^2*
      timevec[h$55360]*PD[-p$55359][PD[-h$55360][pertB[LI[1]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*PD[-p$55358][pertB[LI[1]]]*
      PD[-p$55359][PD[-h$55360][pertB[LI[1]]]] - 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-p$55358][pertphi[LI[1]]]*PD[-p$55359][PD[-h$55360][pertB[LI[1]]]] + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       PD[-p$55358][pertS[LI[1], -j]]*PD[-p$55359][PD[-h$55360][
         pertF[LI[1], -i]]])/2 + (metric\[Delta][p$55358, p$55359]*scale[]^2*
       timevec[h$55360]*PD[-p$55358][pertS[LI[1], -i]]*
       PD[-p$55359][PD[-h$55360][pertF[LI[1], -j]]])/2 + 
     (metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
       timevec[h$55361]*PD[-p$55358][PD[-h$55361][pertF[LI[1], -i]]]*
       PD[-p$55359][PD[-h$55360][pertF[LI[1], -j]]])/2 + 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-p$55358][pertS[LI[1], -j]]*PD[-p$55359][
       PD[-i][PD[-h$55360][pertE[LI[1]]]]] + metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-p$55358][PD[-h$55361][pertF[LI[1], -j]]]*
      PD[-p$55359][PD[-i][PD[-h$55360][pertE[LI[1]]]]] + 
     metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      PD[-p$55358][pertS[LI[1], -i]]*PD[-p$55359][
       PD[-j][PD[-h$55360][pertE[LI[1]]]]] + metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*timevec[h$55361]*
      PD[-p$55358][PD[-h$55361][pertF[LI[1], -i]]]*
      PD[-p$55359][PD[-j][PD[-h$55360][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*timevec[h$55360]*
      timevec[h$55361]*PD[-p$55358][PD[-h$55361][PD[-i][pertE[LI[1]]]]]*
      PD[-p$55359][PD[-j][PD[-h$55360][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][p$55358, p$55359]*pertS[LI[1], -p$55358]*
      scale[]^2*PD[-p$55359][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     2*hubbleC[]*metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-p$55358][pertB[LI[1]]]*PD[-p$55359][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$55358, p$55359]*scale[]^2*
      PD[-p$55358][pertpsi[LI[1]]]*PD[-p$55359][
       PD[-j][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$55358, p$55359]*
      scale[]^2*timevec[h$55360]*PD[-p$55358][PD[-h$55360][pertB[LI[1]]]]*
      PD[-p$55359][PD[-j][PD[-i][pertE[LI[1]]]]])], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q, -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q]] :> Module[{h$76383, p$76384, p$76385}, 
   -(timevec[-a]*(-2*hubbleC[]^2*perth[LI[1], -i, -k]*pertS[LI[1], -j]*
       scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*
       pertS[LI[1], -j]*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*
       pertpsi[LI[1]]*pertS[LI[1], -j]*scale[]^2 + 
      2*hubbleC[]^2*perth[LI[1], -i, -j]*pertS[LI[1], -k]*scale[]^2 - 
      4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertS[LI[1], -k]*
       scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
       pertS[LI[1], -k]*scale[]^2 - hubbleC[]^2*metric\[Delta][-i, -k]*
       pertS[LI[2], -j]*scale[]^2 + hubbleC[]^2*metric\[Delta][-i, -j]*
       pertS[LI[2], -k]*scale[]^2 + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][perth[LI[1], -i, -j]] - 
      hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -i, -k]] - hubbleC[]*metric\[Delta][-i, -k]*
       metric\[Delta][p$76384, p$76385]*pertS[LI[1], -p$76384]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -k, -p$76385]] + 
      4*hubbleC[]*metric\[Delta][-i, -k]*pertS[LI[1], -j]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertS[LI[1], -k]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-i][pertF[LI[1], -j]]] - hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-i][pertF[LI[1], -k]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -i]]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -p$76385]]] - 
      (scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-j][perth[LI[2], -i, -k]]])/
       2 + metric\[Delta][-i, -k]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertphi[LI[2]]]] + 2*hubbleC[]*pertS[LI[1], -k]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-j][PD[-i][pertF[LI[2], -k]]]])/2 - 
      hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertF[LI[1], -i]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertF[LI[1], -p$76385]]] + 
      (scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-k][perth[LI[2], -i, -j]]])/
       2 - metric\[Delta][-i, -j]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertphi[LI[2]]]] - 2*hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-k][PD[-i][pertE[LI[1]]]]] + (scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-k][PD[-i][pertF[LI[2], -j]]]])/2 + 
      2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertF[LI[1], -k]] + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][perth[LI[1], -k, -p$76385]]*
        PD[-i][perth[LI[1], -j, -p$76384]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-k][pertF[LI[1], -p$76385]]]*
        PD[-i][perth[LI[1], -j, -p$76384]])/2 - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][perth[LI[1], -j, -p$76385]]*
        PD[-i][perth[LI[1], -k, -p$76384]])/2 - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-j][pertF[LI[1], -p$76385]]]*
        PD[-i][perth[LI[1], -k, -p$76384]])/2 + hubbleC[]*pertS[LI[1], -k]*
       scale[]^2*PD[-i][pertS[LI[1], -j]] - hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*PD[-i][pertS[LI[1], -k]] + 2*hubbleC[]^2*
       perth[LI[1], -i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] - 
      4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
       PD[-j][pertB[LI[1]]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
       pertpsi[LI[1]]*scale[]^2*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -i, -k]]*
       PD[-j][pertB[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-i][pertF[LI[1], -k]]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-k][pertF[LI[1], -i]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[2]]] + 
      2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*
       PD[-j][perth[LI[1], -i, -k]] + (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -k, -p$76385]]*
        PD[-j][perth[LI[1], -i, -p$76384]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-k][pertF[LI[1], -p$76385]]]*
        PD[-j][perth[LI[1], -i, -p$76384]])/2 - scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -i, -k]]*PD[-j][pertphi[LI[1]]] + 
      4*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
      scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-i][pertF[LI[1], -k]]]*
       PD[-j][pertphi[LI[1]]] - scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-j][pertphi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -k]]*
       PD[-j][pertphi[LI[1]]] + 2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*
       PD[-j][pertpsi[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*
       pertphi[LI[1]]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
       PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -i, -k]]*PD[-j][pertpsi[LI[1]]] - 
      2*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-i][pertF[LI[1], -k]]]*
       PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertpsi[LI[1]]] + 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-j][pertpsi[LI[1]]] + 2*hubbleC[]*scale[]^2*
       PD[-i][pertF[LI[1], -k]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertpsi[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[2]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][pertS[LI[1], -i]] - 
      2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertS[LI[1], -k]] + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-i][perth[LI[1], -k, -p$76385]]*PD[-j][pertS[LI[1], -p$76384]])/
       2 + hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*PD[-j][pertS[LI[1], -p$76385]] - 
      2*hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] + 
      4*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*
       PD[-j][PD[-i][pertF[LI[1], -k]]] + metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -k, -p$76385]]*
       PD[-j][PD[-i][pertF[LI[1], -p$76384]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-k][pertF[LI[1], -p$76385]]]*
       PD[-j][PD[-i][pertF[LI[1], -p$76384]]] - 
      (scale[]^2*PD[-j][PD[-i][pertS[LI[2], -k]]])/2 - 
      2*hubbleC[]^2*perth[LI[1], -i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] + 
      4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
       PD[-k][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][-i, -j]*
       pertpsi[LI[1]]*scale[]^2*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -i, -j]]*
       PD[-k][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-i][pertF[LI[1], -j]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-j][pertF[LI[1], -i]]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-j][PD[-i][pertE[LI[1]]]]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
       PD[-k][pertB[LI[1]]] - 4*hubbleC[]^2*scale[]^2*
       PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[2]]] - 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][pertF[LI[1], -i]] + 
      2*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
      2*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*
       PD[-k][perth[LI[1], -i, -j]] - (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]]*
        PD[-k][perth[LI[1], -i, -p$76384]])/2 - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][PD[-j][pertF[LI[1], -p$76385]]]*
        PD[-k][perth[LI[1], -i, -p$76384]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-j][pertS[LI[1], -p$76385]]*PD[-k][perth[LI[1], -i, -p$76384]])/
       2 + scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -i, -j]]*
       PD[-k][pertphi[LI[1]]] - 4*metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
      scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-i][pertF[LI[1], -j]]]*
       PD[-k][pertphi[LI[1]]] + scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertphi[LI[1]]] + 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-k][pertphi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -j]]*
       PD[-k][pertphi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
       PD[-k][pertphi[LI[1]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*scale[]^2*
       PD[-k][pertpsi[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
       pertphi[LI[1]]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
       PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -i, -j]]*PD[-k][pertpsi[LI[1]]] + 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][pertphi[LI[1]]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-i][pertF[LI[1], -j]]]*
       PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertpsi[LI[1]]] - 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*
       PD[-i][pertF[LI[1], -j]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertpsi[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertpsi[LI[1]]] + 
      2*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*PD[-k][pertpsi[LI[1]]] - 
      4*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]]*
       PD[-k][pertpsi[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
       PD[-k][pertpsi[LI[2]]] - hubbleC[]*pertS[LI[1], -j]*scale[]^2*
       PD[-k][pertS[LI[1], -i]] + hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + scale[]^2*PD[-j][pertphi[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + scale[]^2*PD[-j][pertpsi[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
       PD[-k][pertS[LI[1], -j]] - (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-i][perth[LI[1], -j, -p$76385]]*PD[-k][pertS[LI[1], -p$76384]])/
       2 - (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-j][perth[LI[1], -i, -p$76385]]*PD[-k][pertS[LI[1], -p$76384]])/
       2 - metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$76385]]]*
       PD[-k][pertS[LI[1], -p$76384]] - hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$76384, p$76385]*pertS[LI[1], -p$76384]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76385]] + 2*hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] - 2*hubbleC[]*scale[]^2*
       PD[-j][pertB[LI[1]]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
      2*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
      4*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][PD[-i][pertE[LI[1]]]] + 
      4*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*
       PD[-k][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]*scale[]^2*
       PD[-j][pertpsi[LI[1]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
      2*scale[]^2*timevec[h$76383]*PD[-h$76383][pertphi[LI[1]]]*
       PD[-k][PD[-i][pertF[LI[1], -j]]] - metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76384]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -p$76385]]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76384]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76385]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76384]]] + 
      (scale[]^2*PD[-k][PD[-i][pertS[LI[2], -j]]])/2 + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]]*
       PD[-p$76384][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -k, -p$76385]]*PD[-p$76384][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-j][pertF[LI[1], -p$76385]]]*PD[-p$76384][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-k][pertF[LI[1], -p$76385]]]*PD[-p$76384][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*PD[-j][pertS[LI[1], -p$76385]]*PD[-p$76384][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*PD[-k][pertS[LI[1], -p$76385]]*PD[-p$76384][pertB[LI[1]]] - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][perth[LI[1], -k, -p$76385]]*PD[-p$76384][
         perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-h$76383][
         PD[-k][pertF[LI[1], -p$76385]]]*PD[-p$76384][perth[LI[1], -i, -j]])/
       2 + (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-k][pertS[LI[1], -p$76385]]*PD[-p$76384][perth[LI[1], -i, -j]])/
       2 + (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-h$76383][perth[LI[1], -j, -p$76385]]*PD[-p$76384][
         perth[LI[1], -i, -k]])/2 + (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-h$76383][
         PD[-j][pertF[LI[1], -p$76385]]]*PD[-p$76384][perth[LI[1], -i, -k]])/
       2 - (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-j][pertS[LI[1], -p$76385]]*PD[-p$76384][perth[LI[1], -i, -k]])/
       2 - metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]]*
       PD[-p$76384][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
       metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -k, -p$76385]]*PD[-p$76384][
        pertphi[LI[1]]] - metric\[Delta][-i, -k]*metric\[Delta][p$76384, 
        p$76385]*scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-j][pertF[LI[1], -p$76385]]]*PD[-p$76384][pertphi[LI[1]]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       timevec[h$76383]*PD[-h$76383][PD[-k][pertF[LI[1], -p$76385]]]*
       PD[-p$76384][pertphi[LI[1]]] + metric\[Delta][-i, -k]*
       metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76385]]*PD[-p$76384][pertphi[LI[1]]] - 
      metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76385]]*PD[-p$76384][pertphi[LI[1]]] - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-i][perth[LI[1], -k, -p$76385]]*PD[-p$76384][pertS[LI[1], -j]])/
       2 - (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-k][perth[LI[1], -i, -p$76385]]*PD[-p$76384][pertS[LI[1], -j]])/
       2 - metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-k][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        pertS[LI[1], -j]] + (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-i][perth[LI[1], -j, -p$76385]]*PD[-p$76384][pertS[LI[1], -k]])/
       2 + (metric\[Delta][p$76384, p$76385]*scale[]^2*
        PD[-j][perth[LI[1], -i, -p$76385]]*PD[-p$76384][pertS[LI[1], -k]])/
       2 + metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        pertS[LI[1], -k]] - (metric\[Delta][p$76384, p$76385]*scale[]^2*
        timevec[h$76383]*PD[-i][perth[LI[1], -k, -p$76385]]*
        PD[-p$76384][PD[-h$76383][pertF[LI[1], -j]]])/2 - 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-k][perth[LI[1], -i, -p$76385]]*PD[-p$76384][
         PD[-h$76383][pertF[LI[1], -j]]])/2 - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-k][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        PD[-h$76383][pertF[LI[1], -j]]] + (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-i][perth[LI[1], -j, -p$76385]]*
        PD[-p$76384][PD[-h$76383][pertF[LI[1], -k]]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-j][perth[LI[1], -i, -p$76385]]*PD[-p$76384][
         PD[-h$76383][pertF[LI[1], -k]]])/2 + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-j][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        PD[-h$76383][pertF[LI[1], -k]]] - metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-i][perth[LI[1], -k, -p$76385]]*
       PD[-p$76384][PD[-h$76383][PD[-j][pertE[LI[1]]]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-k][perth[LI[1], -i, -p$76385]]*PD[-p$76384][
        PD[-h$76383][PD[-j][pertE[LI[1]]]]] - 
      2*metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-k][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        PD[-h$76383][PD[-j][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-i][perth[LI[1], -j, -p$76385]]*PD[-p$76384][
        PD[-h$76383][PD[-k][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-j][perth[LI[1], -i, -p$76385]]*PD[-p$76384][
        PD[-h$76383][PD[-k][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-j][PD[-i][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        PD[-h$76383][PD[-k][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][perth[LI[1], -k, -p$76385]]*PD[-p$76384][
        PD[-j][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][
        PD[-k][pertF[LI[1], -p$76385]]]*PD[-p$76384][
        PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76384, p$76385]*
       scale[]^2*PD[-k][pertS[LI[1], -p$76385]]*PD[-p$76384][
        PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-h$76383][perth[LI[1], -j, -p$76385]]*
       PD[-p$76384][PD[-k][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-h$76383][PD[-j][pertF[LI[1], -p$76385]]]*
       PD[-p$76384][PD[-k][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76385]]*PD[-p$76384][
        PD[-k][PD[-i][pertE[LI[1]]]]] - (metric\[Delta][p$76384, p$76385]*
        scale[]^2*PD[-p$76384][pertS[LI[1], -k]]*PD[-p$76385][
         perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76384, p$76385]*
        scale[]^2*timevec[h$76383]*PD[-p$76384][PD[-h$76383][
          pertF[LI[1], -k]]]*PD[-p$76385][perth[LI[1], -i, -j]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*PD[-p$76384][
         pertS[LI[1], -j]]*PD[-p$76385][perth[LI[1], -i, -k]])/2 + 
      (metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
        PD[-p$76384][PD[-h$76383][pertF[LI[1], -j]]]*
        PD[-p$76385][perth[LI[1], -i, -k]])/2 - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*PD[-p$76385][pertS[LI[1], -j]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*PD[-p$76384][pertB[LI[1]]]*PD[-p$76385][pertS[LI[1], -j]] - 
      metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-p$76384][pertphi[LI[1]]]*PD[-p$76385][pertS[LI[1], -j]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*PD[-p$76385][pertS[LI[1], -k]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*PD[-p$76384][pertB[LI[1]]]*PD[-p$76385][pertS[LI[1], -k]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       PD[-p$76384][pertphi[LI[1]]]*PD[-p$76385][pertS[LI[1], -k]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -j]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-p$76384][pertB[LI[1]]]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -j]]] - 
      metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       timevec[h$76383]*PD[-p$76384][pertphi[LI[1]]]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -j]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -k]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-p$76384][pertB[LI[1]]]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -k]]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*scale[]^2*
       timevec[h$76383]*PD[-p$76384][pertphi[LI[1]]]*
       PD[-p$76385][PD[-h$76383][pertF[LI[1], -k]]] - 
      2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-p$76385][PD[-j][PD[-h$76383][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-p$76384][pertB[LI[1]]]*
       PD[-p$76385][PD[-j][PD[-h$76383][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][perth[LI[1], -i, -k]]*PD[-p$76385][
        PD[-j][PD[-h$76383][pertE[LI[1]]]]] - 2*metric\[Delta][-i, -k]*
       metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][pertphi[LI[1]]]*PD[-p$76385][
        PD[-j][PD[-h$76383][pertE[LI[1]]]]] - 
      2*metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-p$76385][PD[-j][PD[-h$76383][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*PD[-p$76384][
        pertS[LI[1], -k]]*PD[-p$76385][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][PD[-h$76383][pertF[LI[1], -k]]]*
       PD[-p$76385][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       pertS[LI[1], -p$76384]*scale[]^2*timevec[h$76383]*
       PD[-p$76385][PD[-k][PD[-h$76383][pertE[LI[1]]]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76384, p$76385]*
       scale[]^2*timevec[h$76383]*PD[-p$76384][pertB[LI[1]]]*
       PD[-p$76385][PD[-k][PD[-h$76383][pertE[LI[1]]]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][perth[LI[1], -i, -j]]*PD[-p$76385][
        PD[-k][PD[-h$76383][pertE[LI[1]]]]] + 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][pertphi[LI[1]]]*PD[-p$76385][
        PD[-k][PD[-h$76383][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-p$76385][PD[-k][PD[-h$76383][pertE[LI[1]]]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*PD[-p$76384][
        pertS[LI[1], -j]]*PD[-p$76385][PD[-k][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$76384, p$76385]*scale[]^2*timevec[h$76383]*
       PD[-p$76384][PD[-h$76383][pertF[LI[1], -j]]]*
       PD[-p$76385][PD[-k][PD[-i][pertE[LI[1]]]]]))], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(c_Symbol)?TangentM1`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> Module[{}, 0], 
 HoldPattern[pertRiemannCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q, -(k_Symbol)?TangentM3`Q, 
    -(l_Symbol)?TangentM3`Q]] :> Module[{p$120273, p$120272, h$120274, 
    h$120275}, -2*hubbleC[]^2*perth[LI[1], -i, -l]*perth[LI[1], -j, -k]*
     scale[]^2 + 2*hubbleC[]^2*perth[LI[1], -i, -k]*perth[LI[1], -j, -l]*
     scale[]^2 + hubbleC[]^2*metric\[Delta][-j, -l]*perth[LI[2], -i, -k]*
     scale[]^2 - hubbleC[]^2*metric\[Delta][-j, -k]*perth[LI[2], -i, -l]*
     scale[]^2 - hubbleC[]^2*metric\[Delta][-i, -l]*perth[LI[2], -j, -k]*
     scale[]^2 + hubbleC[]^2*metric\[Delta][-i, -k]*perth[LI[2], -j, -l]*
     scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-j, -l]*perth[LI[1], -i, -k]*
     pertphi[LI[1]]*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-j, -k]*
     perth[LI[1], -i, -l]*pertphi[LI[1]]*scale[]^2 + 
    4*hubbleC[]^2*metric\[Delta][-i, -l]*perth[LI[1], -j, -k]*pertphi[LI[1]]*
     scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -k]*perth[LI[1], -j, -l]*
     pertphi[LI[1]]*scale[]^2 - 8*hubbleC[]^2*metric\[Delta][-i, -l]*
     metric\[Delta][-j, -k]*pertphi[LI[1]]^2*scale[]^2 + 
    8*hubbleC[]^2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     pertphi[LI[1]]^2*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -l]*
     metric\[Delta][-j, -k]*pertphi[LI[2]]*scale[]^2 - 
    4*hubbleC[]^2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     pertphi[LI[2]]*scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-j, -l]*
     perth[LI[1], -i, -k]*pertpsi[LI[1]]*scale[]^2 + 
    4*hubbleC[]^2*metric\[Delta][-j, -k]*perth[LI[1], -i, -l]*pertpsi[LI[1]]*
     scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -l]*perth[LI[1], -j, -k]*
     pertpsi[LI[1]]*scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
     perth[LI[1], -j, -l]*pertpsi[LI[1]]*scale[]^2 - 
    16*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     pertphi[LI[1]]*pertpsi[LI[1]]*scale[]^2 + 
    16*hubbleC[]^2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     pertphi[LI[1]]*pertpsi[LI[1]]*scale[]^2 - 
    8*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]^2*scale[]^2 + 8*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*pertpsi[LI[1]]^2*scale[]^2 + 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     pertpsi[LI[2]]*scale[]^2 - 2*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*pertpsi[LI[2]]*scale[]^2 + 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2 - 2*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120272]*pertS[LI[1], -p$120273]*scale[]^2 + 
    hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -k]] - 2*hubbleC[]*metric\[Delta][-j, -l]*
     pertphi[LI[1]]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -k]] - 2*hubbleC[]*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -k]] - hubbleC[]*perth[LI[1], -j, -k]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]] - 
    hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -j, -k]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     pertphi[LI[1]]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -j, -k]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     pertpsi[LI[1]]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -j, -k]] + hubbleC[]*perth[LI[1], -i, -k]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[2], -i, -k]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[2], -i, -l]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[2], -j, -k]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[2], -j, -l]])/2 - 
    2*hubbleC[]*metric\[Delta][-j, -l]*perth[LI[1], -i, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*perth[LI[1], -i, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*perth[LI[1], -j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*perth[LI[1], -j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] - 
    8*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*pertphi[LI[1]]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] + 
    8*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*pertphi[LI[1]]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] - 
    8*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] + 
    8*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*pertpsi[LI[1]]*
     scale[]^2*timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[2]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[2]]] + 
    hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -k]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-i][pertF[LI[1], -k]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-i][pertF[LI[1], -k]]] - 
    hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -l]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-i][pertF[LI[1], -l]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-i][pertF[LI[1], -l]]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-i][pertF[LI[2], -k]]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-i][pertF[LI[2], -l]]])/2 - 
    hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -k]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-j][pertF[LI[1], -k]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-j][pertF[LI[1], -k]]] + 
    hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -l]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-j][pertF[LI[1], -l]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-j][pertF[LI[1], -l]]] - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-j][pertF[LI[2], -k]]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-j][pertF[LI[2], -l]]])/2 + 
    hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][pertF[LI[1], -i]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]] - 
    hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][pertF[LI[1], -j]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-k][pertF[LI[2], -i]]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-k][pertF[LI[2], -j]]])/2 + 
    2*hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][-j, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-i][pertE[LI[2]]]]] - 
    2*hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][-i, -l]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]] - 
    hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-j][pertE[LI[2]]]]] - 
    hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][pertF[LI[1], -i]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]] + 
    hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][pertF[LI[1], -j]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]] - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-l][pertF[LI[2], -i]]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-l][pertF[LI[2], -j]]])/2 - 
    2*hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    4*hubbleC[]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]] - 
    hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-i][pertE[LI[2]]]]] + 
    2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-j][pertE[LI[2]]]]] - 
    metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][perth[LI[1], -i, -k]] + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-h$120275][
       perth[LI[1], -i, -k]])/2 + (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*
      PD[-h$120275][perth[LI[1], -i, -k]])/2 + metric\[Delta][-j, -k]*
     scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][perth[LI[1], -i, -l]] - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-h$120275][
       perth[LI[1], -i, -l]])/2 - (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*
      PD[-h$120275][perth[LI[1], -i, -l]])/2 - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][perth[LI[1], -i, -l]]*PD[-h$120275][
       perth[LI[1], -j, -k]])/2 + metric\[Delta][-i, -l]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][perth[LI[1], -j, -k]] - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*PD[-h$120275][
       perth[LI[1], -j, -k]])/2 - (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*
      PD[-h$120275][perth[LI[1], -j, -k]])/2 + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][perth[LI[1], -i, -k]]*PD[-h$120275][
       perth[LI[1], -j, -l]])/2 - metric\[Delta][-i, -k]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][perth[LI[1], -j, -l]] + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*PD[-h$120275][
       perth[LI[1], -j, -l]])/2 + (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*
      PD[-h$120275][perth[LI[1], -j, -l]])/2 - 2*metric\[Delta][-i, -l]*
     metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][pertphi[LI[1]]] + 
    2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][pertphi[LI[1]]] - metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][PD[-i][pertF[LI[1], -k]]] + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*PD[-h$120275][
       PD[-i][pertF[LI[1], -k]]])/2 + metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][PD[-i][pertF[LI[1], -l]]] - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-h$120275][
       PD[-i][pertF[LI[1], -l]]])/2 - (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*
      PD[-h$120275][PD[-i][pertF[LI[1], -l]]])/2 + 
    metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][PD[-j][pertF[LI[1], -k]]] - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*PD[-h$120275][
       PD[-j][pertF[LI[1], -k]]])/2 - metric\[Delta][-i, -k]*scale[]^2*
     timevec[h$120274]*timevec[h$120275]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-h$120275][PD[-j][pertF[LI[1], -l]]] + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*PD[-h$120275][
       PD[-j][pertF[LI[1], -l]]])/2 + (scale[]^2*timevec[h$120274]*
      timevec[h$120275]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*
      PD[-h$120275][PD[-j][pertF[LI[1], -l]]])/2 - 
    metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][PD[-k][pertF[LI[1], -i]]] + 
    metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][PD[-k][pertF[LI[1], -j]]] - 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*PD[-h$120275][
       PD[-k][pertF[LI[1], -j]]])/2 + scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][perth[LI[1], -j, -l]]*
     PD[-h$120275][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][
      PD[-k][PD[-i][pertE[LI[1]]]]] + scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*
     PD[-h$120275][PD[-k][PD[-i][pertE[LI[1]]]]] + 
    scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*PD[-h$120275][
      PD[-k][PD[-i][pertE[LI[1]]]]] - scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][perth[LI[1], -i, -l]]*
     PD[-h$120275][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    2*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][
      PD[-k][PD[-j][pertE[LI[1]]]]] - scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*
     PD[-h$120275][PD[-k][PD[-j][pertE[LI[1]]]]] - 
    scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*PD[-h$120275][
      PD[-k][PD[-j][pertE[LI[1]]]]] - 2*scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]]*
     PD[-h$120275][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][PD[-l][pertF[LI[1], -i]]] - 
    metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][PD[-l][pertF[LI[1], -j]]] + 
    (scale[]^2*timevec[h$120274]*timevec[h$120275]*
      PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*PD[-h$120275][
       PD[-l][pertF[LI[1], -j]]])/2 - scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][perth[LI[1], -j, -k]]*
     PD[-h$120275][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    2*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][
      PD[-l][PD[-i][pertE[LI[1]]]]] - scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*
     PD[-h$120275][PD[-l][PD[-i][pertE[LI[1]]]]] - 
    scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*PD[-h$120275][
      PD[-l][PD[-i][pertE[LI[1]]]]] + scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][perth[LI[1], -i, -k]]*
     PD[-h$120275][PD[-l][PD[-j][pertE[LI[1]]]]] - 
    2*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-h$120275][
      PD[-l][PD[-j][pertE[LI[1]]]]] + scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*
     PD[-h$120275][PD[-l][PD[-j][pertE[LI[1]]]]] + 
    scale[]^2*timevec[h$120274]*timevec[h$120275]*
     PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*PD[-h$120275][
      PD[-l][PD[-j][pertE[LI[1]]]]] + 2*scale[]^2*timevec[h$120274]*
     timevec[h$120275]*PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-h$120275][PD[-l][PD[-j][pertE[LI[1]]]]] + 
    2*hubbleC[]^2*perth[LI[1], -j, -l]*scale[]^2*PD[-i][pertF[LI[1], -k]] - 
    4*hubbleC[]^2*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-i][pertF[LI[1], -k]] - 4*hubbleC[]^2*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-i][pertF[LI[1], -k]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]]*
     PD[-i][pertF[LI[1], -k]] - 2*hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-i][pertF[LI[1], -k]] + hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-i][pertF[LI[1], -k]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -j]]]*PD[-i][pertF[LI[1], -k]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-j][pertE[LI[1]]]]]*PD[-i][pertF[LI[1], -k]] - 
    2*hubbleC[]^2*perth[LI[1], -j, -k]*scale[]^2*PD[-i][pertF[LI[1], -l]] + 
    4*hubbleC[]^2*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-i][pertF[LI[1], -l]] + 4*hubbleC[]^2*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-i][pertF[LI[1], -l]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -k]]*
     PD[-i][pertF[LI[1], -l]] + 2*hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-i][pertF[LI[1], -l]] - hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-i][pertF[LI[1], -l]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -j]]]*PD[-i][pertF[LI[1], -l]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-j][pertE[LI[1]]]]]*PD[-i][pertF[LI[1], -l]] + 
    hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertF[LI[2], -k]] - 
    hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertF[LI[2], -l]] - 
    hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-i][perth[LI[1], -k, -p$120272]] + 
    hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-i][perth[LI[1], -l, -p$120272]] + 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertS[LI[1], -k]*scale[]^2*
     PD[-i][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-j, -k]*
     pertS[LI[1], -l]*scale[]^2*PD[-i][pertphi[LI[1]]] + 
    hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*PD[-i][pertS[LI[1], -k]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-i][pertS[LI[1], -k]] - 2*hubbleC[]*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-i][pertS[LI[1], -k]] + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]]*
      PD[-i][pertS[LI[1], -k]])/2 - metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-i][pertS[LI[1], -k]] + (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-i][pertS[LI[1], -k]])/2 + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*
      PD[-i][pertS[LI[1], -k]])/2 + scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]]*PD[-i][pertS[LI[1], -k]] - 
    hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*PD[-i][pertS[LI[1], -l]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-i][pertS[LI[1], -l]] + 2*hubbleC[]*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-i][pertS[LI[1], -l]] - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -k]]*
      PD[-i][pertS[LI[1], -l]])/2 + metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-i][pertS[LI[1], -l]] - (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-i][pertS[LI[1], -l]])/2 - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*
      PD[-i][pertS[LI[1], -l]])/2 - scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]]*PD[-i][pertS[LI[1], -l]] + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertS[LI[2], -k]])/2 - 
    (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertS[LI[2], -l]])/2 - 
    2*hubbleC[]^2*perth[LI[1], -i, -l]*scale[]^2*PD[-j][pertF[LI[1], -k]] + 
    4*hubbleC[]^2*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-j][pertF[LI[1], -k]] + 4*hubbleC[]^2*metric\[Delta][-i, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-j][pertF[LI[1], -k]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]]*
     PD[-j][pertF[LI[1], -k]] + 2*hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-j][pertF[LI[1], -k]] - hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*PD[-j][pertF[LI[1], -k]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -i]]]*PD[-j][pertF[LI[1], -k]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-i][pertE[LI[1]]]]]*PD[-j][pertF[LI[1], -k]] - 
    2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -l]]*
     PD[-j][pertF[LI[1], -k]] - hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -l]]*
     PD[-j][pertF[LI[1], -k]] + 2*hubbleC[]^2*perth[LI[1], -i, -k]*scale[]^2*
     PD[-j][pertF[LI[1], -l]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
     pertphi[LI[1]]*scale[]^2*PD[-j][pertF[LI[1], -l]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     PD[-j][pertF[LI[1], -l]] + hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -k]]*PD[-j][pertF[LI[1], -l]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-j][pertF[LI[1], -l]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-i][pertF[LI[1], -k]]]*PD[-j][pertF[LI[1], -l]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -i]]]*PD[-j][pertF[LI[1], -l]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertF[LI[1], -l]] + 
    2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*
     PD[-j][pertF[LI[1], -l]] + hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*
     PD[-j][pertF[LI[1], -l]] - hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*
     PD[-j][pertF[LI[2], -k]] + hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*
     PD[-j][pertF[LI[2], -l]] + hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-j][perth[LI[1], -k, -p$120272]] + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -l, -p$120272]]*
      PD[-j][perth[LI[1], -k, -p$120273]])/2 - 
    hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-j][perth[LI[1], -l, -p$120272]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -k, -p$120272]]*
      PD[-j][perth[LI[1], -l, -p$120273]])/2 - 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertS[LI[1], -k]*scale[]^2*
     PD[-j][pertphi[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -k]*
     pertS[LI[1], -l]*scale[]^2*PD[-j][pertphi[LI[1]]] - 
    hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*PD[-j][pertS[LI[1], -k]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-j][pertS[LI[1], -k]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-j][pertS[LI[1], -k]] - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]]*
      PD[-j][pertS[LI[1], -k]])/2 + metric\[Delta][-i, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-j][pertS[LI[1], -k]] - (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*PD[-j][pertS[LI[1], -k]])/2 - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*
      PD[-j][pertS[LI[1], -k]])/2 - scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]]*PD[-j][pertS[LI[1], -k]] - 
    hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -l]]*PD[-j][pertS[LI[1], -k]] - 
    (scale[]^2*PD[-i][pertS[LI[1], -l]]*PD[-j][pertS[LI[1], -k]])/2 + 
    hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*PD[-j][pertS[LI[1], -l]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-j][pertS[LI[1], -l]] - 2*hubbleC[]*metric\[Delta][-i, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-j][pertS[LI[1], -l]] + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -k]]*
      PD[-j][pertS[LI[1], -l]])/2 - metric\[Delta][-i, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-j][pertS[LI[1], -l]] + (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*PD[-j][pertS[LI[1], -l]])/2 + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*
      PD[-j][pertS[LI[1], -l]])/2 + scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertS[LI[1], -l]] + 
    hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -k]]*PD[-j][pertS[LI[1], -l]] + 
    (scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertS[LI[1], -l]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-j][pertS[LI[2], -k]])/2 + 
    (hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertS[LI[2], -l]])/2 - 
    2*hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-k][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*
     PD[-j][pertphi[LI[1]]]*PD[-k][pertB[LI[1]]] + 
    2*hubbleC[]^2*perth[LI[1], -j, -l]*scale[]^2*PD[-k][pertF[LI[1], -i]] - 
    4*hubbleC[]^2*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-k][pertF[LI[1], -i]] - 4*hubbleC[]^2*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-k][pertF[LI[1], -i]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]]*
     PD[-k][pertF[LI[1], -i]] - 2*hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-k][pertF[LI[1], -i]] + hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-k][pertF[LI[1], -i]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -j]]]*PD[-k][pertF[LI[1], -i]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-j][pertE[LI[1]]]]]*PD[-k][pertF[LI[1], -i]] + 
    2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -l]]*
     PD[-k][pertF[LI[1], -i]] + hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -l]]*
     PD[-k][pertF[LI[1], -i]] - 2*hubbleC[]^2*perth[LI[1], -i, -l]*scale[]^2*
     PD[-k][pertF[LI[1], -j]] + 4*hubbleC[]^2*metric\[Delta][-i, -l]*
     pertphi[LI[1]]*scale[]^2*PD[-k][pertF[LI[1], -j]] + 
    4*hubbleC[]^2*metric\[Delta][-i, -l]*pertpsi[LI[1]]*scale[]^2*
     PD[-k][pertF[LI[1], -j]] - hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -l]]*PD[-k][pertF[LI[1], -j]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-k][pertF[LI[1], -j]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-i][pertF[LI[1], -l]]]*PD[-k][pertF[LI[1], -j]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -i]]]*PD[-k][pertF[LI[1], -j]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-i][pertE[LI[1]]]]]*PD[-k][pertF[LI[1], -j]] - 
    2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -l]]*
     PD[-k][pertF[LI[1], -j]] - hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -l]]*
     PD[-k][pertF[LI[1], -j]] + hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*
     PD[-k][pertF[LI[2], -i]] - hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*
     PD[-k][pertF[LI[2], -j]] + 2*scale[]^2*PD[-j][pertphi[LI[1]]]*
     PD[-k][perth[LI[1], -i, -l]] - hubbleC[]*metric\[Delta][-j, -l]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-k][perth[LI[1], -i, -p$120272]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-j][perth[LI[1], -l, -p$120272]]*
      PD[-k][perth[LI[1], -i, -p$120273]])/2 - 
    2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-k][perth[LI[1], -j, -l]] + 
    hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-k][perth[LI[1], -j, -p$120272]] + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -l, -p$120272]]*
      PD[-k][perth[LI[1], -j, -p$120273]])/2 + 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertS[LI[1], -i]*scale[]^2*
     PD[-k][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -l]*
     pertS[LI[1], -j]*scale[]^2*PD[-k][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-i][pertB[LI[1]]]*
     PD[-k][pertphi[LI[1]]] - 2*scale[]^2*PD[-i][perth[LI[1], -j, -l]]*
     PD[-k][pertphi[LI[1]]] + 6*metric\[Delta][-j, -l]*scale[]^2*
     PD[-i][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-j][pertB[LI[1]]]*
     PD[-k][pertphi[LI[1]]] + 2*scale[]^2*PD[-j][perth[LI[1], -i, -l]]*
     PD[-k][pertphi[LI[1]]] - 6*metric\[Delta][-i, -l]*scale[]^2*
     PD[-j][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
    hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*PD[-k][pertS[LI[1], -i]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-k][pertS[LI[1], -i]] - 2*hubbleC[]*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-k][pertS[LI[1], -i]] + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]]*
      PD[-k][pertS[LI[1], -i]])/2 - metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-k][pertS[LI[1], -i]] + (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-k][pertS[LI[1], -i]])/2 + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*
      PD[-k][pertS[LI[1], -i]])/2 + scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]]*PD[-k][pertS[LI[1], -i]] + 
    hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -l]]*PD[-k][pertS[LI[1], -i]] + 
    (scale[]^2*PD[-j][pertS[LI[1], -l]]*PD[-k][pertS[LI[1], -i]])/2 - 
    hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*PD[-k][pertS[LI[1], -j]] + 
    2*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-k][pertS[LI[1], -j]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-k][pertS[LI[1], -j]] - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]]*
      PD[-k][pertS[LI[1], -j]])/2 + metric\[Delta][-i, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-k][pertS[LI[1], -j]] - (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*PD[-k][pertS[LI[1], -j]])/2 - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*
      PD[-k][pertS[LI[1], -j]])/2 - scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]]*PD[-k][pertS[LI[1], -j]] - 
    hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -l]]*PD[-k][pertS[LI[1], -j]] - 
    (scale[]^2*PD[-i][pertS[LI[1], -l]]*PD[-k][pertS[LI[1], -j]])/2 + 
    (hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-k][pertS[LI[2], -i]])/2 - 
    (hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-k][pertS[LI[2], -j]])/2 - 
    2*hubbleC[]*perth[LI[1], -j, -l]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] + 
    4*hubbleC[]*metric\[Delta][-j, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-k][PD[-i][pertB[LI[1]]]] + 4*hubbleC[]*metric\[Delta][-j, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] - 
    scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -l]]*
     PD[-k][PD[-i][pertB[LI[1]]]] + 2*metric\[Delta][-j, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-k][PD[-i][pertB[LI[1]]]] - scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -l]]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -j]]]*
     PD[-k][PD[-i][pertB[LI[1]]]] - 2*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-j][pertE[LI[1]]]]]*
     PD[-k][PD[-i][pertB[LI[1]]]] - 2*hubbleC[]*scale[]^2*
     PD[-j][pertF[LI[1], -l]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
    scale[]^2*PD[-j][pertS[LI[1], -l]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
    hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*PD[-k][PD[-i][pertB[LI[2]]]] + 
    4*hubbleC[]^2*perth[LI[1], -j, -l]*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]] - 8*hubbleC[]^2*metric\[Delta][-j, -l]*
     pertphi[LI[1]]*scale[]^2*PD[-k][PD[-i][pertE[LI[1]]]] - 
    8*hubbleC[]^2*metric\[Delta][-j, -l]*pertpsi[LI[1]]*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]] + 2*hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -j, -l]]*PD[-k][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-j, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-j][pertF[LI[1], -l]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -j]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
    4*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-j][pertE[LI[1]]]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
    4*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -l]]*
     PD[-k][PD[-i][pertE[LI[1]]]] + 2*hubbleC[]*scale[]^2*
     PD[-j][pertS[LI[1], -l]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
    2*hubbleC[]^2*metric\[Delta][-j, -l]*scale[]^2*
     PD[-k][PD[-i][pertE[LI[2]]]] + 2*scale[]^2*PD[-j][pertphi[LI[1]]]*
     PD[-k][PD[-i][pertF[LI[1], -l]]] - 2*hubbleC[]*metric\[Delta][-j, -l]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]] - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-j][perth[LI[1], -l, -p$120272]]*
     PD[-k][PD[-i][pertF[LI[1], -p$120273]]] - 
    (scale[]^2*PD[-k][PD[-i][perth[LI[2], -j, -l]]])/2 + 
    metric\[Delta][-j, -l]*scale[]^2*PD[-k][PD[-i][pertphi[LI[2]]]] + 
    2*hubbleC[]*perth[LI[1], -i, -l]*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -l]*pertphi[LI[1]]*scale[]^2*
     PD[-k][PD[-j][pertB[LI[1]]]] - 4*hubbleC[]*metric\[Delta][-i, -l]*
     pertpsi[LI[1]]*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]] + 
    scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -l]]*
     PD[-k][PD[-j][pertB[LI[1]]]] - 2*metric\[Delta][-i, -l]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-k][PD[-j][pertB[LI[1]]]] + scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -l]]]*PD[-k][PD[-j][pertB[LI[1]]]] + 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-l][pertF[LI[1], -i]]]*
     PD[-k][PD[-j][pertB[LI[1]]]] + 2*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-l][PD[-i][pertE[LI[1]]]]]*
     PD[-k][PD[-j][pertB[LI[1]]]] + 2*hubbleC[]*scale[]^2*
     PD[-i][pertF[LI[1], -l]]*PD[-k][PD[-j][pertB[LI[1]]]] + 
    scale[]^2*PD[-i][pertS[LI[1], -l]]*PD[-k][PD[-j][pertB[LI[1]]]] + 
    hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*PD[-k][PD[-j][pertB[LI[2]]]] - 
    4*hubbleC[]^2*perth[LI[1], -i, -l]*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]] + 8*hubbleC[]^2*metric\[Delta][-i, -l]*
     pertphi[LI[1]]*scale[]^2*PD[-k][PD[-j][pertE[LI[1]]]] + 
    8*hubbleC[]^2*metric\[Delta][-i, -l]*pertpsi[LI[1]]*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]] - 2*hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -l]]*PD[-k][PD[-j][pertE[LI[1]]]] + 
    4*hubbleC[]*metric\[Delta][-i, -l]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-k][PD[-j][pertE[LI[1]]]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-i][pertF[LI[1], -l]]]*PD[-k][PD[-j][pertE[LI[1]]]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][pertF[LI[1], -i]]]*PD[-k][PD[-j][pertE[LI[1]]]] - 
    4*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-l][PD[-i][pertE[LI[1]]]]]*PD[-k][PD[-j][pertE[LI[1]]]] - 
    4*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -l]]*
     PD[-k][PD[-j][pertE[LI[1]]]] - 2*hubbleC[]*scale[]^2*
     PD[-i][pertS[LI[1], -l]]*PD[-k][PD[-j][pertE[LI[1]]]] - 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*scale[]^2*
     PD[-k][PD[-j][pertE[LI[2]]]] - 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-k][PD[-j][pertF[LI[1], -l]]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]] + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -l, -p$120272]]*
     PD[-k][PD[-j][pertF[LI[1], -p$120273]]] + 
    (scale[]^2*PD[-k][PD[-j][perth[LI[2], -i, -l]]])/2 - 
    metric\[Delta][-i, -l]*scale[]^2*PD[-k][PD[-j][pertphi[LI[2]]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-l][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
     PD[-j][pertphi[LI[1]]]*PD[-l][pertB[LI[1]]] - 
    2*hubbleC[]^2*perth[LI[1], -j, -k]*scale[]^2*PD[-l][pertF[LI[1], -i]] + 
    4*hubbleC[]^2*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-l][pertF[LI[1], -i]] + 4*hubbleC[]^2*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-l][pertF[LI[1], -i]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -k]]*
     PD[-l][pertF[LI[1], -i]] + 2*hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-l][pertF[LI[1], -i]] - hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-l][pertF[LI[1], -i]] - 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -j]]]*PD[-l][pertF[LI[1], -i]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-j][pertE[LI[1]]]]]*PD[-l][pertF[LI[1], -i]] - 
    2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -k]]*
     PD[-l][pertF[LI[1], -i]] - hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -k]]*
     PD[-l][pertF[LI[1], -i]] - 2*hubbleC[]^2*scale[]^2*
     PD[-k][pertF[LI[1], -j]]*PD[-l][pertF[LI[1], -i]] - 
    hubbleC[]*scale[]^2*PD[-k][pertS[LI[1], -j]]*PD[-l][pertF[LI[1], -i]] + 
    2*hubbleC[]*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]]*
     PD[-l][pertF[LI[1], -i]] - 4*hubbleC[]^2*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]]*PD[-l][pertF[LI[1], -i]] + 
    2*hubbleC[]^2*perth[LI[1], -i, -k]*scale[]^2*PD[-l][pertF[LI[1], -j]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-l][pertF[LI[1], -j]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-l][pertF[LI[1], -j]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -k]]*
     PD[-l][pertF[LI[1], -j]] - 2*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-l][pertF[LI[1], -j]] + hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*PD[-l][pertF[LI[1], -j]] + 
    hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -i]]]*PD[-l][pertF[LI[1], -j]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-l][pertF[LI[1], -j]] + 
    2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*
     PD[-l][pertF[LI[1], -j]] + hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*
     PD[-l][pertF[LI[1], -j]] + 2*hubbleC[]^2*scale[]^2*
     PD[-k][pertF[LI[1], -i]]*PD[-l][pertF[LI[1], -j]] + 
    hubbleC[]*scale[]^2*PD[-k][pertS[LI[1], -i]]*PD[-l][pertF[LI[1], -j]] - 
    2*hubbleC[]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]]*
     PD[-l][pertF[LI[1], -j]] + 4*hubbleC[]^2*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]]*PD[-l][pertF[LI[1], -j]] - 
    hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*PD[-l][pertF[LI[2], -i]] + 
    hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-l][pertF[LI[2], -j]] - 
    2*scale[]^2*PD[-j][pertphi[LI[1]]]*PD[-l][perth[LI[1], -i, -k]] + 
    hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-l][perth[LI[1], -i, -p$120272]] + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-j][perth[LI[1], -k, -p$120272]]*
      PD[-l][perth[LI[1], -i, -p$120273]])/2 + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-k][perth[LI[1], -j, -p$120272]]*
      PD[-l][perth[LI[1], -i, -p$120273]])/2 + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*
     PD[-l][perth[LI[1], -i, -p$120273]] + 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-l][perth[LI[1], -j, -k]] - hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-l][perth[LI[1], -j, -p$120272]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -k, -p$120272]]*
      PD[-l][perth[LI[1], -j, -p$120273]])/2 - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-k][perth[LI[1], -i, -p$120272]]*
      PD[-l][perth[LI[1], -j, -p$120273]])/2 - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*
     PD[-l][perth[LI[1], -j, -p$120273]] - 2*hubbleC[]*metric\[Delta][-j, -k]*
     pertS[LI[1], -i]*scale[]^2*PD[-l][pertphi[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertS[LI[1], -j]*scale[]^2*
     PD[-l][pertphi[LI[1]]] + 2*hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*
     PD[-i][pertB[LI[1]]]*PD[-l][pertphi[LI[1]]] + 
    2*scale[]^2*PD[-i][perth[LI[1], -j, -k]]*PD[-l][pertphi[LI[1]]] - 
    6*metric\[Delta][-j, -k]*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-l][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
     PD[-j][pertB[LI[1]]]*PD[-l][pertphi[LI[1]]] - 
    2*scale[]^2*PD[-j][perth[LI[1], -i, -k]]*PD[-l][pertphi[LI[1]]] + 
    6*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertphi[LI[1]]]*
     PD[-l][pertphi[LI[1]]] + 2*scale[]^2*PD[-k][PD[-i][pertF[LI[1], -j]]]*
     PD[-l][pertphi[LI[1]]] - 2*scale[]^2*PD[-k][PD[-j][pertF[LI[1], -i]]]*
     PD[-l][pertphi[LI[1]]] - hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*
     PD[-l][pertS[LI[1], -i]] + 2*hubbleC[]*metric\[Delta][-j, -k]*
     pertphi[LI[1]]*scale[]^2*PD[-l][pertS[LI[1], -i]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     PD[-l][pertS[LI[1], -i]] - (scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[1], -j, -k]]*PD[-l][pertS[LI[1], -i]])/2 + 
    metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-l][pertS[LI[1], -i]] - 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*
      PD[-l][pertS[LI[1], -i]])/2 - (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*PD[-l][pertS[LI[1], -i]])/2 - 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-l][pertS[LI[1], -i]] - hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -k]]*
     PD[-l][pertS[LI[1], -i]] - (scale[]^2*PD[-j][pertS[LI[1], -k]]*
      PD[-l][pertS[LI[1], -i]])/2 - hubbleC[]*scale[]^2*
     PD[-k][pertF[LI[1], -j]]*PD[-l][pertS[LI[1], -i]] - 
    (scale[]^2*PD[-k][pertS[LI[1], -j]]*PD[-l][pertS[LI[1], -i]])/2 + 
    scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]]*PD[-l][pertS[LI[1], -i]] - 
    2*hubbleC[]*scale[]^2*PD[-k][PD[-j][pertE[LI[1]]]]*
     PD[-l][pertS[LI[1], -i]] + hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*
     PD[-l][pertS[LI[1], -j]] - 2*hubbleC[]*metric\[Delta][-i, -k]*
     pertphi[LI[1]]*scale[]^2*PD[-l][pertS[LI[1], -j]] - 
    2*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     PD[-l][pertS[LI[1], -j]] + (scale[]^2*timevec[h$120274]*
      PD[-h$120274][perth[LI[1], -i, -k]]*PD[-l][pertS[LI[1], -j]])/2 - 
    metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-l][pertS[LI[1], -j]] + 
    (scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*
      PD[-l][pertS[LI[1], -j]])/2 + (scale[]^2*timevec[h$120274]*
      PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*PD[-l][pertS[LI[1], -j]])/2 + 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-l][pertS[LI[1], -j]] + hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -k]]*
     PD[-l][pertS[LI[1], -j]] + (scale[]^2*PD[-i][pertS[LI[1], -k]]*
      PD[-l][pertS[LI[1], -j]])/2 + hubbleC[]*scale[]^2*
     PD[-k][pertF[LI[1], -i]]*PD[-l][pertS[LI[1], -j]] + 
    (scale[]^2*PD[-k][pertS[LI[1], -i]]*PD[-l][pertS[LI[1], -j]])/2 - 
    scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]]*PD[-l][pertS[LI[1], -j]] + 
    2*hubbleC[]*scale[]^2*PD[-k][PD[-i][pertE[LI[1]]]]*
     PD[-l][pertS[LI[1], -j]] - (hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*
      PD[-l][pertS[LI[2], -i]])/2 + (hubbleC[]*metric\[Delta][-i, -k]*
      scale[]^2*PD[-l][pertS[LI[2], -j]])/2 + 
    2*hubbleC[]*perth[LI[1], -j, -k]*scale[]^2*PD[-l][PD[-i][pertB[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-j, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-l][PD[-i][pertB[LI[1]]]] - 4*hubbleC[]*metric\[Delta][-j, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-l][PD[-i][pertB[LI[1]]]] + 
    scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -j, -k]]*
     PD[-l][PD[-i][pertB[LI[1]]]] - 2*metric\[Delta][-j, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-l][PD[-i][pertB[LI[1]]]] + scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-j][pertF[LI[1], -k]]]*PD[-l][PD[-i][pertB[LI[1]]]] + 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -j]]]*
     PD[-l][PD[-i][pertB[LI[1]]]] + 2*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-l][PD[-i][pertB[LI[1]]]] + 2*hubbleC[]*scale[]^2*
     PD[-j][pertF[LI[1], -k]]*PD[-l][PD[-i][pertB[LI[1]]]] + 
    scale[]^2*PD[-j][pertS[LI[1], -k]]*PD[-l][PD[-i][pertB[LI[1]]]] + 
    2*hubbleC[]*scale[]^2*PD[-k][pertF[LI[1], -j]]*
     PD[-l][PD[-i][pertB[LI[1]]]] + scale[]^2*PD[-k][pertS[LI[1], -j]]*
     PD[-l][PD[-i][pertB[LI[1]]]] - 2*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]]*
     PD[-l][PD[-i][pertB[LI[1]]]] + 4*hubbleC[]*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]]*PD[-l][PD[-i][pertB[LI[1]]]] + 
    hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*PD[-l][PD[-i][pertB[LI[2]]]] - 
    4*hubbleC[]^2*perth[LI[1], -j, -k]*scale[]^2*
     PD[-l][PD[-i][pertE[LI[1]]]] + 8*hubbleC[]^2*metric\[Delta][-j, -k]*
     pertphi[LI[1]]*scale[]^2*PD[-l][PD[-i][pertE[LI[1]]]] + 
    8*hubbleC[]^2*metric\[Delta][-j, -k]*pertpsi[LI[1]]*scale[]^2*
     PD[-l][PD[-i][pertE[LI[1]]]] - 2*hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -j, -k]]*PD[-l][PD[-i][pertE[LI[1]]]] + 
    4*hubbleC[]*metric\[Delta][-j, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-j][pertF[LI[1], -k]]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -j]]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-j][pertE[LI[1]]]]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -k]]*
     PD[-l][PD[-i][pertE[LI[1]]]] - 2*hubbleC[]*scale[]^2*
     PD[-j][pertS[LI[1], -k]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]^2*scale[]^2*PD[-k][pertF[LI[1], -j]]*
     PD[-l][PD[-i][pertE[LI[1]]]] - 2*hubbleC[]*scale[]^2*
     PD[-k][pertS[LI[1], -j]]*PD[-l][PD[-i][pertE[LI[1]]]] + 
    4*hubbleC[]*scale[]^2*PD[-k][PD[-j][pertB[LI[1]]]]*
     PD[-l][PD[-i][pertE[LI[1]]]] - 8*hubbleC[]^2*scale[]^2*
     PD[-k][PD[-j][pertE[LI[1]]]]*PD[-l][PD[-i][pertE[LI[1]]]] - 
    2*hubbleC[]^2*metric\[Delta][-j, -k]*scale[]^2*
     PD[-l][PD[-i][pertE[LI[2]]]] - 2*scale[]^2*PD[-k][pertphi[LI[1]]]*
     PD[-l][PD[-i][pertF[LI[1], -j]]] - 2*scale[]^2*PD[-j][pertphi[LI[1]]]*
     PD[-l][PD[-i][pertF[LI[1], -k]]] + 2*hubbleC[]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-l][PD[-i][pertF[LI[1], -p$120272]]] + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-j][perth[LI[1], -k, -p$120272]]*
     PD[-l][PD[-i][pertF[LI[1], -p$120273]]] + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -j, -p$120272]]*
     PD[-l][PD[-i][pertF[LI[1], -p$120273]]] + 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*
     PD[-l][PD[-i][pertF[LI[1], -p$120273]]] + 
    (scale[]^2*PD[-l][PD[-i][perth[LI[2], -j, -k]]])/2 - 
    metric\[Delta][-j, -k]*scale[]^2*PD[-l][PD[-i][pertphi[LI[2]]]] - 
    2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*PD[-l][PD[-j][pertB[LI[1]]]] + 
    4*hubbleC[]*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
     PD[-l][PD[-j][pertB[LI[1]]]] + 4*hubbleC[]*metric\[Delta][-i, -k]*
     pertpsi[LI[1]]*scale[]^2*PD[-l][PD[-j][pertB[LI[1]]]] - 
    scale[]^2*timevec[h$120274]*PD[-h$120274][perth[LI[1], -i, -k]]*
     PD[-l][PD[-j][pertB[LI[1]]]] + 2*metric\[Delta][-i, -k]*scale[]^2*
     timevec[h$120274]*PD[-h$120274][pertphi[LI[1]]]*
     PD[-l][PD[-j][pertB[LI[1]]]] - scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-i][pertF[LI[1], -k]]]*PD[-l][PD[-j][pertB[LI[1]]]] - 
    scale[]^2*timevec[h$120274]*PD[-h$120274][PD[-k][pertF[LI[1], -i]]]*
     PD[-l][PD[-j][pertB[LI[1]]]] - 2*scale[]^2*timevec[h$120274]*
     PD[-h$120274][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-l][PD[-j][pertB[LI[1]]]] - 2*hubbleC[]*scale[]^2*
     PD[-i][pertF[LI[1], -k]]*PD[-l][PD[-j][pertB[LI[1]]]] - 
    scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-l][PD[-j][pertB[LI[1]]]] - 
    2*hubbleC[]*scale[]^2*PD[-k][pertF[LI[1], -i]]*
     PD[-l][PD[-j][pertB[LI[1]]]] - scale[]^2*PD[-k][pertS[LI[1], -i]]*
     PD[-l][PD[-j][pertB[LI[1]]]] + 2*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]]*
     PD[-l][PD[-j][pertB[LI[1]]]] - 4*hubbleC[]*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]]*PD[-l][PD[-j][pertB[LI[1]]]] - 
    hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-l][PD[-j][pertB[LI[2]]]] + 
    4*hubbleC[]^2*perth[LI[1], -i, -k]*scale[]^2*
     PD[-l][PD[-j][pertE[LI[1]]]] - 8*hubbleC[]^2*metric\[Delta][-i, -k]*
     pertphi[LI[1]]*scale[]^2*PD[-l][PD[-j][pertE[LI[1]]]] - 
    8*hubbleC[]^2*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
     PD[-l][PD[-j][pertE[LI[1]]]] + 2*hubbleC[]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][perth[LI[1], -i, -k]]*PD[-l][PD[-j][pertE[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$120274]*
     PD[-h$120274][pertphi[LI[1]]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-i][pertF[LI[1], -k]]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    2*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][pertF[LI[1], -i]]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    4*hubbleC[]*scale[]^2*timevec[h$120274]*PD[-h$120274][
      PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    4*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*
     PD[-l][PD[-j][pertE[LI[1]]]] + 2*hubbleC[]*scale[]^2*
     PD[-i][pertS[LI[1], -k]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    4*hubbleC[]^2*scale[]^2*PD[-k][pertF[LI[1], -i]]*
     PD[-l][PD[-j][pertE[LI[1]]]] + 2*hubbleC[]*scale[]^2*
     PD[-k][pertS[LI[1], -i]]*PD[-l][PD[-j][pertE[LI[1]]]] - 
    4*hubbleC[]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]]*
     PD[-l][PD[-j][pertE[LI[1]]]] + 8*hubbleC[]^2*scale[]^2*
     PD[-k][PD[-i][pertE[LI[1]]]]*PD[-l][PD[-j][pertE[LI[1]]]] + 
    2*hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*
     PD[-l][PD[-j][pertE[LI[2]]]] + 2*scale[]^2*PD[-k][pertphi[LI[1]]]*
     PD[-l][PD[-j][pertF[LI[1], -i]]] + 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
     PD[-l][PD[-j][pertF[LI[1], -k]]] - 2*hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-l][PD[-j][pertF[LI[1], -p$120272]]] - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -k, -p$120272]]*
     PD[-l][PD[-j][pertF[LI[1], -p$120273]]] - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -i, -p$120272]]*
     PD[-l][PD[-j][pertF[LI[1], -p$120273]]] - 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*
     PD[-l][PD[-j][pertF[LI[1], -p$120273]]] - 
    (scale[]^2*PD[-l][PD[-j][perth[LI[2], -i, -k]]])/2 + 
    metric\[Delta][-i, -k]*scale[]^2*PD[-l][PD[-j][pertphi[LI[2]]]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-p$120272][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][pertB[LI[1]]] + 
    hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][perth[LI[1], -i, -k]] - 
    hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][perth[LI[1], -i, -l]] - 
    hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][perth[LI[1], -j, -k]] + 
    hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][perth[LI[1], -j, -l]] + 
    4*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-p$120272][pertphi[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][pertphi[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][
      PD[-k][PD[-i][pertE[LI[1]]]]] + 2*hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     pertS[LI[1], -p$120273]*scale[]^2*PD[-p$120272][
      PD[-l][PD[-i][pertE[LI[1]]]]] - 2*hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*pertS[LI[1], -p$120273]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-j][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-i][perth[LI[1], -k, -p$120272]]*
     PD[-p$120273][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -l, -p$120272]]*PD[-p$120273][pertB[LI[1]]] - 
    hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-j][perth[LI[1], -k, -p$120272]]*
     PD[-p$120273][pertB[LI[1]]] + hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-j][perth[LI[1], -l, -p$120272]]*PD[-p$120273][pertB[LI[1]]] + 
    hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-k][perth[LI[1], -i, -p$120272]]*
     PD[-p$120273][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -j, -p$120272]]*PD[-p$120273][pertB[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*
     PD[-p$120273][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertB[LI[1]]] - 
    hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-l][perth[LI[1], -i, -p$120272]]*
     PD[-p$120273][pertB[LI[1]]] + hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][perth[LI[1], -j, -p$120272]]*PD[-p$120273][pertB[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-l][PD[-i][pertF[LI[1], -p$120272]]]*
     PD[-p$120273][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][PD[-j][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertB[LI[1]]] + 
    2*hubbleC[]^2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*PD[-p$120272][pertB[LI[1]]]*
     PD[-p$120273][pertB[LI[1]]] - 2*hubbleC[]^2*metric\[Delta][-i, -k]*
     metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][pertB[LI[1]]]*PD[-p$120273][pertB[LI[1]]] - 
    hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-p$120272][perth[LI[1], -i, -k]]*
     PD[-p$120273][pertB[LI[1]]] + hubbleC[]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -i, -l]]*PD[-p$120273][pertB[LI[1]]] + 
    hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-p$120272][perth[LI[1], -j, -k]]*
     PD[-p$120273][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -j, -l]]*PD[-p$120273][pertB[LI[1]]] - 
    4*hubbleC[]*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][pertphi[LI[1]]]*PD[-p$120273][pertB[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][pertphi[LI[1]]]*PD[-p$120273][pertB[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-p$120272][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][pertB[LI[1]]] + (metric\[Delta][p$120273, p$120272]*
      scale[]^2*PD[-j][perth[LI[1], -l, -p$120272]]*
      PD[-p$120273][perth[LI[1], -i, -k]])/2 + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-l][perth[LI[1], -j, -p$120272]]*PD[-p$120273][
       perth[LI[1], -i, -k]])/2 + metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-l][PD[-j][pertF[LI[1], -p$120272]]]*
     PD[-p$120273][perth[LI[1], -i, -k]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-p$120272][perth[LI[1], -j, -l]]*PD[-p$120273][
       perth[LI[1], -i, -k]])/2 + metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-p$120272][PD[-l][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][perth[LI[1], -i, -k]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-j][perth[LI[1], -k, -p$120272]]*PD[-p$120273][
       perth[LI[1], -i, -l]])/2 - (metric\[Delta][p$120273, p$120272]*
      scale[]^2*PD[-k][perth[LI[1], -j, -p$120272]]*
      PD[-p$120273][perth[LI[1], -i, -l]])/2 - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*PD[-p$120273][
      perth[LI[1], -i, -l]] + (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-p$120272][perth[LI[1], -j, -k]]*PD[-p$120273][
       perth[LI[1], -i, -l]])/2 - metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-p$120272][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][perth[LI[1], -i, -l]] - 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -l, -p$120272]]*PD[-p$120273][
       perth[LI[1], -j, -k]])/2 - (metric\[Delta][p$120273, p$120272]*
      scale[]^2*PD[-l][perth[LI[1], -i, -p$120272]]*
      PD[-p$120273][perth[LI[1], -j, -k]])/2 - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][
      perth[LI[1], -j, -k]] - metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][perth[LI[1], -j, -k]] + 
    (metric\[Delta][p$120273, p$120272]*scale[]^2*
      PD[-i][perth[LI[1], -k, -p$120272]]*PD[-p$120273][
       perth[LI[1], -j, -l]])/2 + (metric\[Delta][p$120273, p$120272]*
      scale[]^2*PD[-k][perth[LI[1], -i, -p$120272]]*
      PD[-p$120273][perth[LI[1], -j, -l]])/2 + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][
      perth[LI[1], -j, -l]] + metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][perth[LI[1], -j, -l]] - metric\[Delta][-j, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -k, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -l, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-j][perth[LI[1], -k, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] - 
    metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-j][perth[LI[1], -l, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] - 
    metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -i, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -j, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] - 
    2*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertphi[LI[1]]] + 
    2*metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][perth[LI[1], -i, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] - 
    metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][perth[LI[1], -j, -p$120272]]*PD[-p$120273][pertphi[LI[1]]] + 
    2*metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertphi[LI[1]]] - 
    2*metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][PD[-j][pertF[LI[1], -p$120272]]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -i, -k]]*PD[-p$120273][pertphi[LI[1]]] - 
    metric\[Delta][-j, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -i, -l]]*PD[-p$120273][pertphi[LI[1]]] - 
    metric\[Delta][-i, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -j, -k]]*PD[-p$120273][pertphi[LI[1]]] + 
    metric\[Delta][-i, -k]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][perth[LI[1], -j, -l]]*PD[-p$120273][pertphi[LI[1]]] + 
    2*metric\[Delta][-i, -l]*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][pertphi[LI[1]]]*PD[-p$120273][pertphi[LI[1]]] - 
    2*metric\[Delta][-i, -k]*metric\[Delta][-j, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][pertphi[LI[1]]]*PD[-p$120273][pertphi[LI[1]]] - 
    2*metric\[Delta][-j, -l]*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][pertphi[LI[1]]] + 2*metric\[Delta][-i, -l]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][pertphi[LI[1]]] + 2*metric\[Delta][-j, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-i][pertE[LI[1]]]]]*
     PD[-p$120273][pertphi[LI[1]]] - 2*metric\[Delta][-i, -k]*
     metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][pertphi[LI[1]]] - metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-j][perth[LI[1], -l, -p$120272]]*
     PD[-p$120273][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][perth[LI[1], -j, -p$120272]]*PD[-p$120273][
      PD[-k][PD[-i][pertE[LI[1]]]]] - 2*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-l][PD[-j][pertF[LI[1], -p$120272]]]*
     PD[-p$120273][PD[-k][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-l][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][PD[-k][PD[-i][pertE[LI[1]]]]] + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -l, -p$120272]]*PD[-p$120273][
      PD[-k][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-l][perth[LI[1], -i, -p$120272]]*
     PD[-p$120273][PD[-k][PD[-j][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-l][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][
      PD[-k][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-j][perth[LI[1], -k, -p$120272]]*
     PD[-p$120273][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][perth[LI[1], -j, -p$120272]]*PD[-p$120273][
      PD[-l][PD[-i][pertE[LI[1]]]]] + 2*metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-k][PD[-j][pertF[LI[1], -p$120272]]]*
     PD[-p$120273][PD[-l][PD[-i][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-p$120272][PD[-k][PD[-j][pertE[LI[1]]]]]*
     PD[-p$120273][PD[-l][PD[-i][pertE[LI[1]]]]] - 
    metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-i][perth[LI[1], -k, -p$120272]]*PD[-p$120273][
      PD[-l][PD[-j][pertE[LI[1]]]]] - metric\[Delta][p$120273, p$120272]*
     scale[]^2*PD[-k][perth[LI[1], -i, -p$120272]]*
     PD[-p$120273][PD[-l][PD[-j][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$120273, p$120272]*scale[]^2*
     PD[-k][PD[-i][pertF[LI[1], -p$120272]]]*PD[-p$120273][
      PD[-l][PD[-j][pertE[LI[1]]]]]], 
 HoldPattern[pertRiemannCDP[LI[2], -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{h$76389, p$76390, p$76391}, 
   timevec[-a]*(-2*hubbleC[]^2*perth[LI[1], -i, -k]*pertS[LI[1], -j]*
      scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*
      pertS[LI[1], -j]*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*
      pertpsi[LI[1]]*pertS[LI[1], -j]*scale[]^2 + 
     2*hubbleC[]^2*perth[LI[1], -i, -j]*pertS[LI[1], -k]*scale[]^2 - 
     4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertS[LI[1], -k]*
      scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
      pertS[LI[1], -k]*scale[]^2 - hubbleC[]^2*metric\[Delta][-i, -k]*
      pertS[LI[2], -j]*scale[]^2 + hubbleC[]^2*metric\[Delta][-i, -j]*
      pertS[LI[2], -k]*scale[]^2 + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][perth[LI[1], -i, -j]] - 
     hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -i, -k]] - hubbleC[]*metric\[Delta][-i, -k]*
      metric\[Delta][p$76390, p$76391]*pertS[LI[1], -p$76390]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][perth[LI[1], -j, -p$76391]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -k, -p$76391]] + 
     4*hubbleC[]*metric\[Delta][-i, -k]*pertS[LI[1], -j]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertS[LI[1], -k]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]] + 
     hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-i][pertF[LI[1], -j]]] - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-i][pertF[LI[1], -k]]] + 
     hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -i]]] - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]] - 
     (scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-j][perth[LI[2], -i, -k]]])/
      2 + metric\[Delta][-i, -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertphi[LI[2]]]] + 2*hubbleC[]*pertS[LI[1], -k]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     (scale[]^2*timevec[h$76389]*PD[-h$76389][
        PD[-j][PD[-i][pertF[LI[2], -k]]]])/2 - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-k][pertF[LI[1], -i]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]] + 
     (scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-k][perth[LI[2], -i, -j]]])/
      2 - metric\[Delta][-i, -j]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertphi[LI[2]]]] - 2*hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-k][PD[-i][pertE[LI[1]]]]] + 
     (scale[]^2*timevec[h$76389]*PD[-h$76389][
        PD[-k][PD[-i][pertF[LI[2], -j]]]])/2 + 2*hubbleC[]^2*pertS[LI[1], -k]*
      scale[]^2*PD[-i][pertF[LI[1], -j]] - 2*hubbleC[]^2*pertS[LI[1], -j]*
      scale[]^2*PD[-i][pertF[LI[1], -k]] + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][perth[LI[1], -k, -p$76391]]*
       PD[-i][perth[LI[1], -j, -p$76390]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
       PD[-i][perth[LI[1], -j, -p$76390]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][perth[LI[1], -j, -p$76391]]*
       PD[-i][perth[LI[1], -k, -p$76390]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
       PD[-i][perth[LI[1], -k, -p$76390]])/2 + hubbleC[]*pertS[LI[1], -k]*
      scale[]^2*PD[-i][pertS[LI[1], -j]] - hubbleC[]*pertS[LI[1], -j]*
      scale[]^2*PD[-i][pertS[LI[1], -k]] + 2*hubbleC[]^2*perth[LI[1], -i, -k]*
      scale[]^2*PD[-j][pertB[LI[1]]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
      pertphi[LI[1]]*scale[]^2*PD[-j][pertB[LI[1]]] - 
     4*hubbleC[]^2*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
      PD[-j][pertB[LI[1]]] + hubbleC[]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -i, -k]]*PD[-j][pertB[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-i][pertF[LI[1], -k]]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-k][pertF[LI[1], -i]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertB[LI[1]]] + 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
     hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[2]]] + 
     2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]]*
      PD[-j][perth[LI[1], -i, -k]] + (metric\[Delta][p$76390, p$76391]*
       scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -k, -p$76391]]*
       PD[-j][perth[LI[1], -i, -p$76390]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
       PD[-j][perth[LI[1], -i, -p$76390]])/2 - scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -i, -k]]*PD[-j][pertphi[LI[1]]] + 
     4*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
     scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-i][pertF[LI[1], -k]]]*
      PD[-j][pertphi[LI[1]]] - scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertphi[LI[1]]] - 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-j][pertphi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -k]]*
      PD[-j][pertphi[LI[1]]] + 2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*
      PD[-j][pertpsi[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*
      pertphi[LI[1]]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
     4*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -i, -k]]*PD[-j][pertpsi[LI[1]]] - 
     2*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
     scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-i][pertF[LI[1], -k]]]*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertpsi[LI[1]]] + 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-j][pertpsi[LI[1]]] + 2*hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -k]]*
      PD[-j][pertpsi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -k]]*
      PD[-j][pertpsi[LI[1]]] + hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
      PD[-j][pertpsi[LI[2]]] + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
      PD[-j][pertS[LI[1], -i]] - 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
      PD[-j][pertS[LI[1], -k]] + (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-i][perth[LI[1], -k, -p$76391]]*PD[-j][pertS[LI[1], -p$76390]])/2 + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*PD[-j][pertS[LI[1], -p$76391]] - 
     2*hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] + 
     4*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]]*
      PD[-j][PD[-i][pertF[LI[1], -k]]] + metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -k, -p$76391]]*
      PD[-j][PD[-i][pertF[LI[1], -p$76390]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
      PD[-j][PD[-i][pertF[LI[1], -p$76390]]] - 
     (scale[]^2*PD[-j][PD[-i][pertS[LI[2], -k]]])/2 - 
     2*hubbleC[]^2*perth[LI[1], -i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] + 
     4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
      PD[-k][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][-i, -j]*
      pertpsi[LI[1]]*scale[]^2*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -i, -j]]*
      PD[-k][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-i][pertF[LI[1], -j]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-j][pertF[LI[1], -i]]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]*scale[]^2*timevec[h$76389]*PD[-h$76389][
       PD[-j][PD[-i][pertE[LI[1]]]]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
     2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertB[LI[1]]] + 
     2*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
      PD[-k][pertB[LI[1]]] - 4*hubbleC[]^2*scale[]^2*
      PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertB[LI[1]]] - 
     hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[2]]] - 
     2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][pertF[LI[1], -i]] + 
     2*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
     2*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]]*
      PD[-k][perth[LI[1], -i, -j]] - (metric\[Delta][p$76390, p$76391]*
       scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -j, -p$76391]]*
       PD[-k][perth[LI[1], -i, -p$76390]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
       PD[-k][perth[LI[1], -i, -p$76390]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76391]]*PD[-k][perth[LI[1], -i, -p$76390]])/2 + 
     scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -i, -j]]*
      PD[-k][pertphi[LI[1]]] - 4*metric\[Delta][-i, -j]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
     scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-i][pertF[LI[1], -j]]]*
      PD[-k][pertphi[LI[1]]] + scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertphi[LI[1]]] + 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-k][pertphi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -j]]*
      PD[-k][pertphi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
      PD[-k][pertphi[LI[1]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*scale[]^2*
      PD[-k][pertpsi[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
      pertphi[LI[1]]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
     4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -i, -j]]*PD[-k][pertpsi[LI[1]]] + 
     2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][pertphi[LI[1]]]*PD[-k][pertpsi[LI[1]]] - 
     scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-i][pertF[LI[1], -j]]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertpsi[LI[1]]] - 
     2*scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*PD[-i][pertF[LI[1], -j]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -j]]*
      PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]]*
      PD[-k][pertpsi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
      PD[-k][pertpsi[LI[1]]] + 2*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
      PD[-k][pertpsi[LI[1]]] - 4*hubbleC[]*scale[]^2*
      PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertpsi[LI[1]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertpsi[LI[2]]] - 
     hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-k][pertS[LI[1], -i]] + 
     hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     scale[]^2*PD[-j][pertphi[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertS[LI[1], -i]] + 
     2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-k][pertS[LI[1], -j]] - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$76391]]*PD[-k][pertS[LI[1], -p$76390]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$76391]]*PD[-k][pertS[LI[1], -p$76390]])/2 - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$76391]]]*PD[-k][pertS[LI[1], -p$76390]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*PD[-k][pertS[LI[1], -p$76391]] + 
     2*hubbleC[]*pertS[LI[1], -j]*scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] - 
     2*hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*
      PD[-k][PD[-i][pertB[LI[1]]]] - 2*scale[]^2*PD[-j][pertpsi[LI[1]]]*
      PD[-k][PD[-i][pertB[LI[1]]]] - 4*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*
      PD[-k][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]^2*scale[]^2*
      PD[-j][pertB[LI[1]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
     4*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*
      PD[-k][PD[-i][pertE[LI[1]]]] + 2*scale[]^2*timevec[h$76389]*
      PD[-h$76389][pertphi[LI[1]]]*PD[-k][PD[-i][pertF[LI[1], -j]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -j, -p$76391]]*
      PD[-k][PD[-i][pertF[LI[1], -p$76390]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
      PD[-k][PD[-i][pertF[LI[1], -p$76390]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76391]]*PD[-k][PD[-i][pertF[LI[1], -p$76390]]] + 
     (scale[]^2*PD[-k][PD[-i][pertS[LI[2], -j]]])/2 + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -j, -p$76391]]*
      PD[-p$76390][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -k, -p$76391]]*PD[-p$76390][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -k]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76391]]*PD[-p$76390][pertB[LI[1]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*PD[-k][pertS[LI[1], -p$76391]]*PD[-p$76390][pertB[LI[1]]] - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][perth[LI[1], -k, -p$76391]]*PD[-p$76390][
        perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76390, p$76391]*
       scale[]^2*timevec[h$76389]*PD[-h$76389][
        PD[-k][pertF[LI[1], -p$76391]]]*PD[-p$76390][perth[LI[1], -i, -j]])/
      2 + (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76391]]*PD[-p$76390][perth[LI[1], -i, -j]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-h$76389][perth[LI[1], -j, -p$76391]]*PD[-p$76390][
        perth[LI[1], -i, -k]])/2 + (metric\[Delta][p$76390, p$76391]*
       scale[]^2*timevec[h$76389]*PD[-h$76389][
        PD[-j][pertF[LI[1], -p$76391]]]*PD[-p$76390][perth[LI[1], -i, -k]])/
      2 - (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76391]]*PD[-p$76390][perth[LI[1], -i, -k]])/2 - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][perth[LI[1], -j, -p$76391]]*
      PD[-p$76390][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][perth[LI[1], -k, -p$76391]]*PD[-p$76390][pertphi[LI[1]]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      timevec[h$76389]*PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][pertphi[LI[1]]] + metric\[Delta][-i, -k]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76391]]*PD[-p$76390][pertphi[LI[1]]] - 
     metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-k][pertS[LI[1], -p$76391]]*PD[-p$76390][pertphi[LI[1]]] - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-i][perth[LI[1], -k, -p$76391]]*PD[-p$76390][pertS[LI[1], -j]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-k][perth[LI[1], -i, -p$76391]]*PD[-p$76390][pertS[LI[1], -j]])/2 - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-k][PD[-i][pertF[LI[1], -p$76391]]]*PD[-p$76390][pertS[LI[1], -j]] + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-i][perth[LI[1], -j, -p$76391]]*PD[-p$76390][pertS[LI[1], -k]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*
       PD[-j][perth[LI[1], -i, -p$76391]]*PD[-p$76390][pertS[LI[1], -k]])/2 + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][PD[-i][pertF[LI[1], -p$76391]]]*PD[-p$76390][pertS[LI[1], -k]] - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-i][perth[LI[1], -k, -p$76391]]*PD[-p$76390][
        PD[-h$76389][pertF[LI[1], -j]]])/2 - 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-k][perth[LI[1], -i, -p$76391]]*PD[-p$76390][
        PD[-h$76389][pertF[LI[1], -j]]])/2 - metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-k][PD[-i][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][PD[-h$76389][pertF[LI[1], -j]]] + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-i][perth[LI[1], -j, -p$76391]]*PD[-p$76390][
        PD[-h$76389][pertF[LI[1], -k]]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-j][perth[LI[1], -i, -p$76391]]*PD[-p$76390][
        PD[-h$76389][pertF[LI[1], -k]]])/2 + metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-j][PD[-i][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][PD[-h$76389][pertF[LI[1], -k]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-i][perth[LI[1], -k, -p$76391]]*PD[-p$76390][
       PD[-h$76389][PD[-j][pertE[LI[1]]]]] - metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-k][perth[LI[1], -i, -p$76391]]*
      PD[-p$76390][PD[-h$76389][PD[-j][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-k][PD[-i][pertF[LI[1], -p$76391]]]*PD[-p$76390][
       PD[-h$76389][PD[-j][pertE[LI[1]]]]] + metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-i][perth[LI[1], -j, -p$76391]]*
      PD[-p$76390][PD[-h$76389][PD[-k][pertE[LI[1]]]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-j][perth[LI[1], -i, -p$76391]]*PD[-p$76390][
       PD[-h$76389][PD[-k][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-j][PD[-i][pertF[LI[1], -p$76391]]]*PD[-p$76390][
       PD[-h$76389][PD[-k][pertE[LI[1]]]]] + metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -k, -p$76391]]*
      PD[-p$76390][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-k][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][PD[-j][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-k][pertS[LI[1], -p$76391]]*PD[-p$76390][
       PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-h$76389][perth[LI[1], -j, -p$76391]]*
      PD[-p$76390][PD[-k][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-h$76389][PD[-j][pertF[LI[1], -p$76391]]]*
      PD[-p$76390][PD[-k][PD[-i][pertE[LI[1]]]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-j][pertS[LI[1], -p$76391]]*PD[-p$76390][
       PD[-k][PD[-i][pertE[LI[1]]]]] - (metric\[Delta][p$76390, p$76391]*
       scale[]^2*PD[-p$76390][pertS[LI[1], -k]]*PD[-p$76391][
        perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76390, p$76391]*
       scale[]^2*timevec[h$76389]*PD[-p$76390][PD[-h$76389][
         pertF[LI[1], -k]]]*PD[-p$76391][perth[LI[1], -i, -j]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*PD[-p$76390][
        pertS[LI[1], -j]]*PD[-p$76391][perth[LI[1], -i, -k]])/2 + 
     (metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
       PD[-p$76390][PD[-h$76389][pertF[LI[1], -j]]]*
       PD[-p$76391][perth[LI[1], -i, -k]])/2 - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*PD[-p$76391][pertS[LI[1], -j]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*PD[-p$76390][pertB[LI[1]]]*PD[-p$76391][pertS[LI[1], -j]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-p$76390][pertphi[LI[1]]]*PD[-p$76391][pertS[LI[1], -j]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*PD[-p$76391][pertS[LI[1], -k]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*PD[-p$76390][pertB[LI[1]]]*PD[-p$76391][pertS[LI[1], -k]] + 
     metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-p$76390][pertphi[LI[1]]]*PD[-p$76391][pertS[LI[1], -k]] - 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -j]]] + 
     hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][pertB[LI[1]]]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -j]]] - 
     metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      timevec[h$76389]*PD[-p$76390][pertphi[LI[1]]]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -j]]] + 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -k]]] - 
     hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][pertB[LI[1]]]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -k]]] + 
     metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*scale[]^2*
      timevec[h$76389]*PD[-p$76390][pertphi[LI[1]]]*
      PD[-p$76391][PD[-h$76389][pertF[LI[1], -k]]] - 
     2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-p$76391][PD[-j][PD[-h$76389][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][pertB[LI[1]]]*
      PD[-p$76391][PD[-j][PD[-h$76389][pertE[LI[1]]]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][perth[LI[1], -i, -k]]*PD[-p$76391][
       PD[-j][PD[-h$76389][pertE[LI[1]]]]] - 2*metric\[Delta][-i, -k]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][pertphi[LI[1]]]*PD[-p$76391][
       PD[-j][PD[-h$76389][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][PD[-k][PD[-i][pertE[LI[1]]]]]*
      PD[-p$76391][PD[-j][PD[-h$76389][pertE[LI[1]]]]] + 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-p$76390][pertS[LI[1], -k]]*PD[-p$76391][
       PD[-j][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][PD[-h$76389][pertF[LI[1], -k]]]*
      PD[-p$76391][PD[-j][PD[-i][pertE[LI[1]]]]] + 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      pertS[LI[1], -p$76390]*scale[]^2*timevec[h$76389]*
      PD[-p$76391][PD[-k][PD[-h$76389][pertE[LI[1]]]]] - 
     2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][pertB[LI[1]]]*
      PD[-p$76391][PD[-k][PD[-h$76389][pertE[LI[1]]]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][perth[LI[1], -i, -j]]*PD[-p$76391][
       PD[-k][PD[-h$76389][pertE[LI[1]]]]] + 2*metric\[Delta][-i, -j]*
      metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][pertphi[LI[1]]]*PD[-p$76391][
       PD[-k][PD[-h$76389][pertE[LI[1]]]]] + 
     2*metric\[Delta][p$76390, p$76391]*scale[]^2*timevec[h$76389]*
      PD[-p$76390][PD[-j][PD[-i][pertE[LI[1]]]]]*
      PD[-p$76391][PD[-k][PD[-h$76389][pertE[LI[1]]]]] - 
     metric\[Delta][p$76390, p$76391]*scale[]^2*
      PD[-p$76390][pertS[LI[1], -j]]*PD[-p$76391][
       PD[-k][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76390, p$76391]*
      scale[]^2*timevec[h$76389]*PD[-p$76390][PD[-h$76389][pertF[LI[1], -j]]]*
      PD[-p$76391][PD[-k][PD[-i][pertE[LI[1]]]]])], 
 HoldPattern[pertRiemannCDP[LI[2], -(j_Symbol)?TangentM3`Q, 
    -(k_Symbol)?TangentM3`Q, -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{h$76395, p$76396, p$76397}, 
   -(timevec[-a]*(-2*hubbleC[]^2*perth[LI[1], -i, -k]*pertS[LI[1], -j]*
       scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*
       pertS[LI[1], -j]*scale[]^2 + 4*hubbleC[]^2*metric\[Delta][-i, -k]*
       pertpsi[LI[1]]*pertS[LI[1], -j]*scale[]^2 + 
      2*hubbleC[]^2*perth[LI[1], -i, -j]*pertS[LI[1], -k]*scale[]^2 - 
      4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertS[LI[1], -k]*
       scale[]^2 - 4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]*
       pertS[LI[1], -k]*scale[]^2 - hubbleC[]^2*metric\[Delta][-i, -k]*
       pertS[LI[2], -j]*scale[]^2 + hubbleC[]^2*metric\[Delta][-i, -j]*
       pertS[LI[2], -k]*scale[]^2 + hubbleC[]*pertS[LI[1], -k]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][perth[LI[1], -i, -j]] - 
      hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -i, -k]] - hubbleC[]*metric\[Delta][-i, -k]*
       metric\[Delta][p$76396, p$76397]*pertS[LI[1], -p$76396]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -k, -p$76397]] + 
      4*hubbleC[]*metric\[Delta][-i, -k]*pertS[LI[1], -j]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertS[LI[1], -k]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-i][pertF[LI[1], -j]]] - hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-i][pertF[LI[1], -k]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -i]]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -p$76397]]] - 
      (scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-j][perth[LI[2], -i, -k]]])/
       2 + metric\[Delta][-i, -k]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertphi[LI[2]]]] + 2*hubbleC[]*pertS[LI[1], -k]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-j][PD[-i][pertE[LI[1]]]]] - (scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-j][PD[-i][pertF[LI[2], -k]]]])/2 - 
      hubbleC[]*pertS[LI[1], -j]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertF[LI[1], -i]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertF[LI[1], -p$76397]]] + 
      (scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-k][perth[LI[2], -i, -j]]])/
       2 - metric\[Delta][-i, -j]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertphi[LI[2]]]] - 2*hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-k][PD[-i][pertE[LI[1]]]]] + (scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-k][PD[-i][pertF[LI[2], -j]]]])/2 + 
      2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-i][pertF[LI[1], -j]] - 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-i][pertF[LI[1], -k]] + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][perth[LI[1], -k, -p$76397]]*
        PD[-i][perth[LI[1], -j, -p$76396]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-k][pertF[LI[1], -p$76397]]]*
        PD[-i][perth[LI[1], -j, -p$76396]])/2 - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][perth[LI[1], -j, -p$76397]]*
        PD[-i][perth[LI[1], -k, -p$76396]])/2 - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-j][pertF[LI[1], -p$76397]]]*
        PD[-i][perth[LI[1], -k, -p$76396]])/2 + hubbleC[]*pertS[LI[1], -k]*
       scale[]^2*PD[-i][pertS[LI[1], -j]] - hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*PD[-i][pertS[LI[1], -k]] + 2*hubbleC[]^2*
       perth[LI[1], -i, -k]*scale[]^2*PD[-j][pertB[LI[1]]] - 
      4*hubbleC[]^2*metric\[Delta][-i, -k]*pertphi[LI[1]]*scale[]^2*
       PD[-j][pertB[LI[1]]] - 4*hubbleC[]^2*metric\[Delta][-i, -k]*
       pertpsi[LI[1]]*scale[]^2*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -i, -k]]*
       PD[-j][pertB[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-i][pertF[LI[1], -k]]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-k][pertF[LI[1], -i]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-k][PD[-i][pertE[LI[1]]]]]*PD[-j][pertB[LI[1]]] + 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertB[LI[1]]] + 
      hubbleC[]^2*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertB[LI[2]]] + 
      2*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][pertF[LI[1], -i]] - 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*
       PD[-j][perth[LI[1], -i, -k]] + (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -k, -p$76397]]*
        PD[-j][perth[LI[1], -i, -p$76396]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-k][pertF[LI[1], -p$76397]]]*
        PD[-j][perth[LI[1], -i, -p$76396]])/2 - scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -i, -k]]*PD[-j][pertphi[LI[1]]] + 
      4*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
      scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-i][pertF[LI[1], -k]]]*
       PD[-j][pertphi[LI[1]]] - scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertphi[LI[1]]] - 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-j][pertphi[LI[1]]] - scale[]^2*PD[-i][pertS[LI[1], -k]]*
       PD[-j][pertphi[LI[1]]] + 2*hubbleC[]*perth[LI[1], -i, -k]*scale[]^2*
       PD[-j][pertpsi[LI[1]]] - 4*hubbleC[]*metric\[Delta][-i, -k]*
       pertphi[LI[1]]*scale[]^2*PD[-j][pertpsi[LI[1]]] - 
      4*hubbleC[]*metric\[Delta][-i, -k]*pertpsi[LI[1]]*scale[]^2*
       PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -i, -k]]*PD[-j][pertpsi[LI[1]]] - 
      2*metric\[Delta][-i, -k]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-i][pertF[LI[1], -k]]]*
       PD[-j][pertpsi[LI[1]]] + scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertF[LI[1], -i]]]*PD[-j][pertpsi[LI[1]]] + 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-j][pertpsi[LI[1]]] + 2*hubbleC[]*scale[]^2*
       PD[-i][pertF[LI[1], -k]]*PD[-j][pertpsi[LI[1]]] + 
      scale[]^2*PD[-i][pertS[LI[1], -k]]*PD[-j][pertpsi[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*scale[]^2*PD[-j][pertpsi[LI[2]]] + 
      hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][pertS[LI[1], -i]] - 
      2*scale[]^2*PD[-i][pertphi[LI[1]]]*PD[-j][pertS[LI[1], -k]] + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-i][perth[LI[1], -k, -p$76397]]*PD[-j][pertS[LI[1], -p$76396]])/
       2 + hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*PD[-j][pertS[LI[1], -p$76397]] - 
      2*hubbleC[]*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]] + 
      4*hubbleC[]^2*pertS[LI[1], -k]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]] - 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*
       PD[-j][PD[-i][pertF[LI[1], -k]]] + metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -k, -p$76397]]*
       PD[-j][PD[-i][pertF[LI[1], -p$76396]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-k][pertF[LI[1], -p$76397]]]*
       PD[-j][PD[-i][pertF[LI[1], -p$76396]]] - 
      (scale[]^2*PD[-j][PD[-i][pertS[LI[2], -k]]])/2 - 
      2*hubbleC[]^2*perth[LI[1], -i, -j]*scale[]^2*PD[-k][pertB[LI[1]]] + 
      4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*scale[]^2*
       PD[-k][pertB[LI[1]]] + 4*hubbleC[]^2*metric\[Delta][-i, -j]*
       pertpsi[LI[1]]*scale[]^2*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -i, -j]]*
       PD[-k][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-i][pertF[LI[1], -j]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-j][pertF[LI[1], -i]]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-j][PD[-i][pertE[LI[1]]]]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-i][pertF[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertB[LI[1]]] - 
      2*hubbleC[]^2*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]*scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertB[LI[1]]] + 
      2*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*
       PD[-k][pertB[LI[1]]] - 4*hubbleC[]^2*scale[]^2*
       PD[-j][PD[-i][pertE[LI[1]]]]*PD[-k][pertB[LI[1]]] - 
      hubbleC[]^2*metric\[Delta][-i, -j]*scale[]^2*PD[-k][pertB[LI[2]]] - 
      2*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][pertF[LI[1], -i]] + 
      2*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
      2*hubbleC[]*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][pertF[LI[1], -i]] + 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*
       PD[-k][perth[LI[1], -i, -j]] - (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]]*
        PD[-k][perth[LI[1], -i, -p$76396]])/2 - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][PD[-j][pertF[LI[1], -p$76397]]]*
        PD[-k][perth[LI[1], -i, -p$76396]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-j][pertS[LI[1], -p$76397]]*PD[-k][perth[LI[1], -i, -p$76396]])/
       2 + scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -i, -j]]*
       PD[-k][pertphi[LI[1]]] - 4*metric\[Delta][-i, -j]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*PD[-k][pertphi[LI[1]]] + 
      scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-i][pertF[LI[1], -j]]]*
       PD[-k][pertphi[LI[1]]] + scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertphi[LI[1]]] + 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-k][pertphi[LI[1]]] + scale[]^2*PD[-i][pertS[LI[1], -j]]*
       PD[-k][pertphi[LI[1]]] - scale[]^2*PD[-j][pertS[LI[1], -i]]*
       PD[-k][pertphi[LI[1]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*scale[]^2*
       PD[-k][pertpsi[LI[1]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
       pertphi[LI[1]]*scale[]^2*PD[-k][pertpsi[LI[1]]] + 
      4*hubbleC[]*metric\[Delta][-i, -j]*pertpsi[LI[1]]*scale[]^2*
       PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -i, -j]]*PD[-k][pertpsi[LI[1]]] + 
      2*metric\[Delta][-i, -j]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][pertphi[LI[1]]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-i][pertF[LI[1], -j]]]*
       PD[-k][pertpsi[LI[1]]] - scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -i]]]*PD[-k][pertpsi[LI[1]]] - 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-k][pertpsi[LI[1]]] - 2*hubbleC[]*scale[]^2*
       PD[-i][pertF[LI[1], -j]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*PD[-i][pertS[LI[1], -j]]*PD[-k][pertpsi[LI[1]]] - 
      2*hubbleC[]*scale[]^2*PD[-j][pertF[LI[1], -i]]*PD[-k][pertpsi[LI[1]]] - 
      scale[]^2*PD[-j][pertS[LI[1], -i]]*PD[-k][pertpsi[LI[1]]] + 
      2*scale[]^2*PD[-j][PD[-i][pertB[LI[1]]]]*PD[-k][pertpsi[LI[1]]] - 
      4*hubbleC[]*scale[]^2*PD[-j][PD[-i][pertE[LI[1]]]]*
       PD[-k][pertpsi[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*scale[]^2*
       PD[-k][pertpsi[LI[2]]] - hubbleC[]*pertS[LI[1], -j]*scale[]^2*
       PD[-k][pertS[LI[1], -i]] + hubbleC[]*scale[]^2*PD[-j][pertB[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + scale[]^2*PD[-j][pertphi[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + scale[]^2*PD[-j][pertpsi[LI[1]]]*
       PD[-k][pertS[LI[1], -i]] + 2*scale[]^2*PD[-i][pertphi[LI[1]]]*
       PD[-k][pertS[LI[1], -j]] - (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-i][perth[LI[1], -j, -p$76397]]*PD[-k][pertS[LI[1], -p$76396]])/
       2 - (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-j][perth[LI[1], -i, -p$76397]]*PD[-k][pertS[LI[1], -p$76396]])/
       2 - metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$76397]]]*
       PD[-k][pertS[LI[1], -p$76396]] - hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$76396, p$76397]*pertS[LI[1], -p$76396]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76397]] + 2*hubbleC[]*pertS[LI[1], -j]*
       scale[]^2*PD[-k][PD[-i][pertB[LI[1]]]] - 2*hubbleC[]*scale[]^2*
       PD[-j][pertB[LI[1]]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
      2*scale[]^2*PD[-j][pertpsi[LI[1]]]*PD[-k][PD[-i][pertB[LI[1]]]] - 
      4*hubbleC[]^2*pertS[LI[1], -j]*scale[]^2*PD[-k][PD[-i][pertE[LI[1]]]] + 
      4*hubbleC[]^2*scale[]^2*PD[-j][pertB[LI[1]]]*
       PD[-k][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]*scale[]^2*
       PD[-j][pertpsi[LI[1]]]*PD[-k][PD[-i][pertE[LI[1]]]] + 
      2*scale[]^2*timevec[h$76395]*PD[-h$76395][pertphi[LI[1]]]*
       PD[-k][PD[-i][pertF[LI[1], -j]]] - metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76396]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -p$76397]]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76396]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76397]]*
       PD[-k][PD[-i][pertF[LI[1], -p$76396]]] + 
      (scale[]^2*PD[-k][PD[-i][pertS[LI[2], -j]]])/2 + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]]*
       PD[-p$76396][pertB[LI[1]]] - hubbleC[]*metric\[Delta][-i, -j]*
       metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -k, -p$76397]]*PD[-p$76396][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-j][pertF[LI[1], -p$76397]]]*PD[-p$76396][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-k][pertF[LI[1], -p$76397]]]*PD[-p$76396][pertB[LI[1]]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*PD[-j][pertS[LI[1], -p$76397]]*PD[-p$76396][pertB[LI[1]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*PD[-k][pertS[LI[1], -p$76397]]*PD[-p$76396][pertB[LI[1]]] - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][perth[LI[1], -k, -p$76397]]*PD[-p$76396][
         perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-h$76395][
         PD[-k][pertF[LI[1], -p$76397]]]*PD[-p$76396][perth[LI[1], -i, -j]])/
       2 + (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-k][pertS[LI[1], -p$76397]]*PD[-p$76396][perth[LI[1], -i, -j]])/
       2 + (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-h$76395][perth[LI[1], -j, -p$76397]]*PD[-p$76396][
         perth[LI[1], -i, -k]])/2 + (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-h$76395][
         PD[-j][pertF[LI[1], -p$76397]]]*PD[-p$76396][perth[LI[1], -i, -k]])/
       2 - (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-j][pertS[LI[1], -p$76397]]*PD[-p$76396][perth[LI[1], -i, -k]])/
       2 - metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]]*
       PD[-p$76396][pertphi[LI[1]]] + metric\[Delta][-i, -j]*
       metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -k, -p$76397]]*PD[-p$76396][
        pertphi[LI[1]]] - metric\[Delta][-i, -k]*metric\[Delta][p$76396, 
        p$76397]*scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-j][pertF[LI[1], -p$76397]]]*PD[-p$76396][pertphi[LI[1]]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       timevec[h$76395]*PD[-h$76395][PD[-k][pertF[LI[1], -p$76397]]]*
       PD[-p$76396][pertphi[LI[1]]] + metric\[Delta][-i, -k]*
       metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76397]]*PD[-p$76396][pertphi[LI[1]]] - 
      metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-k][pertS[LI[1], -p$76397]]*PD[-p$76396][pertphi[LI[1]]] - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-i][perth[LI[1], -k, -p$76397]]*PD[-p$76396][pertS[LI[1], -j]])/
       2 - (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-k][perth[LI[1], -i, -p$76397]]*PD[-p$76396][pertS[LI[1], -j]])/
       2 - metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-k][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        pertS[LI[1], -j]] + (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-i][perth[LI[1], -j, -p$76397]]*PD[-p$76396][pertS[LI[1], -k]])/
       2 + (metric\[Delta][p$76396, p$76397]*scale[]^2*
        PD[-j][perth[LI[1], -i, -p$76397]]*PD[-p$76396][pertS[LI[1], -k]])/
       2 + metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-j][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        pertS[LI[1], -k]] - (metric\[Delta][p$76396, p$76397]*scale[]^2*
        timevec[h$76395]*PD[-i][perth[LI[1], -k, -p$76397]]*
        PD[-p$76396][PD[-h$76395][pertF[LI[1], -j]]])/2 - 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-k][perth[LI[1], -i, -p$76397]]*PD[-p$76396][
         PD[-h$76395][pertF[LI[1], -j]]])/2 - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-k][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        PD[-h$76395][pertF[LI[1], -j]]] + (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-i][perth[LI[1], -j, -p$76397]]*
        PD[-p$76396][PD[-h$76395][pertF[LI[1], -k]]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-j][perth[LI[1], -i, -p$76397]]*PD[-p$76396][
         PD[-h$76395][pertF[LI[1], -k]]])/2 + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-j][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        PD[-h$76395][pertF[LI[1], -k]]] - metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-i][perth[LI[1], -k, -p$76397]]*
       PD[-p$76396][PD[-h$76395][PD[-j][pertE[LI[1]]]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-k][perth[LI[1], -i, -p$76397]]*PD[-p$76396][
        PD[-h$76395][PD[-j][pertE[LI[1]]]]] - 
      2*metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-k][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        PD[-h$76395][PD[-j][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-i][perth[LI[1], -j, -p$76397]]*PD[-p$76396][
        PD[-h$76395][PD[-k][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-j][perth[LI[1], -i, -p$76397]]*PD[-p$76396][
        PD[-h$76395][PD[-k][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-j][PD[-i][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        PD[-h$76395][PD[-k][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][perth[LI[1], -k, -p$76397]]*PD[-p$76396][
        PD[-j][PD[-i][pertE[LI[1]]]]] + metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][
        PD[-k][pertF[LI[1], -p$76397]]]*PD[-p$76396][
        PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76396, p$76397]*
       scale[]^2*PD[-k][pertS[LI[1], -p$76397]]*PD[-p$76396][
        PD[-j][PD[-i][pertE[LI[1]]]]] - metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-h$76395][perth[LI[1], -j, -p$76397]]*
       PD[-p$76396][PD[-k][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-h$76395][PD[-j][pertF[LI[1], -p$76397]]]*
       PD[-p$76396][PD[-k][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-j][pertS[LI[1], -p$76397]]*PD[-p$76396][
        PD[-k][PD[-i][pertE[LI[1]]]]] - (metric\[Delta][p$76396, p$76397]*
        scale[]^2*PD[-p$76396][pertS[LI[1], -k]]*PD[-p$76397][
         perth[LI[1], -i, -j]])/2 - (metric\[Delta][p$76396, p$76397]*
        scale[]^2*timevec[h$76395]*PD[-p$76396][PD[-h$76395][
          pertF[LI[1], -k]]]*PD[-p$76397][perth[LI[1], -i, -j]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*PD[-p$76396][
         pertS[LI[1], -j]]*PD[-p$76397][perth[LI[1], -i, -k]])/2 + 
      (metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
        PD[-p$76396][PD[-h$76395][pertF[LI[1], -j]]]*
        PD[-p$76397][perth[LI[1], -i, -k]])/2 - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*PD[-p$76397][pertS[LI[1], -j]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*PD[-p$76396][pertB[LI[1]]]*PD[-p$76397][pertS[LI[1], -j]] - 
      metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-p$76396][pertphi[LI[1]]]*PD[-p$76397][pertS[LI[1], -j]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*PD[-p$76397][pertS[LI[1], -k]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*PD[-p$76396][pertB[LI[1]]]*PD[-p$76397][pertS[LI[1], -k]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       PD[-p$76396][pertphi[LI[1]]]*PD[-p$76397][pertS[LI[1], -k]] - 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -j]]] + 
      hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-p$76396][pertB[LI[1]]]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -j]]] - 
      metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       timevec[h$76395]*PD[-p$76396][pertphi[LI[1]]]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -j]]] + 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -k]]] - 
      hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-p$76396][pertB[LI[1]]]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -k]]] + 
      metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*scale[]^2*
       timevec[h$76395]*PD[-p$76396][pertphi[LI[1]]]*
       PD[-p$76397][PD[-h$76395][pertF[LI[1], -k]]] - 
      2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-p$76397][PD[-j][PD[-h$76395][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -k]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-p$76396][pertB[LI[1]]]*
       PD[-p$76397][PD[-j][PD[-h$76395][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][perth[LI[1], -i, -k]]*PD[-p$76397][
        PD[-j][PD[-h$76395][pertE[LI[1]]]]] - 2*metric\[Delta][-i, -k]*
       metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][pertphi[LI[1]]]*PD[-p$76397][
        PD[-j][PD[-h$76395][pertE[LI[1]]]]] - 
      2*metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][PD[-k][PD[-i][pertE[LI[1]]]]]*
       PD[-p$76397][PD[-j][PD[-h$76395][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*PD[-p$76396][
        pertS[LI[1], -k]]*PD[-p$76397][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][PD[-h$76395][pertF[LI[1], -k]]]*
       PD[-p$76397][PD[-j][PD[-i][pertE[LI[1]]]]] + 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       pertS[LI[1], -p$76396]*scale[]^2*timevec[h$76395]*
       PD[-p$76397][PD[-k][PD[-h$76395][pertE[LI[1]]]]] - 
      2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$76396, p$76397]*
       scale[]^2*timevec[h$76395]*PD[-p$76396][pertB[LI[1]]]*
       PD[-p$76397][PD[-k][PD[-h$76395][pertE[LI[1]]]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][perth[LI[1], -i, -j]]*PD[-p$76397][
        PD[-k][PD[-h$76395][pertE[LI[1]]]]] + 2*metric\[Delta][-i, -j]*
       metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][pertphi[LI[1]]]*PD[-p$76397][
        PD[-k][PD[-h$76395][pertE[LI[1]]]]] + 
      2*metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][PD[-j][PD[-i][pertE[LI[1]]]]]*
       PD[-p$76397][PD[-k][PD[-h$76395][pertE[LI[1]]]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*PD[-p$76396][
        pertS[LI[1], -j]]*PD[-p$76397][PD[-k][PD[-i][pertE[LI[1]]]]] - 
      metric\[Delta][p$76396, p$76397]*scale[]^2*timevec[h$76395]*
       PD[-p$76396][PD[-h$76395][pertF[LI[1], -j]]]*
       PD[-p$76397][PD[-k][PD[-i][pertE[LI[1]]]]]))], 
 HoldPattern[pertX[LI[1]]] :> Module[{}, 
   -((primescalar[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2) + 
    (primescalar[]*Scalar[timevec[h$116263]*PD[-h$116263][
         pertscalar[LI[1]]]])/scale[]^2], HoldPattern[pertX[LI[2]]] :> 
  Module[{}, (4*pertpsi[LI[1]]^2*primescalar[]^2)/scale[]^2 - 
    (primescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$241777, p$241778]*
        pertS[LI[1], -p$241777]*pertS[LI[1], -p$241778]])/scale[]^2 - 
    (4*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$241780]*
        PD[-h$241780][pertscalar[LI[1]]]])/scale[]^2 + 
    (primescalar[]*Scalar[timevec[h$241782]*PD[-h$241782][
         pertscalar[LI[2]]]])/scale[]^2 + 
    Scalar[timevec[h$241784]*timevec[h$241785]*PD[-h$241784][
        pertscalar[LI[1]]]*PD[-h$241785][pertscalar[LI[1]]]]/scale[]^2 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$241787, p$241788]*
        pertS[LI[1], -p$241787]*PD[-p$241788][pertB[LI[1]]]])/scale[]^2 - 
    (primescalar[]^2*Scalar[metric\[Delta][p$241790, p$241791]*
        PD[-p$241790][pertB[LI[1]]]*PD[-p$241791][pertB[LI[1]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241793, p$241794]*
        pertS[LI[1], -p$241793]*PD[-p$241794][pertscalar[LI[1]]]])/
     scale[]^2 - (2*primescalar[]*Scalar[metric\[Delta][p$241796, p$241797]*
        PD[-p$241796][pertB[LI[1]]]*PD[-p$241797][pertscalar[LI[1]]]])/
     scale[]^2 - Scalar[metric\[Delta][p$241799, p$241800]*
       PD[-p$241799][pertscalar[LI[1]]]*PD[-p$241800][pertscalar[LI[1]]]]/
     scale[]^2], HoldPattern[pi1[]] :> 
  Module[{}, -(pprimescalar[]/scale[]^2) - (2*hubbleC[]*primescalar[])/
     scale[]^2], HoldPattern[pi10[]] :> 
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
