(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertpi1[LI[2]]] :> 
  Module[{}, (-4*ppprimescalar[]*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^3 + (4*hubbleC[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^3 + 
    (4*primehubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^3 + (ppprimescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^3 - 
    (hubbleC[]^2*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^3 - 
    (primehubbleC[]*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^3 - 
    (6*pprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$131223]*
        PD[-h$131223][pertphi[LI[1]]]])/scale[]^3 + 
    (6*hubbleC[]*primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$131225]*
        PD[-h$131225][pertphi[LI[1]]]])/scale[]^3 - 
    (2*pprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$131227]*
        PD[-h$131227][pertpsi[LI[1]]]])/scale[]^3 + 
    (2*hubbleC[]*primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$131229]*
        PD[-h$131229][pertpsi[LI[1]]]])/scale[]^3 - 
    (8*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$131231]*
        PD[-h$131231][pertscalar[LI[1]]]])/scale[]^3 + 
    (2*pprimescalar[]*Scalar[timevec[h$131233]*PD[-h$131233][
         pertscalar[LI[2]]]])/scale[]^3 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$131235, p$131236]*
        pertscalar[LI[1]]*timevec[h$131237]*PD[-h$131237][
         PD[-p$131235][PD[-p$131236][pertE[LI[1]]]]]])/scale[]^3 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$131239, p$131240]*
        pertscalar[LI[1]]*timevec[h$131241]*PD[-h$131241][
         PD[-p$131239][PD[-p$131240][pertE[LI[1]]]]]])/scale[]^3 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131243, p$131244]*
        pertS[LI[1], -p$131243]*timevec[h$131245]*PD[-h$131245][
         PD[-p$131244][pertscalar[LI[1]]]]])/scale[]^3 - 
    (6*primescalar[]*Scalar[timevec[h$131247]*timevec[h$131248]*
        PD[-h$131247][pertphi[LI[1]]]*PD[-h$131248][pertscalar[LI[1]]]])/
     scale[]^3 - (2*primescalar[]*Scalar[timevec[h$131250]*timevec[h$131251]*
        PD[-h$131250][pertpsi[LI[1]]]*PD[-h$131251][pertscalar[LI[1]]]])/
     scale[]^3 - (4*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$131253]*
        timevec[h$131254]*PD[-h$131254][PD[-h$131253][pertscalar[LI[1]]]]])/
     scale[]^3 + (primescalar[]*Scalar[timevec[h$131256]*timevec[h$131257]*
        PD[-h$131257][PD[-h$131256][pertscalar[LI[2]]]]])/scale[]^3 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131259, p$131260]*
        timevec[h$131261]*timevec[h$131262]*PD[-h$131261][pertscalar[LI[1]]]*
        PD[-h$131262][PD[-p$131259][PD[-p$131260][pertE[LI[1]]]]]])/
     scale[]^3 - (4*primescalar[]*Scalar[metric\[Delta][p$131264, p$131265]*
        timevec[h$131266]*PD[-h$131266][PD[-p$131265][pertscalar[LI[1]]]]*
        PD[-p$131264][pertB[LI[1]]]])/scale[]^3 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131268, p$131269]*
        timevec[h$131270]*PD[-h$131270][pertS[LI[1], -p$131269]]*
        PD[-p$131268][pertscalar[LI[1]]]])/scale[]^3 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131272, p$131273]*
        timevec[h$131274]*PD[-h$131274][PD[-p$131273][pertB[LI[1]]]]*
        PD[-p$131272][pertscalar[LI[1]]]])/scale[]^3 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$131276, p$131277]*
        pertscalar[LI[1]]*PD[-p$131276][PD[-p$131277][pertB[LI[1]]]]])/
     scale[]^3 + (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$131279, p$131280]*pertscalar[LI[1]]*
        PD[-p$131279][PD[-p$131280][pertB[LI[1]]]]])/scale[]^3 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131282, p$131283]*
        timevec[h$131284]*PD[-h$131284][pertscalar[LI[1]]]*
        PD[-p$131282][PD[-p$131283][pertB[LI[1]]]]])/scale[]^3 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$131286, p$131287]*pertphi[LI[1]]*
        PD[-p$131286][PD[-p$131287][pertscalar[LI[1]]]]])/scale[]^3 - 
    (primescalar[]*Scalar[metric\[Delta][p$131289, p$131290]*
        PD[-p$131289][PD[-p$131290][pertscalar[LI[2]]]]])/scale[]^3 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$131292, p$131293]*
        pertS[LI[1], -p$131292]*PD[-p$131293][pertscalar[LI[1]]]])/
     scale[]^3 - (4*pprimescalar[]*Scalar[metric\[Delta][p$131295, p$131296]*
        PD[-p$131295][pertB[LI[1]]]*PD[-p$131296][pertscalar[LI[1]]]])/
     scale[]^3 + (2*primescalar[]*Scalar[metric\[Delta][p$131298, p$131299]*
        PD[-p$131298][pertphi[LI[1]]]*PD[-p$131299][pertscalar[LI[1]]]])/
     scale[]^3 - (2*primescalar[]*Scalar[metric\[Delta][p$131301, p$131302]*
        PD[-p$131301][pertpsi[LI[1]]]*PD[-p$131302][pertscalar[LI[1]]]])/
     scale[]^3 + (2*primescalar[]*Scalar[metric\[Delta][p$131304, p$131305]*
        metric\[Delta][p$131306, p$131307]*PD[-p$131304][pertscalar[LI[1]]]*
        PD[-p$131306][PD[-p$131307][pertF[LI[1], -p$131305]]]])/scale[]^3 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131309, p$131310]*
        metric\[Delta][p$131311, p$131312]*PD[-p$131309][pertscalar[LI[1]]]*
        PD[-p$131311][PD[-p$131312][PD[-p$131310][pertE[LI[1]]]]]])/
     scale[]^3 + (4*primescalar[]*Scalar[metric\[Delta][p$131314, p$131315]*
        metric\[Delta][p$131316, p$131317]*PD[-p$131316][
         pertF[LI[1], -p$131315]]*PD[-p$131317][PD[-p$131314][
          pertscalar[LI[1]]]]])/scale[]^3 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131319, p$131320]*
        metric\[Delta][p$131321, p$131322]*PD[-p$131321][
         PD[-p$131320][pertE[LI[1]]]]*PD[-p$131322][PD[-p$131319][
          pertscalar[LI[1]]]]])/scale[]^3 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131324, p$131325]*
        metric\[Delta][p$131326, p$131327]*perth[LI[1], -p$131324, -p$131326]*
        PD[-p$131327][PD[-p$131325][pertscalar[LI[1]]]]])/scale[]^3 - 
    (8*pertpsi[LI[1]]^2*pprimescalar[])/scale[]^2 - 
    (16*hubbleC[]*pertpsi[LI[1]]^2*primescalar[])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$131331, p$131332]*
        pertS[LI[1], -p$131331]*pertS[LI[1], -p$131332]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$131334, p$131335]*
        pertS[LI[1], -p$131334]*pertS[LI[1], -p$131335]])/scale[]^2 + 
    (primescalar[]*Scalar[metric\[Delta][p$131337, p$131338]*
        metric\[Delta][p$131339, p$131340]*perth[LI[1], -p$131337, -p$131339]*
        timevec[h$131341]*PD[-h$131341][perth[LI[1], -p$131338, -p$131340]]])/
     scale[]^2 + (12*primescalar[]*Scalar[pertphi[LI[1]]*timevec[h$131343]*
        PD[-h$131343][pertphi[LI[1]]]])/scale[]^2 - 
    (12*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$131345]*
        PD[-h$131345][pertphi[LI[1]]]])/scale[]^2 + 
    (3*primescalar[]*Scalar[timevec[h$131347]*PD[-h$131347][pertphi[LI[2]]]])/
     scale[]^2 - (8*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$131349]*
        PD[-h$131349][pertpsi[LI[1]]]])/scale[]^2 + 
    (primescalar[]*Scalar[timevec[h$131351]*PD[-h$131351][pertpsi[LI[2]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$131353, p$131354]*
        pertS[LI[1], -p$131353]*timevec[h$131355]*PD[-h$131355][
         pertS[LI[1], -p$131354]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$131357, p$131358]*pertphi[LI[1]]*
        timevec[h$131359]*PD[-h$131359][PD[-p$131357][PD[-p$131358][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131361, p$131362]*pertpsi[LI[1]]*
        timevec[h$131363]*PD[-h$131363][PD[-p$131361][PD[-p$131362][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (primescalar[]*Scalar[metric\[Delta][p$131365, p$131366]*
        timevec[h$131367]*PD[-h$131367][PD[-p$131365][PD[-p$131366][
           pertE[LI[2]]]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131369, p$131370]*
        pertS[LI[1], -p$131369]*timevec[h$131371]*PD[-h$131371][
         PD[-p$131370][pertB[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131373, p$131374]*
        metric\[Delta][p$131375, p$131376]*perth[LI[1], -p$131373, -p$131375]*
        timevec[h$131377]*PD[-h$131377][PD[-p$131376][pertF[LI[1], 
           -p$131374]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131379, p$131380]*
        metric\[Delta][p$131381, p$131382]*perth[LI[1], -p$131379, -p$131381]*
        timevec[h$131383]*PD[-h$131383][PD[-p$131382][PD[-p$131380][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131385, p$131386]*
        timevec[h$131387]*PD[-h$131387][pertS[LI[1], -p$131386]]*
        PD[-p$131385][pertB[LI[1]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131389, p$131390]*
        timevec[h$131391]*PD[-h$131391][PD[-p$131390][pertB[LI[1]]]]*
        PD[-p$131389][pertB[LI[1]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131393, p$131394]*pertphi[LI[1]]*
        PD[-p$131393][PD[-p$131394][pertB[LI[1]]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$131396, p$131397]*pertpsi[LI[1]]*
        PD[-p$131396][PD[-p$131397][pertB[LI[1]]]]])/scale[]^2 + 
    (primescalar[]*Scalar[metric\[Delta][p$131399, p$131400]*
        PD[-p$131399][PD[-p$131400][pertB[LI[2]]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$131402, p$131403]*
        timevec[h$131404]*PD[-h$131404][pertphi[LI[1]]]*
        PD[-p$131402][PD[-p$131403][pertE[LI[1]]]]])/scale[]^2 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$131406, p$131407]*
        pertS[LI[1], -p$131406]*PD[-p$131407][pertB[LI[1]]]])/scale[]^2 - 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$131409, p$131410]*
        pertS[LI[1], -p$131409]*PD[-p$131410][pertB[LI[1]]]])/scale[]^2 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$131412, p$131413]*
        PD[-p$131412][pertB[LI[1]]]*PD[-p$131413][pertB[LI[1]]]])/scale[]^2 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$131415, p$131416]*
        PD[-p$131415][pertB[LI[1]]]*PD[-p$131416][pertB[LI[1]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131418, p$131419]*
        metric\[Delta][p$131420, p$131421]*timevec[h$131422]*
        PD[-h$131422][perth[LI[1], -p$131419, -p$131421]]*
        PD[-p$131420][pertF[LI[1], -p$131418]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131424, p$131425]*
        metric\[Delta][p$131426, p$131427]*timevec[h$131428]*
        PD[-h$131428][PD[-p$131427][pertF[LI[1], -p$131424]]]*
        PD[-p$131426][pertF[LI[1], -p$131425]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131430, p$131431]*
        metric\[Delta][p$131432, p$131433]*timevec[h$131434]*
        PD[-h$131434][PD[-p$131433][PD[-p$131430][pertE[LI[1]]]]]*
        PD[-p$131432][pertF[LI[1], -p$131431]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131436, p$131437]*
        metric\[Delta][p$131438, p$131439]*PD[-p$131436][
         pertS[LI[1], -p$131439]]*PD[-p$131438][pertF[LI[1], -p$131437]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$131441, p$131442]*
        metric\[Delta][p$131443, p$131444]*timevec[h$131445]*
        PD[-p$131441][PD[-h$131445][pertF[LI[1], -p$131444]]]*
        PD[-p$131443][pertF[LI[1], -p$131442]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131447, p$131448]*
        pertS[LI[1], -p$131447]*PD[-p$131448][pertphi[LI[1]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131450, p$131451]*
        PD[-p$131450][pertB[LI[1]]]*PD[-p$131451][pertphi[LI[1]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$131453, p$131454]*
        pertS[LI[1], -p$131453]*PD[-p$131454][pertpsi[LI[1]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131456, p$131457]*
        PD[-p$131456][pertB[LI[1]]]*PD[-p$131457][pertpsi[LI[1]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$131459, p$131460]*
        metric\[Delta][p$131461, p$131462]*perth[LI[1], -p$131459, -p$131462]*
        PD[-p$131461][pertS[LI[1], -p$131460]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131464, p$131465]*
        metric\[Delta][p$131466, p$131467]*timevec[h$131468]*
        PD[-h$131468][perth[LI[1], -p$131465, -p$131467]]*
        PD[-p$131466][PD[-p$131464][pertE[LI[1]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131470, p$131471]*
        metric\[Delta][p$131472, p$131473]*timevec[h$131474]*
        PD[-h$131474][PD[-p$131473][pertF[LI[1], -p$131470]]]*
        PD[-p$131472][PD[-p$131471][pertE[LI[1]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131476, p$131477]*
        metric\[Delta][p$131478, p$131479]*timevec[h$131480]*
        PD[-h$131480][PD[-p$131479][PD[-p$131476][pertE[LI[1]]]]]*
        PD[-p$131478][PD[-p$131477][pertE[LI[1]]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131482, p$131483]*
        metric\[Delta][p$131484, p$131485]*pertS[LI[1], -p$131482]*
        PD[-p$131484][PD[-p$131485][pertF[LI[1], -p$131483]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131487, p$131488]*
        metric\[Delta][p$131489, p$131490]*PD[-p$131487][pertB[LI[1]]]*
        PD[-p$131489][PD[-p$131490][pertF[LI[1], -p$131488]]]])/scale[]^2 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$131492, p$131493]*
        metric\[Delta][p$131494, p$131495]*pertS[LI[1], -p$131492]*
        PD[-p$131494][PD[-p$131495][PD[-p$131493][pertE[LI[1]]]]]])/
     scale[]^2 - (2*primescalar[]*Scalar[metric\[Delta][p$131497, p$131498]*
        metric\[Delta][p$131499, p$131500]*PD[-p$131497][pertB[LI[1]]]*
        PD[-p$131499][PD[-p$131500][PD[-p$131498][pertE[LI[1]]]]]])/
     scale[]^2 + (2*primescalar[]*Scalar[metric\[Delta][p$131502, p$131503]*
        metric\[Delta][p$131504, p$131505]*PD[-p$131504][
         pertF[LI[1], -p$131503]]*PD[-p$131505][pertS[LI[1], -p$131502]]])/
     scale[]^2 - (4*primescalar[]*Scalar[metric\[Delta][p$131507, p$131508]*
        metric\[Delta][p$131509, p$131510]*PD[-p$131509][
         pertF[LI[1], -p$131508]]*PD[-p$131510][PD[-p$131507][
          pertB[LI[1]]]]])/scale[]^2 + 
    (4*primescalar[]*Scalar[metric\[Delta][p$131512, p$131513]*
        metric\[Delta][p$131514, p$131515]*PD[-p$131514][
         pertS[LI[1], -p$131513]]*PD[-p$131515][PD[-p$131512][
          pertE[LI[1]]]]])/scale[]^2 - 
    (4*primescalar[]*Scalar[metric\[Delta][p$131517, p$131518]*
        metric\[Delta][p$131519, p$131520]*PD[-p$131519][
         PD[-p$131518][pertB[LI[1]]]]*PD[-p$131520][PD[-p$131517][
          pertE[LI[1]]]]])/scale[]^2 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$131522, p$131523]*
        metric\[Delta][p$131524, p$131525]*perth[LI[1], -p$131522, -p$131524]*
        PD[-p$131525][PD[-p$131523][pertB[LI[1]]]]])/scale[]^2], 
 HoldPattern[pertpi2[LI[2]]] :> 
  Module[{}, (2*pertscalar[LI[1]]^2*ppprimescalar[]^2)/scale[]^6 - 
    (12*hubbleC[]*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[])/
     scale[]^6 + (24*hubbleC[]^2*pertscalar[LI[1]]^2*pprimescalar[]^2)/
     scale[]^6 + (8*hubbleC[]^2*pertscalar[LI[1]]^2*ppprimescalar[]*
      primescalar[])/scale[]^6 - (36*hubbleC[]^3*pertscalar[LI[1]]^2*
      pprimescalar[]*primescalar[])/scale[]^6 - 
    (4*pertscalar[LI[1]]^2*ppprimescalar[]*primehubbleC[]*primescalar[])/
     scale[]^6 + (12*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]*
      primehubbleC[]*primescalar[])/scale[]^6 + 
    (14*hubbleC[]^4*pertscalar[LI[1]]^2*primescalar[]^2)/scale[]^6 - 
    (8*hubbleC[]^2*pertscalar[LI[1]]^2*primehubbleC[]*primescalar[]^2)/
     scale[]^6 + (2*pertscalar[LI[1]]^2*primehubbleC[]^2*primescalar[]^2)/
     scale[]^6 + (8*ppprimescalar[]*pprimescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148536]*PD[-h$148536][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (24*hubbleC[]*pprimescalar[]^2*Scalar[pertscalar[LI[1]]*timevec[h$148538]*
        PD[-h$148538][pertscalar[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*ppprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148540]*PD[-h$148540][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (64*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148542]*PD[-h$148542][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (8*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148544]*PD[-h$148544][
         pertscalar[LI[1]]]])/scale[]^6 - 
    (36*hubbleC[]^3*primescalar[]^2*Scalar[pertscalar[LI[1]]*
        timevec[h$148546]*PD[-h$148546][pertscalar[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$148548]*PD[-h$148548][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (8*pprimescalar[]^2*Scalar[timevec[h$148550]*timevec[h$148551]*
        PD[-h$148550][pertscalar[LI[1]]]*PD[-h$148551][pertscalar[LI[1]]]])/
     scale[]^6 - (24*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$148553]*timevec[h$148554]*PD[-h$148553][
         pertscalar[LI[1]]]*PD[-h$148554][pertscalar[LI[1]]]])/scale[]^6 + 
    (24*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$148556]*
        timevec[h$148557]*PD[-h$148556][pertscalar[LI[1]]]*
        PD[-h$148557][pertscalar[LI[1]]]])/scale[]^6 + 
    (4*ppprimescalar[]*primescalar[]*Scalar[pertscalar[LI[1]]*
        timevec[h$148559]*timevec[h$148560]*PD[-h$148560][
         PD[-h$148559][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148562]*timevec[h$148563]*
        PD[-h$148563][PD[-h$148562][pertscalar[LI[1]]]]])/scale[]^6 + 
    (8*hubbleC[]^2*primescalar[]^2*Scalar[pertscalar[LI[1]]*timevec[h$148565]*
        timevec[h$148566]*PD[-h$148566][PD[-h$148565][pertscalar[LI[1]]]]])/
     scale[]^6 - (4*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$148568]*timevec[h$148569]*
        PD[-h$148569][PD[-h$148568][pertscalar[LI[1]]]]])/scale[]^6 + 
    (8*pprimescalar[]*primescalar[]*Scalar[timevec[h$148571]*
        timevec[h$148572]*timevec[h$148573]*PD[-h$148571][pertscalar[LI[1]]]*
        PD[-h$148573][PD[-h$148572][pertscalar[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^2*Scalar[timevec[h$148575]*timevec[h$148576]*
        timevec[h$148577]*PD[-h$148575][pertscalar[LI[1]]]*
        PD[-h$148577][PD[-h$148576][pertscalar[LI[1]]]]])/scale[]^6 + 
    (2*primescalar[]^2*Scalar[timevec[h$148579]*timevec[h$148580]*
        timevec[h$148581]*timevec[h$148582]*PD[-h$148580][
         PD[-h$148579][pertscalar[LI[1]]]]*PD[-h$148582][
         PD[-h$148581][pertscalar[LI[1]]]]])/scale[]^6 - 
    (8*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148584, p$148585]*
        timevec[h$148586]*PD[-h$148586][PD[-p$148585][pertscalar[LI[1]]]]*
        PD[-p$148584][pertscalar[LI[1]]]])/scale[]^6 + 
    (16*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148588, p$148589]*
        timevec[h$148590]*PD[-h$148590][PD[-p$148589][pertscalar[LI[1]]]]*
        PD[-p$148588][pertscalar[LI[1]]]])/scale[]^6 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148592, p$148593]*
        timevec[h$148594]*timevec[h$148595]*PD[-h$148594][
         PD[-p$148593][pertscalar[LI[1]]]]*PD[-p$148592][
         PD[-h$148595][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148597, p$148598]*pertscalar[LI[1]]*
        PD[-p$148597][PD[-p$148598][pertscalar[LI[1]]]]])/scale[]^6 + 
    (4*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148600, p$148601]*
        pertscalar[LI[1]]*PD[-p$148600][PD[-p$148601][pertscalar[LI[1]]]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148603, p$148604]*timevec[h$148605]*
        PD[-h$148605][pertscalar[LI[1]]]*PD[-p$148603][
         PD[-p$148604][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*pprimescalar[]^2*Scalar[metric\[Delta][p$148607, p$148608]*
        PD[-p$148607][pertscalar[LI[1]]]*PD[-p$148608][pertscalar[LI[1]]]])/
     scale[]^6 + (16*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148610, p$148611]*PD[-p$148610][
         pertscalar[LI[1]]]*PD[-p$148611][pertscalar[LI[1]]]])/scale[]^6 - 
    (16*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148613, p$148614]*
        PD[-p$148613][pertscalar[LI[1]]]*PD[-p$148614][pertscalar[LI[1]]]])/
     scale[]^6 + (2*primescalar[]^2*Scalar[metric\[Delta][p$148616, p$148617]*
        metric\[Delta][p$148618, p$148619]*PD[-p$148618][
         PD[-p$148617][pertscalar[LI[1]]]]*PD[-p$148619][
         PD[-p$148616][pertscalar[LI[1]]]]])/scale[]^6 + 
    (16*ppprimescalar[]*pprimescalar[]*Scalar[pertpsi[LI[1]]*
        pertscalar[LI[1]]])/scale[]^5 - 
    (48*hubbleC[]*pprimescalar[]^2*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^5 - (16*hubbleC[]*ppprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 + 
    (128*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 - 
    (16*pprimescalar[]*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 - 
    (80*hubbleC[]^3*primescalar[]^2*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^5 + (16*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 - 
    (2*ppprimescalar[]*pprimescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (6*hubbleC[]*pprimescalar[]^2*Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (2*hubbleC[]*ppprimescalar[]*primescalar[]*Scalar[pertscalar[LI[2]]])/
     scale[]^5 - (16*hubbleC[]^2*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (2*pprimescalar[]*primehubbleC[]*primescalar[]*Scalar[pertscalar[LI[2]]])/
     scale[]^5 + (10*hubbleC[]^3*primescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^5 - (2*hubbleC[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148635]*PD[-h$148635][
         pertphi[LI[1]]]])/scale[]^5 - (24*hubbleC[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$148637]*PD[-h$148637][
         pertphi[LI[1]]]])/scale[]^5 + 
    (4*pprimescalar[]^2*Scalar[pertscalar[LI[1]]*timevec[h$148639]*
        PD[-h$148639][pertpsi[LI[1]]]])/scale[]^5 + 
    (4*ppprimescalar[]*primescalar[]*Scalar[pertscalar[LI[1]]*
        timevec[h$148641]*PD[-h$148641][pertpsi[LI[1]]]])/scale[]^5 - 
    (20*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$148643]*PD[-h$148643][
         pertpsi[LI[1]]]])/scale[]^5 + (12*hubbleC[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$148645]*PD[-h$148645][
         pertpsi[LI[1]]]])/scale[]^5 - (4*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$148647]*PD[-h$148647][
         pertpsi[LI[1]]]])/scale[]^5 + 
    (32*pprimescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$148649]*
        PD[-h$148649][pertscalar[LI[1]]]])/scale[]^5 - 
    (80*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$148651]*PD[-h$148651][
         pertscalar[LI[1]]]])/scale[]^5 + 
    (96*hubbleC[]^2*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$148653]*
        PD[-h$148653][pertscalar[LI[1]]]])/scale[]^5 - 
    (4*pprimescalar[]^2*Scalar[timevec[h$148655]*PD[-h$148655][
         pertscalar[LI[2]]]])/scale[]^5 + 
    (10*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$148657]*PD[-h$148657][pertscalar[LI[2]]]])/scale[]^5 - 
    (12*hubbleC[]^2*primescalar[]^2*Scalar[timevec[h$148659]*
        PD[-h$148659][pertscalar[LI[2]]]])/scale[]^5 - 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148661, p$148662]*pertscalar[LI[1]]*
        timevec[h$148663]*PD[-h$148663][PD[-p$148661][PD[-p$148662][
           pertE[LI[1]]]]]])/scale[]^5 + 
    (8*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148665, p$148666]*
        pertscalar[LI[1]]*timevec[h$148667]*PD[-h$148667][
         PD[-p$148665][PD[-p$148666][pertE[LI[1]]]]]])/scale[]^5 - 
    (8*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148669, p$148670]*
        pertS[LI[1], -p$148669]*timevec[h$148671]*PD[-h$148671][
         PD[-p$148670][pertscalar[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148673, p$148674]*
        pertS[LI[1], -p$148673]*timevec[h$148675]*PD[-h$148675][
         PD[-p$148674][pertscalar[LI[1]]]]])/scale[]^5 + 
    (24*hubbleC[]*primescalar[]^2*Scalar[timevec[h$148677]*timevec[h$148678]*
        PD[-h$148677][pertphi[LI[1]]]*PD[-h$148678][pertscalar[LI[1]]]])/
     scale[]^5 + (12*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$148680]*timevec[h$148681]*PD[-h$148680][
         pertpsi[LI[1]]]*PD[-h$148681][pertscalar[LI[1]]]])/scale[]^5 - 
    (16*hubbleC[]*primescalar[]^2*Scalar[timevec[h$148683]*timevec[h$148684]*
        PD[-h$148683][pertpsi[LI[1]]]*PD[-h$148684][pertscalar[LI[1]]]])/
     scale[]^5 + (16*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$148686]*timevec[h$148687]*
        PD[-h$148687][PD[-h$148686][pertscalar[LI[1]]]]])/scale[]^5 - 
    (16*hubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$148689]*
        timevec[h$148690]*PD[-h$148690][PD[-h$148689][pertscalar[LI[1]]]]])/
     scale[]^5 - (2*pprimescalar[]*primescalar[]*
      Scalar[timevec[h$148692]*timevec[h$148693]*PD[-h$148693][
         PD[-h$148692][pertscalar[LI[2]]]]])/scale[]^5 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[timevec[h$148695]*timevec[h$148696]*
        PD[-h$148696][PD[-h$148695][pertscalar[LI[2]]]]])/scale[]^5 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148698, p$148699]*
        timevec[h$148700]*timevec[h$148701]*PD[-h$148700][pertscalar[LI[1]]]*
        PD[-h$148701][PD[-p$148698][PD[-p$148699][pertE[LI[1]]]]]])/
     scale[]^5 + (4*primescalar[]^2*Scalar[timevec[h$148703]*
        timevec[h$148704]*timevec[h$148705]*PD[-h$148703][pertpsi[LI[1]]]*
        PD[-h$148705][PD[-h$148704][pertscalar[LI[1]]]]])/scale[]^5 + 
    (8*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148707, p$148708]*
        timevec[h$148709]*PD[-h$148709][PD[-p$148708][pertscalar[LI[1]]]]*
        PD[-p$148707][pertB[LI[1]]]])/scale[]^5 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148711, p$148712]*
        timevec[h$148713]*PD[-h$148713][PD[-p$148712][pertscalar[LI[1]]]]*
        PD[-p$148711][pertB[LI[1]]]])/scale[]^5 - 
    (8*primescalar[]^2*Scalar[metric\[Delta][p$148715, p$148716]*
        timevec[h$148717]*PD[-h$148717][PD[-p$148716][pertscalar[LI[1]]]]*
        PD[-p$148715][pertpsi[LI[1]]]])/scale[]^5 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148719, p$148720]*
        timevec[h$148721]*PD[-h$148721][pertS[LI[1], -p$148720]]*
        PD[-p$148719][pertscalar[LI[1]]]])/scale[]^5 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148723, p$148724]*
        timevec[h$148725]*PD[-h$148725][pertS[LI[1], -p$148724]]*
        PD[-p$148723][pertscalar[LI[1]]]])/scale[]^5 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148727, p$148728]*
        timevec[h$148729]*PD[-h$148729][PD[-p$148728][pertB[LI[1]]]]*
        PD[-p$148727][pertscalar[LI[1]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148731, p$148732]*
        timevec[h$148733]*PD[-h$148733][PD[-p$148732][pertB[LI[1]]]]*
        PD[-p$148731][pertscalar[LI[1]]]])/scale[]^5 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148735, p$148736]*pertscalar[LI[1]]*
        PD[-p$148735][PD[-p$148736][pertB[LI[1]]]]])/scale[]^5 - 
    (8*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148738, p$148739]*
        pertscalar[LI[1]]*PD[-p$148738][PD[-p$148739][pertB[LI[1]]]]])/
     scale[]^5 + (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148741, p$148742]*timevec[h$148743]*
        PD[-h$148743][pertscalar[LI[1]]]*PD[-p$148741][
         PD[-p$148742][pertB[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148745, p$148746]*
        pertphi[LI[1]]*PD[-p$148745][PD[-p$148746][pertscalar[LI[1]]]]])/
     scale[]^5 - (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148748, p$148749]*pertpsi[LI[1]]*
        PD[-p$148748][PD[-p$148749][pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148751, p$148752]*
        timevec[h$148753]*PD[-h$148753][pertphi[LI[1]]]*
        PD[-p$148751][PD[-p$148752][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148755, p$148756]*
        PD[-p$148755][PD[-p$148756][pertscalar[LI[2]]]]])/scale[]^5 - 
    (8*pprimescalar[]^2*Scalar[metric\[Delta][p$148758, p$148759]*
        pertS[LI[1], -p$148758]*PD[-p$148759][pertscalar[LI[1]]]])/
     scale[]^5 + (20*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148761, p$148762]*pertS[LI[1], -p$148761]*
        PD[-p$148762][pertscalar[LI[1]]]])/scale[]^5 - 
    (24*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148764, p$148765]*
        pertS[LI[1], -p$148764]*PD[-p$148765][pertscalar[LI[1]]]])/
     scale[]^5 + (8*pprimescalar[]^2*
      Scalar[metric\[Delta][p$148767, p$148768]*PD[-p$148767][pertB[LI[1]]]*
        PD[-p$148768][pertscalar[LI[1]]]])/scale[]^5 - 
    (20*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148770, p$148771]*PD[-p$148770][pertB[LI[1]]]*
        PD[-p$148771][pertscalar[LI[1]]]])/scale[]^5 + 
    (24*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148773, p$148774]*
        PD[-p$148773][pertB[LI[1]]]*PD[-p$148774][pertscalar[LI[1]]]])/
     scale[]^5 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148776, p$148777]*PD[-p$148776][pertphi[LI[1]]]*
        PD[-p$148777][pertscalar[LI[1]]]])/scale[]^5 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148779, p$148780]*
        PD[-p$148779][pertpsi[LI[1]]]*PD[-p$148780][pertscalar[LI[1]]]])/
     scale[]^5 + (12*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148782, p$148783]*PD[-p$148782][pertpsi[LI[1]]]*
        PD[-p$148783][pertscalar[LI[1]]]])/scale[]^5 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$148785, p$148786]*
        metric\[Delta][p$148787, p$148788]*timevec[h$148789]*
        PD[-h$148789][perth[LI[1], -p$148786, -p$148788]]*
        PD[-p$148787][PD[-p$148785][pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148791, p$148792]*
        metric\[Delta][p$148793, p$148794]*PD[-p$148791][pertscalar[LI[1]]]*
        PD[-p$148793][PD[-p$148794][pertF[LI[1], -p$148792]]]])/scale[]^5 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148796, p$148797]*
        metric\[Delta][p$148798, p$148799]*timevec[h$148800]*
        PD[-h$148800][PD[-p$148799][PD[-p$148796][pertE[LI[1]]]]]*
        PD[-p$148798][PD[-p$148797][pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148802, p$148803]*
        metric\[Delta][p$148804, p$148805]*PD[-p$148802][pertscalar[LI[1]]]*
        PD[-p$148804][PD[-p$148805][PD[-p$148803][pertE[LI[1]]]]]])/
     scale[]^5 - (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148807, p$148808]*metric\[Delta][p$148809, 
         p$148810]*PD[-p$148809][pertF[LI[1], -p$148808]]*
        PD[-p$148810][PD[-p$148807][pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148812, p$148813]*
        metric\[Delta][p$148814, p$148815]*PD[-p$148814][
         pertS[LI[1], -p$148813]]*PD[-p$148815][PD[-p$148812][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148817, p$148818]*
        metric\[Delta][p$148819, p$148820]*timevec[h$148821]*
        PD[-p$148819][PD[-h$148821][pertF[LI[1], -p$148818]]]*
        PD[-p$148820][PD[-p$148817][pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148823, p$148824]*
        metric\[Delta][p$148825, p$148826]*PD[-p$148825][
         PD[-p$148824][pertB[LI[1]]]]*PD[-p$148826][PD[-p$148823][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148828, p$148829]*
        metric\[Delta][p$148830, p$148831]*PD[-p$148830][
         PD[-p$148829][pertE[LI[1]]]]*PD[-p$148831][PD[-p$148828][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148833, p$148834]*
        metric\[Delta][p$148835, p$148836]*perth[LI[1], -p$148833, -p$148835]*
        PD[-p$148836][PD[-p$148834][pertscalar[LI[1]]]]])/scale[]^5 + 
    (24*pertpsi[LI[1]]^2*pprimescalar[]^2)/scale[]^4 - 
    (48*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]*primescalar[])/scale[]^4 + 
    (96*hubbleC[]^2*pertpsi[LI[1]]^2*primescalar[]^2)/scale[]^4 - 
    (4*pprimescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[2]]])/
     scale[]^4 - (16*hubbleC[]^2*primescalar[]^2*Scalar[pertpsi[LI[2]]])/
     scale[]^4 - (4*pprimescalar[]^2*
      Scalar[metric\[Delta][p$148841, p$148842]*pertS[LI[1], -p$148841]*
        pertS[LI[1], -p$148842]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148844, p$148845]*pertS[LI[1], -p$148844]*
        pertS[LI[1], -p$148845]])/scale[]^4 - 
    (16*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148847, p$148848]*
        pertS[LI[1], -p$148847]*pertS[LI[1], -p$148848]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148850, p$148851]*
        metric\[Delta][p$148852, p$148853]*perth[LI[1], -p$148850, -p$148852]*
        timevec[h$148854]*PD[-h$148854][perth[LI[1], -p$148851, -p$148853]]])/
     scale[]^4 - (24*hubbleC[]*primescalar[]^2*
      Scalar[pertphi[LI[1]]*timevec[h$148856]*PD[-h$148856][pertphi[LI[1]]]])/
     scale[]^4 + (48*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$148858]*PD[-h$148858][pertphi[LI[1]]]])/
     scale[]^4 - (6*hubbleC[]*primescalar[]^2*
      Scalar[timevec[h$148860]*PD[-h$148860][pertphi[LI[2]]]])/scale[]^4 + 
    (24*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$148862]*
        PD[-h$148862][pertpsi[LI[1]]]])/scale[]^4 - 
    (24*hubbleC[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$148864]*
        PD[-h$148864][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*primescalar[]*Scalar[timevec[h$148866]*
        PD[-h$148866][pertpsi[LI[2]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[timevec[h$148868]*
        PD[-h$148868][pertpsi[LI[2]]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148870, p$148871]*
        pertS[LI[1], -p$148870]*timevec[h$148872]*PD[-h$148872][
         pertS[LI[1], -p$148871]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148874, p$148875]*
        pertS[LI[1], -p$148874]*timevec[h$148876]*PD[-h$148876][
         pertS[LI[1], -p$148875]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148878, p$148879]*
        pertphi[LI[1]]*timevec[h$148880]*PD[-h$148880][
         PD[-p$148878][PD[-p$148879][pertE[LI[1]]]]]])/scale[]^4 - 
    (16*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148882, p$148883]*
        pertpsi[LI[1]]*timevec[h$148884]*PD[-h$148884][
         PD[-p$148882][PD[-p$148883][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148886, p$148887]*
        timevec[h$148888]*PD[-h$148888][PD[-p$148886][PD[-p$148887][
           pertE[LI[2]]]]]])/scale[]^4 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148890, p$148891]*
        pertS[LI[1], -p$148890]*timevec[h$148892]*PD[-h$148892][
         PD[-p$148891][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148894, p$148895]*
        pertS[LI[1], -p$148894]*timevec[h$148896]*PD[-h$148896][
         PD[-p$148895][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148898, p$148899]*
        metric\[Delta][p$148900, p$148901]*perth[LI[1], -p$148898, -p$148900]*
        timevec[h$148902]*PD[-h$148902][PD[-p$148901][pertF[LI[1], 
           -p$148899]]]])/scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148904, p$148905]*metric\[Delta][p$148906, 
         p$148907]*perth[LI[1], -p$148904, -p$148906]*timevec[h$148908]*
        PD[-h$148908][PD[-p$148907][PD[-p$148905][pertE[LI[1]]]]]])/
     scale[]^4 + (primescalar[]^2*Scalar[metric\[Delta][p$148910, p$148911]*
        metric\[Delta][p$148912, p$148913]*timevec[h$148914]*
        timevec[h$148915]*PD[-h$148914][perth[LI[1], -p$148911, -p$148913]]*
        PD[-h$148915][perth[LI[1], -p$148910, -p$148912]]])/(2*scale[]^4) + 
    (6*primescalar[]^2*Scalar[timevec[h$148917]*timevec[h$148918]*
        PD[-h$148917][pertphi[LI[1]]]*PD[-h$148918][pertphi[LI[1]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[timevec[h$148920]*
        timevec[h$148921]*PD[-h$148920][pertpsi[LI[1]]]*
        PD[-h$148921][pertpsi[LI[1]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148923, p$148924]*
        timevec[h$148925]*timevec[h$148926]*PD[-h$148925][pertphi[LI[1]]]*
        PD[-h$148926][PD[-p$148923][PD[-p$148924][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$148928, p$148929]*
        metric\[Delta][p$148930, p$148931]*timevec[h$148932]*
        timevec[h$148933]*PD[-h$148932][PD[-p$148930][PD[-p$148929][
           pertE[LI[1]]]]]*PD[-h$148933][PD[-p$148931][PD[-p$148928][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148935, p$148936]*
        timevec[h$148937]*PD[-h$148937][pertS[LI[1], -p$148936]]*
        PD[-p$148935][pertB[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148939, p$148940]*
        timevec[h$148941]*PD[-h$148941][pertS[LI[1], -p$148940]]*
        PD[-p$148939][pertB[LI[1]]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$148943, p$148944]*
        timevec[h$148945]*PD[-h$148945][PD[-p$148944][pertB[LI[1]]]]*
        PD[-p$148943][pertB[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148947, p$148948]*
        timevec[h$148949]*PD[-h$148949][PD[-p$148948][pertB[LI[1]]]]*
        PD[-p$148947][pertB[LI[1]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148951, p$148952]*
        pertphi[LI[1]]*PD[-p$148951][PD[-p$148952][pertB[LI[1]]]]])/
     scale[]^4 + (16*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$148954, p$148955]*pertpsi[LI[1]]*
        PD[-p$148954][PD[-p$148955][pertB[LI[1]]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$148957, p$148958]*
        timevec[h$148959]*PD[-h$148959][pertphi[LI[1]]]*
        PD[-p$148957][PD[-p$148958][pertB[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148961, p$148962]*
        PD[-p$148961][PD[-p$148962][pertB[LI[2]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148964, p$148965]*
        timevec[h$148966]*PD[-h$148966][pertphi[LI[1]]]*
        PD[-p$148964][PD[-p$148965][pertE[LI[1]]]]])/scale[]^4 + 
    (8*pprimescalar[]^2*Scalar[metric\[Delta][p$148968, p$148969]*
        pertS[LI[1], -p$148968]*PD[-p$148969][pertB[LI[1]]]])/scale[]^4 - 
    (16*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148971, p$148972]*pertS[LI[1], -p$148971]*
        PD[-p$148972][pertB[LI[1]]]])/scale[]^4 + 
    (32*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148974, p$148975]*
        pertS[LI[1], -p$148974]*PD[-p$148975][pertB[LI[1]]]])/scale[]^4 - 
    (4*pprimescalar[]^2*Scalar[metric\[Delta][p$148977, p$148978]*
        PD[-p$148977][pertB[LI[1]]]*PD[-p$148978][pertB[LI[1]]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$148980, p$148981]*PD[-p$148980][pertB[LI[1]]]*
        PD[-p$148981][pertB[LI[1]]]])/scale[]^4 - 
    (16*hubbleC[]^2*primescalar[]^2*Scalar[metric\[Delta][p$148983, p$148984]*
        PD[-p$148983][pertB[LI[1]]]*PD[-p$148984][pertB[LI[1]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148986, p$148987]*
        metric\[Delta][p$148988, p$148989]*timevec[h$148990]*
        PD[-h$148990][perth[LI[1], -p$148987, -p$148989]]*
        PD[-p$148988][pertF[LI[1], -p$148986]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148992, p$148993]*
        metric\[Delta][p$148994, p$148995]*timevec[h$148996]*
        PD[-h$148996][PD[-p$148995][pertF[LI[1], -p$148992]]]*
        PD[-p$148994][pertF[LI[1], -p$148993]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$148998, p$148999]*
        metric\[Delta][p$149000, p$149001]*timevec[h$149002]*
        PD[-h$149002][PD[-p$149001][PD[-p$148998][pertE[LI[1]]]]]*
        PD[-p$149000][pertF[LI[1], -p$148999]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149004, p$149005]*
        metric\[Delta][p$149006, p$149007]*PD[-p$149004][
         pertS[LI[1], -p$149007]]*PD[-p$149006][pertF[LI[1], -p$149005]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$149009, p$149010]*metric\[Delta][p$149011, 
         p$149012]*timevec[h$149013]*PD[-p$149009][PD[-h$149013][
          pertF[LI[1], -p$149012]]]*PD[-p$149011][pertF[LI[1], -p$149010]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$149015, p$149016]*pertS[LI[1], -p$149015]*
        PD[-p$149016][pertphi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149018, p$149019]*
        PD[-p$149018][pertB[LI[1]]]*PD[-p$149019][pertphi[LI[1]]]])/
     scale[]^4 - (4*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$149021, p$149022]*pertS[LI[1], -p$149021]*
        PD[-p$149022][pertpsi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149024, p$149025]*
        pertS[LI[1], -p$149024]*PD[-p$149025][pertpsi[LI[1]]]])/scale[]^4 + 
    (4*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$149027, p$149028]*
        PD[-p$149027][pertB[LI[1]]]*PD[-p$149028][pertpsi[LI[1]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$149030, p$149031]*PD[-p$149030][pertB[LI[1]]]*
        PD[-p$149031][pertpsi[LI[1]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$149033, p$149034]*
        PD[-p$149033][pertpsi[LI[1]]]*PD[-p$149034][pertpsi[LI[1]]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$149036, p$149037]*
        metric\[Delta][p$149038, p$149039]*timevec[h$149040]*
        PD[-h$149040][perth[LI[1], -p$149037, -p$149039]]*
        PD[-p$149038][pertS[LI[1], -p$149036]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149042, p$149043]*
        metric\[Delta][p$149044, p$149045]*perth[LI[1], -p$149042, -p$149045]*
        PD[-p$149044][pertS[LI[1], -p$149043]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$149047, p$149048]*
        metric\[Delta][p$149049, p$149050]*timevec[h$149051]*
        PD[-h$149051][PD[-p$149050][pertF[LI[1], -p$149047]]]*
        PD[-p$149049][pertS[LI[1], -p$149048]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$149053, p$149054]*
        metric\[Delta][p$149055, p$149056]*timevec[h$149057]*
        PD[-h$149057][PD[-p$149056][PD[-p$149053][pertE[LI[1]]]]]*
        PD[-p$149055][pertS[LI[1], -p$149054]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$149059, p$149060]*
        metric\[Delta][p$149061, p$149062]*PD[-p$149059][
         pertS[LI[1], -p$149062]]*PD[-p$149061][pertS[LI[1], -p$149060]]])/
     scale[]^4 + (2*primescalar[]^2*Scalar[metric\[Delta][p$149064, p$149065]*
        metric\[Delta][p$149066, p$149067]*timevec[h$149068]*
        PD[-p$149064][PD[-h$149068][pertF[LI[1], -p$149067]]]*
        PD[-p$149066][pertS[LI[1], -p$149065]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$149070, p$149071]*
        metric\[Delta][p$149072, p$149073]*timevec[h$149074]*
        timevec[h$149075]*PD[-h$149075][perth[LI[1], -p$149071, -p$149073]]*
        PD[-p$149072][PD[-h$149074][pertF[LI[1], -p$149070]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$149077, p$149078]*
        metric\[Delta][p$149079, p$149080]*timevec[h$149081]*
        timevec[h$149082]*PD[-p$149077][PD[-h$149082][pertF[LI[1], 
           -p$149080]]]*PD[-p$149079][PD[-h$149081][pertF[LI[1], 
           -p$149078]]]])/scale[]^4 + 
    (primescalar[]^2*Scalar[metric\[Delta][p$149084, p$149085]*
        metric\[Delta][p$149086, p$149087]*timevec[h$149088]*
        timevec[h$149089]*PD[-h$149088][PD[-p$149087][pertF[LI[1], 
           -p$149084]]]*PD[-p$149086][PD[-h$149089][pertF[LI[1], 
           -p$149085]]]])/scale[]^4 + 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$149091, p$149092]*
        metric\[Delta][p$149093, p$149094]*timevec[h$149095]*
        timevec[h$149096]*PD[-h$149095][PD[-p$149094][PD[-p$149091][
           pertE[LI[1]]]]]*PD[-p$149093][PD[-h$149096][pertF[LI[1], 
           -p$149092]]]])/scale[]^4 - 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$149098, p$149099]*
        metric\[Delta][p$149100, p$149101]*timevec[h$149102]*
        PD[-h$149102][perth[LI[1], -p$149099, -p$149101]]*
        PD[-p$149100][PD[-p$149098][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149104, p$149105]*
        metric\[Delta][p$149106, p$149107]*timevec[h$149108]*
        PD[-h$149108][perth[LI[1], -p$149105, -p$149107]]*
        PD[-p$149106][PD[-p$149104][pertE[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$149110, p$149111]*
        metric\[Delta][p$149112, p$149113]*timevec[h$149114]*
        timevec[h$149115]*PD[-h$149114][perth[LI[1], -p$149111, -p$149113]]*
        PD[-p$149112][PD[-p$149110][PD[-h$149115][pertE[LI[1]]]]]])/
     scale[]^4 - (4*primescalar[]^2*Scalar[metric\[Delta][p$149117, p$149118]*
        metric\[Delta][p$149119, p$149120]*timevec[h$149121]*
        PD[-h$149121][PD[-p$149120][pertF[LI[1], -p$149117]]]*
        PD[-p$149119][PD[-p$149118][pertB[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$149123, p$149124]*
        metric\[Delta][p$149125, p$149126]*timevec[h$149127]*
        PD[-h$149127][PD[-p$149126][PD[-p$149123][pertE[LI[1]]]]]*
        PD[-p$149125][PD[-p$149124][pertB[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149129, p$149130]*
        metric\[Delta][p$149131, p$149132]*timevec[h$149133]*
        PD[-h$149133][PD[-p$149132][pertF[LI[1], -p$149129]]]*
        PD[-p$149131][PD[-p$149130][pertE[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149135, p$149136]*
        metric\[Delta][p$149137, p$149138]*timevec[h$149139]*
        PD[-h$149139][PD[-p$149138][PD[-p$149135][pertE[LI[1]]]]]*
        PD[-p$149137][PD[-p$149136][pertE[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149141, p$149142]*
        metric\[Delta][p$149143, p$149144]*pertS[LI[1], -p$149141]*
        PD[-p$149143][PD[-p$149144][pertF[LI[1], -p$149142]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149146, p$149147]*
        metric\[Delta][p$149148, p$149149]*PD[-p$149146][pertB[LI[1]]]*
        PD[-p$149148][PD[-p$149149][pertF[LI[1], -p$149147]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149151, p$149152]*
        metric\[Delta][p$149153, p$149154]*pertS[LI[1], -p$149151]*
        PD[-p$149153][PD[-p$149154][PD[-p$149152][pertE[LI[1]]]]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$149156, p$149157]*metric\[Delta][p$149158, 
         p$149159]*PD[-p$149156][pertB[LI[1]]]*PD[-p$149158][
         PD[-p$149159][PD[-p$149157][pertE[LI[1]]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149161, p$149162]*
        metric\[Delta][p$149163, p$149164]*PD[-p$149163][
         pertF[LI[1], -p$149162]]*PD[-p$149164][pertS[LI[1], -p$149161]]])/
     scale[]^4 + (primescalar[]^2*Scalar[metric\[Delta][p$149166, p$149167]*
        metric\[Delta][p$149168, p$149169]*PD[-p$149168][
         pertS[LI[1], -p$149167]]*PD[-p$149169][pertS[LI[1], -p$149166]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$149171, p$149172]*metric\[Delta][p$149173, 
         p$149174]*PD[-p$149173][pertF[LI[1], -p$149172]]*
        PD[-p$149174][PD[-p$149171][pertB[LI[1]]]]])/scale[]^4 - 
    (4*primescalar[]^2*Scalar[metric\[Delta][p$149176, p$149177]*
        metric\[Delta][p$149178, p$149179]*PD[-p$149178][
         pertS[LI[1], -p$149177]]*PD[-p$149179][PD[-p$149176][
          pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^2*Scalar[metric\[Delta][p$149181, p$149182]*
        metric\[Delta][p$149183, p$149184]*PD[-p$149183][
         PD[-p$149182][pertB[LI[1]]]]*PD[-p$149184][PD[-p$149181][
          pertB[LI[1]]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149186, p$149187]*
        metric\[Delta][p$149188, p$149189]*PD[-p$149188][
         pertS[LI[1], -p$149187]]*PD[-p$149189][PD[-p$149186][
          pertE[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149191, p$149192]*
        metric\[Delta][p$149193, p$149194]*PD[-p$149193][
         PD[-p$149192][pertB[LI[1]]]]*PD[-p$149194][PD[-p$149191][
          pertE[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$149196, p$149197]*
        metric\[Delta][p$149198, p$149199]*perth[LI[1], -p$149196, -p$149198]*
        PD[-p$149199][PD[-p$149197][pertB[LI[1]]]]])/scale[]^4], 
 HoldPattern[pertpi3[LI[2]]] :> 
  Module[{}, (-6*pertscalar[LI[1]]^2*ppprimescalar[]^2*pprimescalar[])/
     scale[]^8 + (36*hubbleC[]*pertscalar[LI[1]]^2*ppprimescalar[]*
      pprimescalar[]^2)/scale[]^8 - (54*hubbleC[]^2*pertscalar[LI[1]]^2*
      pprimescalar[]^3)/scale[]^8 + (6*hubbleC[]*pertscalar[LI[1]]^2*
      ppprimescalar[]^2*primescalar[])/scale[]^8 - 
    (60*hubbleC[]^2*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]*
      primescalar[])/scale[]^8 + (108*hubbleC[]^3*pertscalar[LI[1]]^2*
      pprimescalar[]^2*primescalar[])/scale[]^8 + 
    (12*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]*primehubbleC[]*
      primescalar[])/scale[]^8 - (36*hubbleC[]*pertscalar[LI[1]]^2*
      pprimescalar[]^2*primehubbleC[]*primescalar[])/scale[]^8 + 
    (24*hubbleC[]^3*pertscalar[LI[1]]^2*ppprimescalar[]*primescalar[]^2)/
     scale[]^8 - (60*hubbleC[]^4*pertscalar[LI[1]]^2*pprimescalar[]*
      primescalar[]^2)/scale[]^8 - (12*hubbleC[]*pertscalar[LI[1]]^2*
      ppprimescalar[]*primehubbleC[]*primescalar[]^2)/scale[]^8 + 
    (60*hubbleC[]^2*pertscalar[LI[1]]^2*pprimescalar[]*primehubbleC[]*
      primescalar[]^2)/scale[]^8 - (6*pertscalar[LI[1]]^2*pprimescalar[]*
      primehubbleC[]^2*primescalar[]^2)/scale[]^8 + 
    (6*hubbleC[]^5*pertscalar[LI[1]]^2*primescalar[]^3)/scale[]^8 - 
    (24*hubbleC[]^3*pertscalar[LI[1]]^2*primehubbleC[]*primescalar[]^3)/
     scale[]^8 + (6*hubbleC[]*pertscalar[LI[1]]^2*primehubbleC[]^2*
      primescalar[]^3)/scale[]^8 - (24*ppprimescalar[]*pprimescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189345]*PD[-h$189345][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (72*hubbleC[]*pprimescalar[]^3*Scalar[pertscalar[LI[1]]*timevec[h$189347]*
        PD[-h$189347][pertscalar[LI[1]]]])/scale[]^8 + 
    (60*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189349]*PD[-h$189349][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (228*hubbleC[]^2*pprimescalar[]^2*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189351]*PD[-h$189351][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (24*pprimescalar[]^2*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189353]*PD[-h$189353][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (36*hubbleC[]^2*ppprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189355]*PD[-h$189355][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (192*hubbleC[]^3*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189357]*PD[-h$189357][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (60*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189359]*PD[-h$189359][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (36*hubbleC[]^4*primescalar[]^3*Scalar[pertscalar[LI[1]]*
        timevec[h$189361]*PD[-h$189361][pertscalar[LI[1]]]])/scale[]^8 + 
    (36*hubbleC[]^2*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$189363]*PD[-h$189363][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (24*pprimescalar[]^3*Scalar[timevec[h$189365]*timevec[h$189366]*
        PD[-h$189365][pertscalar[LI[1]]]*PD[-h$189366][pertscalar[LI[1]]]])/
     scale[]^8 + (96*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$189368]*timevec[h$189369]*PD[-h$189368][
         pertscalar[LI[1]]]*PD[-h$189369][pertscalar[LI[1]]]])/scale[]^8 - 
    (126*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189371]*timevec[h$189372]*PD[-h$189371][
         pertscalar[LI[1]]]*PD[-h$189372][pertscalar[LI[1]]]])/scale[]^8 + 
    (36*hubbleC[]^3*primescalar[]^3*Scalar[timevec[h$189374]*
        timevec[h$189375]*PD[-h$189374][pertscalar[LI[1]]]*
        PD[-h$189375][pertscalar[LI[1]]]])/scale[]^8 - 
    (12*ppprimescalar[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189377]*timevec[h$189378]*
        PD[-h$189378][PD[-h$189377][pertscalar[LI[1]]]]])/scale[]^8 + 
    (36*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189380]*timevec[h$189381]*
        PD[-h$189381][PD[-h$189380][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]*ppprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189383]*timevec[h$189384]*
        PD[-h$189384][PD[-h$189383][pertscalar[LI[1]]]]])/scale[]^8 - 
    (60*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189386]*timevec[h$189387]*
        PD[-h$189387][PD[-h$189386][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189389]*timevec[h$189390]*
        PD[-h$189390][PD[-h$189389][pertscalar[LI[1]]]]])/scale[]^8 + 
    (24*hubbleC[]^3*primescalar[]^3*Scalar[pertscalar[LI[1]]*
        timevec[h$189392]*timevec[h$189393]*PD[-h$189393][
         PD[-h$189392][pertscalar[LI[1]]]]])/scale[]^8 - 
    (12*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$189395]*timevec[h$189396]*
        PD[-h$189396][PD[-h$189395][pertscalar[LI[1]]]]])/scale[]^8 - 
    (24*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$189398]*
        timevec[h$189399]*timevec[h$189400]*PD[-h$189398][pertscalar[LI[1]]]*
        PD[-h$189400][PD[-h$189399][pertscalar[LI[1]]]]])/scale[]^8 + 
    (60*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189402]*timevec[h$189403]*timevec[h$189404]*
        PD[-h$189402][pertscalar[LI[1]]]*PD[-h$189404][
         PD[-h$189403][pertscalar[LI[1]]]]])/scale[]^8 - 
    (36*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$189406]*
        timevec[h$189407]*timevec[h$189408]*PD[-h$189406][pertscalar[LI[1]]]*
        PD[-h$189408][PD[-h$189407][pertscalar[LI[1]]]]])/scale[]^8 - 
    (6*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$189410]*
        timevec[h$189411]*timevec[h$189412]*timevec[h$189413]*
        PD[-h$189411][PD[-h$189410][pertscalar[LI[1]]]]*
        PD[-h$189413][PD[-h$189412][pertscalar[LI[1]]]]])/scale[]^8 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$189415]*timevec[h$189416]*
        timevec[h$189417]*timevec[h$189418]*PD[-h$189416][
         PD[-h$189415][pertscalar[LI[1]]]]*PD[-h$189418][
         PD[-h$189417][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189420, p$189421]*timevec[h$189422]*
        PD[-h$189422][PD[-p$189421][pertscalar[LI[1]]]]*
        PD[-p$189420][pertscalar[LI[1]]]])/scale[]^8 - 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189424, p$189425]*timevec[h$189426]*
        PD[-h$189426][PD[-p$189425][pertscalar[LI[1]]]]*
        PD[-p$189424][pertscalar[LI[1]]]])/scale[]^8 + 
    (6*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189428, p$189429]*timevec[h$189430]*
        timevec[h$189431]*PD[-h$189430][PD[-p$189429][pertscalar[LI[1]]]]*
        PD[-p$189428][PD[-h$189431][pertscalar[LI[1]]]]])/scale[]^8 + 
    (12*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189433, p$189434]*pertscalar[LI[1]]*
        PD[-p$189433][PD[-p$189434][pertscalar[LI[1]]]]])/scale[]^8 - 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189436, p$189437]*
        pertscalar[LI[1]]*PD[-p$189436][PD[-p$189437][pertscalar[LI[1]]]]])/
     scale[]^8 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189439, p$189440]*timevec[h$189441]*
        PD[-h$189441][pertscalar[LI[1]]]*PD[-p$189439][
         PD[-p$189440][pertscalar[LI[1]]]]])/scale[]^8 + 
    (6*pprimescalar[]^3*Scalar[metric\[Delta][p$189443, p$189444]*
        PD[-p$189443][pertscalar[LI[1]]]*PD[-p$189444][pertscalar[LI[1]]]])/
     scale[]^8 - (24*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189446, p$189447]*PD[-p$189446][
         pertscalar[LI[1]]]*PD[-p$189447][pertscalar[LI[1]]]])/scale[]^8 + 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189449, p$189450]*PD[-p$189449][
         pertscalar[LI[1]]]*PD[-p$189450][pertscalar[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189452, p$189453]*
        metric\[Delta][p$189454, p$189455]*PD[-p$189454][
         PD[-p$189453][pertscalar[LI[1]]]]*PD[-p$189455][
         PD[-p$189452][pertscalar[LI[1]]]]])/scale[]^8 - 
    (36*ppprimescalar[]*pprimescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (108*hubbleC[]*pprimescalar[]^3*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^7 + (72*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 - 
    (288*hubbleC[]^2*pprimescalar[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (36*pprimescalar[]^2*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 - 
    (36*hubbleC[]^2*ppprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (144*hubbleC[]^3*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 - 
    (72*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (36*hubbleC[]^4*primescalar[]^3*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^7 + (36*hubbleC[]^2*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (3*ppprimescalar[]*pprimescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (9*hubbleC[]*pprimescalar[]^3*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (6*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (24*hubbleC[]^2*pprimescalar[]^2*primescalar[]*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (3*pprimescalar[]^2*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (3*hubbleC[]^2*ppprimescalar[]*primescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (12*hubbleC[]^3*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (6*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[2]]])/scale[]^7 - 
    (3*hubbleC[]^4*primescalar[]^3*Scalar[pertscalar[LI[2]]])/scale[]^7 - 
    (3*hubbleC[]^2*primehubbleC[]*primescalar[]^3*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (54*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189477]*PD[-h$189477][
         pertphi[LI[1]]]])/scale[]^7 + (54*hubbleC[]^3*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$189479]*PD[-h$189479][
         pertphi[LI[1]]]])/scale[]^7 - 
    (6*pprimescalar[]^3*Scalar[pertscalar[LI[1]]*timevec[h$189481]*
        PD[-h$189481][pertpsi[LI[1]]]])/scale[]^7 - 
    (12*ppprimescalar[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$189483]*PD[-h$189483][
         pertpsi[LI[1]]]])/scale[]^7 + (54*hubbleC[]*pprimescalar[]^2*
      primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$189485]*
        PD[-h$189485][pertpsi[LI[1]]]])/scale[]^7 + 
    (12*hubbleC[]*ppprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189487]*PD[-h$189487][
         pertpsi[LI[1]]]])/scale[]^7 - (78*hubbleC[]^2*pprimescalar[]*
      primescalar[]^2*Scalar[pertscalar[LI[1]]*timevec[h$189489]*
        PD[-h$189489][pertpsi[LI[1]]]])/scale[]^7 + 
    (12*pprimescalar[]*primehubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$189491]*PD[-h$189491][
         pertpsi[LI[1]]]])/scale[]^7 + (30*hubbleC[]^3*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$189493]*PD[-h$189493][
         pertpsi[LI[1]]]])/scale[]^7 - 
    (12*hubbleC[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$189495]*PD[-h$189495][
         pertpsi[LI[1]]]])/scale[]^7 - 
    (72*pprimescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$189497]*
        PD[-h$189497][pertscalar[LI[1]]]])/scale[]^7 + 
    (252*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$189499]*PD[-h$189499][
         pertscalar[LI[1]]]])/scale[]^7 - 
    (288*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$189501]*PD[-h$189501][
         pertscalar[LI[1]]]])/scale[]^7 + 
    (6*pprimescalar[]^3*Scalar[timevec[h$189503]*PD[-h$189503][
         pertscalar[LI[2]]]])/scale[]^7 - 
    (21*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$189505]*PD[-h$189505][pertscalar[LI[2]]]])/scale[]^7 + 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189507]*PD[-h$189507][pertscalar[LI[2]]]])/scale[]^7 + 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189509, p$189510]*pertscalar[LI[1]]*
        timevec[h$189511]*PD[-h$189511][PD[-p$189509][PD[-p$189510][
           pertE[LI[1]]]]]])/scale[]^7 - 
    (18*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189513, p$189514]*
        pertscalar[LI[1]]*timevec[h$189515]*PD[-h$189515][
         PD[-p$189513][PD[-p$189514][pertE[LI[1]]]]]])/scale[]^7 + 
    (12*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189517, p$189518]*pertS[LI[1], -p$189517]*
        timevec[h$189519]*PD[-h$189519][PD[-p$189518][pertscalar[LI[1]]]]])/
     scale[]^7 - (24*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189521, p$189522]*pertS[LI[1], -p$189521]*
        timevec[h$189523]*PD[-h$189523][PD[-p$189522][pertscalar[LI[1]]]]])/
     scale[]^7 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189525, p$189526]*pertS[LI[1], -p$189525]*
        timevec[h$189527]*PD[-h$189527][PD[-p$189526][pertscalar[LI[1]]]]])/
     scale[]^7 - (54*hubbleC[]^2*primescalar[]^3*
      Scalar[timevec[h$189529]*timevec[h$189530]*PD[-h$189529][
         pertphi[LI[1]]]*PD[-h$189530][pertscalar[LI[1]]]])/scale[]^7 - 
    (30*pprimescalar[]^2*primescalar[]*Scalar[timevec[h$189532]*
        timevec[h$189533]*PD[-h$189532][pertpsi[LI[1]]]*
        PD[-h$189533][pertscalar[LI[1]]]])/scale[]^7 + 
    (72*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189535]*timevec[h$189536]*PD[-h$189535][
         pertpsi[LI[1]]]*PD[-h$189536][pertscalar[LI[1]]]])/scale[]^7 - 
    (42*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$189538]*
        timevec[h$189539]*PD[-h$189538][pertpsi[LI[1]]]*
        PD[-h$189539][pertscalar[LI[1]]]])/scale[]^7 - 
    (36*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[1]]*
        timevec[h$189541]*timevec[h$189542]*PD[-h$189542][
         PD[-h$189541][pertscalar[LI[1]]]]])/scale[]^7 + 
    (72*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$189544]*timevec[h$189545]*
        PD[-h$189545][PD[-h$189544][pertscalar[LI[1]]]]])/scale[]^7 - 
    (36*hubbleC[]^2*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$189547]*
        timevec[h$189548]*PD[-h$189548][PD[-h$189547][pertscalar[LI[1]]]]])/
     scale[]^7 + (3*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$189550]*timevec[h$189551]*PD[-h$189551][
         PD[-h$189550][pertscalar[LI[2]]]]])/scale[]^7 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189553]*timevec[h$189554]*PD[-h$189554][
         PD[-h$189553][pertscalar[LI[2]]]]])/scale[]^7 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$189556]*timevec[h$189557]*
        PD[-h$189557][PD[-h$189556][pertscalar[LI[2]]]]])/scale[]^7 + 
    (18*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189559, p$189560]*
        timevec[h$189561]*timevec[h$189562]*PD[-h$189561][pertscalar[LI[1]]]*
        PD[-h$189562][PD[-p$189559][PD[-p$189560][pertE[LI[1]]]]]])/
     scale[]^7 - (12*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189564]*timevec[h$189565]*timevec[h$189566]*
        PD[-h$189564][pertpsi[LI[1]]]*PD[-h$189566][PD[-h$189565][
          pertscalar[LI[1]]]]])/scale[]^7 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[timevec[h$189568]*timevec[h$189569]*
        timevec[h$189570]*PD[-h$189568][pertpsi[LI[1]]]*
        PD[-h$189570][PD[-h$189569][pertscalar[LI[1]]]]])/scale[]^7 - 
    (12*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189572, p$189573]*timevec[h$189574]*
        PD[-h$189574][PD[-p$189573][pertscalar[LI[1]]]]*
        PD[-p$189572][pertB[LI[1]]]])/scale[]^7 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189576, p$189577]*timevec[h$189578]*
        PD[-h$189578][PD[-p$189577][pertscalar[LI[1]]]]*
        PD[-p$189576][pertB[LI[1]]]])/scale[]^7 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189580, p$189581]*
        timevec[h$189582]*PD[-h$189582][PD[-p$189581][pertscalar[LI[1]]]]*
        PD[-p$189580][pertB[LI[1]]]])/scale[]^7 + 
    (12*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189584, p$189585]*timevec[h$189586]*
        PD[-h$189586][PD[-p$189585][pertscalar[LI[1]]]]*
        PD[-p$189584][pertpsi[LI[1]]]])/scale[]^7 + 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189588, p$189589]*timevec[h$189590]*
        PD[-h$189590][pertS[LI[1], -p$189589]]*PD[-p$189588][
         pertscalar[LI[1]]]])/scale[]^7 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189592, p$189593]*timevec[h$189594]*
        PD[-h$189594][pertS[LI[1], -p$189593]]*PD[-p$189592][
         pertscalar[LI[1]]]])/scale[]^7 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189596, p$189597]*
        timevec[h$189598]*PD[-h$189598][pertS[LI[1], -p$189597]]*
        PD[-p$189596][pertscalar[LI[1]]]])/scale[]^7 - 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189600, p$189601]*timevec[h$189602]*
        PD[-h$189602][PD[-p$189601][pertB[LI[1]]]]*PD[-p$189600][
         pertscalar[LI[1]]]])/scale[]^7 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189604, p$189605]*timevec[h$189606]*
        PD[-h$189606][PD[-p$189605][pertB[LI[1]]]]*PD[-p$189604][
         pertscalar[LI[1]]]])/scale[]^7 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189608, p$189609]*
        timevec[h$189610]*PD[-h$189610][PD[-p$189609][pertB[LI[1]]]]*
        PD[-p$189608][pertscalar[LI[1]]]])/scale[]^7 - 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189612, p$189613]*pertscalar[LI[1]]*
        PD[-p$189612][PD[-p$189613][pertB[LI[1]]]]])/scale[]^7 + 
    (18*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189615, p$189616]*
        pertscalar[LI[1]]*PD[-p$189615][PD[-p$189616][pertB[LI[1]]]]])/
     scale[]^7 - (18*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189618, p$189619]*timevec[h$189620]*
        PD[-h$189620][pertscalar[LI[1]]]*PD[-p$189618][
         PD[-p$189619][pertB[LI[1]]]]])/scale[]^7 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189622, p$189623]*
        pertphi[LI[1]]*PD[-p$189622][PD[-p$189623][pertscalar[LI[1]]]]])/
     scale[]^7 + (24*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189625, p$189626]*pertpsi[LI[1]]*
        PD[-p$189625][PD[-p$189626][pertscalar[LI[1]]]]])/scale[]^7 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189628, p$189629]*
        timevec[h$189630]*PD[-h$189630][pertphi[LI[1]]]*
        PD[-p$189628][PD[-p$189629][pertscalar[LI[1]]]]])/scale[]^7 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189632, p$189633]*
        PD[-p$189632][PD[-p$189633][pertscalar[LI[2]]]]])/scale[]^7 + 
    (12*pprimescalar[]^3*Scalar[metric\[Delta][p$189635, p$189636]*
        pertS[LI[1], -p$189635]*PD[-p$189636][pertscalar[LI[1]]]])/
     scale[]^7 - (42*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189638, p$189639]*pertS[LI[1], -p$189638]*
        PD[-p$189639][pertscalar[LI[1]]]])/scale[]^7 + 
    (48*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189641, p$189642]*pertS[LI[1], -p$189641]*
        PD[-p$189642][pertscalar[LI[1]]]])/scale[]^7 - 
    (12*pprimescalar[]^3*Scalar[metric\[Delta][p$189644, p$189645]*
        PD[-p$189644][pertB[LI[1]]]*PD[-p$189645][pertscalar[LI[1]]]])/
     scale[]^7 + (42*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189647, p$189648]*PD[-p$189647][pertB[LI[1]]]*
        PD[-p$189648][pertscalar[LI[1]]]])/scale[]^7 - 
    (48*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189650, p$189651]*PD[-p$189650][pertB[LI[1]]]*
        PD[-p$189651][pertscalar[LI[1]]]])/scale[]^7 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189653, p$189654]*
        PD[-p$189653][pertphi[LI[1]]]*PD[-p$189654][pertscalar[LI[1]]]])/
     scale[]^7 + (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189656, p$189657]*PD[-p$189656][pertpsi[LI[1]]]*
        PD[-p$189657][pertscalar[LI[1]]]])/scale[]^7 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189659, p$189660]*PD[-p$189659][pertpsi[LI[1]]]*
        PD[-p$189660][pertscalar[LI[1]]]])/scale[]^7 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189662, p$189663]*
        PD[-p$189662][pertpsi[LI[1]]]*PD[-p$189663][pertscalar[LI[1]]]])/
     scale[]^7 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$189665, p$189666]*metric\[Delta][p$189667, 
         p$189668]*timevec[h$189669]*PD[-h$189669][perth[LI[1], -p$189666, 
          -p$189668]]*PD[-p$189667][PD[-p$189665][pertscalar[LI[1]]]]])/
     scale[]^7 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189671, p$189672]*metric\[Delta][p$189673, 
         p$189674]*PD[-p$189671][pertscalar[LI[1]]]*PD[-p$189673][
         PD[-p$189674][pertF[LI[1], -p$189672]]]])/scale[]^7 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189676, p$189677]*
        metric\[Delta][p$189678, p$189679]*timevec[h$189680]*
        PD[-h$189680][PD[-p$189679][PD[-p$189676][pertE[LI[1]]]]]*
        PD[-p$189678][PD[-p$189677][pertscalar[LI[1]]]]])/scale[]^7 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189682, p$189683]*
        metric\[Delta][p$189684, p$189685]*PD[-p$189682][pertscalar[LI[1]]]*
        PD[-p$189684][PD[-p$189685][PD[-p$189683][pertE[LI[1]]]]]])/
     scale[]^7 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189687, p$189688]*metric\[Delta][p$189689, 
         p$189690]*PD[-p$189689][pertF[LI[1], -p$189688]]*
        PD[-p$189690][PD[-p$189687][pertscalar[LI[1]]]]])/scale[]^7 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189692, p$189693]*
        metric\[Delta][p$189694, p$189695]*PD[-p$189694][
         pertS[LI[1], -p$189693]]*PD[-p$189695][PD[-p$189692][
          pertscalar[LI[1]]]]])/scale[]^7 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189697, p$189698]*
        metric\[Delta][p$189699, p$189700]*timevec[h$189701]*
        PD[-p$189699][PD[-h$189701][pertF[LI[1], -p$189698]]]*
        PD[-p$189700][PD[-p$189697][pertscalar[LI[1]]]]])/scale[]^7 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189703, p$189704]*
        metric\[Delta][p$189705, p$189706]*PD[-p$189705][
         PD[-p$189704][pertB[LI[1]]]]*PD[-p$189706][PD[-p$189703][
          pertscalar[LI[1]]]]])/scale[]^7 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189708, p$189709]*
        metric\[Delta][p$189710, p$189711]*PD[-p$189710][
         PD[-p$189709][pertE[LI[1]]]]*PD[-p$189711][PD[-p$189708][
          pertscalar[LI[1]]]]])/scale[]^7 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189713, p$189714]*
        metric\[Delta][p$189715, p$189716]*perth[LI[1], -p$189713, -p$189715]*
        PD[-p$189716][PD[-p$189714][pertscalar[LI[1]]]]])/scale[]^7 - 
    (48*pertpsi[LI[1]]^2*pprimescalar[]^3)/scale[]^6 + 
    (144*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]^2*primescalar[])/
     scale[]^6 - (144*hubbleC[]^2*pertpsi[LI[1]]^2*pprimescalar[]*
      primescalar[]^2)/scale[]^6 - (96*hubbleC[]^3*pertpsi[LI[1]]^2*
      primescalar[]^3)/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[2]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[metric\[Delta][p$189722, p$189723]*
        pertS[LI[1], -p$189722]*pertS[LI[1], -p$189723]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189725, p$189726]*pertS[LI[1], -p$189725]*
        pertS[LI[1], -p$189726]])/scale[]^6 + 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189728, p$189729]*pertS[LI[1], -p$189728]*
        pertS[LI[1], -p$189729]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189731, p$189732]*
        pertS[LI[1], -p$189731]*pertS[LI[1], -p$189732]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189734, p$189735]*
        metric\[Delta][p$189736, p$189737]*perth[LI[1], -p$189734, -p$189736]*
        timevec[h$189738]*PD[-h$189738][perth[LI[1], -p$189735, -p$189737]]])/
     scale[]^6 + (36*hubbleC[]^2*primescalar[]^3*
      Scalar[pertphi[LI[1]]*timevec[h$189740]*PD[-h$189740][pertphi[LI[1]]]])/
     scale[]^6 - (108*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$189742]*PD[-h$189742][pertphi[LI[1]]]])/
     scale[]^6 + (9*hubbleC[]^2*primescalar[]^3*
      Scalar[timevec[h$189744]*PD[-h$189744][pertphi[LI[2]]]])/scale[]^6 - 
    (48*pprimescalar[]^2*primescalar[]*Scalar[pertpsi[LI[1]]*
        timevec[h$189746]*PD[-h$189746][pertpsi[LI[1]]]])/scale[]^6 + 
    (96*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$189748]*PD[-h$189748][pertpsi[LI[1]]]])/
     scale[]^6 - (48*hubbleC[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$189750]*PD[-h$189750][pertpsi[LI[1]]]])/
     scale[]^6 + (3*pprimescalar[]^2*primescalar[]*
      Scalar[timevec[h$189752]*PD[-h$189752][pertpsi[LI[2]]]])/scale[]^6 - 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189754]*PD[-h$189754][pertpsi[LI[2]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[timevec[h$189756]*
        PD[-h$189756][pertpsi[LI[2]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189758, p$189759]*pertS[LI[1], -p$189758]*
        timevec[h$189760]*PD[-h$189760][pertS[LI[1], -p$189759]]])/
     scale[]^6 - (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189762, p$189763]*pertS[LI[1], -p$189762]*
        timevec[h$189764]*PD[-h$189764][pertS[LI[1], -p$189763]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189766, p$189767]*pertS[LI[1], -p$189766]*
        timevec[h$189768]*PD[-h$189768][pertS[LI[1], -p$189767]]])/
     scale[]^6 - (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189770, p$189771]*pertphi[LI[1]]*
        timevec[h$189772]*PD[-h$189772][PD[-p$189770][PD[-p$189771][
           pertE[LI[1]]]]]])/scale[]^6 + 
    (36*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189774, p$189775]*
        pertpsi[LI[1]]*timevec[h$189776]*PD[-h$189776][
         PD[-p$189774][PD[-p$189775][pertE[LI[1]]]]]])/scale[]^6 - 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189778, p$189779]*
        timevec[h$189780]*PD[-h$189780][PD[-p$189778][PD[-p$189779][
           pertE[LI[2]]]]]])/scale[]^6 - 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189782, p$189783]*pertS[LI[1], -p$189782]*
        timevec[h$189784]*PD[-h$189784][PD[-p$189783][pertB[LI[1]]]]])/
     scale[]^6 + (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189786, p$189787]*pertS[LI[1], -p$189786]*
        timevec[h$189788]*PD[-h$189788][PD[-p$189787][pertB[LI[1]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189790, p$189791]*pertS[LI[1], -p$189790]*
        timevec[h$189792]*PD[-h$189792][PD[-p$189791][pertB[LI[1]]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189794, p$189795]*metric\[Delta][p$189796, 
         p$189797]*perth[LI[1], -p$189794, -p$189796]*timevec[h$189798]*
        PD[-h$189798][PD[-p$189797][pertF[LI[1], -p$189795]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189800, p$189801]*
        metric\[Delta][p$189802, p$189803]*perth[LI[1], -p$189800, -p$189802]*
        timevec[h$189804]*PD[-h$189804][PD[-p$189803][PD[-p$189801][
           pertE[LI[1]]]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189806, p$189807]*
        metric\[Delta][p$189808, p$189809]*timevec[h$189810]*
        timevec[h$189811]*PD[-h$189810][perth[LI[1], -p$189807, -p$189809]]*
        PD[-h$189811][perth[LI[1], -p$189806, -p$189808]]])/(2*scale[]^6) - 
    (18*hubbleC[]*primescalar[]^3*Scalar[timevec[h$189813]*timevec[h$189814]*
        PD[-h$189813][pertphi[LI[1]]]*PD[-h$189814][pertphi[LI[1]]]])/
     scale[]^6 - (6*pprimescalar[]*primescalar[]^2*
      Scalar[timevec[h$189816]*timevec[h$189817]*PD[-h$189816][
         pertpsi[LI[1]]]*PD[-h$189817][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[timevec[h$189819]*timevec[h$189820]*
        PD[-h$189819][pertpsi[LI[1]]]*PD[-h$189820][pertpsi[LI[1]]]])/
     scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$189822, p$189823]*timevec[h$189824]*
        timevec[h$189825]*PD[-h$189824][pertphi[LI[1]]]*
        PD[-h$189825][PD[-p$189822][PD[-p$189823][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$189827, p$189828]*metric\[Delta][p$189829, 
         p$189830]*timevec[h$189831]*timevec[h$189832]*
        PD[-h$189831][PD[-p$189829][PD[-p$189828][pertE[LI[1]]]]]*
        PD[-h$189832][PD[-p$189830][PD[-p$189827][pertE[LI[1]]]]]])/
     scale[]^6 - (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189834, p$189835]*timevec[h$189836]*
        PD[-h$189836][pertS[LI[1], -p$189835]]*PD[-p$189834][pertB[LI[1]]]])/
     scale[]^6 + (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189838, p$189839]*timevec[h$189840]*
        PD[-h$189840][pertS[LI[1], -p$189839]]*PD[-p$189838][pertB[LI[1]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189842, p$189843]*timevec[h$189844]*
        PD[-h$189844][pertS[LI[1], -p$189843]]*PD[-p$189842][pertB[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189846, p$189847]*timevec[h$189848]*
        PD[-h$189848][PD[-p$189847][pertB[LI[1]]]]*PD[-p$189846][
         pertB[LI[1]]]])/scale[]^6 - (12*hubbleC[]*pprimescalar[]*
      primescalar[]^2*Scalar[metric\[Delta][p$189850, p$189851]*
        timevec[h$189852]*PD[-h$189852][PD[-p$189851][pertB[LI[1]]]]*
        PD[-p$189850][pertB[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189854, p$189855]*
        timevec[h$189856]*PD[-h$189856][PD[-p$189855][pertB[LI[1]]]]*
        PD[-p$189854][pertB[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189858, p$189859]*
        pertphi[LI[1]]*PD[-p$189858][PD[-p$189859][pertB[LI[1]]]]])/
     scale[]^6 - (36*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189861, p$189862]*pertpsi[LI[1]]*
        PD[-p$189861][PD[-p$189862][pertB[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189864, p$189865]*
        timevec[h$189866]*PD[-h$189866][pertphi[LI[1]]]*
        PD[-p$189864][PD[-p$189865][pertB[LI[1]]]]])/scale[]^6 + 
    (3*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189868, p$189869]*
        PD[-p$189868][PD[-p$189869][pertB[LI[2]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189871, p$189872]*
        timevec[h$189873]*PD[-h$189873][pertphi[LI[1]]]*
        PD[-p$189871][PD[-p$189872][pertE[LI[1]]]]])/scale[]^6 - 
    (12*pprimescalar[]^3*Scalar[metric\[Delta][p$189875, p$189876]*
        pertS[LI[1], -p$189875]*PD[-p$189876][pertB[LI[1]]]])/scale[]^6 + 
    (36*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189878, p$189879]*pertS[LI[1], -p$189878]*
        PD[-p$189879][pertB[LI[1]]]])/scale[]^6 - 
    (36*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189881, p$189882]*pertS[LI[1], -p$189881]*
        PD[-p$189882][pertB[LI[1]]]])/scale[]^6 - 
    (24*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189884, p$189885]*
        pertS[LI[1], -p$189884]*PD[-p$189885][pertB[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^3*Scalar[metric\[Delta][p$189887, p$189888]*
        PD[-p$189887][pertB[LI[1]]]*PD[-p$189888][pertB[LI[1]]]])/scale[]^6 - 
    (18*hubbleC[]*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189890, p$189891]*PD[-p$189890][pertB[LI[1]]]*
        PD[-p$189891][pertB[LI[1]]]])/scale[]^6 + 
    (18*hubbleC[]^2*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189893, p$189894]*PD[-p$189893][pertB[LI[1]]]*
        PD[-p$189894][pertB[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]^3*primescalar[]^3*Scalar[metric\[Delta][p$189896, p$189897]*
        PD[-p$189896][pertB[LI[1]]]*PD[-p$189897][pertB[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189899, p$189900]*
        metric\[Delta][p$189901, p$189902]*timevec[h$189903]*
        PD[-h$189903][perth[LI[1], -p$189900, -p$189902]]*
        PD[-p$189901][pertF[LI[1], -p$189899]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189905, p$189906]*
        metric\[Delta][p$189907, p$189908]*timevec[h$189909]*
        PD[-h$189909][PD[-p$189908][pertF[LI[1], -p$189905]]]*
        PD[-p$189907][pertF[LI[1], -p$189906]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189911, p$189912]*
        metric\[Delta][p$189913, p$189914]*timevec[h$189915]*
        PD[-h$189915][PD[-p$189914][PD[-p$189911][pertE[LI[1]]]]]*
        PD[-p$189913][pertF[LI[1], -p$189912]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189917, p$189918]*
        metric\[Delta][p$189919, p$189920]*PD[-p$189917][
         pertS[LI[1], -p$189920]]*PD[-p$189919][pertF[LI[1], -p$189918]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189922, p$189923]*metric\[Delta][p$189924, 
         p$189925]*timevec[h$189926]*PD[-p$189922][PD[-h$189926][
          pertF[LI[1], -p$189925]]]*PD[-p$189924][pertF[LI[1], -p$189923]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$189928, p$189929]*pertS[LI[1], -p$189928]*
        PD[-p$189929][pertphi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189931, p$189932]*
        PD[-p$189931][pertB[LI[1]]]*PD[-p$189932][pertphi[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189934, p$189935]*pertS[LI[1], -p$189934]*
        PD[-p$189935][pertpsi[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189937, p$189938]*pertS[LI[1], -p$189937]*
        PD[-p$189938][pertpsi[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189940, p$189941]*
        pertS[LI[1], -p$189940]*PD[-p$189941][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*pprimescalar[]^2*primescalar[]*
      Scalar[metric\[Delta][p$189943, p$189944]*PD[-p$189943][pertB[LI[1]]]*
        PD[-p$189944][pertpsi[LI[1]]]])/scale[]^6 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189946, p$189947]*PD[-p$189946][pertB[LI[1]]]*
        PD[-p$189947][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189949, p$189950]*
        PD[-p$189949][pertB[LI[1]]]*PD[-p$189950][pertpsi[LI[1]]]])/
     scale[]^6 + (6*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$189952, p$189953]*PD[-p$189952][pertpsi[LI[1]]]*
        PD[-p$189953][pertpsi[LI[1]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189955, p$189956]*
        metric\[Delta][p$189957, p$189958]*timevec[h$189959]*
        PD[-h$189959][perth[LI[1], -p$189956, -p$189958]]*
        PD[-p$189957][pertS[LI[1], -p$189955]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$189961, p$189962]*
        metric\[Delta][p$189963, p$189964]*perth[LI[1], -p$189961, -p$189964]*
        PD[-p$189963][pertS[LI[1], -p$189962]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189966, p$189967]*
        metric\[Delta][p$189968, p$189969]*timevec[h$189970]*
        PD[-h$189970][PD[-p$189969][pertF[LI[1], -p$189966]]]*
        PD[-p$189968][pertS[LI[1], -p$189967]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189972, p$189973]*
        metric\[Delta][p$189974, p$189975]*timevec[h$189976]*
        PD[-h$189976][PD[-p$189975][PD[-p$189972][pertE[LI[1]]]]]*
        PD[-p$189974][pertS[LI[1], -p$189973]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189978, p$189979]*
        metric\[Delta][p$189980, p$189981]*PD[-p$189978][
         pertS[LI[1], -p$189981]]*PD[-p$189980][pertS[LI[1], -p$189979]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$189983, p$189984]*metric\[Delta][p$189985, 
         p$189986]*timevec[h$189987]*PD[-p$189983][PD[-h$189987][
          pertF[LI[1], -p$189986]]]*PD[-p$189985][pertS[LI[1], -p$189984]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$189989, p$189990]*metric\[Delta][p$189991, 
         p$189992]*timevec[h$189993]*timevec[h$189994]*
        PD[-h$189994][perth[LI[1], -p$189990, -p$189992]]*
        PD[-p$189991][PD[-h$189993][pertF[LI[1], -p$189989]]]])/scale[]^6 - 
    (3*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$189996, p$189997]*
        metric\[Delta][p$189998, p$189999]*timevec[h$190000]*
        timevec[h$190001]*PD[-p$189996][PD[-h$190001][pertF[LI[1], 
           -p$189999]]]*PD[-p$189998][PD[-h$190000][pertF[LI[1], 
           -p$189997]]]])/scale[]^6 - (3*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$190003, p$190004]*metric\[Delta][p$190005, 
         p$190006]*timevec[h$190007]*timevec[h$190008]*
        PD[-h$190007][PD[-p$190006][pertF[LI[1], -p$190003]]]*
        PD[-p$190005][PD[-h$190008][pertF[LI[1], -p$190004]]]])/scale[]^6 - 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$190010, p$190011]*
        metric\[Delta][p$190012, p$190013]*timevec[h$190014]*
        timevec[h$190015]*PD[-h$190014][PD[-p$190013][PD[-p$190010][
           pertE[LI[1]]]]]*PD[-p$190012][PD[-h$190015][pertF[LI[1], 
           -p$190011]]]])/scale[]^6 + (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$190017, p$190018]*metric\[Delta][p$190019, 
         p$190020]*timevec[h$190021]*PD[-h$190021][perth[LI[1], -p$190018, 
          -p$190020]]*PD[-p$190019][PD[-p$190017][pertB[LI[1]]]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$190023, p$190024]*metric\[Delta][p$190025, 
         p$190026]*timevec[h$190027]*PD[-h$190027][perth[LI[1], -p$190024, 
          -p$190026]]*PD[-p$190025][PD[-p$190023][pertE[LI[1]]]]])/
     scale[]^6 - (6*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$190029, p$190030]*metric\[Delta][p$190031, 
         p$190032]*timevec[h$190033]*timevec[h$190034]*
        PD[-h$190033][perth[LI[1], -p$190030, -p$190032]]*
        PD[-p$190031][PD[-p$190029][PD[-h$190034][pertE[LI[1]]]]]])/
     scale[]^6 + (12*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$190036, p$190037]*metric\[Delta][p$190038, 
         p$190039]*timevec[h$190040]*PD[-h$190040][PD[-p$190039][
          pertF[LI[1], -p$190036]]]*PD[-p$190038][PD[-p$190037][
          pertB[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$190042, p$190043]*
        metric\[Delta][p$190044, p$190045]*timevec[h$190046]*
        PD[-h$190046][PD[-p$190045][PD[-p$190042][pertE[LI[1]]]]]*
        PD[-p$190044][PD[-p$190043][pertB[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190048, p$190049]*
        metric\[Delta][p$190050, p$190051]*timevec[h$190052]*
        PD[-h$190052][PD[-p$190051][pertF[LI[1], -p$190048]]]*
        PD[-p$190050][PD[-p$190049][pertE[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190054, p$190055]*
        metric\[Delta][p$190056, p$190057]*timevec[h$190058]*
        PD[-h$190058][PD[-p$190057][PD[-p$190054][pertE[LI[1]]]]]*
        PD[-p$190056][PD[-p$190055][pertE[LI[1]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190060, p$190061]*
        metric\[Delta][p$190062, p$190063]*pertS[LI[1], -p$190060]*
        PD[-p$190062][PD[-p$190063][pertF[LI[1], -p$190061]]]])/scale[]^6 - 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190065, p$190066]*
        metric\[Delta][p$190067, p$190068]*PD[-p$190065][pertB[LI[1]]]*
        PD[-p$190067][PD[-p$190068][pertF[LI[1], -p$190066]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190070, p$190071]*
        metric\[Delta][p$190072, p$190073]*pertS[LI[1], -p$190070]*
        PD[-p$190072][PD[-p$190073][PD[-p$190071][pertE[LI[1]]]]]])/
     scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$190075, p$190076]*metric\[Delta][p$190077, 
         p$190078]*PD[-p$190075][pertB[LI[1]]]*PD[-p$190077][
         PD[-p$190078][PD[-p$190076][pertE[LI[1]]]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190080, p$190081]*
        metric\[Delta][p$190082, p$190083]*PD[-p$190082][
         pertF[LI[1], -p$190081]]*PD[-p$190083][pertS[LI[1], -p$190080]]])/
     scale[]^6 - (3*hubbleC[]*primescalar[]^3*
      Scalar[metric\[Delta][p$190085, p$190086]*metric\[Delta][p$190087, 
         p$190088]*PD[-p$190087][pertS[LI[1], -p$190086]]*
        PD[-p$190088][pertS[LI[1], -p$190085]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190090, p$190091]*
        metric\[Delta][p$190092, p$190093]*PD[-p$190092][
         pertF[LI[1], -p$190091]]*PD[-p$190093][PD[-p$190090][
          pertB[LI[1]]]]])/scale[]^6 + 
    (12*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$190095, p$190096]*
        metric\[Delta][p$190097, p$190098]*PD[-p$190097][
         pertS[LI[1], -p$190096]]*PD[-p$190098][PD[-p$190095][
          pertB[LI[1]]]]])/scale[]^6 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$190100, p$190101]*
        metric\[Delta][p$190102, p$190103]*PD[-p$190102][
         PD[-p$190101][pertB[LI[1]]]]*PD[-p$190103][PD[-p$190100][
          pertB[LI[1]]]]])/scale[]^6 + (12*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$190105, p$190106]*metric\[Delta][p$190107, 
         p$190108]*PD[-p$190107][pertS[LI[1], -p$190106]]*
        PD[-p$190108][PD[-p$190105][pertE[LI[1]]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^3*Scalar[metric\[Delta][p$190110, p$190111]*
        metric\[Delta][p$190112, p$190113]*PD[-p$190112][
         PD[-p$190111][pertB[LI[1]]]]*PD[-p$190113][PD[-p$190110][
          pertE[LI[1]]]]])/scale[]^6 - (6*hubbleC[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$190115, p$190116]*metric\[Delta][p$190117, 
         p$190118]*perth[LI[1], -p$190115, -p$190117]*
        PD[-p$190118][PD[-p$190116][pertB[LI[1]]]]])/scale[]^6], 
 HoldPattern[pertpi4[LI[2]]] :> 
  Module[{}, (-48*hubbleC[]^3*pprimescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 - 
    (24*ppprimescalar[]*primehubbleC[]*Scalar[pertpsi[LI[1]]*
        pertscalar[LI[1]]])/scale[]^5 + 
    (48*hubbleC[]*pprimescalar[]*primehubbleC[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 + 
    (48*hubbleC[]^4*primescalar[]*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^5 - (24*hubbleC[]^2*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 + 
    (24*primehubbleC[]^2*primescalar[]*Scalar[pertpsi[LI[1]]*
        pertscalar[LI[1]]])/scale[]^5 + 
    (6*hubbleC[]^3*pprimescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (3*ppprimescalar[]*primehubbleC[]*Scalar[pertscalar[LI[2]]])/scale[]^5 - 
    (6*hubbleC[]*pprimescalar[]*primehubbleC[]*Scalar[pertscalar[LI[2]]])/
     scale[]^5 - (6*hubbleC[]^4*primescalar[]*Scalar[pertscalar[LI[2]]])/
     scale[]^5 + (3*hubbleC[]^2*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[2]]])/scale[]^5 - 
    (3*primehubbleC[]^2*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^5 - 
    (6*hubbleC[]*ppprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239745]*
        PD[-h$239745][pertphi[LI[1]]]])/scale[]^5 - 
    (24*hubbleC[]^2*pprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239747]*
        PD[-h$239747][pertphi[LI[1]]]])/scale[]^5 - 
    (6*pprimescalar[]*primehubbleC[]*Scalar[pertscalar[LI[1]]*
        timevec[h$239749]*PD[-h$239749][pertphi[LI[1]]]])/scale[]^5 + 
    (30*hubbleC[]^3*primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239751]*
        PD[-h$239751][pertphi[LI[1]]]])/scale[]^5 + 
    (12*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$239753]*PD[-h$239753][
         pertphi[LI[1]]]])/scale[]^5 - 
    (6*hubbleC[]*ppprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239755]*
        PD[-h$239755][pertpsi[LI[1]]]])/scale[]^5 + 
    (12*hubbleC[]^2*pprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239757]*
        PD[-h$239757][pertpsi[LI[1]]]])/scale[]^5 - 
    (6*pprimescalar[]*primehubbleC[]*Scalar[pertscalar[LI[1]]*
        timevec[h$239759]*PD[-h$239759][pertpsi[LI[1]]]])/scale[]^5 - 
    (6*hubbleC[]^3*primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239761]*
        PD[-h$239761][pertpsi[LI[1]]]])/scale[]^5 + 
    (12*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$239763]*PD[-h$239763][
         pertpsi[LI[1]]]])/scale[]^5 - (48*pprimescalar[]*primehubbleC[]*
      Scalar[pertpsi[LI[1]]*timevec[h$239765]*PD[-h$239765][
         pertscalar[LI[1]]]])/scale[]^5 - 
    (48*hubbleC[]^3*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$239767]*
        PD[-h$239767][pertscalar[LI[1]]]])/scale[]^5 + 
    (48*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$239769]*PD[-h$239769][
         pertscalar[LI[1]]]])/scale[]^5 + 
    (6*pprimescalar[]*primehubbleC[]*Scalar[timevec[h$239771]*
        PD[-h$239771][pertscalar[LI[2]]]])/scale[]^5 + 
    (6*hubbleC[]^3*primescalar[]*Scalar[timevec[h$239773]*
        PD[-h$239773][pertscalar[LI[2]]]])/scale[]^5 - 
    (6*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$239775]*PD[-h$239775][pertscalar[LI[2]]]])/scale[]^5 - 
    (2*ppprimescalar[]*Scalar[metric\[Delta][p$239777, p$239778]*
        pertscalar[LI[1]]*timevec[h$239779]*PD[-h$239779][
         PD[-p$239777][PD[-p$239778][pertB[LI[1]]]]]])/scale[]^5 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$239781, p$239782]*
        pertscalar[LI[1]]*timevec[h$239783]*PD[-h$239783][
         PD[-p$239781][PD[-p$239782][pertB[LI[1]]]]]])/scale[]^5 - 
    (2*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$239785, p$239786]*
        pertscalar[LI[1]]*timevec[h$239787]*PD[-h$239787][
         PD[-p$239785][PD[-p$239786][pertB[LI[1]]]]]])/scale[]^5 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239789, p$239790]*
        pertscalar[LI[1]]*timevec[h$239791]*PD[-h$239791][
         PD[-p$239789][PD[-p$239790][pertB[LI[1]]]]]])/scale[]^5 + 
    (2*hubbleC[]*ppprimescalar[]*Scalar[metric\[Delta][p$239793, p$239794]*
        pertscalar[LI[1]]*timevec[h$239795]*PD[-h$239795][
         PD[-p$239793][PD[-p$239794][pertE[LI[1]]]]]])/scale[]^5 + 
    (8*hubbleC[]^2*pprimescalar[]*Scalar[metric\[Delta][p$239797, p$239798]*
        pertscalar[LI[1]]*timevec[h$239799]*PD[-h$239799][
         PD[-p$239797][PD[-p$239798][pertE[LI[1]]]]]])/scale[]^5 + 
    (2*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$239801, p$239802]*pertscalar[LI[1]]*
        timevec[h$239803]*PD[-h$239803][PD[-p$239801][PD[-p$239802][
           pertE[LI[1]]]]]])/scale[]^5 - 
    (10*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$239805, p$239806]*
        pertscalar[LI[1]]*timevec[h$239807]*PD[-h$239807][
         PD[-p$239805][PD[-p$239806][pertE[LI[1]]]]]])/scale[]^5 - 
    (4*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239809, p$239810]*pertscalar[LI[1]]*
        timevec[h$239811]*PD[-h$239811][PD[-p$239809][PD[-p$239810][
           pertE[LI[1]]]]]])/scale[]^5 + 
    (12*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239813, p$239814]*pertS[LI[1], -p$239813]*
        timevec[h$239815]*PD[-h$239815][PD[-p$239814][pertscalar[LI[1]]]]])/
     scale[]^5 - (12*hubbleC[]*pprimescalar[]*
      Scalar[timevec[h$239817]*timevec[h$239818]*PD[-h$239817][
         pertphi[LI[1]]]*PD[-h$239818][pertscalar[LI[1]]]])/scale[]^5 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[timevec[h$239820]*timevec[h$239821]*
        PD[-h$239820][pertphi[LI[1]]]*PD[-h$239821][pertscalar[LI[1]]]])/
     scale[]^5 - (6*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$239823]*timevec[h$239824]*PD[-h$239823][
         pertphi[LI[1]]]*PD[-h$239824][pertscalar[LI[1]]]])/scale[]^5 - 
    (12*hubbleC[]*pprimescalar[]*Scalar[timevec[h$239826]*timevec[h$239827]*
        PD[-h$239826][pertpsi[LI[1]]]*PD[-h$239827][pertscalar[LI[1]]]])/
     scale[]^5 + (12*hubbleC[]^2*primescalar[]*
      Scalar[timevec[h$239829]*timevec[h$239830]*PD[-h$239829][
         pertpsi[LI[1]]]*PD[-h$239830][pertscalar[LI[1]]]])/scale[]^5 - 
    (6*primehubbleC[]*primescalar[]*Scalar[timevec[h$239832]*
        timevec[h$239833]*PD[-h$239832][pertpsi[LI[1]]]*
        PD[-h$239833][pertscalar[LI[1]]]])/scale[]^5 - 
    (6*ppprimescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239835]*
        timevec[h$239836]*PD[-h$239836][PD[-h$239835][pertphi[LI[1]]]]])/
     scale[]^5 + (12*hubbleC[]*pprimescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$239838]*timevec[h$239839]*
        PD[-h$239839][PD[-h$239838][pertphi[LI[1]]]]])/scale[]^5 - 
    (6*hubbleC[]^2*primescalar[]*Scalar[pertscalar[LI[1]]*timevec[h$239841]*
        timevec[h$239842]*PD[-h$239842][PD[-h$239841][pertphi[LI[1]]]]])/
     scale[]^5 + (6*primehubbleC[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$239844]*timevec[h$239845]*
        PD[-h$239845][PD[-h$239844][pertphi[LI[1]]]]])/scale[]^5 - 
    (24*primehubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$239847]*
        timevec[h$239848]*PD[-h$239848][PD[-h$239847][pertscalar[LI[1]]]]])/
     scale[]^5 + (3*primehubbleC[]*primescalar[]*
      Scalar[timevec[h$239850]*timevec[h$239851]*PD[-h$239851][
         PD[-h$239850][pertscalar[LI[2]]]]])/scale[]^5 + 
    (2*ppprimescalar[]*Scalar[metric\[Delta][p$239853, p$239854]*
        pertscalar[LI[1]]*timevec[h$239855]*timevec[h$239856]*
        PD[-h$239856][PD[-h$239855][PD[-p$239853][PD[-p$239854][
            pertE[LI[1]]]]]]])/scale[]^5 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$239858, p$239859]*
        pertscalar[LI[1]]*timevec[h$239860]*timevec[h$239861]*
        PD[-h$239861][PD[-h$239860][PD[-p$239858][PD[-p$239859][
            pertE[LI[1]]]]]]])/scale[]^5 + 
    (2*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$239863, p$239864]*
        pertscalar[LI[1]]*timevec[h$239865]*timevec[h$239866]*
        PD[-h$239866][PD[-h$239865][PD[-p$239863][PD[-p$239864][
            pertE[LI[1]]]]]]])/scale[]^5 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239868, p$239869]*
        pertscalar[LI[1]]*timevec[h$239870]*timevec[h$239871]*
        PD[-h$239871][PD[-h$239870][PD[-p$239868][PD[-p$239869][
            pertE[LI[1]]]]]]])/scale[]^5 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$239873, p$239874]*
        timevec[h$239875]*timevec[h$239876]*PD[-h$239875][pertscalar[LI[1]]]*
        PD[-h$239876][PD[-p$239873][PD[-p$239874][pertB[LI[1]]]]]])/
     scale[]^5 + (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239878, p$239879]*timevec[h$239880]*
        timevec[h$239881]*PD[-h$239880][pertscalar[LI[1]]]*
        PD[-h$239881][PD[-p$239878][PD[-p$239879][pertB[LI[1]]]]]])/
     scale[]^5 + (4*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$239883, p$239884]*timevec[h$239885]*
        timevec[h$239886]*PD[-h$239885][pertscalar[LI[1]]]*
        PD[-h$239886][PD[-p$239883][PD[-p$239884][pertE[LI[1]]]]]])/
     scale[]^5 + (8*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$239888, p$239889]*timevec[h$239890]*
        timevec[h$239891]*PD[-h$239890][pertscalar[LI[1]]]*
        PD[-h$239891][PD[-p$239888][PD[-p$239889][pertE[LI[1]]]]]])/
     scale[]^5 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239893, p$239894]*timevec[h$239895]*
        timevec[h$239896]*PD[-h$239895][pertscalar[LI[1]]]*
        PD[-h$239896][PD[-p$239893][PD[-p$239894][pertE[LI[1]]]]]])/
     scale[]^5 - (12*pprimescalar[]*Scalar[timevec[h$239898]*
        timevec[h$239899]*timevec[h$239900]*PD[-h$239898][pertscalar[LI[1]]]*
        PD[-h$239900][PD[-h$239899][pertphi[LI[1]]]]])/scale[]^5 + 
    (12*hubbleC[]*primescalar[]*Scalar[timevec[h$239902]*timevec[h$239903]*
        timevec[h$239904]*PD[-h$239902][pertscalar[LI[1]]]*
        PD[-h$239904][PD[-h$239903][pertphi[LI[1]]]]])/scale[]^5 - 
    (6*hubbleC[]*primescalar[]*Scalar[timevec[h$239906]*timevec[h$239907]*
        timevec[h$239908]*PD[-h$239906][pertphi[LI[1]]]*
        PD[-h$239908][PD[-h$239907][pertscalar[LI[1]]]]])/scale[]^5 - 
    (6*hubbleC[]*primescalar[]*Scalar[timevec[h$239910]*timevec[h$239911]*
        timevec[h$239912]*PD[-h$239910][pertpsi[LI[1]]]*
        PD[-h$239912][PD[-h$239911][pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$239914, p$239915]*
        timevec[h$239916]*timevec[h$239917]*timevec[h$239918]*
        PD[-h$239916][PD[-p$239914][PD[-p$239915][pertB[LI[1]]]]]*
        PD[-h$239918][PD[-h$239917][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239920, p$239921]*
        timevec[h$239922]*timevec[h$239923]*timevec[h$239924]*
        PD[-h$239922][PD[-p$239920][PD[-p$239921][pertE[LI[1]]]]]*
        PD[-h$239924][PD[-h$239923][pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$239926, p$239927]*
        timevec[h$239928]*timevec[h$239929]*timevec[h$239930]*
        PD[-h$239928][pertscalar[LI[1]]]*PD[-h$239930][
         PD[-h$239929][PD[-p$239926][PD[-p$239927][pertE[LI[1]]]]]]])/
     scale[]^5 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239932, p$239933]*timevec[h$239934]*
        timevec[h$239935]*timevec[h$239936]*PD[-h$239934][pertscalar[LI[1]]]*
        PD[-h$239936][PD[-h$239935][PD[-p$239932][PD[-p$239933][
            pertE[LI[1]]]]]]])/scale[]^5 - 
    (6*primescalar[]*Scalar[timevec[h$239938]*timevec[h$239939]*
        timevec[h$239940]*timevec[h$239941]*PD[-h$239939][
         PD[-h$239938][pertphi[LI[1]]]]*PD[-h$239941][PD[-h$239940][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$239943, p$239944]*
        timevec[h$239945]*timevec[h$239946]*timevec[h$239947]*
        timevec[h$239948]*PD[-h$239946][PD[-h$239945][PD[-p$239943][
           PD[-p$239944][pertE[LI[1]]]]]]*PD[-h$239948][
         PD[-h$239947][pertscalar[LI[1]]]]])/scale[]^5 - 
    (12*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$239950, p$239951]*timevec[h$239952]*
        PD[-h$239952][PD[-p$239951][pertscalar[LI[1]]]]*
        PD[-p$239950][pertB[LI[1]]]])/scale[]^5 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239954, p$239955]*
        timevec[h$239956]*PD[-h$239956][PD[-p$239955][pertscalar[LI[1]]]]*
        PD[-p$239954][pertpsi[LI[1]]]])/scale[]^5 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239958, p$239959]*
        timevec[h$239960]*PD[-h$239960][pertS[LI[1], -p$239959]]*
        PD[-p$239958][pertscalar[LI[1]]]])/scale[]^5 - 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239962, p$239963]*
        timevec[h$239964]*PD[-h$239964][PD[-p$239963][pertB[LI[1]]]]*
        PD[-p$239962][pertscalar[LI[1]]]])/scale[]^5 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$239966, p$239967]*
        timevec[h$239968]*PD[-h$239968][PD[-p$239967][pertphi[LI[1]]]]*
        PD[-p$239966][pertscalar[LI[1]]]])/scale[]^5 - 
    (16*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239970, p$239971]*
        timevec[h$239972]*PD[-h$239972][PD[-p$239971][pertphi[LI[1]]]]*
        PD[-p$239970][pertscalar[LI[1]]]])/scale[]^5 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$239974, p$239975]*
        metric\[Delta][p$239976, p$239977]*timevec[h$239978]*
        PD[-h$239978][PD[-p$239976][PD[-p$239977][pertF[LI[1], -p$239975]]]]*
        PD[-p$239974][pertscalar[LI[1]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$239980, p$239981]*
        metric\[Delta][p$239982, p$239983]*timevec[h$239984]*
        PD[-h$239984][PD[-p$239982][PD[-p$239983][pertF[LI[1], -p$239981]]]]*
        PD[-p$239980][pertscalar[LI[1]]]])/scale[]^5 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$239986, p$239987]*
        timevec[h$239988]*timevec[h$239989]*PD[-h$239988][
         PD[-p$239987][pertscalar[LI[1]]]]*PD[-p$239986][
         PD[-h$239989][pertphi[LI[1]]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$239991, p$239992]*
        metric\[Delta][p$239993, p$239994]*timevec[h$239995]*
        timevec[h$239996]*PD[-h$239995][PD[-p$239993][PD[-p$239994][
           pertF[LI[1], -p$239992]]]]*PD[-p$239991][PD[-h$239996][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*hubbleC[]*ppprimescalar[]*Scalar[metric\[Delta][p$239998, p$239999]*
        pertscalar[LI[1]]*PD[-p$239998][PD[-p$239999][pertB[LI[1]]]]])/
     scale[]^5 - (8*hubbleC[]^2*pprimescalar[]*
      Scalar[metric\[Delta][p$240001, p$240002]*pertscalar[LI[1]]*
        PD[-p$240001][PD[-p$240002][pertB[LI[1]]]]])/scale[]^5 - 
    (2*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240004, p$240005]*pertscalar[LI[1]]*
        PD[-p$240004][PD[-p$240005][pertB[LI[1]]]]])/scale[]^5 + 
    (10*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240007, p$240008]*
        pertscalar[LI[1]]*PD[-p$240007][PD[-p$240008][pertB[LI[1]]]]])/
     scale[]^5 + (4*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240010, p$240011]*pertscalar[LI[1]]*
        PD[-p$240010][PD[-p$240011][pertB[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240013, p$240014]*
        timevec[h$240015]*PD[-h$240015][pertscalar[LI[1]]]*
        PD[-p$240013][PD[-p$240014][pertB[LI[1]]]]])/scale[]^5 - 
    (8*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240017, p$240018]*
        timevec[h$240019]*PD[-h$240019][pertscalar[LI[1]]]*
        PD[-p$240017][PD[-p$240018][pertB[LI[1]]]]])/scale[]^5 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240021, p$240022]*
        timevec[h$240023]*PD[-h$240023][pertscalar[LI[1]]]*
        PD[-p$240021][PD[-p$240022][pertB[LI[1]]]]])/scale[]^5 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240025, p$240026]*
        timevec[h$240027]*timevec[h$240028]*PD[-h$240028][
         PD[-h$240027][pertscalar[LI[1]]]]*PD[-p$240025][
         PD[-p$240026][pertB[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240030, p$240031]*
        pertscalar[LI[1]]*PD[-p$240030][PD[-p$240031][pertphi[LI[1]]]]])/
     scale[]^5 - (8*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240033, p$240034]*pertscalar[LI[1]]*
        PD[-p$240033][PD[-p$240034][pertphi[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240036, p$240037]*
        timevec[h$240038]*PD[-h$240038][pertscalar[LI[1]]]*
        PD[-p$240036][PD[-p$240037][pertphi[LI[1]]]]])/scale[]^5 - 
    (2*ppprimescalar[]*Scalar[metric\[Delta][p$240040, p$240041]*
        pertscalar[LI[1]]*PD[-p$240040][PD[-p$240041][pertpsi[LI[1]]]]])/
     scale[]^5 + (4*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$240043, p$240044]*pertscalar[LI[1]]*
        PD[-p$240043][PD[-p$240044][pertpsi[LI[1]]]]])/scale[]^5 - 
    (2*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240046, p$240047]*
        pertscalar[LI[1]]*PD[-p$240046][PD[-p$240047][pertpsi[LI[1]]]]])/
     scale[]^5 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240049, p$240050]*pertscalar[LI[1]]*
        PD[-p$240049][PD[-p$240050][pertpsi[LI[1]]]]])/scale[]^5 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240052, p$240053]*
        timevec[h$240054]*PD[-h$240054][pertscalar[LI[1]]]*
        PD[-p$240052][PD[-p$240053][pertpsi[LI[1]]]]])/scale[]^5 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240056, p$240057]*
        timevec[h$240058]*PD[-h$240058][pertscalar[LI[1]]]*
        PD[-p$240056][PD[-p$240057][pertpsi[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240060, p$240061]*
        timevec[h$240062]*timevec[h$240063]*PD[-h$240063][
         PD[-h$240062][pertscalar[LI[1]]]]*PD[-p$240060][
         PD[-p$240061][pertpsi[LI[1]]]]])/scale[]^5 - 
    (8*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240065, p$240066]*
        pertphi[LI[1]]*PD[-p$240065][PD[-p$240066][pertscalar[LI[1]]]]])/
     scale[]^5 - (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240068, p$240069]*pertphi[LI[1]]*
        PD[-p$240068][PD[-p$240069][pertscalar[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240071, p$240072]*
        pertpsi[LI[1]]*PD[-p$240071][PD[-p$240072][pertscalar[LI[1]]]]])/
     scale[]^5 + (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240074, p$240075]*pertpsi[LI[1]]*
        PD[-p$240074][PD[-p$240075][pertscalar[LI[1]]]]])/scale[]^5 + 
    (10*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240077, p$240078]*
        timevec[h$240079]*PD[-h$240079][pertphi[LI[1]]]*
        PD[-p$240077][PD[-p$240078][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240081, p$240082]*
        timevec[h$240083]*PD[-h$240083][pertpsi[LI[1]]]*
        PD[-p$240081][PD[-p$240082][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240085, p$240086]*
        timevec[h$240087]*timevec[h$240088]*PD[-h$240088][
         PD[-h$240087][pertphi[LI[1]]]]*PD[-p$240085][PD[-p$240086][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240090, p$240091]*
        PD[-p$240090][PD[-p$240091][pertscalar[LI[2]]]]])/scale[]^5 - 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240093, p$240094]*
        PD[-p$240093][PD[-p$240094][pertscalar[LI[2]]]]])/scale[]^5 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240096, p$240097]*
        metric\[Delta][p$240098, p$240099]*timevec[h$240100]*
        PD[-h$240100][PD[-p$240098][PD[-p$240099][pertE[LI[1]]]]]*
        PD[-p$240096][PD[-p$240097][pertscalar[LI[1]]]]])/scale[]^5 + 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240102, p$240103]*pertS[LI[1], -p$240102]*
        PD[-p$240103][pertscalar[LI[1]]]])/scale[]^5 + 
    (12*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240105, p$240106]*
        pertS[LI[1], -p$240105]*PD[-p$240106][pertscalar[LI[1]]]])/
     scale[]^5 - (12*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240108, p$240109]*pertS[LI[1], -p$240108]*
        PD[-p$240109][pertscalar[LI[1]]]])/scale[]^5 - 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240111, p$240112]*PD[-p$240111][pertB[LI[1]]]*
        PD[-p$240112][pertscalar[LI[1]]]])/scale[]^5 - 
    (12*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240114, p$240115]*
        PD[-p$240114][pertB[LI[1]]]*PD[-p$240115][pertscalar[LI[1]]]])/
     scale[]^5 + (12*hubbleC[]*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240117, p$240118]*PD[-p$240117][pertB[LI[1]]]*
        PD[-p$240118][pertscalar[LI[1]]]])/scale[]^5 + 
    (4*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240120, p$240121]*
        PD[-p$240120][pertphi[LI[1]]]*PD[-p$240121][pertscalar[LI[1]]]])/
     scale[]^5 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240123, p$240124]*PD[-p$240123][pertphi[LI[1]]]*
        PD[-p$240124][pertscalar[LI[1]]]])/scale[]^5 + 
    (8*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240126, p$240127]*
        PD[-p$240126][pertpsi[LI[1]]]*PD[-p$240127][pertscalar[LI[1]]]])/
     scale[]^5 - (16*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240129, p$240130]*PD[-p$240129][pertpsi[LI[1]]]*
        PD[-p$240130][pertscalar[LI[1]]]])/scale[]^5 - 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240132, p$240133]*
        PD[-p$240132][pertpsi[LI[1]]]*PD[-p$240133][pertscalar[LI[1]]]])/
     scale[]^5 - (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240135, p$240136]*metric\[Delta][p$240137, 
         p$240138]*timevec[h$240139]*PD[-h$240139][perth[LI[1], -p$240136, 
          -p$240138]]*PD[-p$240137][PD[-p$240135][pertscalar[LI[1]]]]])/
     scale[]^5 - (primescalar[]*Scalar[metric\[Delta][p$240141, p$240142]*
        metric\[Delta][p$240143, p$240144]*timevec[h$240145]*
        timevec[h$240146]*PD[-h$240146][PD[-h$240145][perth[LI[1], -p$240142, 
           -p$240144]]]*PD[-p$240143][PD[-p$240141][pertscalar[LI[1]]]]])/
     scale[]^5 + (4*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240148, p$240149]*metric\[Delta][p$240150, 
         p$240151]*PD[-p$240148][pertscalar[LI[1]]]*PD[-p$240150][
         PD[-p$240151][pertF[LI[1], -p$240149]]]])/scale[]^5 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240153, p$240154]*
        metric\[Delta][p$240155, p$240156]*PD[-p$240153][pertscalar[LI[1]]]*
        PD[-p$240155][PD[-p$240156][pertF[LI[1], -p$240154]]]])/scale[]^5 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240158, p$240159]*
        metric\[Delta][p$240160, p$240161]*PD[-p$240158][pertscalar[LI[1]]]*
        PD[-p$240160][PD[-p$240161][pertS[LI[1], -p$240159]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240163, p$240164]*
        metric\[Delta][p$240165, p$240166]*PD[-p$240163][pertscalar[LI[1]]]*
        PD[-p$240165][PD[-p$240166][pertS[LI[1], -p$240164]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240168, p$240169]*
        metric\[Delta][p$240170, p$240171]*timevec[h$240172]*
        PD[-p$240168][PD[-h$240172][pertscalar[LI[1]]]]*
        PD[-p$240170][PD[-p$240171][pertS[LI[1], -p$240169]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240174, p$240175]*
        metric\[Delta][p$240176, p$240177]*timevec[h$240178]*
        PD[-h$240178][PD[-p$240177][PD[-p$240174][pertB[LI[1]]]]]*
        PD[-p$240176][PD[-p$240175][pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240180, p$240181]*
        metric\[Delta][p$240182, p$240183]*timevec[h$240184]*
        PD[-h$240184][PD[-p$240183][PD[-p$240180][pertE[LI[1]]]]]*
        PD[-p$240182][PD[-p$240181][pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240186, p$240187]*
        metric\[Delta][p$240188, p$240189]*timevec[h$240190]*
        timevec[h$240191]*PD[-h$240191][PD[-h$240190][PD[-p$240189][
           pertF[LI[1], -p$240186]]]]*PD[-p$240188][PD[-p$240187][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240193, p$240194]*
        metric\[Delta][p$240195, p$240196]*timevec[h$240197]*
        timevec[h$240198]*PD[-h$240198][PD[-h$240197][PD[-p$240196][
           PD[-p$240193][pertE[LI[1]]]]]]*PD[-p$240195][
         PD[-p$240194][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240200, p$240201]*
        metric\[Delta][p$240202, p$240203]*PD[-p$240200][
         PD[-p$240201][pertB[LI[1]]]]*PD[-p$240202][PD[-p$240203][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240205, p$240206]*
        metric\[Delta][p$240207, p$240208]*PD[-p$240205][
         PD[-p$240206][pertphi[LI[1]]]]*PD[-p$240207][PD[-p$240208][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240210, p$240211]*
        metric\[Delta][p$240212, p$240213]*PD[-p$240210][pertscalar[LI[1]]]*
        PD[-p$240212][PD[-p$240213][PD[-p$240211][pertE[LI[1]]]]]])/
     scale[]^5 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240215, p$240216]*metric\[Delta][p$240217, 
         p$240218]*PD[-p$240215][pertscalar[LI[1]]]*PD[-p$240217][
         PD[-p$240218][PD[-p$240216][pertE[LI[1]]]]]])/scale[]^5 + 
    (primescalar[]*Scalar[metric\[Delta][p$240220, p$240221]*
        metric\[Delta][p$240222, p$240223]*metric\[Delta][p$240224, p$240225]*
        PD[-p$240222][PD[-p$240221][pertscalar[LI[1]]]]*
        PD[-p$240224][PD[-p$240225][perth[LI[1], -p$240220, -p$240223]]]])/
     scale[]^5 + (8*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240227, p$240228]*metric\[Delta][p$240229, 
         p$240230]*PD[-p$240229][pertF[LI[1], -p$240228]]*
        PD[-p$240230][PD[-p$240227][pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240232, p$240233]*
        metric\[Delta][p$240234, p$240235]*PD[-p$240234][
         pertF[LI[1], -p$240233]]*PD[-p$240235][PD[-p$240232][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240237, p$240238]*
        metric\[Delta][p$240239, p$240240]*PD[-p$240239][
         pertS[LI[1], -p$240238]]*PD[-p$240240][PD[-p$240237][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240242, p$240243]*
        metric\[Delta][p$240244, p$240245]*timevec[h$240246]*
        PD[-p$240244][PD[-h$240246][pertF[LI[1], -p$240243]]]*
        PD[-p$240245][PD[-p$240242][pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240248, p$240249]*
        metric\[Delta][p$240250, p$240251]*timevec[h$240252]*
        PD[-p$240250][PD[-h$240252][pertS[LI[1], -p$240249]]]*
        PD[-p$240251][PD[-p$240248][pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240254, p$240255]*
        metric\[Delta][p$240256, p$240257]*PD[-p$240256][
         PD[-p$240255][pertB[LI[1]]]]*PD[-p$240257][PD[-p$240254][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (8*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240259, p$240260]*
        metric\[Delta][p$240261, p$240262]*PD[-p$240261][
         PD[-p$240260][pertE[LI[1]]]]*PD[-p$240262][PD[-p$240259][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240264, p$240265]*
        metric\[Delta][p$240266, p$240267]*PD[-p$240266][
         PD[-p$240265][pertE[LI[1]]]]*PD[-p$240267][PD[-p$240264][
          pertscalar[LI[1]]]]])/scale[]^5 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240269, p$240270]*
        metric\[Delta][p$240271, p$240272]*PD[-p$240271][
         PD[-p$240270][pertphi[LI[1]]]]*PD[-p$240272][PD[-p$240269][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240274, p$240275]*
        metric\[Delta][p$240276, p$240277]*PD[-p$240276][
         PD[-p$240275][pertpsi[LI[1]]]]*PD[-p$240277][PD[-p$240274][
          pertscalar[LI[1]]]]])/scale[]^5 + 
    (4*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240279, p$240280]*
        metric\[Delta][p$240281, p$240282]*perth[LI[1], -p$240279, -p$240281]*
        PD[-p$240282][PD[-p$240280][pertscalar[LI[1]]]]])/scale[]^5 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240284, p$240285]*
        metric\[Delta][p$240286, p$240287]*perth[LI[1], -p$240284, -p$240286]*
        PD[-p$240287][PD[-p$240285][pertscalar[LI[1]]]]])/scale[]^5 - 
    (72*pertpsi[LI[1]]^2*pprimescalar[]*primehubbleC[])/scale[]^4 - 
    (144*hubbleC[]^3*pertpsi[LI[1]]^2*primescalar[])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240291, p$240292]*pertS[LI[1], -p$240291]*
        pertS[LI[1], -p$240292]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240294, p$240295]*
        pertS[LI[1], -p$240294]*pertS[LI[1], -p$240295]])/scale[]^4 + 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240297, p$240298]*
        metric\[Delta][p$240299, p$240300]*perth[LI[1], -p$240297, -p$240299]*
        timevec[h$240301]*PD[-h$240301][perth[LI[1], -p$240298, -p$240300]]])/
     scale[]^4 + (6*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240303, p$240304]*metric\[Delta][p$240305, 
         p$240306]*perth[LI[1], -p$240303, -p$240305]*timevec[h$240307]*
        PD[-h$240307][perth[LI[1], -p$240304, -p$240306]]])/scale[]^4 + 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240309, p$240310]*
        metric\[Delta][p$240311, p$240312]*perth[LI[1], -p$240309, -p$240311]*
        timevec[h$240313]*PD[-h$240313][perth[LI[1], -p$240310, -p$240312]]])/
     scale[]^4 + (12*hubbleC[]*pprimescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$240315]*PD[-h$240315][pertphi[LI[1]]]])/
     scale[]^4 + (72*hubbleC[]^2*primescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$240317]*PD[-h$240317][pertphi[LI[1]]]])/
     scale[]^4 + (12*primehubbleC[]*primescalar[]*
      Scalar[pertphi[LI[1]]*timevec[h$240319]*PD[-h$240319][pertphi[LI[1]]]])/
     scale[]^4 - (24*hubbleC[]*pprimescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$240321]*PD[-h$240321][pertphi[LI[1]]]])/
     scale[]^4 - (144*hubbleC[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$240323]*PD[-h$240323][pertphi[LI[1]]]])/
     scale[]^4 - (24*primehubbleC[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*timevec[h$240325]*PD[-h$240325][pertphi[LI[1]]]])/
     scale[]^4 + (3*hubbleC[]*pprimescalar[]*
      Scalar[timevec[h$240327]*PD[-h$240327][pertphi[LI[2]]]])/scale[]^4 + 
    (18*hubbleC[]^2*primescalar[]*Scalar[timevec[h$240329]*
        PD[-h$240329][pertphi[LI[2]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$240331]*
        PD[-h$240331][pertphi[LI[2]]]])/scale[]^4 - 
    (36*hubbleC[]*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$240333]*
        PD[-h$240333][pertpsi[LI[1]]]])/scale[]^4 - 
    (36*primehubbleC[]*primescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$240335]*
        PD[-h$240335][pertpsi[LI[1]]]])/scale[]^4 + 
    (3*hubbleC[]*pprimescalar[]*Scalar[timevec[h$240337]*
        PD[-h$240337][pertpsi[LI[2]]]])/scale[]^4 + 
    (3*primehubbleC[]*primescalar[]*Scalar[timevec[h$240339]*
        PD[-h$240339][pertpsi[LI[2]]]])/scale[]^4 + 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240341, p$240342]*
        pertS[LI[1], -p$240341]*timevec[h$240343]*PD[-h$240343][
         pertS[LI[1], -p$240342]]])/scale[]^4 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240345, p$240346]*
        pertS[LI[1], -p$240345]*timevec[h$240347]*PD[-h$240347][
         pertS[LI[1], -p$240346]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240349, p$240350]*
        pertphi[LI[1]]*timevec[h$240351]*PD[-h$240351][
         PD[-p$240349][PD[-p$240350][pertB[LI[1]]]]]])/scale[]^4 - 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$240353, p$240354]*
        pertpsi[LI[1]]*timevec[h$240355]*PD[-h$240355][
         PD[-p$240353][PD[-p$240354][pertB[LI[1]]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$240357, p$240358]*
        timevec[h$240359]*PD[-h$240359][PD[-p$240357][PD[-p$240358][
           pertB[LI[2]]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240361, p$240362]*
        pertphi[LI[1]]*timevec[h$240363]*PD[-h$240363][
         PD[-p$240361][PD[-p$240362][pertE[LI[1]]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240365, p$240366]*
        pertphi[LI[1]]*timevec[h$240367]*PD[-h$240367][
         PD[-p$240365][PD[-p$240366][pertE[LI[1]]]]]])/scale[]^4 - 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240369, p$240370]*
        pertphi[LI[1]]*timevec[h$240371]*PD[-h$240371][
         PD[-p$240369][PD[-p$240370][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240373, p$240374]*
        pertpsi[LI[1]]*timevec[h$240375]*PD[-h$240375][
         PD[-p$240373][PD[-p$240374][pertE[LI[1]]]]]])/scale[]^4 + 
    (48*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240377, p$240378]*
        pertpsi[LI[1]]*timevec[h$240379]*PD[-h$240379][
         PD[-p$240377][PD[-p$240378][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240381, p$240382]*
        pertpsi[LI[1]]*timevec[h$240383]*PD[-h$240383][
         PD[-p$240381][PD[-p$240382][pertE[LI[1]]]]]])/scale[]^4 - 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240385, p$240386]*
        timevec[h$240387]*PD[-h$240387][PD[-p$240385][PD[-p$240386][
           pertE[LI[2]]]]]])/scale[]^4 - 
    (6*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240389, p$240390]*
        timevec[h$240391]*PD[-h$240391][PD[-p$240389][PD[-p$240390][
           pertE[LI[2]]]]]])/scale[]^4 - 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240393, p$240394]*
        timevec[h$240395]*PD[-h$240395][PD[-p$240393][PD[-p$240394][
           pertE[LI[2]]]]]])/scale[]^4 - 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240397, p$240398]*
        pertS[LI[1], -p$240397]*timevec[h$240399]*PD[-h$240399][
         PD[-p$240398][pertB[LI[1]]]]])/scale[]^4 - 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240401, p$240402]*
        pertS[LI[1], -p$240401]*timevec[h$240403]*PD[-h$240403][
         PD[-p$240402][pertB[LI[1]]]]])/scale[]^4 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$240405, p$240406]*
        pertS[LI[1], -p$240405]*timevec[h$240407]*PD[-h$240407][
         PD[-p$240406][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240409, p$240410]*
        metric\[Delta][p$240411, p$240412]*pertS[LI[1], -p$240409]*
        timevec[h$240413]*PD[-h$240413][PD[-p$240411][PD[-p$240412][
           pertF[LI[1], -p$240410]]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240415, p$240416]*
        metric\[Delta][p$240417, p$240418]*perth[LI[1], -p$240415, -p$240417]*
        timevec[h$240419]*PD[-h$240419][PD[-p$240418][pertF[LI[1], 
           -p$240416]]]])/scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240421, p$240422]*metric\[Delta][p$240423, 
         p$240424]*perth[LI[1], -p$240421, -p$240423]*timevec[h$240425]*
        PD[-h$240425][PD[-p$240424][pertF[LI[1], -p$240422]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240427, p$240428]*
        metric\[Delta][p$240429, p$240430]*perth[LI[1], -p$240427, -p$240429]*
        timevec[h$240431]*PD[-h$240431][PD[-p$240430][pertF[LI[1], 
           -p$240428]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240433, p$240434]*
        metric\[Delta][p$240435, p$240436]*perth[LI[1], -p$240433, -p$240435]*
        timevec[h$240437]*PD[-h$240437][PD[-p$240436][pertS[LI[1], 
           -p$240434]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240439, p$240440]*
        metric\[Delta][p$240441, p$240442]*perth[LI[1], -p$240439, -p$240441]*
        timevec[h$240443]*PD[-h$240443][PD[-p$240442][PD[-p$240440][
           pertB[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240445, p$240446]*
        metric\[Delta][p$240447, p$240448]*perth[LI[1], -p$240445, -p$240447]*
        timevec[h$240449]*PD[-h$240449][PD[-p$240448][PD[-p$240446][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240451, p$240452]*
        metric\[Delta][p$240453, p$240454]*perth[LI[1], -p$240451, -p$240453]*
        timevec[h$240455]*PD[-h$240455][PD[-p$240454][PD[-p$240452][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240457, p$240458]*
        metric\[Delta][p$240459, p$240460]*perth[LI[1], -p$240457, -p$240459]*
        timevec[h$240461]*PD[-h$240461][PD[-p$240460][PD[-p$240458][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$240463, p$240464]*
        metric\[Delta][p$240465, p$240466]*timevec[h$240467]*
        timevec[h$240468]*PD[-h$240467][perth[LI[1], -p$240464, -p$240466]]*
        PD[-h$240468][perth[LI[1], -p$240463, -p$240465]]])/(2*scale[]^4) - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240470, p$240471]*
        metric\[Delta][p$240472, p$240473]*timevec[h$240474]*
        timevec[h$240475]*PD[-h$240474][perth[LI[1], -p$240471, -p$240473]]*
        PD[-h$240475][perth[LI[1], -p$240470, -p$240472]]])/(2*scale[]^4) + 
    (6*pprimescalar[]*Scalar[timevec[h$240477]*timevec[h$240478]*
        PD[-h$240477][pertphi[LI[1]]]*PD[-h$240478][pertphi[LI[1]]]])/
     scale[]^4 - (42*hubbleC[]*primescalar[]*
      Scalar[timevec[h$240480]*timevec[h$240481]*PD[-h$240480][
         pertphi[LI[1]]]*PD[-h$240481][pertphi[LI[1]]]])/scale[]^4 - 
    (6*pprimescalar[]*Scalar[timevec[h$240483]*timevec[h$240484]*
        PD[-h$240483][pertphi[LI[1]]]*PD[-h$240484][pertpsi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]*primescalar[]*
      Scalar[timevec[h$240486]*timevec[h$240487]*PD[-h$240486][
         pertphi[LI[1]]]*PD[-h$240487][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*primescalar[]*Scalar[timevec[h$240489]*timevec[h$240490]*
        PD[-h$240489][pertpsi[LI[1]]]*PD[-h$240490][pertpsi[LI[1]]]])/
     scale[]^4 + (pprimescalar[]*Scalar[metric\[Delta][p$240492, p$240493]*
        metric\[Delta][p$240494, p$240495]*perth[LI[1], -p$240492, -p$240494]*
        timevec[h$240496]*timevec[h$240497]*PD[-h$240497][
         PD[-h$240496][perth[LI[1], -p$240493, -p$240495]]]])/scale[]^4 + 
    (12*pprimescalar[]*Scalar[pertphi[LI[1]]*timevec[h$240499]*
        timevec[h$240500]*PD[-h$240500][PD[-h$240499][pertphi[LI[1]]]]])/
     scale[]^4 - (24*pprimescalar[]*Scalar[pertpsi[LI[1]]*timevec[h$240502]*
        timevec[h$240503]*PD[-h$240503][PD[-h$240502][pertphi[LI[1]]]]])/
     scale[]^4 + (3*pprimescalar[]*Scalar[timevec[h$240505]*timevec[h$240506]*
        PD[-h$240506][PD[-h$240505][pertphi[LI[2]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240508, p$240509]*
        pertphi[LI[1]]*timevec[h$240510]*timevec[h$240511]*
        PD[-h$240511][PD[-h$240510][PD[-p$240508][PD[-p$240509][
            pertE[LI[1]]]]]]])/scale[]^4 + 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$240513, p$240514]*
        pertpsi[LI[1]]*timevec[h$240515]*timevec[h$240516]*
        PD[-h$240516][PD[-h$240515][PD[-p$240513][PD[-p$240514][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (pprimescalar[]*Scalar[metric\[Delta][p$240518, p$240519]*
        timevec[h$240520]*timevec[h$240521]*PD[-h$240521][
         PD[-h$240520][PD[-p$240518][PD[-p$240519][pertE[LI[2]]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$240523, p$240524]*
        metric\[Delta][p$240525, p$240526]*perth[LI[1], -p$240523, -p$240525]*
        timevec[h$240527]*timevec[h$240528]*PD[-h$240528][
         PD[-h$240527][PD[-p$240526][pertF[LI[1], -p$240524]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240530, p$240531]*
        metric\[Delta][p$240532, p$240533]*perth[LI[1], -p$240530, -p$240532]*
        timevec[h$240534]*timevec[h$240535]*PD[-h$240535][
         PD[-h$240534][PD[-p$240533][PD[-p$240531][pertE[LI[1]]]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$240537, p$240538]*
        timevec[h$240539]*timevec[h$240540]*PD[-h$240539][pertphi[LI[1]]]*
        PD[-h$240540][PD[-p$240537][PD[-p$240538][pertB[LI[1]]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$240542, p$240543]*
        timevec[h$240544]*timevec[h$240545]*PD[-h$240544][pertpsi[LI[1]]]*
        PD[-h$240545][PD[-p$240542][PD[-p$240543][pertB[LI[1]]]]]])/
     scale[]^4 - (4*pprimescalar[]*Scalar[metric\[Delta][p$240547, p$240548]*
        timevec[h$240549]*timevec[h$240550]*PD[-h$240549][pertphi[LI[1]]]*
        PD[-h$240550][PD[-p$240547][PD[-p$240548][pertE[LI[1]]]]]])/
     scale[]^4 + (28*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240552, p$240553]*timevec[h$240554]*
        timevec[h$240555]*PD[-h$240554][pertphi[LI[1]]]*
        PD[-h$240555][PD[-p$240552][PD[-p$240553][pertE[LI[1]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$240557, p$240558]*
        timevec[h$240559]*timevec[h$240560]*PD[-h$240559][pertpsi[LI[1]]]*
        PD[-h$240560][PD[-p$240557][PD[-p$240558][pertE[LI[1]]]]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240562, p$240563]*timevec[h$240564]*
        timevec[h$240565]*PD[-h$240564][pertpsi[LI[1]]]*
        PD[-h$240565][PD[-p$240562][PD[-p$240563][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240567, p$240568]*metric\[Delta][p$240569, 
         p$240570]*timevec[h$240571]*timevec[h$240572]*
        PD[-h$240571][PD[-p$240567][PD[-p$240568][pertE[LI[1]]]]]*
        PD[-h$240572][PD[-p$240569][PD[-p$240570][pertE[LI[1]]]]]])/
     scale[]^4 + (2*primescalar[]*Scalar[metric\[Delta][p$240574, p$240575]*
        metric\[Delta][p$240576, p$240577]*timevec[h$240578]*
        timevec[h$240579]*PD[-h$240578][PD[-p$240576][PD[-p$240575][
           pertB[LI[1]]]]]*PD[-h$240579][PD[-p$240577][PD[-p$240574][
           pertE[LI[1]]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240581, p$240582]*
        metric\[Delta][p$240583, p$240584]*timevec[h$240585]*
        timevec[h$240586]*PD[-h$240585][PD[-p$240583][PD[-p$240582][
           pertE[LI[1]]]]]*PD[-h$240586][PD[-p$240584][PD[-p$240581][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240588, p$240589]*
        metric\[Delta][p$240590, p$240591]*timevec[h$240592]*
        timevec[h$240593]*PD[-h$240592][PD[-p$240590][PD[-p$240589][
           pertE[LI[1]]]]]*PD[-h$240593][PD[-p$240591][PD[-p$240588][
           pertE[LI[1]]]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$240595, p$240596]*
        metric\[Delta][p$240597, p$240598]*timevec[h$240599]*
        timevec[h$240600]*timevec[h$240601]*PD[-h$240599][
         perth[LI[1], -p$240596, -p$240598]]*PD[-h$240601][
         PD[-h$240600][perth[LI[1], -p$240595, -p$240597]]]])/(2*scale[]^4) - 
    (6*primescalar[]*Scalar[timevec[h$240603]*timevec[h$240604]*
        timevec[h$240605]*PD[-h$240603][pertphi[LI[1]]]*
        PD[-h$240605][PD[-h$240604][pertphi[LI[1]]]]])/scale[]^4 - 
    (6*primescalar[]*Scalar[timevec[h$240607]*timevec[h$240608]*
        timevec[h$240609]*PD[-h$240607][pertpsi[LI[1]]]*
        PD[-h$240609][PD[-h$240608][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240611, p$240612]*
        timevec[h$240613]*timevec[h$240614]*timevec[h$240615]*
        PD[-h$240613][PD[-p$240611][PD[-p$240612][pertE[LI[1]]]]]*
        PD[-h$240615][PD[-h$240614][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240617, p$240618]*
        timevec[h$240619]*timevec[h$240620]*timevec[h$240621]*
        PD[-h$240619][pertphi[LI[1]]]*PD[-h$240621][PD[-h$240620][
          PD[-p$240617][PD[-p$240618][pertE[LI[1]]]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240623, p$240624]*
        timevec[h$240625]*timevec[h$240626]*timevec[h$240627]*
        PD[-h$240625][pertpsi[LI[1]]]*PD[-h$240627][PD[-h$240626][
          PD[-p$240623][PD[-p$240624][pertE[LI[1]]]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240629, p$240630]*
        metric\[Delta][p$240631, p$240632]*timevec[h$240633]*
        timevec[h$240634]*timevec[h$240635]*PD[-h$240633][
         PD[-p$240631][PD[-p$240630][pertE[LI[1]]]]]*
        PD[-h$240635][PD[-h$240634][PD[-p$240632][pertF[LI[1], 
            -p$240629]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240637, p$240638]*
        metric\[Delta][p$240639, p$240640]*timevec[h$240641]*
        timevec[h$240642]*timevec[h$240643]*PD[-h$240641][
         PD[-p$240639][PD[-p$240638][pertE[LI[1]]]]]*
        PD[-h$240643][PD[-h$240642][PD[-p$240640][PD[-p$240637][
            pertE[LI[1]]]]]]])/scale[]^4 - 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240645, p$240646]*
        timevec[h$240647]*PD[-h$240647][pertS[LI[1], -p$240646]]*
        PD[-p$240645][pertB[LI[1]]]])/scale[]^4 - 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240649, p$240650]*
        timevec[h$240651]*PD[-h$240651][pertS[LI[1], -p$240650]]*
        PD[-p$240649][pertB[LI[1]]]])/scale[]^4 + 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240653, p$240654]*
        timevec[h$240655]*PD[-h$240655][PD[-p$240654][pertB[LI[1]]]]*
        PD[-p$240653][pertB[LI[1]]]])/scale[]^4 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240657, p$240658]*
        timevec[h$240659]*PD[-h$240659][PD[-p$240658][pertB[LI[1]]]]*
        PD[-p$240657][pertB[LI[1]]]])/scale[]^4 - 
    (8*pprimescalar[]*Scalar[metric\[Delta][p$240661, p$240662]*
        timevec[h$240663]*PD[-h$240663][PD[-p$240662][pertphi[LI[1]]]]*
        PD[-p$240661][pertB[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240665, p$240666]*
        metric\[Delta][p$240667, p$240668]*timevec[h$240669]*
        PD[-h$240669][PD[-p$240667][PD[-p$240668][pertF[LI[1], -p$240666]]]]*
        PD[-p$240665][pertB[LI[1]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240671, p$240672]*
        timevec[h$240673]*PD[-h$240673][pertS[LI[1], -p$240672]]*
        PD[-p$240671][pertphi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240675, p$240676]*
        timevec[h$240677]*PD[-h$240677][PD[-p$240676][pertB[LI[1]]]]*
        PD[-p$240675][pertphi[LI[1]]]])/scale[]^4 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$240679, p$240680]*
        timevec[h$240681]*PD[-h$240681][PD[-p$240680][pertphi[LI[1]]]]*
        PD[-p$240679][pertpsi[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$240683, p$240684]*
        metric\[Delta][p$240685, p$240686]*timevec[h$240687]*
        PD[-h$240687][PD[-p$240685][PD[-p$240686][pertF[LI[1], -p$240684]]]]*
        PD[-p$240683][pertpsi[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240689, p$240690]*
        pertphi[LI[1]]*PD[-p$240689][PD[-p$240690][pertB[LI[1]]]]])/
     scale[]^4 + (24*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240692, p$240693]*pertphi[LI[1]]*
        PD[-p$240692][PD[-p$240693][pertB[LI[1]]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240695, p$240696]*
        pertphi[LI[1]]*PD[-p$240695][PD[-p$240696][pertB[LI[1]]]]])/
     scale[]^4 - (8*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$240698, p$240699]*pertpsi[LI[1]]*
        PD[-p$240698][PD[-p$240699][pertB[LI[1]]]]])/scale[]^4 - 
    (48*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240701, p$240702]*
        pertpsi[LI[1]]*PD[-p$240701][PD[-p$240702][pertB[LI[1]]]]])/
     scale[]^4 - (8*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240704, p$240705]*pertpsi[LI[1]]*
        PD[-p$240704][PD[-p$240705][pertB[LI[1]]]]])/scale[]^4 - 
    (28*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240707, p$240708]*
        timevec[h$240709]*PD[-h$240709][pertphi[LI[1]]]*
        PD[-p$240707][PD[-p$240708][pertB[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240711, p$240712]*
        timevec[h$240713]*PD[-h$240713][pertpsi[LI[1]]]*
        PD[-p$240711][PD[-p$240712][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240715, p$240716]*
        timevec[h$240717]*PD[-h$240717][pertpsi[LI[1]]]*
        PD[-p$240715][PD[-p$240716][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240719, p$240720]*
        timevec[h$240721]*timevec[h$240722]*PD[-h$240722][
         PD[-h$240721][pertphi[LI[1]]]]*PD[-p$240719][PD[-p$240720][
          pertB[LI[1]]]]])/scale[]^4 + 
    (hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240724, p$240725]*
        PD[-p$240724][PD[-p$240725][pertB[LI[2]]]]])/scale[]^4 + 
    (6*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240727, p$240728]*
        PD[-p$240727][PD[-p$240728][pertB[LI[2]]]]])/scale[]^4 + 
    (primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240730, p$240731]*
        PD[-p$240730][PD[-p$240731][pertB[LI[2]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240733, p$240734]*
        timevec[h$240735]*PD[-h$240735][pertphi[LI[1]]]*
        PD[-p$240733][PD[-p$240734][pertE[LI[1]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240737, p$240738]*
        timevec[h$240739]*PD[-h$240739][pertphi[LI[1]]]*
        PD[-p$240737][PD[-p$240738][pertE[LI[1]]]]])/scale[]^4 - 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240741, p$240742]*
        timevec[h$240743]*PD[-h$240743][pertphi[LI[1]]]*
        PD[-p$240741][PD[-p$240742][pertE[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240745, p$240746]*
        timevec[h$240747]*timevec[h$240748]*PD[-h$240748][
         PD[-h$240747][pertphi[LI[1]]]]*PD[-p$240745][PD[-p$240746][
          pertE[LI[1]]]]])/scale[]^4 - 
    (32*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240750, p$240751]*
        pertphi[LI[1]]*PD[-p$240750][PD[-p$240751][pertphi[LI[1]]]]])/
     scale[]^4 + (16*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240753, p$240754]*pertpsi[LI[1]]*
        PD[-p$240753][PD[-p$240754][pertphi[LI[1]]]]])/scale[]^4 + 
    (8*primescalar[]*Scalar[metric\[Delta][p$240756, p$240757]*
        timevec[h$240758]*PD[-h$240758][pertphi[LI[1]]]*
        PD[-p$240756][PD[-p$240757][pertphi[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240760, p$240761]*
        PD[-p$240760][PD[-p$240761][pertphi[LI[2]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240763, p$240764]*
        pertphi[LI[1]]*PD[-p$240763][PD[-p$240764][pertpsi[LI[1]]]]])/
     scale[]^4 - (8*pprimescalar[]*Scalar[metric\[Delta][p$240766, p$240767]*
        pertpsi[LI[1]]*PD[-p$240766][PD[-p$240767][pertpsi[LI[1]]]]])/
     scale[]^4 - (2*primescalar[]*Scalar[metric\[Delta][p$240769, p$240770]*
        timevec[h$240771]*PD[-h$240771][pertphi[LI[1]]]*
        PD[-p$240769][PD[-p$240770][pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240773, p$240774]*
        timevec[h$240775]*PD[-h$240775][pertpsi[LI[1]]]*
        PD[-p$240773][PD[-p$240774][pertpsi[LI[1]]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$240777, p$240778]*
        PD[-p$240777][PD[-p$240778][pertpsi[LI[2]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240780, p$240781]*
        metric\[Delta][p$240782, p$240783]*timevec[h$240784]*
        PD[-h$240784][PD[-p$240782][PD[-p$240783][pertE[LI[1]]]]]*
        PD[-p$240780][PD[-p$240781][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$240786, p$240787]*
        metric\[Delta][p$240788, p$240789]*timevec[h$240790]*
        PD[-h$240790][PD[-p$240788][PD[-p$240789][pertE[LI[1]]]]]*
        PD[-p$240786][PD[-p$240787][pertphi[LI[1]]]]])/scale[]^4 - 
    (24*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240792, p$240793]*pertS[LI[1], -p$240792]*
        PD[-p$240793][pertB[LI[1]]]])/scale[]^4 - 
    (48*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240795, p$240796]*
        pertS[LI[1], -p$240795]*PD[-p$240796][pertB[LI[1]]]])/scale[]^4 + 
    (12*pprimescalar[]*primehubbleC[]*
      Scalar[metric\[Delta][p$240798, p$240799]*PD[-p$240798][pertB[LI[1]]]*
        PD[-p$240799][pertB[LI[1]]]])/scale[]^4 + 
    (24*hubbleC[]^3*primescalar[]*Scalar[metric\[Delta][p$240801, p$240802]*
        PD[-p$240801][pertB[LI[1]]]*PD[-p$240802][pertB[LI[1]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240804, p$240805]*
        metric\[Delta][p$240806, p$240807]*timevec[h$240808]*
        PD[-h$240808][perth[LI[1], -p$240805, -p$240807]]*
        PD[-p$240806][pertF[LI[1], -p$240804]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240810, p$240811]*
        metric\[Delta][p$240812, p$240813]*timevec[h$240814]*
        PD[-h$240814][perth[LI[1], -p$240811, -p$240813]]*
        PD[-p$240812][pertF[LI[1], -p$240810]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240816, p$240817]*
        metric\[Delta][p$240818, p$240819]*timevec[h$240820]*
        PD[-h$240820][perth[LI[1], -p$240817, -p$240819]]*
        PD[-p$240818][pertF[LI[1], -p$240816]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240822, p$240823]*
        metric\[Delta][p$240824, p$240825]*timevec[h$240826]*
        timevec[h$240827]*PD[-h$240827][PD[-h$240826][perth[LI[1], -p$240823, 
           -p$240825]]]*PD[-p$240824][pertF[LI[1], -p$240822]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240829, p$240830]*
        metric\[Delta][p$240831, p$240832]*timevec[h$240833]*
        PD[-h$240833][PD[-p$240832][pertF[LI[1], -p$240829]]]*
        PD[-p$240831][pertF[LI[1], -p$240830]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240835, p$240836]*
        metric\[Delta][p$240837, p$240838]*timevec[h$240839]*
        PD[-h$240839][PD[-p$240838][pertF[LI[1], -p$240835]]]*
        PD[-p$240837][pertF[LI[1], -p$240836]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240841, p$240842]*
        metric\[Delta][p$240843, p$240844]*timevec[h$240845]*
        PD[-h$240845][PD[-p$240844][pertF[LI[1], -p$240841]]]*
        PD[-p$240843][pertF[LI[1], -p$240842]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240847, p$240848]*
        metric\[Delta][p$240849, p$240850]*timevec[h$240851]*
        PD[-h$240851][PD[-p$240850][pertS[LI[1], -p$240847]]]*
        PD[-p$240849][pertF[LI[1], -p$240848]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240853, p$240854]*
        metric\[Delta][p$240855, p$240856]*timevec[h$240857]*
        PD[-h$240857][PD[-p$240856][PD[-p$240853][pertB[LI[1]]]]]*
        PD[-p$240855][pertF[LI[1], -p$240854]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240859, p$240860]*
        metric\[Delta][p$240861, p$240862]*timevec[h$240863]*
        PD[-h$240863][PD[-p$240862][PD[-p$240859][pertE[LI[1]]]]]*
        PD[-p$240861][pertF[LI[1], -p$240860]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240865, p$240866]*
        metric\[Delta][p$240867, p$240868]*timevec[h$240869]*
        PD[-h$240869][PD[-p$240868][PD[-p$240865][pertE[LI[1]]]]]*
        PD[-p$240867][pertF[LI[1], -p$240866]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240871, p$240872]*
        metric\[Delta][p$240873, p$240874]*timevec[h$240875]*
        PD[-h$240875][PD[-p$240874][PD[-p$240871][pertE[LI[1]]]]]*
        PD[-p$240873][pertF[LI[1], -p$240872]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240877, p$240878]*
        metric\[Delta][p$240879, p$240880]*timevec[h$240881]*
        timevec[h$240882]*PD[-h$240882][PD[-h$240881][PD[-p$240880][
           pertF[LI[1], -p$240877]]]]*PD[-p$240879][pertF[LI[1], 
          -p$240878]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$240884, p$240885]*
        metric\[Delta][p$240886, p$240887]*timevec[h$240888]*
        timevec[h$240889]*PD[-h$240889][PD[-h$240888][PD[-p$240887][
           PD[-p$240884][pertE[LI[1]]]]]]*PD[-p$240886][
         pertF[LI[1], -p$240885]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240891, p$240892]*
        metric\[Delta][p$240893, p$240894]*PD[-p$240891][
         pertS[LI[1], -p$240894]]*PD[-p$240893][pertF[LI[1], -p$240892]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240896, p$240897]*metric\[Delta][p$240898, 
         p$240899]*PD[-p$240896][pertS[LI[1], -p$240899]]*
        PD[-p$240898][pertF[LI[1], -p$240897]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240901, p$240902]*
        metric\[Delta][p$240903, p$240904]*PD[-p$240901][
         pertS[LI[1], -p$240904]]*PD[-p$240903][pertF[LI[1], -p$240902]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$240906, p$240907]*metric\[Delta][p$240908, 
         p$240909]*timevec[h$240910]*PD[-p$240906][PD[-h$240910][
          pertF[LI[1], -p$240909]]]*PD[-p$240908][pertF[LI[1], -p$240907]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240912, p$240913]*metric\[Delta][p$240914, 
         p$240915]*timevec[h$240916]*PD[-p$240912][PD[-h$240916][
          pertF[LI[1], -p$240915]]]*PD[-p$240914][pertF[LI[1], -p$240913]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240918, p$240919]*metric\[Delta][p$240920, 
         p$240921]*timevec[h$240922]*PD[-p$240918][PD[-h$240922][
          pertF[LI[1], -p$240921]]]*PD[-p$240920][pertF[LI[1], -p$240919]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$240924, p$240925]*
        metric\[Delta][p$240926, p$240927]*timevec[h$240928]*
        PD[-p$240924][PD[-h$240928][pertS[LI[1], -p$240927]]]*
        PD[-p$240926][pertF[LI[1], -p$240925]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240930, p$240931]*
        metric\[Delta][p$240932, p$240933]*timevec[h$240934]*
        timevec[h$240935]*PD[-p$240930][PD[-h$240935][PD[-h$240934][
           pertF[LI[1], -p$240933]]]]*PD[-p$240932][pertF[LI[1], 
          -p$240931]]])/scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$240937, p$240938]*pertS[LI[1], -p$240937]*
        PD[-p$240938][pertphi[LI[1]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240940, p$240941]*
        pertS[LI[1], -p$240940]*PD[-p$240941][pertphi[LI[1]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240943, p$240944]*
        pertS[LI[1], -p$240943]*PD[-p$240944][pertphi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240946, p$240947]*
        PD[-p$240946][pertB[LI[1]]]*PD[-p$240947][pertphi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$240949, p$240950]*PD[-p$240949][pertB[LI[1]]]*
        PD[-p$240950][pertphi[LI[1]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240952, p$240953]*
        PD[-p$240952][pertB[LI[1]]]*PD[-p$240953][pertphi[LI[1]]]])/
     scale[]^4 - (12*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240955, p$240956]*PD[-p$240955][pertphi[LI[1]]]*
        PD[-p$240956][pertphi[LI[1]]]])/scale[]^4 + 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240958, p$240959]*
        pertS[LI[1], -p$240958]*PD[-p$240959][pertpsi[LI[1]]]])/scale[]^4 + 
    (6*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240961, p$240962]*
        pertS[LI[1], -p$240961]*PD[-p$240962][pertpsi[LI[1]]]])/scale[]^4 - 
    (6*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240964, p$240965]*
        PD[-p$240964][pertB[LI[1]]]*PD[-p$240965][pertpsi[LI[1]]]])/
     scale[]^4 - (6*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240967, p$240968]*PD[-p$240967][pertB[LI[1]]]*
        PD[-p$240968][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$240970, p$240971]*
        PD[-p$240970][pertphi[LI[1]]]*PD[-p$240971][pertpsi[LI[1]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$240973, p$240974]*
        PD[-p$240973][pertpsi[LI[1]]]*PD[-p$240974][pertpsi[LI[1]]]])/
     scale[]^4 + (8*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$240976, p$240977]*PD[-p$240976][pertpsi[LI[1]]]*
        PD[-p$240977][pertpsi[LI[1]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$240979, p$240980]*
        metric\[Delta][p$240981, p$240982]*timevec[h$240983]*
        PD[-h$240983][perth[LI[1], -p$240980, -p$240982]]*
        PD[-p$240981][pertS[LI[1], -p$240979]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$240985, p$240986]*
        metric\[Delta][p$240987, p$240988]*timevec[h$240989]*
        timevec[h$240990]*PD[-h$240990][PD[-h$240989][perth[LI[1], -p$240986, 
           -p$240988]]]*PD[-p$240987][pertS[LI[1], -p$240985]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$240992, p$240993]*
        metric\[Delta][p$240994, p$240995]*perth[LI[1], -p$240992, -p$240995]*
        PD[-p$240994][pertS[LI[1], -p$240993]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$240997, p$240998]*
        metric\[Delta][p$240999, p$241000]*perth[LI[1], -p$240997, -p$241000]*
        PD[-p$240999][pertS[LI[1], -p$240998]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241002, p$241003]*
        metric\[Delta][p$241004, p$241005]*perth[LI[1], -p$241002, -p$241005]*
        PD[-p$241004][pertS[LI[1], -p$241003]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241007, p$241008]*
        metric\[Delta][p$241009, p$241010]*timevec[h$241011]*
        PD[-h$241011][PD[-p$241010][pertF[LI[1], -p$241007]]]*
        PD[-p$241009][pertS[LI[1], -p$241008]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241013, p$241014]*
        metric\[Delta][p$241015, p$241016]*timevec[h$241017]*
        PD[-h$241017][PD[-p$241016][pertS[LI[1], -p$241013]]]*
        PD[-p$241015][pertS[LI[1], -p$241014]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241019, p$241020]*
        metric\[Delta][p$241021, p$241022]*timevec[h$241023]*
        PD[-h$241023][PD[-p$241022][PD[-p$241019][pertB[LI[1]]]]]*
        PD[-p$241021][pertS[LI[1], -p$241020]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241025, p$241026]*
        metric\[Delta][p$241027, p$241028]*timevec[h$241029]*
        PD[-h$241029][PD[-p$241028][PD[-p$241025][pertE[LI[1]]]]]*
        PD[-p$241027][pertS[LI[1], -p$241026]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241031, p$241032]*
        metric\[Delta][p$241033, p$241034]*timevec[h$241035]*
        timevec[h$241036]*PD[-h$241036][PD[-h$241035][PD[-p$241034][
           pertF[LI[1], -p$241031]]]]*PD[-p$241033][pertS[LI[1], 
          -p$241032]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241038, p$241039]*
        metric\[Delta][p$241040, p$241041]*timevec[h$241042]*
        timevec[h$241043]*PD[-h$241043][PD[-h$241042][PD[-p$241041][
           PD[-p$241038][pertE[LI[1]]]]]]*PD[-p$241040][
         pertS[LI[1], -p$241039]]])/scale[]^4 - 
    (pprimescalar[]*Scalar[metric\[Delta][p$241045, p$241046]*
        metric\[Delta][p$241047, p$241048]*PD[-p$241045][
         pertS[LI[1], -p$241048]]*PD[-p$241047][pertS[LI[1], -p$241046]]])/
     scale[]^4 - (hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241050, p$241051]*metric\[Delta][p$241052, 
         p$241053]*PD[-p$241050][pertS[LI[1], -p$241053]]*
        PD[-p$241052][pertS[LI[1], -p$241051]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241055, p$241056]*
        metric\[Delta][p$241057, p$241058]*timevec[h$241059]*
        PD[-p$241055][PD[-h$241059][pertF[LI[1], -p$241058]]]*
        PD[-p$241057][pertS[LI[1], -p$241056]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241061, p$241062]*
        metric\[Delta][p$241063, p$241064]*timevec[h$241065]*
        PD[-p$241061][PD[-h$241065][pertS[LI[1], -p$241064]]]*
        PD[-p$241063][pertS[LI[1], -p$241062]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241067, p$241068]*
        metric\[Delta][p$241069, p$241070]*timevec[h$241071]*
        timevec[h$241072]*PD[-p$241067][PD[-h$241072][PD[-h$241071][
           pertF[LI[1], -p$241070]]]]*PD[-p$241069][pertS[LI[1], 
          -p$241068]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241074, p$241075]*
        metric\[Delta][p$241076, p$241077]*timevec[h$241078]*
        timevec[h$241079]*PD[-h$241079][perth[LI[1], -p$241075, -p$241077]]*
        PD[-p$241076][PD[-h$241078][pertF[LI[1], -p$241074]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241081, p$241082]*
        metric\[Delta][p$241083, p$241084]*timevec[h$241085]*
        timevec[h$241086]*PD[-h$241086][perth[LI[1], -p$241082, -p$241084]]*
        PD[-p$241083][PD[-h$241085][pertF[LI[1], -p$241081]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241088, p$241089]*
        metric\[Delta][p$241090, p$241091]*timevec[h$241092]*
        timevec[h$241093]*timevec[h$241094]*PD[-h$241094][
         PD[-h$241093][perth[LI[1], -p$241089, -p$241091]]]*
        PD[-p$241090][PD[-h$241092][pertF[LI[1], -p$241088]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$241096, p$241097]*
        metric\[Delta][p$241098, p$241099]*timevec[h$241100]*
        timevec[h$241101]*PD[-p$241096][PD[-h$241101][pertF[LI[1], 
           -p$241099]]]*PD[-p$241098][PD[-h$241100][pertF[LI[1], 
           -p$241097]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241103, p$241104]*
        metric\[Delta][p$241105, p$241106]*timevec[h$241107]*
        timevec[h$241108]*PD[-p$241103][PD[-h$241108][pertF[LI[1], 
           -p$241106]]]*PD[-p$241105][PD[-h$241107][pertF[LI[1], 
           -p$241104]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241110, p$241111]*
        metric\[Delta][p$241112, p$241113]*timevec[h$241114]*
        timevec[h$241115]*PD[-p$241110][PD[-h$241115][pertS[LI[1], 
           -p$241113]]]*PD[-p$241112][PD[-h$241114][pertF[LI[1], 
           -p$241111]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241117, p$241118]*
        metric\[Delta][p$241119, p$241120]*timevec[h$241121]*
        timevec[h$241122]*timevec[h$241123]*PD[-p$241117][
         PD[-h$241123][PD[-h$241122][pertF[LI[1], -p$241120]]]]*
        PD[-p$241119][PD[-h$241121][pertF[LI[1], -p$241118]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241125, p$241126]*
        metric\[Delta][p$241127, p$241128]*timevec[h$241129]*
        timevec[h$241130]*PD[-h$241130][perth[LI[1], -p$241126, -p$241128]]*
        PD[-p$241127][PD[-h$241129][pertS[LI[1], -p$241125]]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$241132, p$241133]*
        metric\[Delta][p$241134, p$241135]*timevec[h$241136]*
        timevec[h$241137]*PD[-h$241136][PD[-p$241135][pertF[LI[1], 
           -p$241132]]]*PD[-p$241134][PD[-h$241137][pertF[LI[1], 
           -p$241133]]]])/scale[]^4 - 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241139, p$241140]*
        metric\[Delta][p$241141, p$241142]*timevec[h$241143]*
        timevec[h$241144]*PD[-h$241143][PD[-p$241142][pertF[LI[1], 
           -p$241139]]]*PD[-p$241141][PD[-h$241144][pertF[LI[1], 
           -p$241140]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241146, p$241147]*
        metric\[Delta][p$241148, p$241149]*timevec[h$241150]*
        timevec[h$241151]*PD[-h$241150][PD[-p$241149][pertS[LI[1], 
           -p$241146]]]*PD[-p$241148][PD[-h$241151][pertF[LI[1], 
           -p$241147]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241153, p$241154]*
        metric\[Delta][p$241155, p$241156]*timevec[h$241157]*
        timevec[h$241158]*PD[-h$241157][PD[-p$241156][PD[-p$241153][
           pertB[LI[1]]]]]*PD[-p$241155][PD[-h$241158][pertF[LI[1], 
           -p$241154]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241160, p$241161]*
        metric\[Delta][p$241162, p$241163]*timevec[h$241164]*
        timevec[h$241165]*PD[-h$241164][PD[-p$241163][PD[-p$241160][
           pertE[LI[1]]]]]*PD[-p$241162][PD[-h$241165][pertF[LI[1], 
           -p$241161]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241167, p$241168]*
        metric\[Delta][p$241169, p$241170]*timevec[h$241171]*
        timevec[h$241172]*PD[-h$241171][PD[-p$241170][PD[-p$241167][
           pertE[LI[1]]]]]*PD[-p$241169][PD[-h$241172][pertF[LI[1], 
           -p$241168]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241174, p$241175]*
        metric\[Delta][p$241176, p$241177]*timevec[h$241178]*
        timevec[h$241179]*PD[-h$241178][PD[-p$241177][PD[-p$241174][
           pertE[LI[1]]]]]*PD[-p$241176][PD[-h$241179][pertS[LI[1], 
           -p$241175]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241181, p$241182]*
        metric\[Delta][p$241183, p$241184]*timevec[h$241185]*
        timevec[h$241186]*timevec[h$241187]*PD[-h$241186][
         PD[-h$241185][PD[-p$241184][pertF[LI[1], -p$241181]]]]*
        PD[-p$241183][PD[-h$241187][pertF[LI[1], -p$241182]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241189, p$241190]*
        metric\[Delta][p$241191, p$241192]*timevec[h$241193]*
        timevec[h$241194]*timevec[h$241195]*PD[-h$241194][
         PD[-h$241193][PD[-p$241192][PD[-p$241189][pertE[LI[1]]]]]]*
        PD[-p$241191][PD[-h$241195][pertF[LI[1], -p$241190]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241197, p$241198]*
        metric\[Delta][p$241199, p$241200]*timevec[h$241201]*
        timevec[h$241202]*timevec[h$241203]*PD[-h$241201][
         perth[LI[1], -p$241198, -p$241200]]*PD[-p$241199][
         PD[-h$241203][PD[-h$241202][pertF[LI[1], -p$241197]]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241205, p$241206]*
        metric\[Delta][p$241207, p$241208]*timevec[h$241209]*
        PD[-h$241209][perth[LI[1], -p$241206, -p$241208]]*
        PD[-p$241207][PD[-p$241205][pertB[LI[1]]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241211, p$241212]*
        metric\[Delta][p$241213, p$241214]*timevec[h$241215]*
        timevec[h$241216]*PD[-h$241216][PD[-h$241215][perth[LI[1], -p$241212, 
           -p$241214]]]*PD[-p$241213][PD[-p$241211][pertB[LI[1]]]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$241218, p$241219]*metric\[Delta][p$241220, 
         p$241221]*timevec[h$241222]*PD[-h$241222][perth[LI[1], -p$241219, 
          -p$241221]]*PD[-p$241220][PD[-p$241218][pertE[LI[1]]]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$241224, p$241225]*metric\[Delta][p$241226, 
         p$241227]*timevec[h$241228]*PD[-h$241228][perth[LI[1], -p$241225, 
          -p$241227]]*PD[-p$241226][PD[-p$241224][pertE[LI[1]]]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241230, p$241231]*metric\[Delta][p$241232, 
         p$241233]*timevec[h$241234]*PD[-h$241234][perth[LI[1], -p$241231, 
          -p$241233]]*PD[-p$241232][PD[-p$241230][pertE[LI[1]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$241236, p$241237]*
        metric\[Delta][p$241238, p$241239]*timevec[h$241240]*
        timevec[h$241241]*PD[-h$241241][PD[-h$241240][perth[LI[1], -p$241237, 
           -p$241239]]]*PD[-p$241238][PD[-p$241236][pertE[LI[1]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$241243, p$241244]*
        metric\[Delta][p$241245, p$241246]*timevec[h$241247]*
        PD[-h$241247][perth[LI[1], -p$241244, -p$241246]]*
        PD[-p$241245][PD[-p$241243][pertphi[LI[1]]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241249, p$241250]*
        metric\[Delta][p$241251, p$241252]*timevec[h$241253]*
        PD[-h$241253][perth[LI[1], -p$241250, -p$241252]]*
        PD[-p$241251][PD[-p$241249][pertpsi[LI[1]]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241255, p$241256]*
        metric\[Delta][p$241257, p$241258]*timevec[h$241259]*
        timevec[h$241260]*PD[-h$241259][perth[LI[1], -p$241256, -p$241258]]*
        PD[-p$241257][PD[-p$241255][PD[-h$241260][pertB[LI[1]]]]]])/
     scale[]^4 + (2*pprimescalar[]*Scalar[metric\[Delta][p$241262, p$241263]*
        metric\[Delta][p$241264, p$241265]*timevec[h$241266]*
        timevec[h$241267]*PD[-h$241266][perth[LI[1], -p$241263, -p$241265]]*
        PD[-p$241264][PD[-p$241262][PD[-h$241267][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241269, p$241270]*metric\[Delta][p$241271, 
         p$241272]*timevec[h$241273]*timevec[h$241274]*
        PD[-h$241273][perth[LI[1], -p$241270, -p$241272]]*
        PD[-p$241271][PD[-p$241269][PD[-h$241274][pertE[LI[1]]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$241276, p$241277]*
        metric\[Delta][p$241278, p$241279]*timevec[h$241280]*
        timevec[h$241281]*timevec[h$241282]*PD[-h$241281][
         PD[-h$241280][perth[LI[1], -p$241277, -p$241279]]]*
        PD[-p$241278][PD[-p$241276][PD[-h$241282][pertE[LI[1]]]]]])/
     scale[]^4 - (primescalar[]*Scalar[metric\[Delta][p$241284, p$241285]*
        metric\[Delta][p$241286, p$241287]*timevec[h$241288]*
        timevec[h$241289]*timevec[h$241290]*PD[-h$241288][
         perth[LI[1], -p$241285, -p$241287]]*PD[-p$241286][
         PD[-p$241284][PD[-h$241290][PD[-h$241289][pertE[LI[1]]]]]]])/
     scale[]^4 + (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241292, p$241293]*metric\[Delta][p$241294, 
         p$241295]*timevec[h$241296]*PD[-h$241296][PD[-p$241295][
          pertF[LI[1], -p$241292]]]*PD[-p$241294][PD[-p$241293][
          pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241298, p$241299]*
        metric\[Delta][p$241300, p$241301]*timevec[h$241302]*
        PD[-h$241302][PD[-p$241301][pertS[LI[1], -p$241298]]]*
        PD[-p$241300][PD[-p$241299][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241304, p$241305]*
        metric\[Delta][p$241306, p$241307]*timevec[h$241308]*
        PD[-h$241308][PD[-p$241307][PD[-p$241304][pertB[LI[1]]]]]*
        PD[-p$241306][PD[-p$241305][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241310, p$241311]*
        metric\[Delta][p$241312, p$241313]*timevec[h$241314]*
        PD[-h$241314][PD[-p$241313][PD[-p$241310][pertE[LI[1]]]]]*
        PD[-p$241312][PD[-p$241311][pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241316, p$241317]*
        metric\[Delta][p$241318, p$241319]*timevec[h$241320]*
        timevec[h$241321]*PD[-h$241321][PD[-h$241320][PD[-p$241319][
           pertF[LI[1], -p$241316]]]]*PD[-p$241318][PD[-p$241317][
          pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241323, p$241324]*
        metric\[Delta][p$241325, p$241326]*timevec[h$241327]*
        timevec[h$241328]*PD[-h$241328][PD[-h$241327][PD[-p$241326][
           PD[-p$241323][pertE[LI[1]]]]]]*PD[-p$241325][
         PD[-p$241324][pertB[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241330, p$241331]*
        metric\[Delta][p$241332, p$241333]*PD[-p$241330][
         PD[-p$241331][pertB[LI[1]]]]*PD[-p$241332][PD[-p$241333][
          pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241335, p$241336]*
        metric\[Delta][p$241337, p$241338]*timevec[h$241339]*
        PD[-h$241339][PD[-p$241338][pertF[LI[1], -p$241335]]]*
        PD[-p$241337][PD[-p$241336][pertE[LI[1]]]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241341, p$241342]*
        metric\[Delta][p$241343, p$241344]*timevec[h$241345]*
        PD[-h$241345][PD[-p$241344][pertF[LI[1], -p$241341]]]*
        PD[-p$241343][PD[-p$241342][pertE[LI[1]]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241347, p$241348]*
        metric\[Delta][p$241349, p$241350]*timevec[h$241351]*
        PD[-h$241351][PD[-p$241350][pertF[LI[1], -p$241347]]]*
        PD[-p$241349][PD[-p$241348][pertE[LI[1]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241353, p$241354]*
        metric\[Delta][p$241355, p$241356]*timevec[h$241357]*
        PD[-h$241357][PD[-p$241356][pertS[LI[1], -p$241353]]]*
        PD[-p$241355][PD[-p$241354][pertE[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241359, p$241360]*
        metric\[Delta][p$241361, p$241362]*timevec[h$241363]*
        PD[-h$241363][PD[-p$241362][PD[-p$241359][pertB[LI[1]]]]]*
        PD[-p$241361][PD[-p$241360][pertE[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241365, p$241366]*
        metric\[Delta][p$241367, p$241368]*timevec[h$241369]*
        PD[-h$241369][PD[-p$241368][PD[-p$241365][pertE[LI[1]]]]]*
        PD[-p$241367][PD[-p$241366][pertE[LI[1]]]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241371, p$241372]*
        metric\[Delta][p$241373, p$241374]*timevec[h$241375]*
        PD[-h$241375][PD[-p$241374][PD[-p$241371][pertE[LI[1]]]]]*
        PD[-p$241373][PD[-p$241372][pertE[LI[1]]]]])/scale[]^4 + 
    (4*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241377, p$241378]*
        metric\[Delta][p$241379, p$241380]*timevec[h$241381]*
        PD[-h$241381][PD[-p$241380][PD[-p$241377][pertE[LI[1]]]]]*
        PD[-p$241379][PD[-p$241378][pertE[LI[1]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241383, p$241384]*
        metric\[Delta][p$241385, p$241386]*timevec[h$241387]*
        timevec[h$241388]*PD[-h$241388][PD[-h$241387][PD[-p$241386][
           pertF[LI[1], -p$241383]]]]*PD[-p$241385][PD[-p$241384][
          pertE[LI[1]]]]])/scale[]^4 + 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241390, p$241391]*
        metric\[Delta][p$241392, p$241393]*timevec[h$241394]*
        timevec[h$241395]*PD[-h$241395][PD[-h$241394][PD[-p$241393][
           PD[-p$241390][pertE[LI[1]]]]]]*PD[-p$241392][
         PD[-p$241391][pertE[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241397, p$241398]*
        metric\[Delta][p$241399, p$241400]*timevec[h$241401]*
        PD[-h$241401][pertS[LI[1], -p$241398]]*PD[-p$241399][
         PD[-p$241400][pertF[LI[1], -p$241397]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241403, p$241404]*
        metric\[Delta][p$241405, p$241406]*pertS[LI[1], -p$241403]*
        PD[-p$241405][PD[-p$241406][pertF[LI[1], -p$241404]]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241408, p$241409]*
        metric\[Delta][p$241410, p$241411]*pertS[LI[1], -p$241408]*
        PD[-p$241410][PD[-p$241411][pertF[LI[1], -p$241409]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241413, p$241414]*
        metric\[Delta][p$241415, p$241416]*pertS[LI[1], -p$241413]*
        PD[-p$241415][PD[-p$241416][pertF[LI[1], -p$241414]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241418, p$241419]*
        metric\[Delta][p$241420, p$241421]*PD[-p$241418][pertB[LI[1]]]*
        PD[-p$241420][PD[-p$241421][pertF[LI[1], -p$241419]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241423, p$241424]*
        metric\[Delta][p$241425, p$241426]*PD[-p$241423][pertB[LI[1]]]*
        PD[-p$241425][PD[-p$241426][pertF[LI[1], -p$241424]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241428, p$241429]*
        metric\[Delta][p$241430, p$241431]*PD[-p$241428][pertB[LI[1]]]*
        PD[-p$241430][PD[-p$241431][pertF[LI[1], -p$241429]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241433, p$241434]*
        metric\[Delta][p$241435, p$241436]*PD[-p$241433][pertpsi[LI[1]]]*
        PD[-p$241435][PD[-p$241436][pertF[LI[1], -p$241434]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241438, p$241439]*
        metric\[Delta][p$241440, p$241441]*timevec[h$241442]*
        PD[-p$241438][PD[-h$241442][pertB[LI[1]]]]*PD[-p$241440][
         PD[-p$241441][pertF[LI[1], -p$241439]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241444, p$241445]*
        metric\[Delta][p$241446, p$241447]*timevec[h$241448]*
        PD[-h$241448][PD[-p$241447][PD[-p$241444][pertE[LI[1]]]]]*
        PD[-p$241446][PD[-p$241445][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241450, p$241451]*
        metric\[Delta][p$241452, p$241453]*PD[-p$241450][
         PD[-p$241451][pertB[LI[1]]]]*PD[-p$241452][PD[-p$241453][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241455, p$241456]*
        metric\[Delta][p$241457, p$241458]*PD[-p$241455][
         PD[-p$241456][pertE[LI[1]]]]*PD[-p$241457][PD[-p$241458][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241460, p$241461]*
        metric\[Delta][p$241462, p$241463]*timevec[h$241464]*
        PD[-h$241464][PD[-p$241463][PD[-p$241460][pertE[LI[1]]]]]*
        PD[-p$241462][PD[-p$241461][pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241466, p$241467]*
        metric\[Delta][p$241468, p$241469]*pertS[LI[1], -p$241466]*
        PD[-p$241468][PD[-p$241469][pertS[LI[1], -p$241467]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241471, p$241472]*
        metric\[Delta][p$241473, p$241474]*PD[-p$241471][pertB[LI[1]]]*
        PD[-p$241473][PD[-p$241474][pertS[LI[1], -p$241472]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241476, p$241477]*
        metric\[Delta][p$241478, p$241479]*PD[-p$241476][pertpsi[LI[1]]]*
        PD[-p$241478][PD[-p$241479][pertS[LI[1], -p$241477]]]])/scale[]^4 + 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241481, p$241482]*
        metric\[Delta][p$241483, p$241484]*timevec[h$241485]*
        PD[-h$241485][pertS[LI[1], -p$241482]]*PD[-p$241483][
         PD[-p$241484][PD[-p$241481][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241487, p$241488]*
        metric\[Delta][p$241489, p$241490]*pertS[LI[1], -p$241487]*
        PD[-p$241489][PD[-p$241490][PD[-p$241488][pertE[LI[1]]]]]])/
     scale[]^4 + (12*hubbleC[]^2*primescalar[]*
      Scalar[metric\[Delta][p$241492, p$241493]*metric\[Delta][p$241494, 
         p$241495]*pertS[LI[1], -p$241492]*PD[-p$241494][
         PD[-p$241495][PD[-p$241493][pertE[LI[1]]]]]])/scale[]^4 + 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241497, p$241498]*
        metric\[Delta][p$241499, p$241500]*pertS[LI[1], -p$241497]*
        PD[-p$241499][PD[-p$241500][PD[-p$241498][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$241502, p$241503]*metric\[Delta][p$241504, 
         p$241505]*PD[-p$241502][pertB[LI[1]]]*PD[-p$241504][
         PD[-p$241505][PD[-p$241503][pertE[LI[1]]]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241507, p$241508]*
        metric\[Delta][p$241509, p$241510]*PD[-p$241507][pertB[LI[1]]]*
        PD[-p$241509][PD[-p$241510][PD[-p$241508][pertE[LI[1]]]]]])/
     scale[]^4 - (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241512, p$241513]*metric\[Delta][p$241514, 
         p$241515]*PD[-p$241512][pertB[LI[1]]]*PD[-p$241514][
         PD[-p$241515][PD[-p$241513][pertE[LI[1]]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241517, p$241518]*
        metric\[Delta][p$241519, p$241520]*PD[-p$241517][pertphi[LI[1]]]*
        PD[-p$241519][PD[-p$241520][PD[-p$241518][pertE[LI[1]]]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$241522, p$241523]*
        metric\[Delta][p$241524, p$241525]*PD[-p$241522][pertpsi[LI[1]]]*
        PD[-p$241524][PD[-p$241525][PD[-p$241523][pertE[LI[1]]]]]])/
     scale[]^4 - (2*pprimescalar[]*Scalar[metric\[Delta][p$241527, p$241528]*
        metric\[Delta][p$241529, p$241530]*timevec[h$241531]*
        PD[-p$241527][PD[-h$241531][pertB[LI[1]]]]*PD[-p$241529][
         PD[-p$241530][PD[-p$241528][pertE[LI[1]]]]]])/scale[]^4 + 
    (hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241533, p$241534]*
        metric\[Delta][p$241535, p$241536]*metric\[Delta][p$241537, p$241538]*
        PD[-p$241535][perth[LI[1], -p$241533, -p$241538]]*
        PD[-p$241537][perth[LI[1], -p$241534, -p$241536]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241540, p$241541]*
        metric\[Delta][p$241542, p$241543]*metric\[Delta][p$241544, p$241545]*
        PD[-p$241540][perth[LI[1], -p$241543, -p$241545]]*
        PD[-p$241544][PD[-p$241542][pertF[LI[1], -p$241541]]]])/scale[]^4 + 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241547, p$241548]*
        metric\[Delta][p$241549, p$241550]*metric\[Delta][p$241551, p$241552]*
        PD[-p$241549][PD[-p$241550][pertF[LI[1], -p$241548]]]*
        PD[-p$241551][PD[-p$241552][pertF[LI[1], -p$241547]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241554, p$241555]*
        metric\[Delta][p$241556, p$241557]*metric\[Delta][p$241558, p$241559]*
        timevec[h$241560]*PD[-h$241560][perth[LI[1], -p$241555, -p$241557]]*
        PD[-p$241558][PD[-p$241559][perth[LI[1], -p$241554, -p$241556]]]])/
     (2*scale[]^4) + (primescalar[]*Scalar[metric\[Delta][p$241562, p$241563]*
        metric\[Delta][p$241564, p$241565]*metric\[Delta][p$241566, p$241567]*
        timevec[h$241568]*PD[-h$241568][PD[-p$241564][PD[-p$241563][
           pertE[LI[1]]]]]*PD[-p$241566][PD[-p$241567][perth[LI[1], 
           -p$241562, -p$241565]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241570, p$241571]*
        metric\[Delta][p$241572, p$241573]*metric\[Delta][p$241574, p$241575]*
        PD[-p$241572][pertF[LI[1], -p$241571]]*PD[-p$241574][
         PD[-p$241575][perth[LI[1], -p$241570, -p$241573]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241577, p$241578]*
        metric\[Delta][p$241579, p$241580]*metric\[Delta][p$241581, p$241582]*
        PD[-p$241579][pertS[LI[1], -p$241578]]*PD[-p$241581][
         PD[-p$241582][perth[LI[1], -p$241577, -p$241580]]]])/scale[]^4 + 
    (primescalar[]*Scalar[metric\[Delta][p$241584, p$241585]*
        metric\[Delta][p$241586, p$241587]*metric\[Delta][p$241588, p$241589]*
        timevec[h$241590]*PD[-p$241586][PD[-h$241590][pertF[LI[1], 
           -p$241585]]]*PD[-p$241588][PD[-p$241589][perth[LI[1], -p$241584, 
           -p$241587]]]])/scale[]^4 - 
    (primescalar[]*Scalar[metric\[Delta][p$241592, p$241593]*
        metric\[Delta][p$241594, p$241595]*metric\[Delta][p$241596, p$241597]*
        PD[-p$241594][PD[-p$241593][pertB[LI[1]]]]*PD[-p$241596][
         PD[-p$241597][perth[LI[1], -p$241592, -p$241595]]]])/scale[]^4 - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241599, p$241600]*
        metric\[Delta][p$241601, p$241602]*metric\[Delta][p$241603, p$241604]*
        PD[-p$241601][PD[-p$241600][pertE[LI[1]]]]*PD[-p$241603][
         PD[-p$241604][perth[LI[1], -p$241599, -p$241602]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241606, p$241607]*
        metric\[Delta][p$241608, p$241609]*metric\[Delta][p$241610, p$241611]*
        perth[LI[1], -p$241606, -p$241608]*PD[-p$241610][
         PD[-p$241611][perth[LI[1], -p$241607, -p$241609]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241613, p$241614]*
        metric\[Delta][p$241615, p$241616]*metric\[Delta][p$241617, p$241618]*
        PD[-p$241615][PD[-p$241616][pertF[LI[1], -p$241614]]]*
        PD[-p$241617][PD[-p$241618][PD[-p$241613][pertE[LI[1]]]]]])/
     scale[]^4 + (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241620, p$241621]*metric\[Delta][p$241622, 
         p$241623]*metric\[Delta][p$241624, p$241625]*
        PD[-p$241622][PD[-p$241620][PD[-p$241621][pertE[LI[1]]]]]*
        PD[-p$241624][PD[-p$241625][PD[-p$241623][pertE[LI[1]]]]]])/
     scale[]^4 + (2*hubbleC[]*pprimescalar[]*
      Scalar[metric\[Delta][p$241627, p$241628]*metric\[Delta][p$241629, 
         p$241630]*PD[-p$241629][pertF[LI[1], -p$241628]]*
        PD[-p$241630][pertS[LI[1], -p$241627]]])/scale[]^4 + 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241632, p$241633]*
        metric\[Delta][p$241634, p$241635]*PD[-p$241634][
         pertF[LI[1], -p$241633]]*PD[-p$241635][pertS[LI[1], -p$241632]]])/
     scale[]^4 + (2*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241637, p$241638]*metric\[Delta][p$241639, 
         p$241640]*PD[-p$241639][pertF[LI[1], -p$241638]]*
        PD[-p$241640][pertS[LI[1], -p$241637]]])/scale[]^4 + 
    (pprimescalar[]*Scalar[metric\[Delta][p$241642, p$241643]*
        metric\[Delta][p$241644, p$241645]*PD[-p$241644][
         pertS[LI[1], -p$241643]]*PD[-p$241645][pertS[LI[1], -p$241642]]])/
     scale[]^4 - (hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241647, p$241648]*metric\[Delta][p$241649, 
         p$241650]*PD[-p$241649][pertS[LI[1], -p$241648]]*
        PD[-p$241650][pertS[LI[1], -p$241647]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241652, p$241653]*
        metric\[Delta][p$241654, p$241655]*PD[-p$241654][
         pertF[LI[1], -p$241653]]*PD[-p$241655][PD[-p$241652][
          pertB[LI[1]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241657, p$241658]*
        metric\[Delta][p$241659, p$241660]*PD[-p$241659][
         pertF[LI[1], -p$241658]]*PD[-p$241660][PD[-p$241657][
          pertB[LI[1]]]]])/scale[]^4 - (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241662, p$241663]*metric\[Delta][p$241664, 
         p$241665]*PD[-p$241664][pertF[LI[1], -p$241663]]*
        PD[-p$241665][PD[-p$241662][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241667, p$241668]*
        metric\[Delta][p$241669, p$241670]*PD[-p$241669][
         pertS[LI[1], -p$241668]]*PD[-p$241670][PD[-p$241667][
          pertB[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241672, p$241673]*
        metric\[Delta][p$241674, p$241675]*PD[-p$241674][
         PD[-p$241673][pertB[LI[1]]]]*PD[-p$241675][PD[-p$241672][
          pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241677, p$241678]*
        metric\[Delta][p$241679, p$241680]*PD[-p$241679][
         pertS[LI[1], -p$241678]]*PD[-p$241680][PD[-p$241677][
          pertE[LI[1]]]]])/scale[]^4 + 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241682, p$241683]*
        metric\[Delta][p$241684, p$241685]*PD[-p$241684][
         pertS[LI[1], -p$241683]]*PD[-p$241685][PD[-p$241682][
          pertE[LI[1]]]]])/scale[]^4 + (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241687, p$241688]*metric\[Delta][p$241689, 
         p$241690]*PD[-p$241689][pertS[LI[1], -p$241688]]*
        PD[-p$241690][PD[-p$241687][pertE[LI[1]]]]])/scale[]^4 - 
    (4*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241692, p$241693]*
        metric\[Delta][p$241694, p$241695]*PD[-p$241694][
         PD[-p$241693][pertB[LI[1]]]]*PD[-p$241695][PD[-p$241692][
          pertE[LI[1]]]]])/scale[]^4 - 
    (24*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241697, p$241698]*
        metric\[Delta][p$241699, p$241700]*PD[-p$241699][
         PD[-p$241698][pertB[LI[1]]]]*PD[-p$241700][PD[-p$241697][
          pertE[LI[1]]]]])/scale[]^4 - (4*primehubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241702, p$241703]*metric\[Delta][p$241704, 
         p$241705]*PD[-p$241704][PD[-p$241703][pertB[LI[1]]]]*
        PD[-p$241705][PD[-p$241702][pertE[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241707, p$241708]*
        metric\[Delta][p$241709, p$241710]*PD[-p$241709][
         pertF[LI[1], -p$241708]]*PD[-p$241710][PD[-p$241707][
          pertphi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241712, p$241713]*
        metric\[Delta][p$241714, p$241715]*PD[-p$241714][
         pertS[LI[1], -p$241713]]*PD[-p$241715][PD[-p$241712][
          pertphi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241717, p$241718]*
        metric\[Delta][p$241719, p$241720]*timevec[h$241721]*
        PD[-p$241719][PD[-h$241721][pertF[LI[1], -p$241718]]]*
        PD[-p$241720][PD[-p$241717][pertphi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241723, p$241724]*
        metric\[Delta][p$241725, p$241726]*PD[-p$241725][
         PD[-p$241724][pertB[LI[1]]]]*PD[-p$241726][PD[-p$241723][
          pertphi[LI[1]]]]])/scale[]^4 + 
    (8*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241728, p$241729]*
        metric\[Delta][p$241730, p$241731]*PD[-p$241730][
         PD[-p$241729][pertE[LI[1]]]]*PD[-p$241731][PD[-p$241728][
          pertphi[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241733, p$241734]*
        metric\[Delta][p$241735, p$241736]*PD[-p$241735][
         pertF[LI[1], -p$241734]]*PD[-p$241736][PD[-p$241733][
          pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241738, p$241739]*
        metric\[Delta][p$241740, p$241741]*PD[-p$241740][
         pertS[LI[1], -p$241739]]*PD[-p$241741][PD[-p$241738][
          pertpsi[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]*Scalar[metric\[Delta][p$241743, p$241744]*
        metric\[Delta][p$241745, p$241746]*timevec[h$241747]*
        PD[-p$241745][PD[-h$241747][pertF[LI[1], -p$241744]]]*
        PD[-p$241746][PD[-p$241743][pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*primescalar[]*Scalar[metric\[Delta][p$241749, p$241750]*
        metric\[Delta][p$241751, p$241752]*PD[-p$241751][
         PD[-p$241750][pertB[LI[1]]]]*PD[-p$241752][PD[-p$241749][
          pertpsi[LI[1]]]]])/scale[]^4 - 
    (4*pprimescalar[]*Scalar[metric\[Delta][p$241754, p$241755]*
        metric\[Delta][p$241756, p$241757]*PD[-p$241756][
         PD[-p$241755][pertE[LI[1]]]]*PD[-p$241757][PD[-p$241754][
          pertpsi[LI[1]]]]])/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*Scalar[metric\[Delta][p$241759, p$241760]*
        metric\[Delta][p$241761, p$241762]*perth[LI[1], -p$241759, -p$241761]*
        PD[-p$241762][PD[-p$241760][pertB[LI[1]]]]])/scale[]^4 - 
    (12*hubbleC[]^2*primescalar[]*Scalar[metric\[Delta][p$241764, p$241765]*
        metric\[Delta][p$241766, p$241767]*perth[LI[1], -p$241764, -p$241766]*
        PD[-p$241767][PD[-p$241765][pertB[LI[1]]]]])/scale[]^4 - 
    (2*primehubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241769, p$241770]*
        metric\[Delta][p$241771, p$241772]*perth[LI[1], -p$241769, -p$241771]*
        PD[-p$241772][PD[-p$241770][pertB[LI[1]]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241774, p$241775]*
        metric\[Delta][p$241776, p$241777]*perth[LI[1], -p$241774, -p$241776]*
        PD[-p$241777][PD[-p$241775][pertphi[LI[1]]]]])/scale[]^4 - 
    (2*pprimescalar[]*Scalar[metric\[Delta][p$241779, p$241780]*
        metric\[Delta][p$241781, p$241782]*perth[LI[1], -p$241779, -p$241781]*
        PD[-p$241782][PD[-p$241780][pertpsi[LI[1]]]]])/scale[]^4 - 
    (3*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241784, p$241785]*
        metric\[Delta][p$241786, p$241787]*metric\[Delta][p$241788, p$241789]*
        PD[-p$241788][perth[LI[1], -p$241785, -p$241787]]*
        PD[-p$241789][perth[LI[1], -p$241784, -p$241786]]])/(2*scale[]^4) - 
    (4*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241791, p$241792]*
        metric\[Delta][p$241793, p$241794]*metric\[Delta][p$241795, p$241796]*
        PD[-p$241795][PD[-p$241794][pertF[LI[1], -p$241792]]]*
        PD[-p$241796][perth[LI[1], -p$241791, -p$241793]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241798, p$241799]*
        metric\[Delta][p$241800, p$241801]*metric\[Delta][p$241802, p$241803]*
        PD[-p$241802][PD[-p$241801][pertF[LI[1], -p$241799]]]*
        PD[-p$241803][PD[-p$241800][pertF[LI[1], -p$241798]]]])/scale[]^4 - 
    (2*hubbleC[]*primescalar[]*Scalar[metric\[Delta][p$241805, p$241806]*
        metric\[Delta][p$241807, p$241808]*metric\[Delta][p$241809, p$241810]*
        PD[-p$241809][perth[LI[1], -p$241806, -p$241808]]*
        PD[-p$241810][PD[-p$241807][PD[-p$241805][pertE[LI[1]]]]]])/
     scale[]^4 - (4*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241812, p$241813]*metric\[Delta][p$241814, 
         p$241815]*metric\[Delta][p$241816, p$241817]*
        PD[-p$241816][PD[-p$241815][pertF[LI[1], -p$241813]]]*
        PD[-p$241817][PD[-p$241814][PD[-p$241812][pertE[LI[1]]]]]])/
     scale[]^4 - (2*hubbleC[]*primescalar[]*
      Scalar[metric\[Delta][p$241819, p$241820]*metric\[Delta][p$241821, 
         p$241822]*metric\[Delta][p$241823, p$241824]*
        PD[-p$241823][PD[-p$241822][PD[-p$241820][pertE[LI[1]]]]]*
        PD[-p$241824][PD[-p$241821][PD[-p$241819][pertE[LI[1]]]]]])/
     scale[]^4], HoldPattern[pertpi5[LI[2]]] :> 
  Module[{}, (2*pertscalar[LI[1]]^2*pprimescalar[]^3)/scale[]^6 + 
    (4*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]*primescalar[])/
     scale[]^6 - (18*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]^2*
      primescalar[])/scale[]^6 - (4*hubbleC[]*pertscalar[LI[1]]^2*
      ppprimescalar[]*primescalar[]^2)/scale[]^6 + 
    (26*hubbleC[]^2*pertscalar[LI[1]]^2*pprimescalar[]*primescalar[]^2)/
     scale[]^6 - (4*pertscalar[LI[1]]^2*pprimescalar[]*primehubbleC[]*
      primescalar[]^2)/scale[]^6 - (10*hubbleC[]^3*pertscalar[LI[1]]^2*
      primescalar[]^3)/scale[]^6 + (4*hubbleC[]*pertscalar[LI[1]]^2*
      primehubbleC[]*primescalar[]^3)/scale[]^6 + 
    (12*pprimescalar[]^2*primescalar[]*Scalar[pertscalar[LI[1]]*
        timevec[h$245856]*PD[-h$245856][pertscalar[LI[1]]]])/scale[]^6 + 
    (4*ppprimescalar[]*primescalar[]^2*Scalar[pertscalar[LI[1]]*
        timevec[h$245858]*PD[-h$245858][pertscalar[LI[1]]]])/scale[]^6 - 
    (40*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$245860]*PD[-h$245860][
         pertscalar[LI[1]]]])/scale[]^6 + 
    (24*hubbleC[]^2*primescalar[]^3*Scalar[pertscalar[LI[1]]*
        timevec[h$245862]*PD[-h$245862][pertscalar[LI[1]]]])/scale[]^6 - 
    (4*primehubbleC[]*primescalar[]^3*Scalar[pertscalar[LI[1]]*
        timevec[h$245864]*PD[-h$245864][pertscalar[LI[1]]]])/scale[]^6 + 
    (10*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$245866]*
        timevec[h$245867]*PD[-h$245866][pertscalar[LI[1]]]*
        PD[-h$245867][pertscalar[LI[1]]]])/scale[]^6 - 
    (14*hubbleC[]*primescalar[]^3*Scalar[timevec[h$245869]*timevec[h$245870]*
        PD[-h$245869][pertscalar[LI[1]]]*PD[-h$245870][pertscalar[LI[1]]]])/
     scale[]^6 + (4*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$245872]*timevec[h$245873]*
        PD[-h$245873][PD[-h$245872][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^3*Scalar[pertscalar[LI[1]]*timevec[h$245875]*
        timevec[h$245876]*PD[-h$245876][PD[-h$245875][pertscalar[LI[1]]]]])/
     scale[]^6 + (4*primescalar[]^3*Scalar[timevec[h$245878]*
        timevec[h$245879]*timevec[h$245880]*PD[-h$245878][pertscalar[LI[1]]]*
        PD[-h$245880][PD[-h$245879][pertscalar[LI[1]]]]])/scale[]^6 - 
    (4*primescalar[]^3*Scalar[metric\[Delta][p$245882, p$245883]*
        timevec[h$245884]*PD[-h$245884][PD[-p$245883][pertscalar[LI[1]]]]*
        PD[-p$245882][pertscalar[LI[1]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245886, p$245887]*PD[-p$245886][
         pertscalar[LI[1]]]*PD[-p$245887][pertscalar[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245889, p$245890]*
        PD[-p$245889][pertscalar[LI[1]]]*PD[-p$245890][pertscalar[LI[1]]]])/
     scale[]^6 + (16*pprimescalar[]^2*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 + 
    (8*ppprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*
        pertscalar[LI[1]]])/scale[]^5 - 
    (56*hubbleC[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 + 
    (32*hubbleC[]^2*primescalar[]^3*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^5 - (8*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^5 - 
    (2*pprimescalar[]^2*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^5 - 
    (ppprimescalar[]*primescalar[]^2*Scalar[pertscalar[LI[2]]])/scale[]^5 + 
    (7*hubbleC[]*pprimescalar[]*primescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^5 - (4*hubbleC[]^2*primescalar[]^3*Scalar[pertscalar[LI[2]]])/
     scale[]^5 + (primehubbleC[]*primescalar[]^3*Scalar[pertscalar[LI[2]]])/
     scale[]^5 + (6*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$245902]*PD[-h$245902][
         pertpsi[LI[1]]]])/scale[]^5 - 
    (6*hubbleC[]*primescalar[]^3*Scalar[pertscalar[LI[1]]*timevec[h$245904]*
        PD[-h$245904][pertpsi[LI[1]]]])/scale[]^5 + 
    (32*pprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[1]]*
        timevec[h$245906]*PD[-h$245906][pertscalar[LI[1]]]])/scale[]^5 - 
    (40*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$245908]*
        PD[-h$245908][pertscalar[LI[1]]]])/scale[]^5 - 
    (4*pprimescalar[]*primescalar[]^2*Scalar[timevec[h$245910]*
        PD[-h$245910][pertscalar[LI[2]]]])/scale[]^5 + 
    (5*hubbleC[]*primescalar[]^3*Scalar[timevec[h$245912]*
        PD[-h$245912][pertscalar[LI[2]]]])/scale[]^5 - 
    (4*primescalar[]^3*Scalar[metric\[Delta][p$245914, p$245915]*
        pertS[LI[1], -p$245914]*timevec[h$245916]*PD[-h$245916][
         PD[-p$245915][pertscalar[LI[1]]]]])/scale[]^5 + 
    (6*primescalar[]^3*Scalar[timevec[h$245918]*timevec[h$245919]*
        PD[-h$245918][pertpsi[LI[1]]]*PD[-h$245919][pertscalar[LI[1]]]])/
     scale[]^5 + (8*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$245921]*
        timevec[h$245922]*PD[-h$245922][PD[-h$245921][pertscalar[LI[1]]]]])/
     scale[]^5 - (primescalar[]^3*Scalar[timevec[h$245924]*timevec[h$245925]*
        PD[-h$245925][PD[-h$245924][pertscalar[LI[2]]]]])/scale[]^5 + 
    (4*primescalar[]^3*Scalar[metric\[Delta][p$245927, p$245928]*
        timevec[h$245929]*PD[-h$245929][PD[-p$245928][pertscalar[LI[1]]]]*
        PD[-p$245927][pertB[LI[1]]]])/scale[]^5 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245931, p$245932]*
        timevec[h$245933]*PD[-h$245933][pertS[LI[1], -p$245932]]*
        PD[-p$245931][pertscalar[LI[1]]]])/scale[]^5 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245935, p$245936]*
        timevec[h$245937]*PD[-h$245937][PD[-p$245936][pertB[LI[1]]]]*
        PD[-p$245935][pertscalar[LI[1]]]])/scale[]^5 - 
    (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245939, p$245940]*pertS[LI[1], -p$245939]*
        PD[-p$245940][pertscalar[LI[1]]]])/scale[]^5 + 
    (10*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245942, p$245943]*
        pertS[LI[1], -p$245942]*PD[-p$245943][pertscalar[LI[1]]]])/
     scale[]^5 + (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245945, p$245946]*PD[-p$245945][pertB[LI[1]]]*
        PD[-p$245946][pertscalar[LI[1]]]])/scale[]^5 - 
    (10*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245948, p$245949]*
        PD[-p$245948][pertB[LI[1]]]*PD[-p$245949][pertscalar[LI[1]]]])/
     scale[]^5 - (2*primescalar[]^3*Scalar[metric\[Delta][p$245951, p$245952]*
        PD[-p$245951][pertpsi[LI[1]]]*PD[-p$245952][pertscalar[LI[1]]]])/
     scale[]^5 + (24*pertpsi[LI[1]]^2*pprimescalar[]*primescalar[]^2)/
     scale[]^4 - (24*hubbleC[]*pertpsi[LI[1]]^2*primescalar[]^3)/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*Scalar[pertpsi[LI[2]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[pertpsi[LI[2]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245956, p$245957]*pertS[LI[1], -p$245956]*
        pertS[LI[1], -p$245957]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245959, p$245960]*
        pertS[LI[1], -p$245959]*pertS[LI[1], -p$245960]])/scale[]^4 + 
    (12*primescalar[]^3*Scalar[pertpsi[LI[1]]*timevec[h$245962]*
        PD[-h$245962][pertpsi[LI[1]]]])/scale[]^4 - 
    (primescalar[]^3*Scalar[timevec[h$245964]*PD[-h$245964][pertpsi[LI[2]]]])/
     scale[]^4 - (2*primescalar[]^3*Scalar[metric\[Delta][p$245966, p$245967]*
        pertS[LI[1], -p$245966]*timevec[h$245968]*PD[-h$245968][
         pertS[LI[1], -p$245967]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245970, p$245971]*
        pertS[LI[1], -p$245970]*timevec[h$245972]*PD[-h$245972][
         PD[-p$245971][pertB[LI[1]]]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245974, p$245975]*
        timevec[h$245976]*PD[-h$245976][pertS[LI[1], -p$245975]]*
        PD[-p$245974][pertB[LI[1]]]])/scale[]^4 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245978, p$245979]*
        timevec[h$245980]*PD[-h$245980][PD[-p$245979][pertB[LI[1]]]]*
        PD[-p$245978][pertB[LI[1]]]])/scale[]^4 + 
    (8*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245982, p$245983]*pertS[LI[1], -p$245982]*
        PD[-p$245983][pertB[LI[1]]]])/scale[]^4 - 
    (8*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245985, p$245986]*
        pertS[LI[1], -p$245985]*PD[-p$245986][pertB[LI[1]]]])/scale[]^4 - 
    (4*pprimescalar[]*primescalar[]^2*
      Scalar[metric\[Delta][p$245988, p$245989]*PD[-p$245988][pertB[LI[1]]]*
        PD[-p$245989][pertB[LI[1]]]])/scale[]^4 + 
    (4*hubbleC[]*primescalar[]^3*Scalar[metric\[Delta][p$245991, p$245992]*
        PD[-p$245991][pertB[LI[1]]]*PD[-p$245992][pertB[LI[1]]]])/scale[]^4 - 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245994, p$245995]*
        pertS[LI[1], -p$245994]*PD[-p$245995][pertpsi[LI[1]]]])/scale[]^4 + 
    (2*primescalar[]^3*Scalar[metric\[Delta][p$245997, p$245998]*
        PD[-p$245997][pertB[LI[1]]]*PD[-p$245998][pertpsi[LI[1]]]])/
     scale[]^4], HoldPattern[pertpi6[LI[2]]] :> 
  Module[{}, (-2*pertscalar[LI[1]]^2*pprimescalar[]^4)/scale[]^8 - 
    (8*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]^2*primescalar[])/
     scale[]^8 + (32*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]^3*
      primescalar[])/scale[]^8 - (2*pertscalar[LI[1]]^2*ppprimescalar[]^2*
      primescalar[]^2)/scale[]^8 + (28*hubbleC[]*pertscalar[LI[1]]^2*
      ppprimescalar[]*pprimescalar[]*primescalar[]^2)/scale[]^8 - 
    (94*hubbleC[]^2*pertscalar[LI[1]]^2*pprimescalar[]^2*primescalar[]^2)/
     scale[]^8 + (8*pertscalar[LI[1]]^2*pprimescalar[]^2*primehubbleC[]*
      primescalar[]^2)/scale[]^8 - (16*hubbleC[]^2*pertscalar[LI[1]]^2*
      ppprimescalar[]*primescalar[]^3)/scale[]^8 + 
    (88*hubbleC[]^3*pertscalar[LI[1]]^2*pprimescalar[]*primescalar[]^3)/
     scale[]^8 + (4*pertscalar[LI[1]]^2*ppprimescalar[]*primehubbleC[]*
      primescalar[]^3)/scale[]^8 - (28*hubbleC[]*pertscalar[LI[1]]^2*
      pprimescalar[]*primehubbleC[]*primescalar[]^3)/scale[]^8 - 
    (26*hubbleC[]^4*pertscalar[LI[1]]^2*primescalar[]^4)/scale[]^8 + 
    (16*hubbleC[]^2*pertscalar[LI[1]]^2*primehubbleC[]*primescalar[]^4)/
     scale[]^8 - (2*pertscalar[LI[1]]^2*primehubbleC[]^2*primescalar[]^4)/
     scale[]^8 - (20*pprimescalar[]^3*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$262356]*PD[-h$262356][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (16*ppprimescalar[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$262358]*PD[-h$262358][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (116*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$262360]*PD[-h$262360][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (20*hubbleC[]*ppprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262362]*PD[-h$262362][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (168*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262364]*PD[-h$262364][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (16*pprimescalar[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262366]*PD[-h$262366][
         pertscalar[LI[1]]]])/scale[]^8 + 
    (68*hubbleC[]^3*primescalar[]^4*Scalar[pertscalar[LI[1]]*
        timevec[h$262368]*PD[-h$262368][pertscalar[LI[1]]]])/scale[]^8 - 
    (20*hubbleC[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$262370]*PD[-h$262370][
         pertscalar[LI[1]]]])/scale[]^8 - 
    (26*pprimescalar[]^2*primescalar[]^2*Scalar[timevec[h$262372]*
        timevec[h$262373]*PD[-h$262372][pertscalar[LI[1]]]*
        PD[-h$262373][pertscalar[LI[1]]]])/scale[]^8 + 
    (68*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$262375]*timevec[h$262376]*PD[-h$262375][
         pertscalar[LI[1]]]*PD[-h$262376][pertscalar[LI[1]]]])/scale[]^8 - 
    (44*hubbleC[]^2*primescalar[]^4*Scalar[timevec[h$262378]*
        timevec[h$262379]*PD[-h$262378][pertscalar[LI[1]]]*
        PD[-h$262379][pertscalar[LI[1]]]])/scale[]^8 - 
    (8*pprimescalar[]^2*primescalar[]^2*Scalar[pertscalar[LI[1]]*
        timevec[h$262381]*timevec[h$262382]*PD[-h$262382][
         PD[-h$262381][pertscalar[LI[1]]]]])/scale[]^8 - 
    (4*ppprimescalar[]*primescalar[]^3*Scalar[pertscalar[LI[1]]*
        timevec[h$262384]*timevec[h$262385]*PD[-h$262385][
         PD[-h$262384][pertscalar[LI[1]]]]])/scale[]^8 + 
    (28*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262387]*timevec[h$262388]*
        PD[-h$262388][PD[-h$262387][pertscalar[LI[1]]]]])/scale[]^8 - 
    (16*hubbleC[]^2*primescalar[]^4*Scalar[pertscalar[LI[1]]*
        timevec[h$262390]*timevec[h$262391]*PD[-h$262391][
         PD[-h$262390][pertscalar[LI[1]]]]])/scale[]^8 + 
    (4*primehubbleC[]*primescalar[]^4*Scalar[pertscalar[LI[1]]*
        timevec[h$262393]*timevec[h$262394]*PD[-h$262394][
         PD[-h$262393][pertscalar[LI[1]]]]])/scale[]^8 - 
    (16*pprimescalar[]*primescalar[]^3*Scalar[timevec[h$262396]*
        timevec[h$262397]*timevec[h$262398]*PD[-h$262396][pertscalar[LI[1]]]*
        PD[-h$262398][PD[-h$262397][pertscalar[LI[1]]]]])/scale[]^8 + 
    (20*hubbleC[]*primescalar[]^4*Scalar[timevec[h$262400]*timevec[h$262401]*
        timevec[h$262402]*PD[-h$262400][pertscalar[LI[1]]]*
        PD[-h$262402][PD[-h$262401][pertscalar[LI[1]]]]])/scale[]^8 - 
    (2*primescalar[]^4*Scalar[timevec[h$262404]*timevec[h$262405]*
        timevec[h$262406]*timevec[h$262407]*PD[-h$262405][
         PD[-h$262404][pertscalar[LI[1]]]]*PD[-h$262407][
         PD[-h$262406][pertscalar[LI[1]]]]])/scale[]^8 + 
    (8*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262409, p$262410]*timevec[h$262411]*
        PD[-h$262411][PD[-p$262410][pertscalar[LI[1]]]]*
        PD[-p$262409][pertscalar[LI[1]]]])/scale[]^8 - 
    (8*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262413, p$262414]*
        timevec[h$262415]*PD[-h$262415][PD[-p$262414][pertscalar[LI[1]]]]*
        PD[-p$262413][pertscalar[LI[1]]]])/scale[]^8 + 
    (2*primescalar[]^4*Scalar[metric\[Delta][p$262417, p$262418]*
        timevec[h$262419]*timevec[h$262420]*PD[-h$262419][
         PD[-p$262418][pertscalar[LI[1]]]]*PD[-p$262417][
         PD[-h$262420][pertscalar[LI[1]]]]])/scale[]^8 + 
    (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262422, p$262423]*PD[-p$262422][
         pertscalar[LI[1]]]*PD[-p$262423][pertscalar[LI[1]]]])/scale[]^8 - 
    (16*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262425, p$262426]*PD[-p$262425][
         pertscalar[LI[1]]]*PD[-p$262426][pertscalar[LI[1]]]])/scale[]^8 + 
    (10*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262428, p$262429]*
        PD[-p$262428][pertscalar[LI[1]]]*PD[-p$262429][pertscalar[LI[1]]]])/
     scale[]^8 - (24*pprimescalar[]^3*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 - 
    (24*ppprimescalar[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (144*hubbleC[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (24*hubbleC[]*ppprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 - 
    (192*hubbleC[]^2*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (24*pprimescalar[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (72*hubbleC[]^3*primescalar[]^4*Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/
     scale[]^7 - (24*hubbleC[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^7 + 
    (2*pprimescalar[]^3*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (2*ppprimescalar[]*pprimescalar[]*primescalar[]^2*
      Scalar[pertscalar[LI[2]]])/scale[]^7 - 
    (12*hubbleC[]*pprimescalar[]^2*primescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (2*hubbleC[]*ppprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (16*hubbleC[]^2*pprimescalar[]*primescalar[]^3*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (2*pprimescalar[]*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[2]]])/scale[]^7 - 
    (6*hubbleC[]^3*primescalar[]^4*Scalar[pertscalar[LI[2]]])/scale[]^7 + 
    (2*hubbleC[]*primehubbleC[]*primescalar[]^4*Scalar[pertscalar[LI[2]]])/
     scale[]^7 - (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$262447]*PD[-h$262447][
         pertpsi[LI[1]]]])/scale[]^7 - (4*ppprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262449]*PD[-h$262449][
         pertpsi[LI[1]]]])/scale[]^7 + 
    (36*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$262451]*PD[-h$262451][
         pertpsi[LI[1]]]])/scale[]^7 - (20*hubbleC[]^2*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$262453]*PD[-h$262453][
         pertpsi[LI[1]]]])/scale[]^7 + (4*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$262455]*PD[-h$262455][
         pertpsi[LI[1]]]])/scale[]^7 - (72*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$262457]*PD[-h$262457][
         pertscalar[LI[1]]]])/scale[]^7 + 
    (168*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$262459]*PD[-h$262459][
         pertscalar[LI[1]]]])/scale[]^7 - 
    (96*hubbleC[]^2*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$262461]*
        PD[-h$262461][pertscalar[LI[1]]]])/scale[]^7 + 
    (6*pprimescalar[]^2*primescalar[]^2*Scalar[timevec[h$262463]*
        PD[-h$262463][pertscalar[LI[2]]]])/scale[]^7 - 
    (14*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$262465]*PD[-h$262465][pertscalar[LI[2]]]])/scale[]^7 + 
    (8*hubbleC[]^2*primescalar[]^4*Scalar[timevec[h$262467]*
        PD[-h$262467][pertscalar[LI[2]]]])/scale[]^7 + 
    (8*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262469, p$262470]*pertS[LI[1], -p$262469]*
        timevec[h$262471]*PD[-h$262471][PD[-p$262470][pertscalar[LI[1]]]]])/
     scale[]^7 - (8*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$262473, p$262474]*pertS[LI[1], -p$262473]*
        timevec[h$262475]*PD[-h$262475][PD[-p$262474][pertscalar[LI[1]]]]])/
     scale[]^7 - (20*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$262477]*timevec[h$262478]*PD[-h$262477][
         pertpsi[LI[1]]]*PD[-h$262478][pertscalar[LI[1]]]])/scale[]^7 + 
    (24*hubbleC[]*primescalar[]^4*Scalar[timevec[h$262480]*timevec[h$262481]*
        PD[-h$262480][pertpsi[LI[1]]]*PD[-h$262481][pertscalar[LI[1]]]])/
     scale[]^7 - (24*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$262483]*timevec[h$262484]*
        PD[-h$262484][PD[-h$262483][pertscalar[LI[1]]]]])/scale[]^7 + 
    (24*hubbleC[]*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$262486]*
        timevec[h$262487]*PD[-h$262487][PD[-h$262486][pertscalar[LI[1]]]]])/
     scale[]^7 + (2*pprimescalar[]*primescalar[]^3*
      Scalar[timevec[h$262489]*timevec[h$262490]*PD[-h$262490][
         PD[-h$262489][pertscalar[LI[2]]]]])/scale[]^7 - 
    (2*hubbleC[]*primescalar[]^4*Scalar[timevec[h$262492]*timevec[h$262493]*
        PD[-h$262493][PD[-h$262492][pertscalar[LI[2]]]]])/scale[]^7 - 
    (4*primescalar[]^4*Scalar[timevec[h$262495]*timevec[h$262496]*
        timevec[h$262497]*PD[-h$262495][pertpsi[LI[1]]]*
        PD[-h$262497][PD[-h$262496][pertscalar[LI[1]]]]])/scale[]^7 - 
    (8*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262499, p$262500]*timevec[h$262501]*
        PD[-h$262501][PD[-p$262500][pertscalar[LI[1]]]]*
        PD[-p$262499][pertB[LI[1]]]])/scale[]^7 + 
    (8*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262503, p$262504]*
        timevec[h$262505]*PD[-h$262505][PD[-p$262504][pertscalar[LI[1]]]]*
        PD[-p$262503][pertB[LI[1]]]])/scale[]^7 + 
    (4*primescalar[]^4*Scalar[metric\[Delta][p$262507, p$262508]*
        timevec[h$262509]*PD[-h$262509][PD[-p$262508][pertscalar[LI[1]]]]*
        PD[-p$262507][pertpsi[LI[1]]]])/scale[]^7 + 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262511, p$262512]*timevec[h$262513]*
        PD[-h$262513][pertS[LI[1], -p$262512]]*PD[-p$262511][
         pertscalar[LI[1]]]])/scale[]^7 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262515, p$262516]*
        timevec[h$262517]*PD[-h$262517][pertS[LI[1], -p$262516]]*
        PD[-p$262515][pertscalar[LI[1]]]])/scale[]^7 - 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262519, p$262520]*timevec[h$262521]*
        PD[-h$262521][PD[-p$262520][pertB[LI[1]]]]*PD[-p$262519][
         pertscalar[LI[1]]]])/scale[]^7 + 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262523, p$262524]*
        timevec[h$262525]*PD[-h$262525][PD[-p$262524][pertB[LI[1]]]]*
        PD[-p$262523][pertscalar[LI[1]]]])/scale[]^7 + 
    (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262527, p$262528]*pertS[LI[1], -p$262527]*
        PD[-p$262528][pertscalar[LI[1]]]])/scale[]^7 - 
    (28*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262530, p$262531]*pertS[LI[1], -p$262530]*
        PD[-p$262531][pertscalar[LI[1]]]])/scale[]^7 + 
    (16*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262533, p$262534]*
        pertS[LI[1], -p$262533]*PD[-p$262534][pertscalar[LI[1]]]])/
     scale[]^7 - (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262536, p$262537]*PD[-p$262536][pertB[LI[1]]]*
        PD[-p$262537][pertscalar[LI[1]]]])/scale[]^7 + 
    (28*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262539, p$262540]*PD[-p$262539][pertB[LI[1]]]*
        PD[-p$262540][pertscalar[LI[1]]]])/scale[]^7 - 
    (16*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262542, p$262543]*
        PD[-p$262542][pertB[LI[1]]]*PD[-p$262543][pertscalar[LI[1]]]])/
     scale[]^7 + (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262545, p$262546]*PD[-p$262545][pertpsi[LI[1]]]*
        PD[-p$262546][pertscalar[LI[1]]]])/scale[]^7 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262548, p$262549]*
        PD[-p$262548][pertpsi[LI[1]]]*PD[-p$262549][pertscalar[LI[1]]]])/
     scale[]^7 - (48*pertpsi[LI[1]]^2*pprimescalar[]^2*primescalar[]^2)/
     scale[]^6 + (96*hubbleC[]*pertpsi[LI[1]]^2*pprimescalar[]*
      primescalar[]^3)/scale[]^6 - (48*hubbleC[]^2*pertpsi[LI[1]]^2*
      primescalar[]^4)/scale[]^6 + (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[2]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (6*hubbleC[]^2*primescalar[]^4*Scalar[pertpsi[LI[2]]])/
     scale[]^6 + (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262554, p$262555]*pertS[LI[1], -p$262554]*
        pertS[LI[1], -p$262555]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262557, p$262558]*pertS[LI[1], -p$262557]*
        pertS[LI[1], -p$262558]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262560, p$262561]*
        pertS[LI[1], -p$262560]*pertS[LI[1], -p$262561]])/scale[]^6 - 
    (32*pprimescalar[]*primescalar[]^3*Scalar[pertpsi[LI[1]]*
        timevec[h$262563]*PD[-h$262563][pertpsi[LI[1]]]])/scale[]^6 + 
    (32*hubbleC[]*primescalar[]^4*Scalar[pertpsi[LI[1]]*timevec[h$262565]*
        PD[-h$262565][pertpsi[LI[1]]]])/scale[]^6 + 
    (2*pprimescalar[]*primescalar[]^3*Scalar[timevec[h$262567]*
        PD[-h$262567][pertpsi[LI[2]]]])/scale[]^6 - 
    (2*hubbleC[]*primescalar[]^4*Scalar[timevec[h$262569]*
        PD[-h$262569][pertpsi[LI[2]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262571, p$262572]*pertS[LI[1], -p$262571]*
        timevec[h$262573]*PD[-h$262573][pertS[LI[1], -p$262572]]])/
     scale[]^6 - (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$262575, p$262576]*pertS[LI[1], -p$262575]*
        timevec[h$262577]*PD[-h$262577][pertS[LI[1], -p$262576]]])/
     scale[]^6 - (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262579, p$262580]*pertS[LI[1], -p$262579]*
        timevec[h$262581]*PD[-h$262581][PD[-p$262580][pertB[LI[1]]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$262583, p$262584]*pertS[LI[1], -p$262583]*
        timevec[h$262585]*PD[-h$262585][PD[-p$262584][pertB[LI[1]]]]])/
     scale[]^6 - (2*primescalar[]^4*Scalar[timevec[h$262587]*
        timevec[h$262588]*PD[-h$262587][pertpsi[LI[1]]]*
        PD[-h$262588][pertpsi[LI[1]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262590, p$262591]*timevec[h$262592]*
        PD[-h$262592][pertS[LI[1], -p$262591]]*PD[-p$262590][pertB[LI[1]]]])/
     scale[]^6 + (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$262594, p$262595]*timevec[h$262596]*
        PD[-h$262596][pertS[LI[1], -p$262595]]*PD[-p$262594][pertB[LI[1]]]])/
     scale[]^6 + (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262598, p$262599]*timevec[h$262600]*
        PD[-h$262600][PD[-p$262599][pertB[LI[1]]]]*PD[-p$262598][
         pertB[LI[1]]]])/scale[]^6 - (4*hubbleC[]*primescalar[]^4*
      Scalar[metric\[Delta][p$262602, p$262603]*timevec[h$262604]*
        PD[-h$262604][PD[-p$262603][pertB[LI[1]]]]*PD[-p$262602][
         pertB[LI[1]]]])/scale[]^6 - (12*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262606, p$262607]*pertS[LI[1], -p$262606]*
        PD[-p$262607][pertB[LI[1]]]])/scale[]^6 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262609, p$262610]*pertS[LI[1], -p$262609]*
        PD[-p$262610][pertB[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262612, p$262613]*
        pertS[LI[1], -p$262612]*PD[-p$262613][pertB[LI[1]]]])/scale[]^6 + 
    (6*pprimescalar[]^2*primescalar[]^2*
      Scalar[metric\[Delta][p$262615, p$262616]*PD[-p$262615][pertB[LI[1]]]*
        PD[-p$262616][pertB[LI[1]]]])/scale[]^6 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262618, p$262619]*PD[-p$262618][pertB[LI[1]]]*
        PD[-p$262619][pertB[LI[1]]]])/scale[]^6 + 
    (6*hubbleC[]^2*primescalar[]^4*Scalar[metric\[Delta][p$262621, p$262622]*
        PD[-p$262621][pertB[LI[1]]]*PD[-p$262622][pertB[LI[1]]]])/scale[]^6 + 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262624, p$262625]*pertS[LI[1], -p$262624]*
        PD[-p$262625][pertpsi[LI[1]]]])/scale[]^6 - 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262627, p$262628]*
        pertS[LI[1], -p$262627]*PD[-p$262628][pertpsi[LI[1]]]])/scale[]^6 - 
    (4*pprimescalar[]*primescalar[]^3*
      Scalar[metric\[Delta][p$262630, p$262631]*PD[-p$262630][pertB[LI[1]]]*
        PD[-p$262631][pertpsi[LI[1]]]])/scale[]^6 + 
    (4*hubbleC[]*primescalar[]^4*Scalar[metric\[Delta][p$262633, p$262634]*
        PD[-p$262633][pertB[LI[1]]]*PD[-p$262634][pertpsi[LI[1]]]])/
     scale[]^6 + (2*primescalar[]^4*Scalar[metric\[Delta][p$262636, p$262637]*
        PD[-p$262636][pertpsi[LI[1]]]*PD[-p$262637][pertpsi[LI[1]]]])/
     scale[]^6], HoldPattern[pertpi7[LI[2]]] :> 
  Module[{}, (2*pertscalar[LI[1]]^2*pprimescalar[]^5)/scale[]^10 + 
    (12*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]^3*primescalar[])/
     scale[]^10 - (46*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]^4*
      primescalar[])/scale[]^10 + (6*pertscalar[LI[1]]^2*ppprimescalar[]^2*
      pprimescalar[]*primescalar[]^2)/scale[]^10 - 
    (72*hubbleC[]*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]^2*
      primescalar[]^2)/scale[]^10 + (206*hubbleC[]^2*pertscalar[LI[1]]^2*
      pprimescalar[]^3*primescalar[]^2)/scale[]^10 - 
    (12*pertscalar[LI[1]]^2*pprimescalar[]^3*primehubbleC[]*primescalar[]^2)/
     scale[]^10 - (6*hubbleC[]*pertscalar[LI[1]]^2*ppprimescalar[]^2*
      primescalar[]^3)/scale[]^10 + (96*hubbleC[]^2*pertscalar[LI[1]]^2*
      ppprimescalar[]*pprimescalar[]*primescalar[]^3)/scale[]^10 - 
    (326*hubbleC[]^3*pertscalar[LI[1]]^2*pprimescalar[]^2*primescalar[]^3)/
     scale[]^10 - (12*pertscalar[LI[1]]^2*ppprimescalar[]*pprimescalar[]*
      primehubbleC[]*primescalar[]^3)/scale[]^10 + 
    (72*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]^2*primehubbleC[]*
      primescalar[]^3)/scale[]^10 - (36*hubbleC[]^3*pertscalar[LI[1]]^2*
      ppprimescalar[]*primescalar[]^4)/scale[]^10 + 
    (214*hubbleC[]^4*pertscalar[LI[1]]^2*pprimescalar[]*primescalar[]^4)/
     scale[]^10 + (12*hubbleC[]*pertscalar[LI[1]]^2*ppprimescalar[]*
      primehubbleC[]*primescalar[]^4)/scale[]^10 - 
    (96*hubbleC[]^2*pertscalar[LI[1]]^2*pprimescalar[]*primehubbleC[]*
      primescalar[]^4)/scale[]^10 + (6*pertscalar[LI[1]]^2*pprimescalar[]*
      primehubbleC[]^2*primescalar[]^4)/scale[]^10 - 
    (50*hubbleC[]^5*pertscalar[LI[1]]^2*primescalar[]^5)/scale[]^10 + 
    (36*hubbleC[]^3*pertscalar[LI[1]]^2*primehubbleC[]*primescalar[]^5)/
     scale[]^10 - (6*hubbleC[]*pertscalar[LI[1]]^2*primehubbleC[]^2*
      primescalar[]^5)/scale[]^10 + (28*pprimescalar[]^4*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$369899]*PD[-h$369899][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (36*ppprimescalar[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$369901]*PD[-h$369901][
         pertscalar[LI[1]]]])/scale[]^10 - 
    (232*hubbleC[]*pprimescalar[]^3*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$369903]*PD[-h$369903][
         pertscalar[LI[1]]]])/scale[]^10 - 
    (84*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$369905]*PD[-h$369905][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (528*hubbleC[]^2*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$369907]*PD[-h$369907][
         pertscalar[LI[1]]]])/scale[]^10 - 
    (36*pprimescalar[]^2*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$369909]*PD[-h$369909][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (48*hubbleC[]^2*ppprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369911]*PD[-h$369911][
         pertscalar[LI[1]]]])/scale[]^10 - 
    (460*hubbleC[]^3*pprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369913]*PD[-h$369913][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (84*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369915]*PD[-h$369915][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (136*hubbleC[]^4*primescalar[]^5*Scalar[pertscalar[LI[1]]*
        timevec[h$369917]*PD[-h$369917][pertscalar[LI[1]]]])/scale[]^10 - 
    (48*hubbleC[]^2*primehubbleC[]*primescalar[]^5*
      Scalar[pertscalar[LI[1]]*timevec[h$369919]*PD[-h$369919][
         pertscalar[LI[1]]]])/scale[]^10 + 
    (50*pprimescalar[]^3*primescalar[]^2*Scalar[timevec[h$369921]*
        timevec[h$369922]*PD[-h$369921][pertscalar[LI[1]]]*
        PD[-h$369922][pertscalar[LI[1]]]])/scale[]^10 - 
    (186*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$369924]*timevec[h$369925]*PD[-h$369924][
         pertscalar[LI[1]]]*PD[-h$369925][pertscalar[LI[1]]]])/scale[]^10 + 
    (228*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$369927]*timevec[h$369928]*PD[-h$369927][
         pertscalar[LI[1]]]*PD[-h$369928][pertscalar[LI[1]]]])/scale[]^10 - 
    (92*hubbleC[]^3*primescalar[]^5*Scalar[timevec[h$369930]*
        timevec[h$369931]*PD[-h$369930][pertscalar[LI[1]]]*
        PD[-h$369931][pertscalar[LI[1]]]])/scale[]^10 + 
    (12*pprimescalar[]^3*primescalar[]^2*Scalar[pertscalar[LI[1]]*
        timevec[h$369933]*timevec[h$369934]*PD[-h$369934][
         PD[-h$369933][pertscalar[LI[1]]]]])/scale[]^10 + 
    (12*ppprimescalar[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$369936]*timevec[h$369937]*
        PD[-h$369937][PD[-h$369936][pertscalar[LI[1]]]]])/scale[]^10 - 
    (72*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$369939]*timevec[h$369940]*
        PD[-h$369940][PD[-h$369939][pertscalar[LI[1]]]]])/scale[]^10 - 
    (12*hubbleC[]*ppprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369942]*timevec[h$369943]*
        PD[-h$369943][PD[-h$369942][pertscalar[LI[1]]]]])/scale[]^10 + 
    (96*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369945]*timevec[h$369946]*
        PD[-h$369946][PD[-h$369945][pertscalar[LI[1]]]]])/scale[]^10 - 
    (12*pprimescalar[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$369948]*timevec[h$369949]*
        PD[-h$369949][PD[-h$369948][pertscalar[LI[1]]]]])/scale[]^10 - 
    (36*hubbleC[]^3*primescalar[]^5*Scalar[pertscalar[LI[1]]*
        timevec[h$369951]*timevec[h$369952]*PD[-h$369952][
         PD[-h$369951][pertscalar[LI[1]]]]])/scale[]^10 + 
    (12*hubbleC[]*primehubbleC[]*primescalar[]^5*
      Scalar[pertscalar[LI[1]]*timevec[h$369954]*timevec[h$369955]*
        PD[-h$369955][PD[-h$369954][pertscalar[LI[1]]]]])/scale[]^10 + 
    (36*pprimescalar[]^2*primescalar[]^3*Scalar[timevec[h$369957]*
        timevec[h$369958]*timevec[h$369959]*PD[-h$369957][pertscalar[LI[1]]]*
        PD[-h$369959][PD[-h$369958][pertscalar[LI[1]]]]])/scale[]^10 - 
    (84*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$369961]*timevec[h$369962]*timevec[h$369963]*
        PD[-h$369961][pertscalar[LI[1]]]*PD[-h$369963][
         PD[-h$369962][pertscalar[LI[1]]]]])/scale[]^10 + 
    (48*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$369965]*
        timevec[h$369966]*timevec[h$369967]*PD[-h$369965][pertscalar[LI[1]]]*
        PD[-h$369967][PD[-h$369966][pertscalar[LI[1]]]]])/scale[]^10 + 
    (6*pprimescalar[]*primescalar[]^4*Scalar[timevec[h$369969]*
        timevec[h$369970]*timevec[h$369971]*timevec[h$369972]*
        PD[-h$369970][PD[-h$369969][pertscalar[LI[1]]]]*
        PD[-h$369972][PD[-h$369971][pertscalar[LI[1]]]]])/scale[]^10 - 
    (6*hubbleC[]*primescalar[]^5*Scalar[timevec[h$369974]*timevec[h$369975]*
        timevec[h$369976]*timevec[h$369977]*PD[-h$369975][
         PD[-h$369974][pertscalar[LI[1]]]]*PD[-h$369977][
         PD[-h$369976][pertscalar[LI[1]]]]])/scale[]^10 - 
    (12*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$369979, p$369980]*timevec[h$369981]*
        PD[-h$369981][PD[-p$369980][pertscalar[LI[1]]]]*
        PD[-p$369979][pertscalar[LI[1]]]])/scale[]^10 + 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$369983, p$369984]*timevec[h$369985]*
        PD[-h$369985][PD[-p$369984][pertscalar[LI[1]]]]*
        PD[-p$369983][pertscalar[LI[1]]]])/scale[]^10 - 
    (12*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$369987, p$369988]*
        timevec[h$369989]*PD[-h$369989][PD[-p$369988][pertscalar[LI[1]]]]*
        PD[-p$369987][pertscalar[LI[1]]]])/scale[]^10 - 
    (4*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$369991, p$369992]*timevec[h$369993]*
        timevec[h$369994]*PD[-h$369993][PD[-p$369992][pertscalar[LI[1]]]]*
        PD[-p$369991][PD[-h$369994][pertscalar[LI[1]]]]])/scale[]^10 + 
    (2*hubbleC[]*primescalar[]^5*Scalar[metric\[Delta][p$369996, p$369997]*
        timevec[h$369998]*timevec[h$369999]*PD[-h$369998][
         PD[-p$369997][pertscalar[LI[1]]]]*PD[-p$369996][
         PD[-h$369999][pertscalar[LI[1]]]]])/scale[]^10 - 
    (8*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$370001, p$370002]*PD[-p$370001][
         pertscalar[LI[1]]]*PD[-p$370002][pertscalar[LI[1]]]])/scale[]^10 + 
    (30*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370004, p$370005]*PD[-p$370004][
         pertscalar[LI[1]]]*PD[-p$370005][pertscalar[LI[1]]]])/scale[]^10 - 
    (36*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370007, p$370008]*PD[-p$370007][
         pertscalar[LI[1]]]*PD[-p$370008][pertscalar[LI[1]]]])/scale[]^10 + 
    (14*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370010, p$370011]*
        PD[-p$370010][pertscalar[LI[1]]]*PD[-p$370011][pertscalar[LI[1]]]])/
     scale[]^10 + (32*pprimescalar[]^4*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 + 
    (48*ppprimescalar[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 - 
    (272*hubbleC[]*pprimescalar[]^3*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 - 
    (96*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 + 
    (576*hubbleC[]^2*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 - 
    (48*pprimescalar[]^2*primehubbleC[]*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 + 
    (48*hubbleC[]^2*ppprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 - 
    (464*hubbleC[]^3*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 + 
    (96*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 + 
    (128*hubbleC[]^4*primescalar[]^5*Scalar[pertpsi[LI[1]]*
        pertscalar[LI[1]]])/scale[]^9 - 
    (48*hubbleC[]^2*primehubbleC[]*primescalar[]^5*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]])/scale[]^9 - 
    (2*pprimescalar[]^4*primescalar[]*Scalar[pertscalar[LI[2]]])/scale[]^9 - 
    (3*ppprimescalar[]*pprimescalar[]^2*primescalar[]^2*
      Scalar[pertscalar[LI[2]]])/scale[]^9 + 
    (17*hubbleC[]*pprimescalar[]^3*primescalar[]^2*Scalar[pertscalar[LI[2]]])/
     scale[]^9 + (6*hubbleC[]*ppprimescalar[]*pprimescalar[]*primescalar[]^3*
      Scalar[pertscalar[LI[2]]])/scale[]^9 - 
    (36*hubbleC[]^2*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertscalar[LI[2]]])/scale[]^9 + 
    (3*pprimescalar[]^2*primehubbleC[]*primescalar[]^3*
      Scalar[pertscalar[LI[2]]])/scale[]^9 - 
    (3*hubbleC[]^2*ppprimescalar[]*primescalar[]^4*Scalar[pertscalar[LI[2]]])/
     scale[]^9 + (29*hubbleC[]^3*pprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[2]]])/scale[]^9 - 
    (6*hubbleC[]*pprimescalar[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[2]]])/scale[]^9 - 
    (8*hubbleC[]^4*primescalar[]^5*Scalar[pertscalar[LI[2]]])/scale[]^9 + 
    (3*hubbleC[]^2*primehubbleC[]*primescalar[]^5*Scalar[pertscalar[LI[2]]])/
     scale[]^9 + (18*pprimescalar[]^3*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$370035]*PD[-h$370035][
         pertpsi[LI[1]]]])/scale[]^9 + (12*ppprimescalar[]*pprimescalar[]*
      primescalar[]^3*Scalar[pertscalar[LI[1]]*timevec[h$370037]*
        PD[-h$370037][pertpsi[LI[1]]]])/scale[]^9 - 
    (90*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertscalar[LI[1]]*timevec[h$370039]*PD[-h$370039][
         pertpsi[LI[1]]]])/scale[]^9 - 
    (12*hubbleC[]*ppprimescalar[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$370041]*PD[-h$370041][
         pertpsi[LI[1]]]])/scale[]^9 + (114*hubbleC[]^2*pprimescalar[]*
      primescalar[]^4*Scalar[pertscalar[LI[1]]*timevec[h$370043]*
        PD[-h$370043][pertpsi[LI[1]]]])/scale[]^9 - 
    (12*pprimescalar[]*primehubbleC[]*primescalar[]^4*
      Scalar[pertscalar[LI[1]]*timevec[h$370045]*PD[-h$370045][
         pertpsi[LI[1]]]])/scale[]^9 - (42*hubbleC[]^3*primescalar[]^5*
      Scalar[pertscalar[LI[1]]*timevec[h$370047]*PD[-h$370047][
         pertpsi[LI[1]]]])/scale[]^9 + 
    (12*hubbleC[]*primehubbleC[]*primescalar[]^5*
      Scalar[pertscalar[LI[1]]*timevec[h$370049]*PD[-h$370049][
         pertpsi[LI[1]]]])/scale[]^9 + (128*pprimescalar[]^3*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$370051]*PD[-h$370051][
         pertscalar[LI[1]]]])/scale[]^9 - 
    (432*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$370053]*PD[-h$370053][
         pertscalar[LI[1]]]])/scale[]^9 + 
    (480*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*timevec[h$370055]*PD[-h$370055][
         pertscalar[LI[1]]]])/scale[]^9 - 
    (176*hubbleC[]^3*primescalar[]^5*Scalar[pertpsi[LI[1]]*timevec[h$370057]*
        PD[-h$370057][pertscalar[LI[1]]]])/scale[]^9 - 
    (8*pprimescalar[]^3*primescalar[]^2*Scalar[timevec[h$370059]*
        PD[-h$370059][pertscalar[LI[2]]]])/scale[]^9 + 
    (27*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$370061]*PD[-h$370061][pertscalar[LI[2]]]])/scale[]^9 - 
    (30*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$370063]*PD[-h$370063][pertscalar[LI[2]]]])/scale[]^9 + 
    (11*hubbleC[]^3*primescalar[]^5*Scalar[timevec[h$370065]*
        PD[-h$370065][pertscalar[LI[2]]]])/scale[]^9 - 
    (12*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370067, p$370068]*pertS[LI[1], -p$370067]*
        timevec[h$370069]*PD[-h$370069][PD[-p$370068][pertscalar[LI[1]]]]])/
     scale[]^9 + (24*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370071, p$370072]*pertS[LI[1], -p$370071]*
        timevec[h$370073]*PD[-h$370073][PD[-p$370072][pertscalar[LI[1]]]]])/
     scale[]^9 - (12*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$370075, p$370076]*pertS[LI[1], -p$370075]*
        timevec[h$370077]*PD[-h$370077][PD[-p$370076][pertscalar[LI[1]]]]])/
     scale[]^9 + (42*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$370079]*timevec[h$370080]*PD[-h$370079][
         pertpsi[LI[1]]]*PD[-h$370080][pertscalar[LI[1]]]])/scale[]^9 - 
    (96*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$370082]*timevec[h$370083]*PD[-h$370082][
         pertpsi[LI[1]]]*PD[-h$370083][pertscalar[LI[1]]]])/scale[]^9 + 
    (54*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$370085]*
        timevec[h$370086]*PD[-h$370085][pertpsi[LI[1]]]*
        PD[-h$370086][pertscalar[LI[1]]]])/scale[]^9 + 
    (48*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$370088]*timevec[h$370089]*
        PD[-h$370089][PD[-h$370088][pertscalar[LI[1]]]]])/scale[]^9 - 
    (96*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*timevec[h$370091]*timevec[h$370092]*
        PD[-h$370092][PD[-h$370091][pertscalar[LI[1]]]]])/scale[]^9 + 
    (48*hubbleC[]^2*primescalar[]^5*Scalar[pertpsi[LI[1]]*timevec[h$370094]*
        timevec[h$370095]*PD[-h$370095][PD[-h$370094][pertscalar[LI[1]]]]])/
     scale[]^9 - (3*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$370097]*timevec[h$370098]*PD[-h$370098][
         PD[-h$370097][pertscalar[LI[2]]]]])/scale[]^9 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$370100]*timevec[h$370101]*PD[-h$370101][
         PD[-h$370100][pertscalar[LI[2]]]]])/scale[]^9 - 
    (3*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$370103]*timevec[h$370104]*
        PD[-h$370104][PD[-h$370103][pertscalar[LI[2]]]]])/scale[]^9 + 
    (12*pprimescalar[]*primescalar[]^4*Scalar[timevec[h$370106]*
        timevec[h$370107]*timevec[h$370108]*PD[-h$370106][pertpsi[LI[1]]]*
        PD[-h$370108][PD[-h$370107][pertscalar[LI[1]]]]])/scale[]^9 - 
    (12*hubbleC[]*primescalar[]^5*Scalar[timevec[h$370110]*timevec[h$370111]*
        timevec[h$370112]*PD[-h$370110][pertpsi[LI[1]]]*
        PD[-h$370112][PD[-h$370111][pertscalar[LI[1]]]]])/scale[]^9 + 
    (12*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370114, p$370115]*timevec[h$370116]*
        PD[-h$370116][PD[-p$370115][pertscalar[LI[1]]]]*
        PD[-p$370114][pertB[LI[1]]]])/scale[]^9 - 
    (24*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370118, p$370119]*timevec[h$370120]*
        PD[-h$370120][PD[-p$370119][pertscalar[LI[1]]]]*
        PD[-p$370118][pertB[LI[1]]]])/scale[]^9 + 
    (12*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370122, p$370123]*
        timevec[h$370124]*PD[-h$370124][PD[-p$370123][pertscalar[LI[1]]]]*
        PD[-p$370122][pertB[LI[1]]]])/scale[]^9 - 
    (8*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370126, p$370127]*timevec[h$370128]*
        PD[-h$370128][PD[-p$370127][pertscalar[LI[1]]]]*
        PD[-p$370126][pertpsi[LI[1]]]])/scale[]^9 + 
    (4*hubbleC[]*primescalar[]^5*Scalar[metric\[Delta][p$370130, p$370131]*
        timevec[h$370132]*PD[-h$370132][PD[-p$370131][pertscalar[LI[1]]]]*
        PD[-p$370130][pertpsi[LI[1]]]])/scale[]^9 - 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370134, p$370135]*timevec[h$370136]*
        PD[-h$370136][pertS[LI[1], -p$370135]]*PD[-p$370134][
         pertscalar[LI[1]]]])/scale[]^9 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370138, p$370139]*timevec[h$370140]*
        PD[-h$370140][pertS[LI[1], -p$370139]]*PD[-p$370138][
         pertscalar[LI[1]]]])/scale[]^9 - 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370142, p$370143]*
        timevec[h$370144]*PD[-h$370144][pertS[LI[1], -p$370143]]*
        PD[-p$370142][pertscalar[LI[1]]]])/scale[]^9 + 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370146, p$370147]*timevec[h$370148]*
        PD[-h$370148][PD[-p$370147][pertB[LI[1]]]]*PD[-p$370146][
         pertscalar[LI[1]]]])/scale[]^9 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370150, p$370151]*timevec[h$370152]*
        PD[-h$370152][PD[-p$370151][pertB[LI[1]]]]*PD[-p$370150][
         pertscalar[LI[1]]]])/scale[]^9 + 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370154, p$370155]*
        timevec[h$370156]*PD[-h$370156][PD[-p$370155][pertB[LI[1]]]]*
        PD[-p$370154][pertscalar[LI[1]]]])/scale[]^9 - 
    (16*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$370158, p$370159]*pertS[LI[1], -p$370158]*
        PD[-p$370159][pertscalar[LI[1]]]])/scale[]^9 + 
    (54*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370161, p$370162]*pertS[LI[1], -p$370161]*
        PD[-p$370162][pertscalar[LI[1]]]])/scale[]^9 - 
    (60*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370164, p$370165]*pertS[LI[1], -p$370164]*
        PD[-p$370165][pertscalar[LI[1]]]])/scale[]^9 + 
    (22*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370167, p$370168]*
        pertS[LI[1], -p$370167]*PD[-p$370168][pertscalar[LI[1]]]])/
     scale[]^9 + (16*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$370170, p$370171]*PD[-p$370170][pertB[LI[1]]]*
        PD[-p$370171][pertscalar[LI[1]]]])/scale[]^9 - 
    (54*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370173, p$370174]*PD[-p$370173][pertB[LI[1]]]*
        PD[-p$370174][pertscalar[LI[1]]]])/scale[]^9 + 
    (60*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370176, p$370177]*PD[-p$370176][pertB[LI[1]]]*
        PD[-p$370177][pertscalar[LI[1]]]])/scale[]^9 - 
    (22*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370179, p$370180]*
        PD[-p$370179][pertB[LI[1]]]*PD[-p$370180][pertscalar[LI[1]]]])/
     scale[]^9 - (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370182, p$370183]*PD[-p$370182][pertpsi[LI[1]]]*
        PD[-p$370183][pertscalar[LI[1]]]])/scale[]^9 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370185, p$370186]*PD[-p$370185][pertpsi[LI[1]]]*
        PD[-p$370186][pertscalar[LI[1]]]])/scale[]^9 - 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370188, p$370189]*
        PD[-p$370188][pertpsi[LI[1]]]*PD[-p$370189][pertscalar[LI[1]]]])/
     scale[]^9 + (80*pertpsi[LI[1]]^2*pprimescalar[]^3*primescalar[]^2)/
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
      Scalar[metric\[Delta][p$370195, p$370196]*pertS[LI[1], -p$370195]*
        pertS[LI[1], -p$370196]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370198, p$370199]*pertS[LI[1], -p$370198]*
        pertS[LI[1], -p$370199]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370201, p$370202]*pertS[LI[1], -p$370201]*
        pertS[LI[1], -p$370202]])/scale[]^8 + 
    (8*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370204, p$370205]*
        pertS[LI[1], -p$370204]*pertS[LI[1], -p$370205]])/scale[]^8 + 
    (60*pprimescalar[]^2*primescalar[]^3*
      Scalar[pertpsi[LI[1]]*timevec[h$370207]*PD[-h$370207][pertpsi[LI[1]]]])/
     scale[]^8 - (120*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[pertpsi[LI[1]]*timevec[h$370209]*PD[-h$370209][pertpsi[LI[1]]]])/
     scale[]^8 + (60*hubbleC[]^2*primescalar[]^5*
      Scalar[pertpsi[LI[1]]*timevec[h$370211]*PD[-h$370211][pertpsi[LI[1]]]])/
     scale[]^8 - (3*pprimescalar[]^2*primescalar[]^3*
      Scalar[timevec[h$370213]*PD[-h$370213][pertpsi[LI[2]]]])/scale[]^8 + 
    (6*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$370215]*PD[-h$370215][pertpsi[LI[2]]]])/scale[]^8 - 
    (3*hubbleC[]^2*primescalar[]^5*Scalar[timevec[h$370217]*
        PD[-h$370217][pertpsi[LI[2]]]])/scale[]^8 - 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370219, p$370220]*pertS[LI[1], -p$370219]*
        timevec[h$370221]*PD[-h$370221][pertS[LI[1], -p$370220]]])/
     scale[]^8 + (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370223, p$370224]*pertS[LI[1], -p$370223]*
        timevec[h$370225]*PD[-h$370225][pertS[LI[1], -p$370224]]])/
     scale[]^8 - (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$370227, p$370228]*pertS[LI[1], -p$370227]*
        timevec[h$370229]*PD[-h$370229][pertS[LI[1], -p$370228]]])/
     scale[]^8 + (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370231, p$370232]*pertS[LI[1], -p$370231]*
        timevec[h$370233]*PD[-h$370233][PD[-p$370232][pertB[LI[1]]]]])/
     scale[]^8 - (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370235, p$370236]*pertS[LI[1], -p$370235]*
        timevec[h$370237]*PD[-h$370237][PD[-p$370236][pertB[LI[1]]]]])/
     scale[]^8 + (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$370239, p$370240]*pertS[LI[1], -p$370239]*
        timevec[h$370241]*PD[-h$370241][PD[-p$370240][pertB[LI[1]]]]])/
     scale[]^8 + (6*pprimescalar[]*primescalar[]^4*
      Scalar[timevec[h$370243]*timevec[h$370244]*PD[-h$370243][
         pertpsi[LI[1]]]*PD[-h$370244][pertpsi[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]*primescalar[]^5*Scalar[timevec[h$370246]*timevec[h$370247]*
        PD[-h$370246][pertpsi[LI[1]]]*PD[-h$370247][pertpsi[LI[1]]]])/
     scale[]^8 + (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370249, p$370250]*timevec[h$370251]*
        PD[-h$370251][pertS[LI[1], -p$370250]]*PD[-p$370249][pertB[LI[1]]]])/
     scale[]^8 - (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370253, p$370254]*timevec[h$370255]*
        PD[-h$370255][pertS[LI[1], -p$370254]]*PD[-p$370253][pertB[LI[1]]]])/
     scale[]^8 + (6*hubbleC[]^2*primescalar[]^5*
      Scalar[metric\[Delta][p$370257, p$370258]*timevec[h$370259]*
        PD[-h$370259][pertS[LI[1], -p$370258]]*PD[-p$370257][pertB[LI[1]]]])/
     scale[]^8 - (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370261, p$370262]*timevec[h$370263]*
        PD[-h$370263][PD[-p$370262][pertB[LI[1]]]]*PD[-p$370261][
         pertB[LI[1]]]])/scale[]^8 + (12*hubbleC[]*pprimescalar[]*
      primescalar[]^4*Scalar[metric\[Delta][p$370265, p$370266]*
        timevec[h$370267]*PD[-h$370267][PD[-p$370266][pertB[LI[1]]]]*
        PD[-p$370265][pertB[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370269, p$370270]*
        timevec[h$370271]*PD[-h$370271][PD[-p$370270][pertB[LI[1]]]]*
        PD[-p$370269][pertB[LI[1]]]])/scale[]^8 + 
    (16*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$370273, p$370274]*pertS[LI[1], -p$370273]*
        PD[-p$370274][pertB[LI[1]]]])/scale[]^8 - 
    (48*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370276, p$370277]*pertS[LI[1], -p$370276]*
        PD[-p$370277][pertB[LI[1]]]])/scale[]^8 + 
    (48*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370279, p$370280]*pertS[LI[1], -p$370279]*
        PD[-p$370280][pertB[LI[1]]]])/scale[]^8 - 
    (16*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370282, p$370283]*
        pertS[LI[1], -p$370282]*PD[-p$370283][pertB[LI[1]]]])/scale[]^8 - 
    (8*pprimescalar[]^3*primescalar[]^2*
      Scalar[metric\[Delta][p$370285, p$370286]*PD[-p$370285][pertB[LI[1]]]*
        PD[-p$370286][pertB[LI[1]]]])/scale[]^8 + 
    (24*hubbleC[]*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370288, p$370289]*PD[-p$370288][pertB[LI[1]]]*
        PD[-p$370289][pertB[LI[1]]]])/scale[]^8 - 
    (24*hubbleC[]^2*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370291, p$370292]*PD[-p$370291][pertB[LI[1]]]*
        PD[-p$370292][pertB[LI[1]]]])/scale[]^8 + 
    (8*hubbleC[]^3*primescalar[]^5*Scalar[metric\[Delta][p$370294, p$370295]*
        PD[-p$370294][pertB[LI[1]]]*PD[-p$370295][pertB[LI[1]]]])/scale[]^8 - 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370297, p$370298]*pertS[LI[1], -p$370297]*
        PD[-p$370298][pertpsi[LI[1]]]])/scale[]^8 + 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370300, p$370301]*pertS[LI[1], -p$370300]*
        PD[-p$370301][pertpsi[LI[1]]]])/scale[]^8 - 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370303, p$370304]*
        pertS[LI[1], -p$370303]*PD[-p$370304][pertpsi[LI[1]]]])/scale[]^8 + 
    (6*pprimescalar[]^2*primescalar[]^3*
      Scalar[metric\[Delta][p$370306, p$370307]*PD[-p$370306][pertB[LI[1]]]*
        PD[-p$370307][pertpsi[LI[1]]]])/scale[]^8 - 
    (12*hubbleC[]*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370309, p$370310]*PD[-p$370309][pertB[LI[1]]]*
        PD[-p$370310][pertpsi[LI[1]]]])/scale[]^8 + 
    (6*hubbleC[]^2*primescalar[]^5*Scalar[metric\[Delta][p$370312, p$370313]*
        PD[-p$370312][pertB[LI[1]]]*PD[-p$370313][pertpsi[LI[1]]]])/
     scale[]^8 - (4*pprimescalar[]*primescalar[]^4*
      Scalar[metric\[Delta][p$370315, p$370316]*PD[-p$370315][pertpsi[LI[1]]]*
        PD[-p$370316][pertpsi[LI[1]]]])/scale[]^8 + 
    (2*hubbleC[]*primescalar[]^5*Scalar[metric\[Delta][p$370318, p$370319]*
        PD[-p$370318][pertpsi[LI[1]]]*PD[-p$370319][pertpsi[LI[1]]]])/
     scale[]^8]}
