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
 HoldPattern[pertpi1[LI[1]]] :> 
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
     scale[]^6], HoldPattern[pertpi6[LI[1]]] :> 
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
 HoldPattern[pertpiX[LI[1]]] :> 
  Module[{}, -((primescalar[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2) + 
    (primescalar[]*Scalar[timevec[h$116257]*PD[-h$116257][
         pertscalar[LI[1]]]])/scale[]^2], 
 HoldPattern[pertRicciCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
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
 HoldPattern[pertRiemannCDP[LI[1], -(a_Symbol)?TangentM1`Q, 
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
 HoldPattern[pertX[LI[1]]] :> Module[{}, 
   -((primescalar[]^2*Scalar[pertpsi[LI[1]]])/scale[]^2) + 
    (primescalar[]*Scalar[timevec[h$116263]*PD[-h$116263][
         pertscalar[LI[1]]]])/scale[]^2], HoldPattern[pi1[]] :> 
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
