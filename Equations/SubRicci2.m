(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertRicciCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(b_Symbol)?TangentM1`Q]] :> 
  Module[{}, (4*hubbleC[]^2*Scalar[metric\[Delta][p$62726, p$62727]*
        pertS[LI[1], -p$62726]*pertS[LI[1], -p$62727]] + 
     2*primehubbleC[]*Scalar[metric\[Delta][p$62729, p$62730]*
        pertS[LI[1], -p$62729]*pertS[LI[1], -p$62730]] + 
     hubbleC[]*Scalar[metric\[Delta][p$62732, p$62733]*
        metric\[Delta][p$62734, p$62735]*perth[LI[1], -p$62732, -p$62734]*
        timevec[h$62736]*PD[-h$62736][perth[LI[1], -p$62733, -p$62735]]] + 
     12*hubbleC[]*Scalar[pertphi[LI[1]]*timevec[h$62738]*
        PD[-h$62738][pertphi[LI[1]]]] + 3*hubbleC[]*
      Scalar[timevec[h$62740]*PD[-h$62740][pertphi[LI[2]]]] - 
     12*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$62742]*
        PD[-h$62742][pertpsi[LI[1]]]] + 3*hubbleC[]*
      Scalar[timevec[h$62744]*PD[-h$62744][pertpsi[LI[2]]]] + 
     6*hubbleC[]*Scalar[metric\[Delta][p$62746, p$62747]*
        pertS[LI[1], -p$62746]*timevec[h$62748]*PD[-h$62748][
         pertS[LI[1], -p$62747]]] + 
     4*Scalar[metric\[Delta][p$62750, p$62751]*pertphi[LI[1]]*
        timevec[h$62752]*PD[-h$62752][PD[-p$62750][PD[-p$62751][
           pertB[LI[1]]]]]] + Scalar[metric\[Delta][p$62754, p$62755]*
       timevec[h$62756]*PD[-h$62756][PD[-p$62754][PD[-p$62755][
          pertB[LI[2]]]]]] - 4*hubbleC[]*
      Scalar[metric\[Delta][p$62758, p$62759]*pertphi[LI[1]]*timevec[h$62760]*
        PD[-h$62760][PD[-p$62758][PD[-p$62759][pertE[LI[1]]]]]] - 
     hubbleC[]*Scalar[metric\[Delta][p$62762, p$62763]*timevec[h$62764]*
        PD[-h$62764][PD[-p$62762][PD[-p$62763][pertE[LI[2]]]]]] - 
     6*hubbleC[]*Scalar[metric\[Delta][p$62766, p$62767]*
        pertS[LI[1], -p$62766]*timevec[h$62768]*PD[-h$62768][
         PD[-p$62767][pertB[LI[1]]]]] + 2*hubbleC[]*
      Scalar[metric\[Delta][p$62770, p$62771]*metric\[Delta][p$62772, 
         p$62773]*perth[LI[1], -p$62770, -p$62772]*timevec[h$62774]*
        PD[-h$62774][PD[-p$62773][pertF[LI[1], -p$62771]]]] + 
     2*Scalar[metric\[Delta][p$62776, p$62777]*metric\[Delta][p$62778, 
         p$62779]*perth[LI[1], -p$62776, -p$62778]*timevec[h$62780]*
        PD[-h$62780][PD[-p$62779][pertS[LI[1], -p$62777]]]] - 
     2*Scalar[metric\[Delta][p$62782, p$62783]*metric\[Delta][p$62784, 
         p$62785]*perth[LI[1], -p$62782, -p$62784]*timevec[h$62786]*
        PD[-h$62786][PD[-p$62785][PD[-p$62783][pertB[LI[1]]]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62788, p$62789]*
        metric\[Delta][p$62790, p$62791]*perth[LI[1], -p$62788, -p$62790]*
        timevec[h$62792]*PD[-h$62792][PD[-p$62791][PD[-p$62789][
           pertE[LI[1]]]]]] + Scalar[metric\[Delta][p$62794, p$62795]*
        metric\[Delta][p$62796, p$62797]*timevec[h$62798]*timevec[h$62799]*
        PD[-h$62798][perth[LI[1], -p$62795, -p$62797]]*
        PD[-h$62799][perth[LI[1], -p$62794, -p$62796]]]/2 + 
     6*Scalar[timevec[h$62801]*timevec[h$62802]*PD[-h$62801][pertphi[LI[1]]]*
        PD[-h$62802][pertphi[LI[1]]]] - 
     6*Scalar[timevec[h$62804]*timevec[h$62805]*PD[-h$62804][pertphi[LI[1]]]*
        PD[-h$62805][pertpsi[LI[1]]]] + 
     Scalar[metric\[Delta][p$62807, p$62808]*metric\[Delta][p$62809, p$62810]*
       perth[LI[1], -p$62807, -p$62809]*timevec[h$62811]*timevec[h$62812]*
       PD[-h$62812][PD[-h$62811][perth[LI[1], -p$62808, -p$62810]]]] + 
     12*Scalar[pertphi[LI[1]]*timevec[h$62814]*timevec[h$62815]*
        PD[-h$62815][PD[-h$62814][pertphi[LI[1]]]]] + 
     3*Scalar[timevec[h$62817]*timevec[h$62818]*PD[-h$62818][
         PD[-h$62817][pertphi[LI[2]]]]] - 
     4*Scalar[metric\[Delta][p$62820, p$62821]*pertphi[LI[1]]*
        timevec[h$62822]*timevec[h$62823]*PD[-h$62823][
         PD[-h$62822][PD[-p$62820][PD[-p$62821][pertE[LI[1]]]]]]] - 
     Scalar[metric\[Delta][p$62825, p$62826]*timevec[h$62827]*
       timevec[h$62828]*PD[-h$62828][PD[-h$62827][PD[-p$62825][
          PD[-p$62826][pertE[LI[2]]]]]]] + 
     2*Scalar[metric\[Delta][p$62830, p$62831]*metric\[Delta][p$62832, 
         p$62833]*perth[LI[1], -p$62830, -p$62832]*timevec[h$62834]*
        timevec[h$62835]*PD[-h$62835][PD[-h$62834][PD[-p$62833][
           pertF[LI[1], -p$62831]]]]] + 
     2*Scalar[metric\[Delta][p$62837, p$62838]*metric\[Delta][p$62839, 
         p$62840]*perth[LI[1], -p$62837, -p$62839]*timevec[h$62841]*
        timevec[h$62842]*PD[-h$62842][PD[-h$62841][PD[-p$62840][
           PD[-p$62838][pertE[LI[1]]]]]]] - 
     4*Scalar[metric\[Delta][p$62844, p$62845]*timevec[h$62846]*
        timevec[h$62847]*PD[-h$62846][pertphi[LI[1]]]*
        PD[-h$62847][PD[-p$62844][PD[-p$62845][pertE[LI[1]]]]]] + 
     2*Scalar[metric\[Delta][p$62849, p$62850]*timevec[h$62851]*
        timevec[h$62852]*PD[-h$62851][pertpsi[LI[1]]]*
        PD[-h$62852][PD[-p$62849][PD[-p$62850][pertE[LI[1]]]]]] + 
     2*Scalar[metric\[Delta][p$62854, p$62855]*metric\[Delta][p$62856, 
         p$62857]*timevec[h$62858]*timevec[h$62859]*
        PD[-h$62858][PD[-p$62856][PD[-p$62855][pertE[LI[1]]]]]*
        PD[-h$62859][PD[-p$62857][PD[-p$62854][pertE[LI[1]]]]]] - 
     6*hubbleC[]*Scalar[metric\[Delta][p$62861, p$62862]*timevec[h$62863]*
        PD[-h$62863][pertS[LI[1], -p$62862]]*PD[-p$62861][pertB[LI[1]]]] + 
     6*hubbleC[]*Scalar[metric\[Delta][p$62865, p$62866]*timevec[h$62867]*
        PD[-h$62867][PD[-p$62866][pertB[LI[1]]]]*PD[-p$62865][
         pertB[LI[1]]]] + 2*Scalar[metric\[Delta][p$62869, p$62870]*
        timevec[h$62871]*PD[-h$62871][pertS[LI[1], -p$62870]]*
        PD[-p$62869][pertphi[LI[1]]]] - 
     2*Scalar[metric\[Delta][p$62873, p$62874]*timevec[h$62875]*
        PD[-h$62875][PD[-p$62874][pertB[LI[1]]]]*PD[-p$62873][
         pertphi[LI[1]]]] + 4*hubbleC[]*
      Scalar[metric\[Delta][p$62877, p$62878]*pertphi[LI[1]]*
        PD[-p$62877][PD[-p$62878][pertB[LI[1]]]]] - 
     2*Scalar[metric\[Delta][p$62880, p$62881]*timevec[h$62882]*
        PD[-h$62882][pertpsi[LI[1]]]*PD[-p$62880][PD[-p$62881][
          pertB[LI[1]]]]] + hubbleC[]*Scalar[metric\[Delta][p$62884, p$62885]*
        PD[-p$62884][PD[-p$62885][pertB[LI[2]]]]] - 
     4*hubbleC[]*Scalar[metric\[Delta][p$62887, p$62888]*timevec[h$62889]*
        PD[-h$62889][pertphi[LI[1]]]*PD[-p$62887][PD[-p$62888][
          pertE[LI[1]]]]] - 4*Scalar[metric\[Delta][p$62891, p$62892]*
        timevec[h$62893]*timevec[h$62894]*PD[-h$62894][
         PD[-h$62893][pertphi[LI[1]]]]*PD[-p$62891][PD[-p$62892][
          pertE[LI[1]]]]] + 4*Scalar[metric\[Delta][p$62896, p$62897]*
        pertphi[LI[1]]*PD[-p$62896][PD[-p$62897][pertpsi[LI[1]]]]] + 
     Scalar[metric\[Delta][p$62899, p$62900]*PD[-p$62899][
        PD[-p$62900][pertpsi[LI[2]]]]] - 8*hubbleC[]^2*
      Scalar[metric\[Delta][p$62902, p$62903]*pertS[LI[1], -p$62902]*
        PD[-p$62903][pertB[LI[1]]]] - 4*primehubbleC[]*
      Scalar[metric\[Delta][p$62905, p$62906]*pertS[LI[1], -p$62905]*
        PD[-p$62906][pertB[LI[1]]]] + 4*hubbleC[]^2*
      Scalar[metric\[Delta][p$62908, p$62909]*PD[-p$62908][pertB[LI[1]]]*
        PD[-p$62909][pertB[LI[1]]]] + 2*primehubbleC[]*
      Scalar[metric\[Delta][p$62911, p$62912]*PD[-p$62911][pertB[LI[1]]]*
        PD[-p$62912][pertB[LI[1]]]] + 2*hubbleC[]*
      Scalar[metric\[Delta][p$62914, p$62915]*metric\[Delta][p$62916, 
         p$62917]*timevec[h$62918]*PD[-h$62918][perth[LI[1], -p$62915, 
          -p$62917]]*PD[-p$62916][pertF[LI[1], -p$62914]]] + 
     2*Scalar[metric\[Delta][p$62920, p$62921]*metric\[Delta][p$62922, 
         p$62923]*timevec[h$62924]*timevec[h$62925]*
        PD[-h$62925][PD[-h$62924][perth[LI[1], -p$62921, -p$62923]]]*
        PD[-p$62922][pertF[LI[1], -p$62920]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62927, p$62928]*
        metric\[Delta][p$62929, p$62930]*timevec[h$62931]*
        PD[-h$62931][PD[-p$62930][pertF[LI[1], -p$62927]]]*
        PD[-p$62929][pertF[LI[1], -p$62928]]] + 
     2*Scalar[metric\[Delta][p$62933, p$62934]*metric\[Delta][p$62935, 
         p$62936]*timevec[h$62937]*PD[-h$62937][PD[-p$62936][
          pertS[LI[1], -p$62933]]]*PD[-p$62935][pertF[LI[1], -p$62934]]] - 
     4*Scalar[metric\[Delta][p$62939, p$62940]*metric\[Delta][p$62941, 
         p$62942]*timevec[h$62943]*PD[-h$62943][PD[-p$62942][
          PD[-p$62939][pertB[LI[1]]]]]*PD[-p$62941][pertF[LI[1], 
          -p$62940]]] + 4*hubbleC[]*Scalar[metric\[Delta][p$62945, p$62946]*
        metric\[Delta][p$62947, p$62948]*timevec[h$62949]*
        PD[-h$62949][PD[-p$62948][PD[-p$62945][pertE[LI[1]]]]]*
        PD[-p$62947][pertF[LI[1], -p$62946]]] + 
     2*Scalar[metric\[Delta][p$62951, p$62952]*metric\[Delta][p$62953, 
         p$62954]*timevec[h$62955]*timevec[h$62956]*
        PD[-h$62956][PD[-h$62955][PD[-p$62954][pertF[LI[1], -p$62951]]]]*
        PD[-p$62953][pertF[LI[1], -p$62952]]] + 
     4*Scalar[metric\[Delta][p$62958, p$62959]*metric\[Delta][p$62960, 
         p$62961]*timevec[h$62962]*timevec[h$62963]*
        PD[-h$62963][PD[-h$62962][PD[-p$62961][PD[-p$62958][pertE[LI[1]]]]]]*
        PD[-p$62960][pertF[LI[1], -p$62959]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62965, p$62966]*
        metric\[Delta][p$62967, p$62968]*PD[-p$62965][pertS[LI[1], -p$62968]]*
        PD[-p$62967][pertF[LI[1], -p$62966]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62970, p$62971]*
        metric\[Delta][p$62972, p$62973]*timevec[h$62974]*
        PD[-p$62970][PD[-h$62974][pertF[LI[1], -p$62973]]]*
        PD[-p$62972][pertF[LI[1], -p$62971]]] + 
     2*Scalar[metric\[Delta][p$62976, p$62977]*metric\[Delta][p$62978, 
         p$62979]*timevec[h$62980]*PD[-p$62976][PD[-h$62980][
          pertS[LI[1], -p$62979]]]*PD[-p$62978][pertF[LI[1], -p$62977]]] + 
     2*Scalar[metric\[Delta][p$62982, p$62983]*metric\[Delta][p$62984, 
         p$62985]*timevec[h$62986]*timevec[h$62987]*
        PD[-p$62982][PD[-h$62987][PD[-h$62986][pertF[LI[1], -p$62985]]]]*
        PD[-p$62984][pertF[LI[1], -p$62983]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62989, p$62990]*
        pertS[LI[1], -p$62989]*PD[-p$62990][pertphi[LI[1]]]] - 
     2*hubbleC[]*Scalar[metric\[Delta][p$62992, p$62993]*
        PD[-p$62992][pertB[LI[1]]]*PD[-p$62993][pertphi[LI[1]]]] - 
     2*hubbleC[]*Scalar[metric\[Delta][p$62995, p$62996]*
        pertS[LI[1], -p$62995]*PD[-p$62996][pertpsi[LI[1]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$62998, p$62999]*
        PD[-p$62998][pertB[LI[1]]]*PD[-p$62999][pertpsi[LI[1]]]] - 
     2*Scalar[metric\[Delta][p$63001, p$63002]*PD[-p$63001][pertphi[LI[1]]]*
        PD[-p$63002][pertpsi[LI[1]]]] - 
     2*Scalar[metric\[Delta][p$63004, p$63005]*PD[-p$63004][pertpsi[LI[1]]]*
        PD[-p$63005][pertpsi[LI[1]]]] + 2*hubbleC[]*
      Scalar[metric\[Delta][p$63007, p$63008]*metric\[Delta][p$63009, 
         p$63010]*perth[LI[1], -p$63007, -p$63010]*PD[-p$63009][
         pertS[LI[1], -p$63008]]] - Scalar[metric\[Delta][p$63012, p$63013]*
       metric\[Delta][p$63014, p$63015]*PD[-p$63012][pertS[LI[1], -p$63015]]*
       PD[-p$63014][pertS[LI[1], -p$63013]]] + 
     2*Scalar[metric\[Delta][p$63017, p$63018]*metric\[Delta][p$63019, 
         p$63020]*timevec[h$63021]*timevec[h$63022]*
        PD[-h$63022][perth[LI[1], -p$63018, -p$63020]]*
        PD[-p$63019][PD[-h$63021][pertF[LI[1], -p$63017]]]] + 
     Scalar[metric\[Delta][p$63024, p$63025]*metric\[Delta][p$63026, p$63027]*
       timevec[h$63028]*timevec[h$63029]*PD[-p$63024][
        PD[-h$63029][pertF[LI[1], -p$63027]]]*PD[-p$63026][
        PD[-h$63028][pertF[LI[1], -p$63025]]]] + 
     Scalar[metric\[Delta][p$63031, p$63032]*metric\[Delta][p$63033, p$63034]*
       timevec[h$63035]*timevec[h$63036]*PD[-h$63035][
        PD[-p$63034][pertF[LI[1], -p$63031]]]*PD[-p$63033][
        PD[-h$63036][pertF[LI[1], -p$63032]]]] + 
     4*Scalar[metric\[Delta][p$63038, p$63039]*metric\[Delta][p$63040, 
         p$63041]*timevec[h$63042]*timevec[h$63043]*
        PD[-h$63042][PD[-p$63041][PD[-p$63038][pertE[LI[1]]]]]*
        PD[-p$63040][PD[-h$63043][pertF[LI[1], -p$63039]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$63045, p$63046]*
        metric\[Delta][p$63047, p$63048]*timevec[h$63049]*
        PD[-h$63049][perth[LI[1], -p$63046, -p$63048]]*
        PD[-p$63047][PD[-p$63045][pertE[LI[1]]]]] + 
     2*Scalar[metric\[Delta][p$63051, p$63052]*metric\[Delta][p$63053, 
         p$63054]*timevec[h$63055]*timevec[h$63056]*
        PD[-h$63056][PD[-h$63055][perth[LI[1], -p$63052, -p$63054]]]*
        PD[-p$63053][PD[-p$63051][pertE[LI[1]]]]] + 
     2*Scalar[metric\[Delta][p$63058, p$63059]*metric\[Delta][p$63060, 
         p$63061]*timevec[h$63062]*timevec[h$63063]*
        PD[-h$63062][perth[LI[1], -p$63059, -p$63061]]*
        PD[-p$63060][PD[-p$63058][PD[-h$63063][pertE[LI[1]]]]]] + 
     4*hubbleC[]*Scalar[metric\[Delta][p$63065, p$63066]*
        metric\[Delta][p$63067, p$63068]*timevec[h$63069]*
        PD[-h$63069][PD[-p$63068][pertF[LI[1], -p$63065]]]*
        PD[-p$63067][PD[-p$63066][pertE[LI[1]]]]] + 
     4*Scalar[metric\[Delta][p$63071, p$63072]*metric\[Delta][p$63073, 
         p$63074]*timevec[h$63075]*PD[-h$63075][PD[-p$63074][
          pertS[LI[1], -p$63071]]]*PD[-p$63073][PD[-p$63072][
          pertE[LI[1]]]]] - 4*Scalar[metric\[Delta][p$63077, p$63078]*
        metric\[Delta][p$63079, p$63080]*timevec[h$63081]*
        PD[-h$63081][PD[-p$63080][PD[-p$63077][pertB[LI[1]]]]]*
        PD[-p$63079][PD[-p$63078][pertE[LI[1]]]]] + 
     4*hubbleC[]*Scalar[metric\[Delta][p$63083, p$63084]*
        metric\[Delta][p$63085, p$63086]*timevec[h$63087]*
        PD[-h$63087][PD[-p$63086][PD[-p$63083][pertE[LI[1]]]]]*
        PD[-p$63085][PD[-p$63084][pertE[LI[1]]]]] + 
     4*Scalar[metric\[Delta][p$63089, p$63090]*metric\[Delta][p$63091, 
         p$63092]*timevec[h$63093]*timevec[h$63094]*
        PD[-h$63094][PD[-h$63093][PD[-p$63092][pertF[LI[1], -p$63089]]]]*
        PD[-p$63091][PD[-p$63090][pertE[LI[1]]]]] + 
     4*Scalar[metric\[Delta][p$63096, p$63097]*metric\[Delta][p$63098, 
         p$63099]*timevec[h$63100]*timevec[h$63101]*
        PD[-h$63101][PD[-h$63100][PD[-p$63099][PD[-p$63096][pertE[LI[1]]]]]]*
        PD[-p$63098][PD[-p$63097][pertE[LI[1]]]]] + 
     2*Scalar[metric\[Delta][p$63103, p$63104]*metric\[Delta][p$63105, 
         p$63106]*timevec[h$63107]*PD[-h$63107][pertS[LI[1], -p$63104]]*
        PD[-p$63105][PD[-p$63106][pertF[LI[1], -p$63103]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$63109, p$63110]*
        metric\[Delta][p$63111, p$63112]*pertS[LI[1], -p$63109]*
        PD[-p$63111][PD[-p$63112][pertF[LI[1], -p$63110]]]] - 
     2*hubbleC[]*Scalar[metric\[Delta][p$63114, p$63115]*
        metric\[Delta][p$63116, p$63117]*PD[-p$63114][pertB[LI[1]]]*
        PD[-p$63116][PD[-p$63117][pertF[LI[1], -p$63115]]]] - 
     2*Scalar[metric\[Delta][p$63119, p$63120]*metric\[Delta][p$63121, 
         p$63122]*PD[-p$63119][pertpsi[LI[1]]]*PD[-p$63121][
         PD[-p$63122][pertF[LI[1], -p$63120]]]] - 
     2*Scalar[metric\[Delta][p$63124, p$63125]*metric\[Delta][p$63126, 
         p$63127]*timevec[h$63128]*PD[-p$63124][PD[-h$63128][pertB[LI[1]]]]*
        PD[-p$63126][PD[-p$63127][pertF[LI[1], -p$63125]]]] + 
     2*Scalar[metric\[Delta][p$63130, p$63131]*metric\[Delta][p$63132, 
         p$63133]*timevec[h$63134]*PD[-h$63134][pertS[LI[1], -p$63131]]*
        PD[-p$63132][PD[-p$63133][PD[-p$63130][pertE[LI[1]]]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$63136, p$63137]*
        metric\[Delta][p$63138, p$63139]*pertS[LI[1], -p$63136]*
        PD[-p$63138][PD[-p$63139][PD[-p$63137][pertE[LI[1]]]]]] - 
     2*hubbleC[]*Scalar[metric\[Delta][p$63141, p$63142]*
        metric\[Delta][p$63143, p$63144]*PD[-p$63141][pertB[LI[1]]]*
        PD[-p$63143][PD[-p$63144][PD[-p$63142][pertE[LI[1]]]]]] - 
     2*Scalar[metric\[Delta][p$63146, p$63147]*metric\[Delta][p$63148, 
         p$63149]*PD[-p$63146][pertpsi[LI[1]]]*PD[-p$63148][
         PD[-p$63149][PD[-p$63147][pertE[LI[1]]]]]] - 
     2*Scalar[metric\[Delta][p$63151, p$63152]*metric\[Delta][p$63153, 
         p$63154]*timevec[h$63155]*PD[-p$63151][PD[-h$63155][pertB[LI[1]]]]*
        PD[-p$63153][PD[-p$63154][PD[-p$63152][pertE[LI[1]]]]]] + 
     2*hubbleC[]*Scalar[metric\[Delta][p$63157, p$63158]*
        metric\[Delta][p$63159, p$63160]*PD[-p$63159][pertF[LI[1], -p$63158]]*
        PD[-p$63160][pertS[LI[1], -p$63157]]] + 
     Scalar[metric\[Delta][p$63162, p$63163]*metric\[Delta][p$63164, p$63165]*
       PD[-p$63164][pertS[LI[1], -p$63163]]*PD[-p$63165][
        pertS[LI[1], -p$63162]]] - 4*hubbleC[]*
      Scalar[metric\[Delta][p$63167, p$63168]*metric\[Delta][p$63169, 
         p$63170]*PD[-p$63169][pertF[LI[1], -p$63168]]*
        PD[-p$63170][PD[-p$63167][pertB[LI[1]]]]] + 
     4*hubbleC[]*Scalar[metric\[Delta][p$63172, p$63173]*
        metric\[Delta][p$63174, p$63175]*PD[-p$63174][pertS[LI[1], -p$63173]]*
        PD[-p$63175][PD[-p$63172][pertE[LI[1]]]]] - 
     4*hubbleC[]*Scalar[metric\[Delta][p$63177, p$63178]*
        metric\[Delta][p$63179, p$63180]*PD[-p$63179][
         PD[-p$63178][pertB[LI[1]]]]*PD[-p$63180][PD[-p$63177][
          pertE[LI[1]]]]] - 4*Scalar[metric\[Delta][p$63182, p$63183]*
        metric\[Delta][p$63184, p$63185]*PD[-p$63184][pertF[LI[1], -p$63183]]*
        PD[-p$63185][PD[-p$63182][pertpsi[LI[1]]]]] - 
     4*Scalar[metric\[Delta][p$63187, p$63188]*metric\[Delta][p$63189, 
         p$63190]*PD[-p$63189][PD[-p$63188][pertE[LI[1]]]]*
        PD[-p$63190][PD[-p$63187][pertpsi[LI[1]]]]] - 
     2*hubbleC[]*Scalar[metric\[Delta][p$63192, p$63193]*
        metric\[Delta][p$63194, p$63195]*perth[LI[1], -p$63192, -p$63194]*
        PD[-p$63195][PD[-p$63193][pertB[LI[1]]]]] - 
     2*Scalar[metric\[Delta][p$63197, p$63198]*metric\[Delta][p$63199, 
         p$63200]*perth[LI[1], -p$63197, -p$63199]*PD[-p$63200][
         PD[-p$63198][pertpsi[LI[1]]]]])*timevec[-a]*timevec[-b]], 
 HoldPattern[pertRicciCDP[LI[2], -(a_Symbol)?TangentM1`Q, 
    -(i_Symbol)?TangentM3`Q]] :> Module[{p$78695, p$78696, h$78697, p$78698, 
    p$78699, h$78700}, timevec[-a]*(8*hubbleC[]^2*pertpsi[LI[1]]*
      pertS[LI[1], -i] - 2*hubbleC[]^2*pertS[LI[2], -i] + 
     4*pertpsi[LI[1]]*pertS[LI[1], -i]*primehubbleC[] - 
     pertS[LI[2], -i]*primehubbleC[] - 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      PD[-h$78697][perth[LI[1], -i, -p$78696]] + 
     10*hubbleC[]*pertS[LI[1], -i]*timevec[h$78697]*
      PD[-h$78697][pertphi[LI[1]]] + 2*hubbleC[]*pertS[LI[1], -i]*
      timevec[h$78697]*PD[-h$78697][pertpsi[LI[1]]] - 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      timevec[h$78697]*PD[-h$78697][PD[-i][pertF[LI[1], -p$78696]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      perth[LI[1], -p$78695, -p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-i][perth[LI[1], -p$78698, -p$78699]]] + 
     8*pertphi[LI[1]]*timevec[h$78697]*PD[-h$78697][PD[-i][pertphi[LI[1]]]] + 
     2*timevec[h$78697]*PD[-h$78697][PD[-i][pertphi[LI[2]]]] - 
     metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      PD[-h$78697][PD[-i][pertS[LI[1], -p$78696]]] - 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -i]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78695][PD[-p$78696][
         pertE[LI[1]]]]] + 2*metric\[Delta][p$78695, p$78696]*pertphi[LI[1]]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78695][PD[-p$78696][
         pertF[LI[1], -i]]]] + (metric\[Delta][p$78695, p$78696]*
       timevec[h$78697]*PD[-h$78697][PD[-p$78695][PD[-p$78696][
          pertF[LI[2], -i]]]])/2 - 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$78695, p$78696]*perth[LI[1], -i, -p$78695]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertphi[LI[1]]]] - 
     metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78696][pertS[LI[1], -i]]] + 
     2*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][PD[-i][pertB[LI[1]]]]] - 
     4*hubbleC[]*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      perth[LI[1], -p$78695, -p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78699][perth[LI[1], -i, -p$78698]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      perth[LI[1], -p$78695, -p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78699][PD[-i][pertF[LI[1], -p$78698]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      perth[LI[1], -p$78695, -p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78699][PD[-p$78698][pertF[LI[1], -i]]]] - 
     metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      timevec[h$78700]*PD[-h$78700][PD[-h$78697][perth[LI[1], -i, 
         -p$78696]]] + 2*pertS[LI[1], -i]*timevec[h$78697]*timevec[h$78700]*
      PD[-h$78700][PD[-h$78697][pertphi[LI[1]]]] - 
     metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*timevec[h$78697]*
      timevec[h$78700]*PD[-h$78700][PD[-h$78697][
        PD[-i][pertF[LI[1], -p$78696]]]] - metric\[Delta][p$78695, p$78696]*
      pertS[LI[1], -p$78695]*timevec[h$78697]*timevec[h$78700]*
      PD[-h$78700][PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]]] - 
     2*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      timevec[h$78697]*timevec[h$78700]*PD[-h$78700][
       PD[-h$78697][PD[-p$78696][PD[-i][pertE[LI[1]]]]]] - 
     8*hubbleC[]^2*pertpsi[LI[1]]*PD[-i][pertB[LI[1]]] - 
     4*pertpsi[LI[1]]*primehubbleC[]*PD[-i][pertB[LI[1]]] - 
     10*hubbleC[]*timevec[h$78697]*PD[-h$78697][pertphi[LI[1]]]*
      PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[h$78697]*
      PD[-h$78697][pertpsi[LI[1]]]*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78695][PD[-p$78696][pertE[LI[1]]]]]*
      PD[-i][pertB[LI[1]]] - 2*timevec[h$78697]*timevec[h$78700]*
      PD[-h$78700][PD[-h$78697][pertphi[LI[1]]]]*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]^2*PD[-i][pertB[LI[2]]] + primehubbleC[]*
      PD[-i][pertB[LI[2]]] + (metric\[Delta][p$78695, p$78698]*
       metric\[Delta][p$78696, p$78699]*timevec[h$78697]*
       PD[-h$78697][perth[LI[1], -p$78698, -p$78699]]*
       PD[-i][perth[LI[1], -p$78695, -p$78696]])/2 + 
     8*timevec[h$78697]*PD[-h$78697][pertphi[LI[1]]]*PD[-i][pertphi[LI[1]]] - 
     2*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78695][PD[-p$78696][pertE[LI[1]]]]]*
      PD[-i][pertphi[LI[1]]] - 8*hubbleC[]*pertpsi[LI[1]]*
      PD[-i][pertpsi[LI[1]]] - 4*timevec[h$78697]*
      PD[-h$78697][pertphi[LI[1]]]*PD[-i][pertpsi[LI[1]]] + 
     2*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78695][PD[-p$78696][pertE[LI[1]]]]]*
      PD[-i][pertpsi[LI[1]]] + 2*hubbleC[]*PD[-i][pertpsi[LI[2]]] + 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      PD[-i][pertS[LI[1], -p$78696]] + 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*timevec[h$78697]*PD[-h$78697][perth[LI[1], -i, -p$78696]]*
      PD[-p$78695][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*timevec[h$78697]*PD[-h$78697][PD[-i][pertF[LI[1], -p$78696]]]*
      PD[-p$78695][pertB[LI[1]]] + metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-i][pertS[LI[1], -p$78696]]]*
      PD[-p$78695][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]]*
      PD[-p$78695][pertB[LI[1]]] + metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertS[LI[1], -i]]]*
      PD[-p$78695][pertB[LI[1]]] - 2*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][PD[-i][pertB[LI[1]]]]]*
      PD[-p$78695][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*timevec[h$78697]*PD[-h$78697][PD[-p$78696][
        PD[-i][pertE[LI[1]]]]]*PD[-p$78695][pertB[LI[1]]] + 
     metric\[Delta][p$78695, p$78696]*timevec[h$78697]*timevec[h$78700]*
      PD[-h$78700][PD[-h$78697][perth[LI[1], -i, -p$78696]]]*
      PD[-p$78695][pertB[LI[1]]] + metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*timevec[h$78700]*PD[-h$78700][
       PD[-h$78697][PD[-i][pertF[LI[1], -p$78696]]]]*
      PD[-p$78695][pertB[LI[1]]] + metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*timevec[h$78700]*PD[-h$78700][
       PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]]]*
      PD[-p$78695][pertB[LI[1]]] + 2*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*timevec[h$78700]*PD[-h$78700][
       PD[-h$78697][PD[-p$78696][PD[-i][pertE[LI[1]]]]]]*
      PD[-p$78695][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*PD[-i][pertS[LI[1], -p$78696]]*PD[-p$78695][pertB[LI[1]]] + 
     2*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78696][pertphi[LI[1]]]]*
      PD[-p$78695][pertF[LI[1], -i]] - metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][perth[LI[1], -i, -p$78696]]*
      PD[-p$78695][pertphi[LI[1]]] - metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-i][pertF[LI[1], -p$78696]]]*
      PD[-p$78695][pertphi[LI[1]]] - metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]]*
      PD[-p$78695][pertphi[LI[1]]] - 2*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78695][pertphi[LI[1]]] - metric\[Delta][p$78695, p$78696]*
      PD[-i][pertS[LI[1], -p$78696]]*PD[-p$78695][pertphi[LI[1]]] - 
     metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][perth[LI[1], -i, -p$78696]]*PD[-p$78695][pertpsi[LI[1]]] - 
     metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-i][pertF[LI[1], -p$78696]]]*
      PD[-p$78695][pertpsi[LI[1]]] - metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertF[LI[1], -i]]]*
      PD[-p$78695][pertpsi[LI[1]]] - 2*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78695][pertpsi[LI[1]]] - metric\[Delta][p$78695, p$78696]*
      PD[-i][pertS[LI[1], -p$78696]]*PD[-p$78695][pertpsi[LI[1]]] + 
     2*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-i][pertF[LI[1], -p$78696]]*PD[-p$78695][
       PD[-h$78697][pertphi[LI[1]]]] + 4*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78696][pertphi[LI[1]]]]*
      PD[-p$78695][PD[-i][pertE[LI[1]]]] + 2*hubbleC[]*
      metric\[Delta][p$78695, p$78696]*pertS[LI[1], -i]*
      PD[-p$78695][PD[-p$78696][pertB[LI[1]]]] - 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*PD[-i][pertB[LI[1]]]*
      PD[-p$78695][PD[-p$78696][pertB[LI[1]]]] - 
     2*metric\[Delta][p$78695, p$78696]*PD[-i][pertpsi[LI[1]]]*
      PD[-p$78695][PD[-p$78696][pertB[LI[1]]]] - 
     4*metric\[Delta][p$78695, p$78696]*timevec[h$78697]*
      PD[-h$78697][PD[-i][pertphi[LI[1]]]]*PD[-p$78695][
       PD[-p$78696][pertE[LI[1]]]] + 2*metric\[Delta][p$78695, p$78696]*
      timevec[h$78697]*PD[-h$78697][pertphi[LI[1]]]*
      PD[-p$78695][PD[-p$78696][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$78695, p$78696]*pertphi[LI[1]]*
      PD[-p$78695][PD[-p$78696][pertS[LI[1], -i]]] + 
     (metric\[Delta][p$78695, p$78696]*PD[-p$78695][
        PD[-p$78696][pertS[LI[2], -i]]])/2 + 
     2*metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][PD[-i][perth[LI[1], -p$78698, -p$78699]]]*
      PD[-p$78696][pertF[LI[1], -p$78695]] - metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78698][perth[LI[1], -i, -p$78695]]]*
      PD[-p$78696][pertF[LI[1], -p$78699]] + metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78698][PD[-i][pertF[LI[1], -p$78695]]]]*
      PD[-p$78696][pertF[LI[1], -p$78699]] - 
     2*metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][PD[-p$78695][
         pertF[LI[1], -i]]]]*PD[-p$78696][pertF[LI[1], -p$78699]] - 
     metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][perth[LI[1], -i, -p$78698]]]*
      PD[-p$78696][pertF[LI[1], -p$78699]] + metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*timevec[h$78697]*
      PD[-p$78695][PD[-h$78697][PD[-i][pertF[LI[1], -p$78698]]]]*
      PD[-p$78696][pertF[LI[1], -p$78699]] + metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*PD[-p$78695][
       PD[-i][pertS[LI[1], -p$78698]]]*PD[-p$78696][pertF[LI[1], -p$78699]] - 
     2*hubbleC[]*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      PD[-p$78696][pertS[LI[1], -i]] + 2*hubbleC[]*metric\[Delta][p$78695, 
       p$78696]*PD[-p$78695][pertB[LI[1]]]*PD[-p$78696][pertS[LI[1], -i]] + 
     metric\[Delta][p$78695, p$78696]*PD[-p$78695][pertphi[LI[1]]]*
      PD[-p$78696][pertS[LI[1], -i]] - metric\[Delta][p$78695, p$78696]*
      PD[-p$78695][pertpsi[LI[1]]]*PD[-p$78696][pertS[LI[1], -i]] + 
     metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      PD[-p$78695][perth[LI[1], -i, -p$78698]]*PD[-p$78696][
       pertS[LI[1], -p$78699]] + metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*PD[-p$78695][
       PD[-i][pertF[LI[1], -p$78698]]]*PD[-p$78696][pertS[LI[1], -p$78699]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-i][perth[LI[1], -p$78698, -p$78699]]*
      PD[-p$78696][PD[-h$78697][pertF[LI[1], -p$78695]]] + 
     2*metric\[Delta][p$78695, p$78696]*PD[-p$78695][pertpsi[LI[1]]]*
      PD[-p$78696][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*timevec[h$78697]*
      PD[-h$78697][perth[LI[1], -p$78698, -p$78699]]*
      PD[-p$78696][PD[-i][pertF[LI[1], -p$78695]]] + 
     metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][pertF[LI[1], -p$78695]]]*
      PD[-p$78696][PD[-i][pertF[LI[1], -p$78699]]] + 
     2*metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][PD[-p$78695][pertE[LI[1]]]]]*
      PD[-p$78696][PD[-i][pertF[LI[1], -p$78699]]] + 
     metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][pertF[LI[1], -p$78698]]]*
      PD[-p$78696][PD[-i][pertF[LI[1], -p$78699]]] + 
     2*metric\[Delta][p$78695, p$78696]*pertS[LI[1], -p$78695]*
      PD[-p$78696][PD[-i][pertpsi[LI[1]]]] - 
     2*metric\[Delta][p$78695, p$78696]*PD[-p$78695][pertB[LI[1]]]*
      PD[-p$78696][PD[-i][pertpsi[LI[1]]]] + 
     2*metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][PD[-i][perth[LI[1], -p$78698, -p$78699]]]*
      PD[-p$78696][PD[-p$78695][pertE[LI[1]]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-i][perth[LI[1], -p$78698, -p$78699]]*
      PD[-p$78696][PD[-p$78695][PD[-h$78697][pertE[LI[1]]]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][perth[LI[1], -p$78698, -p$78699]]*
      PD[-p$78696][PD[-p$78695][PD[-i][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][perth[LI[1], -i, -p$78695]]]*
      PD[-p$78696][PD[-p$78699][pertE[LI[1]]]] + 
     2*metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][
        PD[-i][pertF[LI[1], -p$78695]]]]*PD[-p$78696][
       PD[-p$78699][pertE[LI[1]]]] - 2*metric\[Delta][p$78695, p$78699]*
      metric\[Delta][p$78696, p$78698]*timevec[h$78697]*
      PD[-h$78697][PD[-p$78698][PD[-p$78695][pertF[LI[1], -i]]]]*
      PD[-p$78696][PD[-p$78699][pertE[LI[1]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][perth[LI[1], -i, -p$78698]]*
      PD[-p$78696][PD[-p$78699][pertF[LI[1], -p$78695]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][PD[-i][pertF[LI[1], -p$78698]]]*
      PD[-p$78696][PD[-p$78699][pertF[LI[1], -p$78695]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-i][pertS[LI[1], -p$78698]]*PD[-p$78696][
       PD[-p$78699][pertF[LI[1], -p$78695]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-p$78695][pertS[LI[1], -i]]*PD[-p$78696][
       PD[-p$78699][pertF[LI[1], -p$78698]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][pertF[LI[1], -i]]]*
      PD[-p$78696][PD[-p$78699][pertF[LI[1], -p$78698]]] - 
     2*metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78696][PD[-p$78699][pertF[LI[1], -p$78698]]] + 
     2*metric\[Delta][p$78695, p$78699]*metric\[Delta][p$78696, p$78698]*
      timevec[h$78697]*PD[-h$78697][PD[-p$78698][PD[-p$78695][pertE[LI[1]]]]]*
      PD[-p$78696][PD[-p$78699][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][perth[LI[1], -i, -p$78698]]*
      PD[-p$78696][PD[-p$78699][PD[-p$78695][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-h$78697][PD[-i][pertF[LI[1], -p$78698]]]*
      PD[-p$78696][PD[-p$78699][PD[-p$78695][pertE[LI[1]]]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-i][pertS[LI[1], -p$78698]]*PD[-p$78696][
       PD[-p$78699][PD[-p$78695][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-p$78695][pertS[LI[1], -i]]*PD[-p$78696][
       PD[-p$78699][PD[-p$78698][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][pertF[LI[1], -i]]]*
      PD[-p$78696][PD[-p$78699][PD[-p$78698][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      timevec[h$78697]*PD[-p$78695][PD[-h$78697][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78696][PD[-p$78699][PD[-p$78698][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-p$78696][pertS[LI[1], -p$78698]]*PD[-p$78699][
       perth[LI[1], -i, -p$78695]] - metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*PD[-p$78696][pertS[LI[1], -p$78698]]*
      PD[-p$78699][PD[-i][pertF[LI[1], -p$78695]]] + 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-p$78696][pertF[LI[1], -p$78698]]*PD[-p$78699][
       PD[-i][pertS[LI[1], -p$78695]]] + 2*metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*PD[-p$78696][
       PD[-p$78698][pertE[LI[1]]]]*PD[-p$78699][
       PD[-i][pertS[LI[1], -p$78695]]] + metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*perth[LI[1], -p$78695, -p$78696]*
      PD[-p$78699][PD[-i][pertS[LI[1], -p$78698]]] - 
     2*metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      PD[-p$78696][pertF[LI[1], -p$78698]]*PD[-p$78699][
       PD[-p$78695][pertS[LI[1], -i]]] - 2*metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*PD[-p$78696][
       PD[-p$78698][pertE[LI[1]]]]*PD[-p$78699][PD[-p$78695][
        pertS[LI[1], -i]]] + 2*metric\[Delta][p$78695, p$78698]*
      metric\[Delta][p$78696, p$78699]*timevec[h$78697]*
      PD[-p$78696][PD[-h$78697][pertF[LI[1], -p$78698]]]*
      PD[-p$78699][PD[-p$78695][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78695, p$78698]*metric\[Delta][p$78696, p$78699]*
      perth[LI[1], -p$78695, -p$78696]*PD[-p$78699][
       PD[-p$78698][pertS[LI[1], -i]]])], 
 HoldPattern[pertRicciCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(a_Symbol)?TangentM1`Q]] :> Module[{p$78704, p$78705, h$78706, p$78707, 
    p$78708, h$78709}, timevec[-a]*(8*hubbleC[]^2*pertpsi[LI[1]]*
      pertS[LI[1], -i] - 2*hubbleC[]^2*pertS[LI[2], -i] + 
     4*pertpsi[LI[1]]*pertS[LI[1], -i]*primehubbleC[] - 
     pertS[LI[2], -i]*primehubbleC[] - 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      PD[-h$78706][perth[LI[1], -i, -p$78705]] + 
     10*hubbleC[]*pertS[LI[1], -i]*timevec[h$78706]*
      PD[-h$78706][pertphi[LI[1]]] + 2*hubbleC[]*pertS[LI[1], -i]*
      timevec[h$78706]*PD[-h$78706][pertpsi[LI[1]]] - 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      timevec[h$78706]*PD[-h$78706][PD[-i][pertF[LI[1], -p$78705]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      perth[LI[1], -p$78704, -p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-i][perth[LI[1], -p$78707, -p$78708]]] + 
     8*pertphi[LI[1]]*timevec[h$78706]*PD[-h$78706][PD[-i][pertphi[LI[1]]]] + 
     2*timevec[h$78706]*PD[-h$78706][PD[-i][pertphi[LI[2]]]] - 
     metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      PD[-h$78706][PD[-i][pertS[LI[1], -p$78705]]] - 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -i]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78704][PD[-p$78705][
         pertE[LI[1]]]]] + 2*metric\[Delta][p$78704, p$78705]*pertphi[LI[1]]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78704][PD[-p$78705][
         pertF[LI[1], -i]]]] + (metric\[Delta][p$78704, p$78705]*
       timevec[h$78706]*PD[-h$78706][PD[-p$78704][PD[-p$78705][
          pertF[LI[2], -i]]]])/2 - 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$78704, p$78705]*perth[LI[1], -i, -p$78704]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertphi[LI[1]]]] - 
     metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78705][pertS[LI[1], -i]]] + 
     2*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][PD[-i][pertB[LI[1]]]]] - 
     4*hubbleC[]*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      perth[LI[1], -p$78704, -p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78708][perth[LI[1], -i, -p$78707]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      perth[LI[1], -p$78704, -p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78708][PD[-i][pertF[LI[1], -p$78707]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      perth[LI[1], -p$78704, -p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78708][PD[-p$78707][pertF[LI[1], -i]]]] - 
     metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      timevec[h$78709]*PD[-h$78709][PD[-h$78706][perth[LI[1], -i, 
         -p$78705]]] + 2*pertS[LI[1], -i]*timevec[h$78706]*timevec[h$78709]*
      PD[-h$78709][PD[-h$78706][pertphi[LI[1]]]] - 
     metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*timevec[h$78706]*
      timevec[h$78709]*PD[-h$78709][PD[-h$78706][
        PD[-i][pertF[LI[1], -p$78705]]]] - metric\[Delta][p$78704, p$78705]*
      pertS[LI[1], -p$78704]*timevec[h$78706]*timevec[h$78709]*
      PD[-h$78709][PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]]] - 
     2*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      timevec[h$78706]*timevec[h$78709]*PD[-h$78709][
       PD[-h$78706][PD[-p$78705][PD[-i][pertE[LI[1]]]]]] - 
     8*hubbleC[]^2*pertpsi[LI[1]]*PD[-i][pertB[LI[1]]] - 
     4*pertpsi[LI[1]]*primehubbleC[]*PD[-i][pertB[LI[1]]] - 
     10*hubbleC[]*timevec[h$78706]*PD[-h$78706][pertphi[LI[1]]]*
      PD[-i][pertB[LI[1]]] - 2*hubbleC[]*timevec[h$78706]*
      PD[-h$78706][pertpsi[LI[1]]]*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78704][PD[-p$78705][pertE[LI[1]]]]]*
      PD[-i][pertB[LI[1]]] - 2*timevec[h$78706]*timevec[h$78709]*
      PD[-h$78709][PD[-h$78706][pertphi[LI[1]]]]*PD[-i][pertB[LI[1]]] + 
     2*hubbleC[]^2*PD[-i][pertB[LI[2]]] + primehubbleC[]*
      PD[-i][pertB[LI[2]]] + (metric\[Delta][p$78704, p$78707]*
       metric\[Delta][p$78705, p$78708]*timevec[h$78706]*
       PD[-h$78706][perth[LI[1], -p$78707, -p$78708]]*
       PD[-i][perth[LI[1], -p$78704, -p$78705]])/2 + 
     8*timevec[h$78706]*PD[-h$78706][pertphi[LI[1]]]*PD[-i][pertphi[LI[1]]] - 
     2*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78704][PD[-p$78705][pertE[LI[1]]]]]*
      PD[-i][pertphi[LI[1]]] - 8*hubbleC[]*pertpsi[LI[1]]*
      PD[-i][pertpsi[LI[1]]] - 4*timevec[h$78706]*
      PD[-h$78706][pertphi[LI[1]]]*PD[-i][pertpsi[LI[1]]] + 
     2*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78704][PD[-p$78705][pertE[LI[1]]]]]*
      PD[-i][pertpsi[LI[1]]] + 2*hubbleC[]*PD[-i][pertpsi[LI[2]]] + 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      PD[-i][pertS[LI[1], -p$78705]] + 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*timevec[h$78706]*PD[-h$78706][perth[LI[1], -i, -p$78705]]*
      PD[-p$78704][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*timevec[h$78706]*PD[-h$78706][PD[-i][pertF[LI[1], -p$78705]]]*
      PD[-p$78704][pertB[LI[1]]] + metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-i][pertS[LI[1], -p$78705]]]*
      PD[-p$78704][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]]*
      PD[-p$78704][pertB[LI[1]]] + metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertS[LI[1], -i]]]*
      PD[-p$78704][pertB[LI[1]]] - 2*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][PD[-i][pertB[LI[1]]]]]*
      PD[-p$78704][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*timevec[h$78706]*PD[-h$78706][PD[-p$78705][
        PD[-i][pertE[LI[1]]]]]*PD[-p$78704][pertB[LI[1]]] + 
     metric\[Delta][p$78704, p$78705]*timevec[h$78706]*timevec[h$78709]*
      PD[-h$78709][PD[-h$78706][perth[LI[1], -i, -p$78705]]]*
      PD[-p$78704][pertB[LI[1]]] + metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*timevec[h$78709]*PD[-h$78709][
       PD[-h$78706][PD[-i][pertF[LI[1], -p$78705]]]]*
      PD[-p$78704][pertB[LI[1]]] + metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*timevec[h$78709]*PD[-h$78709][
       PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]]]*
      PD[-p$78704][pertB[LI[1]]] + 2*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*timevec[h$78709]*PD[-h$78709][
       PD[-h$78706][PD[-p$78705][PD[-i][pertE[LI[1]]]]]]*
      PD[-p$78704][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*PD[-i][pertS[LI[1], -p$78705]]*PD[-p$78704][pertB[LI[1]]] + 
     2*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78705][pertphi[LI[1]]]]*
      PD[-p$78704][pertF[LI[1], -i]] - metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][perth[LI[1], -i, -p$78705]]*
      PD[-p$78704][pertphi[LI[1]]] - metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-i][pertF[LI[1], -p$78705]]]*
      PD[-p$78704][pertphi[LI[1]]] - metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]]*
      PD[-p$78704][pertphi[LI[1]]] - 2*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78704][pertphi[LI[1]]] - metric\[Delta][p$78704, p$78705]*
      PD[-i][pertS[LI[1], -p$78705]]*PD[-p$78704][pertphi[LI[1]]] - 
     metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][perth[LI[1], -i, -p$78705]]*PD[-p$78704][pertpsi[LI[1]]] - 
     metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-i][pertF[LI[1], -p$78705]]]*
      PD[-p$78704][pertpsi[LI[1]]] - metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertF[LI[1], -i]]]*
      PD[-p$78704][pertpsi[LI[1]]] - 2*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78704][pertpsi[LI[1]]] - metric\[Delta][p$78704, p$78705]*
      PD[-i][pertS[LI[1], -p$78705]]*PD[-p$78704][pertpsi[LI[1]]] + 
     2*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-i][pertF[LI[1], -p$78705]]*PD[-p$78704][
       PD[-h$78706][pertphi[LI[1]]]] + 4*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78705][pertphi[LI[1]]]]*
      PD[-p$78704][PD[-i][pertE[LI[1]]]] + 2*hubbleC[]*
      metric\[Delta][p$78704, p$78705]*pertS[LI[1], -i]*
      PD[-p$78704][PD[-p$78705][pertB[LI[1]]]] - 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*PD[-i][pertB[LI[1]]]*
      PD[-p$78704][PD[-p$78705][pertB[LI[1]]]] - 
     2*metric\[Delta][p$78704, p$78705]*PD[-i][pertpsi[LI[1]]]*
      PD[-p$78704][PD[-p$78705][pertB[LI[1]]]] - 
     4*metric\[Delta][p$78704, p$78705]*timevec[h$78706]*
      PD[-h$78706][PD[-i][pertphi[LI[1]]]]*PD[-p$78704][
       PD[-p$78705][pertE[LI[1]]]] + 2*metric\[Delta][p$78704, p$78705]*
      timevec[h$78706]*PD[-h$78706][pertphi[LI[1]]]*
      PD[-p$78704][PD[-p$78705][pertF[LI[1], -i]]] + 
     2*metric\[Delta][p$78704, p$78705]*pertphi[LI[1]]*
      PD[-p$78704][PD[-p$78705][pertS[LI[1], -i]]] + 
     (metric\[Delta][p$78704, p$78705]*PD[-p$78704][
        PD[-p$78705][pertS[LI[2], -i]]])/2 + 
     2*metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][PD[-i][perth[LI[1], -p$78707, -p$78708]]]*
      PD[-p$78705][pertF[LI[1], -p$78704]] - metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78707][perth[LI[1], -i, -p$78704]]]*
      PD[-p$78705][pertF[LI[1], -p$78708]] + metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78707][PD[-i][pertF[LI[1], -p$78704]]]]*
      PD[-p$78705][pertF[LI[1], -p$78708]] - 
     2*metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][PD[-p$78704][
         pertF[LI[1], -i]]]]*PD[-p$78705][pertF[LI[1], -p$78708]] - 
     metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][perth[LI[1], -i, -p$78707]]]*
      PD[-p$78705][pertF[LI[1], -p$78708]] + metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*timevec[h$78706]*
      PD[-p$78704][PD[-h$78706][PD[-i][pertF[LI[1], -p$78707]]]]*
      PD[-p$78705][pertF[LI[1], -p$78708]] + metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*PD[-p$78704][
       PD[-i][pertS[LI[1], -p$78707]]]*PD[-p$78705][pertF[LI[1], -p$78708]] - 
     2*hubbleC[]*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      PD[-p$78705][pertS[LI[1], -i]] + 2*hubbleC[]*metric\[Delta][p$78704, 
       p$78705]*PD[-p$78704][pertB[LI[1]]]*PD[-p$78705][pertS[LI[1], -i]] + 
     metric\[Delta][p$78704, p$78705]*PD[-p$78704][pertphi[LI[1]]]*
      PD[-p$78705][pertS[LI[1], -i]] - metric\[Delta][p$78704, p$78705]*
      PD[-p$78704][pertpsi[LI[1]]]*PD[-p$78705][pertS[LI[1], -i]] + 
     metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      PD[-p$78704][perth[LI[1], -i, -p$78707]]*PD[-p$78705][
       pertS[LI[1], -p$78708]] + metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*PD[-p$78704][
       PD[-i][pertF[LI[1], -p$78707]]]*PD[-p$78705][pertS[LI[1], -p$78708]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-i][perth[LI[1], -p$78707, -p$78708]]*
      PD[-p$78705][PD[-h$78706][pertF[LI[1], -p$78704]]] + 
     2*metric\[Delta][p$78704, p$78705]*PD[-p$78704][pertpsi[LI[1]]]*
      PD[-p$78705][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*timevec[h$78706]*
      PD[-h$78706][perth[LI[1], -p$78707, -p$78708]]*
      PD[-p$78705][PD[-i][pertF[LI[1], -p$78704]]] + 
     metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][pertF[LI[1], -p$78704]]]*
      PD[-p$78705][PD[-i][pertF[LI[1], -p$78708]]] + 
     2*metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][PD[-p$78704][pertE[LI[1]]]]]*
      PD[-p$78705][PD[-i][pertF[LI[1], -p$78708]]] + 
     metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][pertF[LI[1], -p$78707]]]*
      PD[-p$78705][PD[-i][pertF[LI[1], -p$78708]]] + 
     2*metric\[Delta][p$78704, p$78705]*pertS[LI[1], -p$78704]*
      PD[-p$78705][PD[-i][pertpsi[LI[1]]]] - 
     2*metric\[Delta][p$78704, p$78705]*PD[-p$78704][pertB[LI[1]]]*
      PD[-p$78705][PD[-i][pertpsi[LI[1]]]] + 
     2*metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][PD[-i][perth[LI[1], -p$78707, -p$78708]]]*
      PD[-p$78705][PD[-p$78704][pertE[LI[1]]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-i][perth[LI[1], -p$78707, -p$78708]]*
      PD[-p$78705][PD[-p$78704][PD[-h$78706][pertE[LI[1]]]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][perth[LI[1], -p$78707, -p$78708]]*
      PD[-p$78705][PD[-p$78704][PD[-i][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][perth[LI[1], -i, -p$78704]]]*
      PD[-p$78705][PD[-p$78708][pertE[LI[1]]]] + 
     2*metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][
        PD[-i][pertF[LI[1], -p$78704]]]]*PD[-p$78705][
       PD[-p$78708][pertE[LI[1]]]] - 2*metric\[Delta][p$78704, p$78708]*
      metric\[Delta][p$78705, p$78707]*timevec[h$78706]*
      PD[-h$78706][PD[-p$78707][PD[-p$78704][pertF[LI[1], -i]]]]*
      PD[-p$78705][PD[-p$78708][pertE[LI[1]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][perth[LI[1], -i, -p$78707]]*
      PD[-p$78705][PD[-p$78708][pertF[LI[1], -p$78704]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][PD[-i][pertF[LI[1], -p$78707]]]*
      PD[-p$78705][PD[-p$78708][pertF[LI[1], -p$78704]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-i][pertS[LI[1], -p$78707]]*PD[-p$78705][
       PD[-p$78708][pertF[LI[1], -p$78704]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-p$78704][pertS[LI[1], -i]]*PD[-p$78705][
       PD[-p$78708][pertF[LI[1], -p$78707]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][pertF[LI[1], -i]]]*
      PD[-p$78705][PD[-p$78708][pertF[LI[1], -p$78707]]] - 
     2*metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78705][PD[-p$78708][pertF[LI[1], -p$78707]]] + 
     2*metric\[Delta][p$78704, p$78708]*metric\[Delta][p$78705, p$78707]*
      timevec[h$78706]*PD[-h$78706][PD[-p$78707][PD[-p$78704][pertE[LI[1]]]]]*
      PD[-p$78705][PD[-p$78708][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][perth[LI[1], -i, -p$78707]]*
      PD[-p$78705][PD[-p$78708][PD[-p$78704][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-h$78706][PD[-i][pertF[LI[1], -p$78707]]]*
      PD[-p$78705][PD[-p$78708][PD[-p$78704][pertE[LI[1]]]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-i][pertS[LI[1], -p$78707]]*PD[-p$78705][
       PD[-p$78708][PD[-p$78704][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-p$78704][pertS[LI[1], -i]]*PD[-p$78705][
       PD[-p$78708][PD[-p$78707][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][pertF[LI[1], -i]]]*
      PD[-p$78705][PD[-p$78708][PD[-p$78707][pertE[LI[1]]]]] - 
     2*metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      timevec[h$78706]*PD[-p$78704][PD[-h$78706][PD[-i][pertE[LI[1]]]]]*
      PD[-p$78705][PD[-p$78708][PD[-p$78707][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-p$78705][pertS[LI[1], -p$78707]]*PD[-p$78708][
       perth[LI[1], -i, -p$78704]] - metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*PD[-p$78705][pertS[LI[1], -p$78707]]*
      PD[-p$78708][PD[-i][pertF[LI[1], -p$78704]]] + 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-p$78705][pertF[LI[1], -p$78707]]*PD[-p$78708][
       PD[-i][pertS[LI[1], -p$78704]]] + 2*metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*PD[-p$78705][
       PD[-p$78707][pertE[LI[1]]]]*PD[-p$78708][
       PD[-i][pertS[LI[1], -p$78704]]] + metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*perth[LI[1], -p$78704, -p$78705]*
      PD[-p$78708][PD[-i][pertS[LI[1], -p$78707]]] - 
     2*metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      PD[-p$78705][pertF[LI[1], -p$78707]]*PD[-p$78708][
       PD[-p$78704][pertS[LI[1], -i]]] - 2*metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*PD[-p$78705][
       PD[-p$78707][pertE[LI[1]]]]*PD[-p$78708][PD[-p$78704][
        pertS[LI[1], -i]]] + 2*metric\[Delta][p$78704, p$78707]*
      metric\[Delta][p$78705, p$78708]*timevec[h$78706]*
      PD[-p$78705][PD[-h$78706][pertF[LI[1], -p$78707]]]*
      PD[-p$78708][PD[-p$78704][PD[-i][pertE[LI[1]]]]] - 
     metric\[Delta][p$78704, p$78707]*metric\[Delta][p$78705, p$78708]*
      perth[LI[1], -p$78704, -p$78705]*PD[-p$78708][
       PD[-p$78707][pertS[LI[1], -i]]])], 
 HoldPattern[pertRicciCDP[LI[2], -(i_Symbol)?TangentM3`Q, 
    -(j_Symbol)?TangentM3`Q]] :> Module[{p$105557, p$105556, h$105558, 
    p$105559, p$105560, h$105561}, 2*hubbleC[]^2*perth[LI[2], -i, -j] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[2]] - 
    8*hubbleC[]^2*perth[LI[1], -i, -j]*pertpsi[LI[1]] + 
    16*hubbleC[]^2*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertpsi[LI[1]] + 
    16*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[1]]^2 - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*pertpsi[LI[2]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105556]*pertS[LI[1], -p$105557] + 
    perth[LI[2], -i, -j]*primehubbleC[] - 2*metric\[Delta][-i, -j]*
     pertphi[LI[2]]*primehubbleC[] - 4*perth[LI[1], -i, -j]*pertpsi[LI[1]]*
     primehubbleC[] + 8*metric\[Delta][-i, -j]*pertphi[LI[1]]*pertpsi[LI[1]]*
     primehubbleC[] + 8*metric\[Delta][-i, -j]*pertpsi[LI[1]]^2*
     primehubbleC[] - 2*metric\[Delta][-i, -j]*pertpsi[LI[2]]*
     primehubbleC[] - 2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, 
      p$105556]*pertS[LI[1], -p$105556]*pertS[LI[1], -p$105557]*
     primehubbleC[] - 4*hubbleC[]*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -i, -j]] - hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -p$105556, -p$105557]] + 
    hubbleC[]*timevec[h$105558]*PD[-h$105558][perth[LI[2], -i, -j]] - 
    6*hubbleC[]*perth[LI[1], -i, -j]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]] + 20*hubbleC[]*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$105558]*PD[-h$105558][pertphi[LI[1]]] - 
    5*hubbleC[]*metric\[Delta][-i, -j]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[2]]] - 2*hubbleC[]*perth[LI[1], -i, -j]*
     timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*pertphi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][pertpsi[LI[1]]] + 8*hubbleC[]*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]] - 
    hubbleC[]*metric\[Delta][-i, -j]*timevec[h$105558]*
     PD[-h$105558][pertpsi[LI[2]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     timevec[h$105558]*PD[-h$105558][pertS[LI[1], -p$105556]] - 
    4*hubbleC[]*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-i][pertF[LI[1], -j]]] + hubbleC[]*timevec[h$105558]*
     PD[-h$105558][PD[-i][pertF[LI[2], -j]]] - 
    metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     timevec[h$105558]*PD[-h$105558][PD[-i][perth[LI[1], -j, -p$105556]]] + 
    2*pertS[LI[1], -j]*timevec[h$105558]*PD[-h$105558][
      PD[-i][pertphi[LI[1]]]] - 2*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-i][pertS[LI[1], -j]]] + 
    (timevec[h$105558]*PD[-h$105558][PD[-i][pertS[LI[2], -j]]])/2 - 
    4*hubbleC[]*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-j][pertF[LI[1], -i]]] + hubbleC[]*timevec[h$105558]*
     PD[-h$105558][PD[-j][pertF[LI[2], -i]]] - 
    metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     timevec[h$105558]*PD[-h$105558][PD[-j][perth[LI[1], -i, -p$105556]]] + 
    2*pertS[LI[1], -i]*timevec[h$105558]*PD[-h$105558][
      PD[-j][pertphi[LI[1]]]] - 2*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-j][pertS[LI[1], -i]]] + 
    (timevec[h$105558]*PD[-h$105558][PD[-j][pertS[LI[2], -i]]])/2 + 
    4*pertpsi[LI[1]]*timevec[h$105558]*PD[-h$105558][
      PD[-j][PD[-i][pertB[LI[1]]]]] - timevec[h$105558]*
     PD[-h$105558][PD[-j][PD[-i][pertB[LI[2]]]]] - 
    8*hubbleC[]*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    2*hubbleC[]*timevec[h$105558]*PD[-h$105558][
      PD[-j][PD[-i][pertE[LI[2]]]]] - 2*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*timevec[h$105558]*
     PD[-h$105558][PD[-j][PD[-i][pertF[LI[1], -p$105556]]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][perth[LI[1], -i, -j]]] - 
    4*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertphi[LI[1]]]] + 
    metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][
       PD[-i][pertF[LI[1], -j]]]] + metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][PD[-j][pertF[LI[1], -i]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*perth[LI[1], -p$105559, -p$105560]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       pertF[LI[1], -p$105556]]] + 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*perth[LI[1], -i, -j]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*perth[LI[1], -p$105559, -p$105560]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[1]]]]] - 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertpsi[LI[1]]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] + 
    hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[2]]]]] + timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-h$105561][perth[LI[1], -i, -j]] - 
    timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-h$105561][perth[LI[1], -i, -j]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][
      PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-h$105561][perth[LI[1], -i, -j]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][
      PD[-j][pertF[LI[1], -p$105556]]]*PD[-h$105561][
      perth[LI[1], -i, -p$105557]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][
      perth[LI[1], -i, -p$105556]]*PD[-h$105561][perth[LI[1], -j, 
       -p$105557]] - metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     timevec[h$105561]*PD[-h$105558][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-h$105561][perth[LI[1], -j, -p$105557]] + 2*metric\[Delta][-i, -j]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][pertphi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][pertpsi[LI[1]]] - 2*pertpsi[LI[1]]*timevec[h$105558]*
     timevec[h$105561]*PD[-h$105561][PD[-h$105558][perth[LI[1], -i, -j]]] + 
    (timevec[h$105558]*timevec[h$105561]*PD[-h$105561][
       PD[-h$105558][perth[LI[2], -i, -j]]])/2 + 4*metric\[Delta][-i, -j]*
     pertpsi[LI[1]]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-h$105558][pertphi[LI[1]]]] - 
    metric\[Delta][-i, -j]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-h$105558][pertphi[LI[2]]]] - 
    2*pertpsi[LI[1]]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-h$105558][PD[-i][pertF[LI[1], -j]]]] + 
    (timevec[h$105558]*timevec[h$105561]*PD[-h$105561][
       PD[-h$105558][PD[-i][pertF[LI[2], -j]]]])/2 - 
    2*pertpsi[LI[1]]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-h$105558][PD[-j][pertF[LI[1], -i]]]] + 
    (timevec[h$105558]*timevec[h$105561]*PD[-h$105561][
       PD[-h$105558][PD[-j][pertF[LI[2], -i]]]])/2 - 
    4*pertpsi[LI[1]]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-h$105558][PD[-j][PD[-i][pertE[LI[1]]]]]] + 
    timevec[h$105558]*timevec[h$105561]*PD[-h$105561][
      PD[-h$105558][PD[-j][PD[-i][pertE[LI[2]]]]]] + 
    timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][PD[-i][pertF[LI[1], -j]]] - timevec[h$105558]*
     timevec[h$105561]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-h$105561][PD[-i][pertF[LI[1], -j]]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-h$105561][PD[-i][pertF[LI[1], -j]]] + timevec[h$105558]*
     timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][PD[-j][pertF[LI[1], -i]]] - timevec[h$105558]*
     timevec[h$105561]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-h$105561][PD[-j][pertF[LI[1], -i]]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-h$105561][PD[-j][pertF[LI[1], -i]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-h$105561][PD[-j][pertF[LI[1], -p$105557]]] + 
    2*timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-h$105561][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-h$105561][PD[-j][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*timevec[h$105561]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-h$105561][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] - 
    2*timevec[h$105558]*PD[-h$105558][PD[-j][pertphi[LI[1]]]]*
     PD[-i][pertB[LI[1]]] - 8*hubbleC[]^2*pertpsi[LI[1]]*
     PD[-i][pertF[LI[1], -j]] - 4*pertpsi[LI[1]]*primehubbleC[]*
     PD[-i][pertF[LI[1], -j]] - 6*hubbleC[]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-i][pertF[LI[1], -j]] - 
    2*hubbleC[]*timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-i][pertF[LI[1], -j]] + 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[1]]]]]*PD[-i][pertF[LI[1], -j]] + 
    2*hubbleC[]^2*PD[-i][pertF[LI[2], -j]] + primehubbleC[]*
     PD[-i][pertF[LI[2], -j]] - 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*pertS[LI[1], -p$105557]*PD[-i][perth[LI[1], -j, -p$105556]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -p$105556]]*
     PD[-i][perth[LI[1], -j, -p$105557]] + 4*hubbleC[]*pertS[LI[1], -j]*
     PD[-i][pertphi[LI[1]]] + 2*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -j]]*PD[-i][pertphi[LI[1]]] - 
    2*timevec[h$105558]*PD[-h$105558][PD[-j][pertB[LI[1]]]]*
     PD[-i][pertphi[LI[1]]] - 4*hubbleC[]*pertpsi[LI[1]]*
     PD[-i][pertS[LI[1], -j]] - timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-i][pertS[LI[1], -j]] - 
    timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-i][pertS[LI[1], -j]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[1]]]]]*PD[-i][pertS[LI[1], -j]] + 
    hubbleC[]*PD[-i][pertS[LI[2], -j]] - 2*timevec[h$105558]*
     PD[-h$105558][PD[-i][pertphi[LI[1]]]]*PD[-j][pertB[LI[1]]] - 
    4*hubbleC[]*PD[-i][pertphi[LI[1]]]*PD[-j][pertB[LI[1]]] - 
    8*hubbleC[]^2*pertpsi[LI[1]]*PD[-j][pertF[LI[1], -i]] - 
    4*pertpsi[LI[1]]*primehubbleC[]*PD[-j][pertF[LI[1], -i]] - 
    6*hubbleC[]*timevec[h$105558]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-j][pertF[LI[1], -i]] - 2*hubbleC[]*timevec[h$105558]*
     PD[-h$105558][pertpsi[LI[1]]]*PD[-j][pertF[LI[1], -i]] + 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-j][pertF[LI[1], -i]] + 2*hubbleC[]^2*PD[-j][pertF[LI[2], -i]] + 
    primehubbleC[]*PD[-j][pertF[LI[2], -i]] - 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-j][perth[LI[1], -i, -p$105556]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][pertS[LI[1], -p$105556]]*
     PD[-j][perth[LI[1], -i, -p$105557]] + 
    (metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
      PD[-i][perth[LI[1], -p$105556, -p$105557]]*
      PD[-j][perth[LI[1], -p$105559, -p$105560]])/2 + 
    4*hubbleC[]*pertS[LI[1], -i]*PD[-j][pertphi[LI[1]]] + 
    2*timevec[h$105558]*PD[-h$105558][pertS[LI[1], -i]]*
     PD[-j][pertphi[LI[1]]] - 2*timevec[h$105558]*
     PD[-h$105558][PD[-i][pertB[LI[1]]]]*PD[-j][pertphi[LI[1]]] - 
    4*hubbleC[]*PD[-i][pertB[LI[1]]]*PD[-j][pertphi[LI[1]]] + 
    6*PD[-i][pertphi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
    2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertphi[LI[1]]] - 
    2*PD[-i][pertphi[LI[1]]]*PD[-j][pertpsi[LI[1]]] + 
    2*PD[-i][pertpsi[LI[1]]]*PD[-j][pertpsi[LI[1]]] - 
    4*hubbleC[]*pertpsi[LI[1]]*PD[-j][pertS[LI[1], -i]] - 
    timevec[h$105558]*PD[-h$105558][pertphi[LI[1]]]*
     PD[-j][pertS[LI[1], -i]] - timevec[h$105558]*
     PD[-h$105558][pertpsi[LI[1]]]*PD[-j][pertS[LI[1], -i]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]]*
     PD[-j][pertS[LI[1], -i]] - metric\[Delta][p$105557, p$105556]*
     PD[-i][pertS[LI[1], -p$105556]]*PD[-j][pertS[LI[1], -p$105557]] + 
    hubbleC[]*PD[-j][pertS[LI[2], -i]] + 8*hubbleC[]*pertpsi[LI[1]]*
     PD[-j][PD[-i][pertB[LI[1]]]] + 2*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-j][PD[-i][pertB[LI[1]]]] + 
    2*timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-j][PD[-i][pertB[LI[1]]]] - 2*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[1]]]]]*PD[-j][PD[-i][pertB[LI[1]]]] - 
    2*hubbleC[]*PD[-j][PD[-i][pertB[LI[2]]]] - 16*hubbleC[]^2*pertpsi[LI[1]]*
     PD[-j][PD[-i][pertE[LI[1]]]] - 8*pertpsi[LI[1]]*primehubbleC[]*
     PD[-j][PD[-i][pertE[LI[1]]]] - 12*hubbleC[]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-j][PD[-i][pertE[LI[1]]]] - 
    4*hubbleC[]*timevec[h$105558]*PD[-h$105558][pertpsi[LI[1]]]*
     PD[-j][PD[-i][pertE[LI[1]]]] + 4*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*timevec[h$105558]*PD[-h$105558][PD[-p$105557][
       PD[-p$105556][pertE[LI[1]]]]]*PD[-j][PD[-i][pertE[LI[1]]]] + 
    4*hubbleC[]^2*PD[-j][PD[-i][pertE[LI[2]]]] + 
    2*primehubbleC[]*PD[-j][PD[-i][pertE[LI[2]]]] - 
    4*hubbleC[]*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -p$105556]]*
     PD[-j][PD[-i][pertF[LI[1], -p$105557]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*
     PD[-j][PD[-i][perth[LI[1], -p$105556, -p$105557]]] + 
    4*pertphi[LI[1]]*PD[-j][PD[-i][pertphi[LI[1]]]] + 
    PD[-j][PD[-i][pertphi[LI[2]]]] + 4*pertpsi[LI[1]]*
     PD[-j][PD[-i][pertpsi[LI[1]]]] - PD[-j][PD[-i][pertpsi[LI[2]]]] - 
    2*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-j][PD[-i][pertS[LI[1], -p$105556]]] + 
    8*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*PD[-p$105556][pertB[LI[1]]] + 
    4*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     pertS[LI[1], -p$105557]*primehubbleC[]*PD[-p$105556][pertB[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][perth[LI[1], -i, -j]] - 6*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][pertphi[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][pertpsi[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     perth[LI[1], -j, -p$105557]*PD[-p$105556][PD[-i][pertphi[LI[1]]]] + 
    metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][PD[-i][pertS[LI[1], -j]]] + 
    2*metric\[Delta][p$105557, p$105556]*perth[LI[1], -i, -p$105557]*
     PD[-p$105556][PD[-j][pertphi[LI[1]]]] + 
    metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][PD[-j][pertS[LI[1], -i]]] - 
    4*hubbleC[]*metric\[Delta][p$105557, p$105556]*pertS[LI[1], -p$105557]*
     PD[-p$105556][PD[-j][PD[-i][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][pertS[LI[1], -p$105556]]*
     PD[-p$105557][pertB[LI[1]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-i][perth[LI[1], -j, -p$105556]]]*
     PD[-p$105557][pertB[LI[1]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-j][perth[LI[1], -i, -p$105556]]]*
     PD[-p$105557][pertB[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-j][PD[-i][pertF[LI[1], -p$105556]]]]*
     PD[-p$105557][pertB[LI[1]]] - 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertB[LI[1]]]]*PD[-p$105557][pertB[LI[1]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][perth[LI[1], -i, -j]]]*
     PD[-p$105557][pertB[LI[1]]] + 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertphi[LI[1]]]]*
     PD[-p$105557][pertB[LI[1]]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][PD[-i][pertF[LI[1], -j]]]]*
     PD[-p$105557][pertB[LI[1]]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][PD[-j][pertF[LI[1], -i]]]]*
     PD[-p$105557][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*PD[-i][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][pertB[LI[1]]] + 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*PD[-j][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][pertB[LI[1]]] + 4*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][pertB[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     PD[-j][PD[-i][pertS[LI[1], -p$105556]]]*PD[-p$105557][pertB[LI[1]]] - 
    4*hubbleC[]^2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][pertB[LI[1]]]*PD[-p$105557][pertB[LI[1]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     primehubbleC[]*PD[-p$105556][pertB[LI[1]]]*PD[-p$105557][pertB[LI[1]]] - 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][perth[LI[1], -i, -j]]*PD[-p$105557][pertB[LI[1]]] + 
    6*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][pertphi[LI[1]]]*PD[-p$105557][pertB[LI[1]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][pertpsi[LI[1]]]*PD[-p$105557][pertB[LI[1]]] - 
    metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-i][pertS[LI[1], -j]]]*PD[-p$105557][pertB[LI[1]]] - 
    metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-j][pertS[LI[1], -i]]]*PD[-p$105557][pertB[LI[1]]] + 
    4*hubbleC[]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][pertB[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][PD[-j][pertphi[LI[1]]]]*PD[-p$105557][pertF[LI[1], -i]] + 
    2*metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-i][pertphi[LI[1]]]]*PD[-p$105557][pertF[LI[1], -j]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -p$105556]]*PD[-p$105557][
      perth[LI[1], -i, -j]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -p$105556]]*PD[-p$105557][pertphi[LI[1]]] + 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][pertB[LI[1]]]]*
     PD[-p$105557][pertphi[LI[1]]] + metric\[Delta][p$105557, p$105556]*
     PD[-i][perth[LI[1], -j, -p$105556]]*PD[-p$105557][pertphi[LI[1]]] + 
    metric\[Delta][p$105557, p$105556]*PD[-j][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][pertphi[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*PD[-p$105557][pertphi[LI[1]]] - 
    3*metric\[Delta][p$105557, p$105556]*PD[-p$105556][perth[LI[1], -i, -j]]*
     PD[-p$105557][pertphi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*PD[-p$105556][pertphi[LI[1]]]*
     PD[-p$105557][pertphi[LI[1]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*PD[-p$105556][pertpsi[LI[1]]]*
     PD[-p$105557][pertphi[LI[1]]] - 2*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][PD[-i][pertF[LI[1], -j]]]*PD[-p$105557][pertphi[LI[1]]] - 
    2*metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-j][pertF[LI[1], -i]]]*PD[-p$105557][pertphi[LI[1]]] - 
    2*metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-j][PD[-i][pertE[LI[1]]]]]*PD[-p$105557][pertphi[LI[1]]] + 
    metric\[Delta][p$105557, p$105556]*PD[-i][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][pertpsi[LI[1]]] + metric\[Delta][p$105557, p$105556]*
     PD[-j][perth[LI[1], -i, -p$105556]]*PD[-p$105557][pertpsi[LI[1]]] + 
    2*metric\[Delta][p$105557, p$105556]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*PD[-p$105557][pertpsi[LI[1]]] - 
    metric\[Delta][p$105557, p$105556]*PD[-p$105556][perth[LI[1], -i, -j]]*
     PD[-p$105557][pertpsi[LI[1]]] + 2*metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][pertpsi[LI[1]]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][pertS[LI[1], -i]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-j][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][pertS[LI[1], -i]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][pertF[LI[1], -j]]]*
     PD[-p$105557][pertS[LI[1], -i]] - 2*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105557][pertS[LI[1], -i]] - metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][pertS[LI[1], -j]]*PD[-p$105557][pertS[LI[1], -i]] + 
    metric\[Delta][p$105557, p$105556]*PD[-p$105556][PD[-j][pertB[LI[1]]]]*
     PD[-p$105557][pertS[LI[1], -i]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][pertS[LI[1], -j]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][pertS[LI[1], -j]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][pertF[LI[1], -i]]]*
     PD[-p$105557][pertS[LI[1], -j]] - 2*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][pertS[LI[1], -j]] + metric\[Delta][p$105557, p$105556]*
     PD[-p$105556][PD[-i][pertB[LI[1]]]]*PD[-p$105557][pertS[LI[1], -j]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-i][perth[LI[1], -j, -p$105556]]*PD[-p$105557][
      PD[-h$105558][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-j][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][PD[-h$105558][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*PD[-p$105557][
      PD[-h$105558][pertB[LI[1]]]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-p$105556][perth[LI[1], -i, -j]]*
     PD[-p$105557][PD[-h$105558][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-p$105556][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-h$105558][pertB[LI[1]]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][PD[-h$105558][pertF[LI[1], -i]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-j][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-h$105558][pertF[LI[1], -i]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][PD[-h$105558][pertF[LI[1], -j]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105561][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-h$105558][pertF[LI[1], -j]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105556][pertF[LI[1], -j]]]*
     PD[-p$105557][PD[-h$105561][pertF[LI[1], -i]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105556][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-h$105561][pertF[LI[1], -i]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105556][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-h$105561][pertF[LI[1], -j]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][PD[-h$105561][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-j][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-h$105561][PD[-i][pertE[LI[1]]]]] - 
    4*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-p$105556][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-h$105561][PD[-i][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][PD[-h$105561][PD[-j][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*timevec[h$105561]*
     PD[-h$105558][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-h$105561][PD[-j][pertE[LI[1]]]]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -j, -p$105556]]*
     PD[-p$105557][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-j][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][pertF[LI[1], -j]]]*
     PD[-p$105557][PD[-i][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-i][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     PD[-j][pertS[LI[1], -p$105556]]*PD[-p$105557][PD[-i][pertB[LI[1]]]] - 
    2*metric\[Delta][p$105557, p$105556]*PD[-p$105556][PD[-j][pertB[LI[1]]]]*
     PD[-p$105557][PD[-i][pertB[LI[1]]]] + 
    4*metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-j][pertphi[LI[1]]]]*PD[-p$105557][PD[-i][pertE[LI[1]]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*PD[-p$105557][
      PD[-i][perth[LI[1], -j, -p$105556]]] + 
    2*metric\[Delta][p$105557, p$105556]*PD[-j][pertF[LI[1], -p$105556]]*
     PD[-p$105557][PD[-i][pertphi[LI[1]]]] + 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -i, -p$105556]]*
     PD[-p$105557][PD[-j][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-i][pertF[LI[1], -p$105556]]]*
     PD[-p$105557][PD[-j][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-p$105556][pertF[LI[1], -i]]]*
     PD[-p$105557][PD[-j][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-j][pertB[LI[1]]]] + metric\[Delta][p$105557, p$105556]*
     PD[-i][pertS[LI[1], -p$105556]]*PD[-p$105557][PD[-j][pertB[LI[1]]]] + 
    4*metric\[Delta][p$105557, p$105556]*PD[-p$105556][
      PD[-i][pertphi[LI[1]]]]*PD[-p$105557][PD[-j][pertE[LI[1]]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*PD[-p$105557][
      PD[-j][perth[LI[1], -i, -p$105556]]] + 
    2*metric\[Delta][p$105557, p$105556]*PD[-i][pertF[LI[1], -p$105556]]*
     PD[-p$105557][PD[-j][pertphi[LI[1]]]] - 
    2*metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertS[LI[1], -p$105556]]*PD[-p$105557][
      PD[-j][PD[-i][pertE[LI[1]]]]] - 2*hubbleC[]*metric\[Delta][p$105557, 
      p$105556]*perth[LI[1], -i, -j]*PD[-p$105557][
      PD[-p$105556][pertB[LI[1]]]] + 2*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*PD[-p$105557][
      PD[-p$105556][pertB[LI[1]]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertpsi[LI[1]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -i, -j]]*PD[-p$105557][
      PD[-p$105556][pertB[LI[1]]]] + 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-p$105557][
      PD[-p$105556][pertB[LI[1]]]] - metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-i][pertF[LI[1], -j]]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-j][pertF[LI[1], -i]]]*PD[-p$105557][
      PD[-p$105556][pertB[LI[1]]]] - 2*metric\[Delta][p$105557, p$105556]*
     timevec[h$105558]*PD[-h$105558][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*PD[-i][pertF[LI[1], -j]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    metric\[Delta][p$105557, p$105556]*PD[-i][pertS[LI[1], -j]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][p$105557, p$105556]*PD[-j][pertF[LI[1], -i]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    metric\[Delta][p$105557, p$105556]*PD[-j][pertS[LI[1], -i]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] + 
    2*metric\[Delta][p$105557, p$105556]*PD[-j][PD[-i][pertB[LI[1]]]]*
     PD[-p$105557][PD[-p$105556][pertB[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][p$105557, p$105556]*
     PD[-j][PD[-i][pertE[LI[1]]]]*PD[-p$105557][PD[-p$105556][
       pertB[LI[1]]]] - hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*PD[-p$105557][
      PD[-p$105556][pertB[LI[2]]]] + 4*hubbleC[]*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*timevec[h$105558]*
     PD[-h$105558][pertphi[LI[1]]]*PD[-p$105557][
      PD[-p$105556][pertE[LI[1]]]] - 4*metric\[Delta][p$105557, p$105556]*
     PD[-j][PD[-i][pertphi[LI[1]]]]*PD[-p$105557][
      PD[-p$105556][pertE[LI[1]]]] + 2*metric\[Delta][p$105557, p$105556]*
     PD[-j][pertphi[LI[1]]]*PD[-p$105557][PD[-p$105556][pertF[LI[1], -i]]] + 
    2*metric\[Delta][p$105557, p$105556]*PD[-i][pertphi[LI[1]]]*
     PD[-p$105557][PD[-p$105556][pertF[LI[1], -j]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*PD[-p$105557][
      PD[-p$105556][perth[LI[1], -i, -j]]] - 
    2*metric\[Delta][p$105557, p$105556]*pertphi[LI[1]]*
     PD[-p$105557][PD[-p$105556][perth[LI[1], -i, -j]]] - 
    (metric\[Delta][p$105557, p$105556]*PD[-p$105557][
       PD[-p$105556][perth[LI[2], -i, -j]]])/2 - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     perth[LI[1], -p$105559, -p$105560]*PD[-p$105557][
      PD[-p$105556][pertphi[LI[1]]]] + 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$105557, p$105556]*pertphi[LI[1]]*
     PD[-p$105557][PD[-p$105556][pertphi[LI[1]]]] + 
    metric\[Delta][-i, -j]*metric\[Delta][p$105557, p$105556]*
     PD[-p$105557][PD[-p$105556][pertphi[LI[2]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      pertS[LI[1], -p$105559]]*PD[-p$105560][pertF[LI[1], -p$105556]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-i][perth[LI[1], -j, -p$105559]]]*
     PD[-p$105560][pertF[LI[1], -p$105556]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-j][perth[LI[1], -i, -p$105559]]]*
     PD[-p$105560][pertF[LI[1], -p$105556]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-p$105559][pertB[LI[1]]]]*PD[-p$105560][pertF[LI[1], -p$105556]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][perth[LI[1], -i, -j]]]*
     PD[-p$105560][pertF[LI[1], -p$105556]] - 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][pertphi[LI[1]]]]*
     PD[-p$105560][pertF[LI[1], -p$105556]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertF[LI[1], -p$105559]]]*
     PD[-p$105560][pertF[LI[1], -p$105557]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][PD[-p$105559][pertE[LI[1]]]]]*
     PD[-p$105560][pertF[LI[1], -p$105557]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*PD[-p$105559][
      pertS[LI[1], -p$105556]]*PD[-p$105560][pertF[LI[1], -p$105557]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*timevec[h$105558]*
     PD[-p$105559][PD[-h$105558][pertF[LI[1], -p$105556]]]*
     PD[-p$105560][pertF[LI[1], -p$105557]] - 
    metric\[Delta][p$105559, p$105557]*metric\[Delta][p$105560, p$105556]*
     PD[-p$105559][PD[-i][perth[LI[1], -j, -p$105556]]]*
     PD[-p$105560][pertF[LI[1], -p$105557]] - 
    metric\[Delta][p$105559, p$105557]*metric\[Delta][p$105560, p$105556]*
     PD[-p$105559][PD[-j][perth[LI[1], -i, -p$105556]]]*
     PD[-p$105560][pertF[LI[1], -p$105557]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][pertF[LI[1], -p$105559]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][PD[-i][perth[LI[1], -p$105556, -p$105557]]]*
     PD[-p$105560][pertF[LI[1], -p$105559]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][perth[LI[1], -j, -p$105559]]*
     PD[-p$105560][perth[LI[1], -i, -p$105556]] - 
    metric\[Delta][p$105559, p$105557]*metric\[Delta][p$105560, p$105556]*
     PD[-p$105559][perth[LI[1], -j, -p$105556]]*
     PD[-p$105560][perth[LI[1], -i, -p$105557]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-p$105559][pertE[LI[1]]]]*PD[-p$105560][pertS[LI[1], -p$105556]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*perth[LI[1], -p$105559, -p$105556]*
     PD[-p$105560][pertS[LI[1], -p$105557]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][perth[LI[1], -j, -p$105559]]*
     PD[-p$105560][PD[-i][pertF[LI[1], -p$105556]]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-j][pertF[LI[1], -p$105559]]]*
     PD[-p$105560][PD[-i][pertF[LI[1], -p$105556]]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-i][pertF[LI[1], -p$105556]]] - 
    metric\[Delta][p$105559, p$105557]*metric\[Delta][p$105560, p$105556]*
     PD[-p$105559][perth[LI[1], -j, -p$105556]]*
     PD[-p$105560][PD[-i][pertF[LI[1], -p$105557]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][PD[-i][pertF[LI[1], -p$105559]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][perth[LI[1], -i, -p$105559]]*
     PD[-p$105560][PD[-j][pertF[LI[1], -p$105556]]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-j][pertF[LI[1], -p$105556]]] - 
    metric\[Delta][p$105559, p$105557]*metric\[Delta][p$105560, p$105556]*
     PD[-p$105559][perth[LI[1], -i, -p$105556]]*
     PD[-p$105560][PD[-j][pertF[LI[1], -p$105557]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-i][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][PD[-j][pertF[LI[1], -p$105559]]] + 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-p$105559][pertE[LI[1]]]]*PD[-p$105560][
      PD[-p$105556][pertB[LI[1]]]] - 2*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-i][perth[LI[1], -j, -p$105559]]]*PD[-p$105560][
      PD[-p$105556][pertE[LI[1]]]] - 2*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-j][perth[LI[1], -i, -p$105559]]]*PD[-p$105560][
      PD[-p$105556][pertE[LI[1]]]] + 2*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105557][
      PD[-p$105559][perth[LI[1], -i, -j]]]*PD[-p$105560][
      PD[-p$105556][pertE[LI[1]]]] - 4*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][pertphi[LI[1]]]]*
     PD[-p$105560][PD[-p$105556][pertE[LI[1]]]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105557][PD[-p$105559][PD[-j][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-p$105556][PD[-i][pertE[LI[1]]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][pertF[LI[1], -p$105559]]]*
     PD[-p$105560][PD[-p$105557][pertE[LI[1]]]] - 
    4*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105557]*
     metric\[Delta][p$105560, p$105556]*timevec[h$105558]*
     PD[-h$105558][PD[-p$105556][PD[-p$105559][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-p$105557][pertE[LI[1]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*pertS[LI[1], -p$105559]*
     PD[-p$105560][PD[-p$105557][pertF[LI[1], -p$105556]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105559][pertB[LI[1]]]*
     PD[-p$105560][PD[-p$105557][pertF[LI[1], -p$105556]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105559][perth[LI[1], -i, -j]]*PD[-p$105560][
      PD[-p$105557][pertF[LI[1], -p$105556]]] - 2*metric\[Delta][-i, -j]*
     metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105559][pertphi[LI[1]]]*PD[-p$105560][
      PD[-p$105557][pertF[LI[1], -p$105556]]] - 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105559][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-p$105557][pertF[LI[1], -p$105556]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-i][perth[LI[1], -j, -p$105556]]*PD[-p$105560][
      PD[-p$105557][pertF[LI[1], -p$105559]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][perth[LI[1], -i, -p$105556]]*PD[-p$105560][
      PD[-p$105557][pertF[LI[1], -p$105559]]] - 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*PD[-p$105560][
      PD[-p$105557][pertF[LI[1], -p$105559]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*pertS[LI[1], -p$105559]*
     PD[-p$105560][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] + 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105559][pertB[LI[1]]]*
     PD[-p$105560][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105559][perth[LI[1], -i, -j]]*PD[-p$105560][
      PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] - 
    2*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*PD[-p$105559][pertphi[LI[1]]]*
     PD[-p$105560][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-p$105559][PD[-j][PD[-i][pertE[LI[1]]]]]*
     PD[-p$105560][PD[-p$105557][PD[-p$105556][pertE[LI[1]]]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-i][perth[LI[1], -j, -p$105556]]*PD[-p$105560][
      PD[-p$105557][PD[-p$105559][pertE[LI[1]]]]] - 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][perth[LI[1], -i, -p$105556]]*PD[-p$105560][
      PD[-p$105557][PD[-p$105559][pertE[LI[1]]]]] - 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][PD[-i][pertF[LI[1], -p$105556]]]*PD[-p$105560][
      PD[-p$105557][PD[-p$105559][pertE[LI[1]]]]] - 
    2*hubbleC[]*metric\[Delta][-i, -j]*metric\[Delta][p$105559, p$105556]*
     metric\[Delta][p$105560, p$105557]*timevec[h$105558]*
     PD[-h$105558][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][PD[-p$105559][pertE[LI[1]]]] + 
    2*metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][PD[-i][perth[LI[1], -p$105556, -p$105557]]]*
     PD[-p$105560][PD[-p$105559][pertE[LI[1]]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-j][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][PD[-p$105559][PD[-i][pertE[LI[1]]]]] + 
    metric\[Delta][p$105559, p$105556]*metric\[Delta][p$105560, p$105557]*
     PD[-i][perth[LI[1], -p$105556, -p$105557]]*
     PD[-p$105560][PD[-p$105559][PD[-j][pertE[LI[1]]]]]], 
 HoldPattern[pertRicciScalarCDP[LI[2]]] :> 
  Module[{}, (48*hubbleC[]^2*pertpsi[LI[1]]^2)/scale[]^2 + 
    (48*pertpsi[LI[1]]^2*primehubbleC[])/scale[]^2 - 
    (12*hubbleC[]^2*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (12*primehubbleC[]*Scalar[pertpsi[LI[2]]])/scale[]^2 - 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$118773, p$118774]*
        pertS[LI[1], -p$118773]*pertS[LI[1], -p$118774]])/scale[]^2 - 
    (10*primehubbleC[]*Scalar[metric\[Delta][p$118776, p$118777]*
        pertS[LI[1], -p$118776]*pertS[LI[1], -p$118777]])/scale[]^2 - 
    (4*hubbleC[]^2*Scalar[metric\[Delta][p$118779, p$118780]*
        pertS[LI[1], -p$118779]*pertS[LI[1], -p$118780]])/scale[]^2 - 
    (2*primehubbleC[]*Scalar[metric\[Delta][p$118782, p$118783]*
        pertS[LI[1], -p$118782]*pertS[LI[1], -p$118783]])/scale[]^2 - 
    (hubbleC[]*Scalar[metric\[Delta][p$118785, p$118786]*
        metric\[Delta][p$118787, p$118788]*perth[LI[1], -p$118786, -p$118788]*
        timevec[h$118789]*PD[-h$118789][perth[LI[1], -p$118785, -p$118787]]])/
     scale[]^2 - (5*hubbleC[]*Scalar[metric\[Delta][p$118791, p$118792]*
        metric\[Delta][p$118793, p$118794]*perth[LI[1], -p$118791, -p$118793]*
        timevec[h$118795]*PD[-h$118795][perth[LI[1], -p$118792, -p$118794]]])/
     scale[]^2 - (72*hubbleC[]*Scalar[pertphi[LI[1]]*timevec[h$118797]*
        PD[-h$118797][pertphi[LI[1]]]])/scale[]^2 + 
    (72*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$118799]*
        PD[-h$118799][pertphi[LI[1]]]])/scale[]^2 - 
    (18*hubbleC[]*Scalar[timevec[h$118801]*PD[-h$118801][pertphi[LI[2]]]])/
     scale[]^2 + (48*hubbleC[]*Scalar[pertpsi[LI[1]]*timevec[h$118803]*
        PD[-h$118803][pertpsi[LI[1]]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[timevec[h$118805]*PD[-h$118805][pertpsi[LI[2]]]])/
     scale[]^2 - (6*hubbleC[]*Scalar[metric\[Delta][p$118807, p$118808]*
        pertS[LI[1], -p$118807]*timevec[h$118809]*PD[-h$118809][
         pertS[LI[1], -p$118808]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[metric\[Delta][p$118811, p$118812]*
        pertS[LI[1], -p$118812]*timevec[h$118813]*PD[-h$118813][
         pertS[LI[1], -p$118811]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$118815, p$118816]*pertphi[LI[1]]*
        timevec[h$118817]*PD[-h$118817][PD[-p$118815][PD[-p$118816][
           pertB[LI[1]]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$118819, p$118820]*pertpsi[LI[1]]*
        timevec[h$118821]*PD[-h$118821][PD[-p$118819][PD[-p$118820][
           pertB[LI[1]]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$118823, p$118824]*timevec[h$118825]*
       PD[-h$118825][PD[-p$118823][PD[-p$118824][pertB[LI[2]]]]]]/scale[]^2 + 
    (20*hubbleC[]*Scalar[metric\[Delta][p$118827, p$118828]*pertphi[LI[1]]*
        timevec[h$118829]*PD[-h$118829][PD[-p$118827][PD[-p$118828][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$118831, p$118832]*pertpsi[LI[1]]*
        timevec[h$118833]*PD[-h$118833][PD[-p$118831][PD[-p$118832][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (5*hubbleC[]*Scalar[metric\[Delta][p$118835, p$118836]*timevec[h$118837]*
        PD[-h$118837][PD[-p$118835][PD[-p$118836][pertE[LI[2]]]]]])/
     scale[]^2 + (6*hubbleC[]*Scalar[metric\[Delta][p$118839, p$118840]*
        pertS[LI[1], -p$118839]*timevec[h$118841]*PD[-h$118841][
         PD[-p$118840][pertB[LI[1]]]]])/scale[]^2 - 
    (16*Scalar[metric\[Delta][p$118843, p$118844]*pertS[LI[1], -p$118843]*
        timevec[h$118845]*PD[-h$118845][PD[-p$118844][pertphi[LI[1]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$118847, p$118848]*
        metric\[Delta][p$118849, p$118850]*pertS[LI[1], -p$118847]*
        timevec[h$118851]*PD[-h$118851][PD[-p$118849][PD[-p$118850][
           pertF[LI[1], -p$118848]]]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$118853, p$118854]*
        metric\[Delta][p$118855, p$118856]*perth[LI[1], -p$118853, -p$118855]*
        timevec[h$118857]*PD[-h$118857][PD[-p$118856][pertF[LI[1], 
           -p$118854]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$118859, p$118860]*metric\[Delta][p$118861, 
         p$118862]*perth[LI[1], -p$118859, -p$118861]*timevec[h$118863]*
        PD[-h$118863][PD[-p$118862][pertS[LI[1], -p$118860]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$118865, p$118866]*metric\[Delta][p$118867, 
         p$118868]*perth[LI[1], -p$118865, -p$118867]*timevec[h$118869]*
        PD[-h$118869][PD[-p$118868][PD[-p$118866][pertB[LI[1]]]]]])/
     scale[]^2 - (10*hubbleC[]*Scalar[metric\[Delta][p$118871, p$118872]*
        metric\[Delta][p$118873, p$118874]*perth[LI[1], -p$118871, -p$118873]*
        timevec[h$118875]*PD[-h$118875][PD[-p$118874][PD[-p$118872][
           pertE[LI[1]]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$118877, p$118878]*metric\[Delta][p$118879, 
        p$118880]*timevec[h$118881]*timevec[h$118882]*
       PD[-h$118881][perth[LI[1], -p$118878, -p$118880]]*
       PD[-h$118882][perth[LI[1], -p$118877, -p$118879]]]/scale[]^2 - 
    Scalar[metric\[Delta][p$118884, p$118885]*metric\[Delta][p$118886, 
        p$118887]*timevec[h$118888]*timevec[h$118889]*
       PD[-h$118888][perth[LI[1], -p$118885, -p$118887]]*
       PD[-h$118889][perth[LI[1], -p$118884, -p$118886]]]/(2*scale[]^2) + 
    (12*Scalar[timevec[h$118891]*timevec[h$118892]*PD[-h$118891][
         pertphi[LI[1]]]*PD[-h$118892][pertpsi[LI[1]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$118894, p$118895]*metric\[Delta][p$118896, 
        p$118897]*perth[LI[1], -p$118895, -p$118897]*timevec[h$118898]*
       timevec[h$118899]*PD[-h$118899][PD[-h$118898][perth[LI[1], -p$118894, 
          -p$118896]]]]/scale[]^2 - 
    Scalar[metric\[Delta][p$118901, p$118902]*metric\[Delta][p$118903, 
        p$118904]*perth[LI[1], -p$118901, -p$118903]*timevec[h$118905]*
       timevec[h$118906]*PD[-h$118906][PD[-h$118905][perth[LI[1], -p$118902, 
          -p$118904]]]]/scale[]^2 - 
    (24*Scalar[pertphi[LI[1]]*timevec[h$118908]*timevec[h$118909]*
        PD[-h$118909][PD[-h$118908][pertphi[LI[1]]]]])/scale[]^2 + 
    (24*Scalar[pertpsi[LI[1]]*timevec[h$118911]*timevec[h$118912]*
        PD[-h$118912][PD[-h$118911][pertphi[LI[1]]]]])/scale[]^2 - 
    (6*Scalar[timevec[h$118914]*timevec[h$118915]*PD[-h$118915][
         PD[-h$118914][pertphi[LI[2]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$118917, p$118918]*pertphi[LI[1]]*
        timevec[h$118919]*timevec[h$118920]*PD[-h$118920][
         PD[-h$118919][PD[-p$118917][PD[-p$118918][pertE[LI[1]]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$118922, p$118923]*pertpsi[LI[1]]*
        timevec[h$118924]*timevec[h$118925]*PD[-h$118925][
         PD[-h$118924][PD[-p$118922][PD[-p$118923][pertE[LI[1]]]]]]])/
     scale[]^2 + Scalar[metric\[Delta][p$118927, p$118928]*timevec[h$118929]*
       timevec[h$118930]*PD[-h$118930][PD[-h$118929][PD[-p$118927][
          PD[-p$118928][pertE[LI[2]]]]]]]/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$118932, p$118933]*metric\[Delta][p$118934, 
         p$118935]*perth[LI[1], -p$118932, -p$118934]*timevec[h$118936]*
        timevec[h$118937]*PD[-h$118937][PD[-h$118936][PD[-p$118935][
           pertF[LI[1], -p$118933]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$118939, p$118940]*metric\[Delta][p$118941, 
         p$118942]*perth[LI[1], -p$118939, -p$118941]*timevec[h$118943]*
        timevec[h$118944]*PD[-h$118944][PD[-h$118943][PD[-p$118942][
           PD[-p$118940][pertE[LI[1]]]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$118946, p$118947]*timevec[h$118948]*
        timevec[h$118949]*PD[-h$118948][pertphi[LI[1]]]*
        PD[-h$118949][PD[-p$118946][PD[-p$118947][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$118951, p$118952]*
        timevec[h$118953]*timevec[h$118954]*PD[-h$118953][pertpsi[LI[1]]]*
        PD[-h$118954][PD[-p$118951][PD[-p$118952][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$118956, p$118957]*
        metric\[Delta][p$118958, p$118959]*timevec[h$118960]*
        timevec[h$118961]*PD[-h$118960][PD[-p$118956][PD[-p$118957][
           pertE[LI[1]]]]]*PD[-h$118961][PD[-p$118958][PD[-p$118959][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$118963, p$118964]*metric\[Delta][p$118965, 
         p$118966]*timevec[h$118967]*timevec[h$118968]*
        PD[-h$118967][PD[-p$118965][PD[-p$118964][pertE[LI[1]]]]]*
        PD[-h$118968][PD[-p$118966][PD[-p$118963][pertE[LI[1]]]]]])/
     scale[]^2 + (6*hubbleC[]*Scalar[metric\[Delta][p$118970, p$118971]*
        timevec[h$118972]*PD[-h$118972][pertS[LI[1], -p$118971]]*
        PD[-p$118970][pertB[LI[1]]]])/scale[]^2 + 
    (6*hubbleC[]*Scalar[metric\[Delta][p$118974, p$118975]*timevec[h$118976]*
        PD[-h$118976][pertS[LI[1], -p$118974]]*PD[-p$118975][pertB[LI[1]]]])/
     scale[]^2 - (6*hubbleC[]*Scalar[metric\[Delta][p$118978, p$118979]*
        timevec[h$118980]*PD[-h$118980][PD[-p$118979][pertB[LI[1]]]]*
        PD[-p$118978][pertB[LI[1]]]])/scale[]^2 + 
    (16*Scalar[metric\[Delta][p$118982, p$118983]*timevec[h$118984]*
        PD[-h$118984][PD[-p$118983][pertphi[LI[1]]]]*
        PD[-p$118982][pertB[LI[1]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$118986, p$118987]*metric\[Delta][p$118988, 
         p$118989]*timevec[h$118990]*PD[-h$118990][PD[-p$118988][
          PD[-p$118989][pertF[LI[1], -p$118987]]]]*PD[-p$118986][
         pertB[LI[1]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$118992, p$118993]*timevec[h$118994]*
        PD[-h$118994][pertS[LI[1], -p$118993]]*PD[-p$118992][
         pertphi[LI[1]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$118996, p$118997]*timevec[h$118998]*
        PD[-h$118998][pertS[LI[1], -p$118996]]*PD[-p$118997][
         pertphi[LI[1]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119000, p$119001]*timevec[h$119002]*
        PD[-h$119002][PD[-p$119001][pertB[LI[1]]]]*PD[-p$119000][
         pertphi[LI[1]]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119004, p$119005]*pertphi[LI[1]]*
        PD[-p$119004][PD[-p$119005][pertB[LI[1]]]]])/scale[]^2 + 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119007, p$119008]*pertpsi[LI[1]]*
        PD[-p$119007][PD[-p$119008][pertB[LI[1]]]]])/scale[]^2 + 
    (8*Scalar[metric\[Delta][p$119010, p$119011]*timevec[h$119012]*
        PD[-h$119012][pertphi[LI[1]]]*PD[-p$119010][PD[-p$119011][
          pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119014, p$119015]*timevec[h$119016]*
        PD[-h$119016][pertpsi[LI[1]]]*PD[-p$119014][PD[-p$119015][
          pertB[LI[1]]]]])/scale[]^2 - 
    (5*hubbleC[]*Scalar[metric\[Delta][p$119018, p$119019]*
        PD[-p$119018][PD[-p$119019][pertB[LI[2]]]]])/scale[]^2 + 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119021, p$119022]*timevec[h$119023]*
        PD[-h$119023][pertphi[LI[1]]]*PD[-p$119021][PD[-p$119022][
          pertE[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119025, p$119026]*timevec[h$119027]*
        timevec[h$119028]*PD[-h$119028][PD[-h$119027][pertphi[LI[1]]]]*
        PD[-p$119025][PD[-p$119026][pertE[LI[1]]]]])/scale[]^2 + 
    (32*Scalar[metric\[Delta][p$119030, p$119031]*pertphi[LI[1]]*
        PD[-p$119030][PD[-p$119031][pertphi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119033, p$119034]*PD[-p$119033][
         PD[-p$119034][pertphi[LI[2]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119036, p$119037]*pertphi[LI[1]]*
        PD[-p$119036][PD[-p$119037][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119039, p$119040]*pertpsi[LI[1]]*
        PD[-p$119039][PD[-p$119040][pertpsi[LI[1]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$119042, p$119043]*PD[-p$119042][
        PD[-p$119043][pertpsi[LI[2]]]]]/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119045, p$119046]*metric\[Delta][p$119047, 
         p$119048]*timevec[h$119049]*PD[-h$119049][PD[-p$119047][
          PD[-p$119048][pertE[LI[1]]]]]*PD[-p$119045][PD[-p$119046][
          pertB[LI[1]]]]])/scale[]^2 + 
    (16*hubbleC[]^2*Scalar[metric\[Delta][p$119051, p$119052]*
        pertS[LI[1], -p$119051]*PD[-p$119052][pertB[LI[1]]]])/scale[]^2 + 
    (20*primehubbleC[]*Scalar[metric\[Delta][p$119054, p$119055]*
        pertS[LI[1], -p$119054]*PD[-p$119055][pertB[LI[1]]]])/scale[]^2 + 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$119057, p$119058]*
        pertS[LI[1], -p$119058]*PD[-p$119057][pertB[LI[1]]]])/scale[]^2 + 
    (4*primehubbleC[]*Scalar[metric\[Delta][p$119060, p$119061]*
        pertS[LI[1], -p$119061]*PD[-p$119060][pertB[LI[1]]]])/scale[]^2 - 
    (8*hubbleC[]^2*Scalar[metric\[Delta][p$119063, p$119064]*
        PD[-p$119063][pertB[LI[1]]]*PD[-p$119064][pertB[LI[1]]]])/scale[]^2 - 
    (10*primehubbleC[]*Scalar[metric\[Delta][p$119066, p$119067]*
        PD[-p$119066][pertB[LI[1]]]*PD[-p$119067][pertB[LI[1]]]])/scale[]^2 - 
    (4*hubbleC[]^2*Scalar[metric\[Delta][p$119069, p$119070]*
        PD[-p$119069][pertB[LI[1]]]*PD[-p$119070][pertB[LI[1]]]])/scale[]^2 - 
    (2*primehubbleC[]*Scalar[metric\[Delta][p$119072, p$119073]*
        PD[-p$119072][pertB[LI[1]]]*PD[-p$119073][pertB[LI[1]]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119075, p$119076]*
        metric\[Delta][p$119077, p$119078]*timevec[h$119079]*
        PD[-h$119079][perth[LI[1], -p$119076, -p$119078]]*
        PD[-p$119077][pertF[LI[1], -p$119075]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119081, p$119082]*
        metric\[Delta][p$119083, p$119084]*timevec[h$119085]*
        PD[-h$119085][perth[LI[1], -p$119081, -p$119083]]*
        PD[-p$119084][pertF[LI[1], -p$119082]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119087, p$119088]*metric\[Delta][p$119089, 
         p$119090]*timevec[h$119091]*timevec[h$119092]*
        PD[-h$119092][PD[-h$119091][perth[LI[1], -p$119088, -p$119090]]]*
        PD[-p$119089][pertF[LI[1], -p$119087]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119094, p$119095]*metric\[Delta][p$119096, 
         p$119097]*timevec[h$119098]*timevec[h$119099]*
        PD[-h$119099][PD[-h$119098][perth[LI[1], -p$119094, -p$119096]]]*
        PD[-p$119097][pertF[LI[1], -p$119095]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119101, p$119102]*
        metric\[Delta][p$119103, p$119104]*timevec[h$119105]*
        PD[-h$119105][PD[-p$119104][pertF[LI[1], -p$119101]]]*
        PD[-p$119103][pertF[LI[1], -p$119102]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119107, p$119108]*metric\[Delta][p$119109, 
         p$119110]*timevec[h$119111]*PD[-h$119111][PD[-p$119110][
          pertS[LI[1], -p$119107]]]*PD[-p$119109][pertF[LI[1], -p$119108]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$119113, p$119114]*
        metric\[Delta][p$119115, p$119116]*timevec[h$119117]*
        PD[-h$119117][PD[-p$119116][PD[-p$119113][pertB[LI[1]]]]]*
        PD[-p$119115][pertF[LI[1], -p$119114]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119119, p$119120]*
        metric\[Delta][p$119121, p$119122]*timevec[h$119123]*
        PD[-h$119123][PD[-p$119122][PD[-p$119119][pertE[LI[1]]]]]*
        PD[-p$119121][pertF[LI[1], -p$119120]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119125, p$119126]*metric\[Delta][p$119127, 
         p$119128]*timevec[h$119129]*timevec[h$119130]*
        PD[-h$119130][PD[-h$119129][PD[-p$119128][pertF[LI[1], -p$119125]]]]*
        PD[-p$119127][pertF[LI[1], -p$119126]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119132, p$119133]*metric\[Delta][p$119134, 
         p$119135]*timevec[h$119136]*timevec[h$119137]*
        PD[-h$119137][PD[-h$119136][PD[-p$119135][PD[-p$119132][
            pertE[LI[1]]]]]]*PD[-p$119134][pertF[LI[1], -p$119133]]])/
     scale[]^2 - (10*hubbleC[]*Scalar[metric\[Delta][p$119139, p$119140]*
        metric\[Delta][p$119141, p$119142]*PD[-p$119139][
         pertS[LI[1], -p$119142]]*PD[-p$119141][pertF[LI[1], -p$119140]]])/
     scale[]^2 - (10*hubbleC[]*Scalar[metric\[Delta][p$119144, p$119145]*
        metric\[Delta][p$119146, p$119147]*timevec[h$119148]*
        PD[-p$119144][PD[-h$119148][pertF[LI[1], -p$119147]]]*
        PD[-p$119146][pertF[LI[1], -p$119145]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119150, p$119151]*metric\[Delta][p$119152, 
         p$119153]*timevec[h$119154]*PD[-p$119150][PD[-h$119154][
          pertS[LI[1], -p$119153]]]*PD[-p$119152][pertF[LI[1], -p$119151]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119156, p$119157]*
        metric\[Delta][p$119158, p$119159]*timevec[h$119160]*
        timevec[h$119161]*PD[-p$119156][PD[-h$119161][PD[-h$119160][
           pertF[LI[1], -p$119159]]]]*PD[-p$119158][pertF[LI[1], 
          -p$119157]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119163, p$119164]*
        pertS[LI[1], -p$119163]*PD[-p$119164][pertphi[LI[1]]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119166, p$119167]*
        pertS[LI[1], -p$119167]*PD[-p$119166][pertphi[LI[1]]]])/scale[]^2 + 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119169, p$119170]*
        PD[-p$119169][pertB[LI[1]]]*PD[-p$119170][pertphi[LI[1]]]])/
     scale[]^2 + (2*hubbleC[]*Scalar[metric\[Delta][p$119172, p$119173]*
        PD[-p$119172][pertphi[LI[1]]]*PD[-p$119173][pertB[LI[1]]]])/
     scale[]^2 + (12*Scalar[metric\[Delta][p$119175, p$119176]*
        PD[-p$119175][pertphi[LI[1]]]*PD[-p$119176][pertphi[LI[1]]]])/
     scale[]^2 - (14*hubbleC[]*Scalar[metric\[Delta][p$119178, p$119179]*
        pertS[LI[1], -p$119178]*PD[-p$119179][pertpsi[LI[1]]]])/scale[]^2 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119181, p$119182]*
        pertS[LI[1], -p$119182]*PD[-p$119181][pertpsi[LI[1]]]])/scale[]^2 + 
    (14*hubbleC[]*Scalar[metric\[Delta][p$119184, p$119185]*
        PD[-p$119184][pertB[LI[1]]]*PD[-p$119185][pertpsi[LI[1]]]])/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119187, p$119188]*
        PD[-p$119187][pertpsi[LI[1]]]*PD[-p$119188][pertB[LI[1]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119190, p$119191]*
        PD[-p$119190][pertphi[LI[1]]]*PD[-p$119191][pertpsi[LI[1]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119193, p$119194]*
        PD[-p$119193][pertpsi[LI[1]]]*PD[-p$119194][pertphi[LI[1]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119196, p$119197]*
        PD[-p$119196][pertpsi[LI[1]]]*PD[-p$119197][pertpsi[LI[1]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119199, p$119200]*
        PD[-p$119199][pertpsi[LI[1]]]*PD[-p$119200][pertpsi[LI[1]]]])/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119202, p$119203]*
        metric\[Delta][p$119204, p$119205]*perth[LI[1], -p$119202, -p$119204]*
        PD[-p$119205][pertS[LI[1], -p$119203]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119207, p$119208]*metric\[Delta][p$119209, 
         p$119210]*timevec[h$119211]*PD[-h$119211][perth[LI[1], -p$119208, 
          -p$119210]]*PD[-p$119209][pertS[LI[1], -p$119207]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119213, p$119214]*
        metric\[Delta][p$119215, p$119216]*perth[LI[1], -p$119213, -p$119216]*
        PD[-p$119215][pertS[LI[1], -p$119214]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119218, p$119219]*metric\[Delta][p$119220, 
         p$119221]*timevec[h$119222]*PD[-h$119222][PD[-p$119221][
          pertF[LI[1], -p$119218]]]*PD[-p$119220][pertS[LI[1], -p$119219]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$119224, p$119225]*
        metric\[Delta][p$119226, p$119227]*timevec[h$119228]*
        PD[-h$119228][PD[-p$119227][PD[-p$119224][pertE[LI[1]]]]]*
        PD[-p$119226][pertS[LI[1], -p$119225]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119230, p$119231]*metric\[Delta][p$119232, 
         p$119233]*timevec[h$119234]*PD[-p$119230][PD[-h$119234][
          pertF[LI[1], -p$119233]]]*PD[-p$119232][pertS[LI[1], -p$119231]]])/
     scale[]^2 + (6*hubbleC[]*Scalar[metric\[Delta][p$119236, p$119237]*
        pertS[LI[1], -p$119237]*timevec[h$119238]*PD[-p$119236][
         PD[-h$119238][pertB[LI[1]]]]])/scale[]^2 - 
    (6*hubbleC[]*Scalar[metric\[Delta][p$119240, p$119241]*timevec[h$119242]*
        PD[-p$119240][PD[-h$119242][pertB[LI[1]]]]*PD[-p$119241][
         pertB[LI[1]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119244, p$119245]*timevec[h$119246]*
        PD[-p$119244][PD[-h$119246][pertB[LI[1]]]]*PD[-p$119245][
         pertphi[LI[1]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119248, p$119249]*metric\[Delta][p$119250, 
         p$119251]*timevec[h$119252]*timevec[h$119253]*
        PD[-h$119253][perth[LI[1], -p$119249, -p$119251]]*
        PD[-p$119250][PD[-h$119252][pertF[LI[1], -p$119248]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119255, p$119256]*metric\[Delta][p$119257, 
         p$119258]*timevec[h$119259]*timevec[h$119260]*
        PD[-p$119255][PD[-h$119260][pertF[LI[1], -p$119258]]]*
        PD[-p$119257][PD[-h$119259][pertF[LI[1], -p$119256]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119262, p$119263]*metric\[Delta][p$119264, 
         p$119265]*timevec[h$119266]*timevec[h$119267]*
        PD[-h$119266][PD[-p$119265][pertF[LI[1], -p$119262]]]*
        PD[-p$119264][PD[-h$119267][pertF[LI[1], -p$119263]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$119269, p$119270]*metric\[Delta][p$119271, 
         p$119272]*timevec[h$119273]*timevec[h$119274]*
        PD[-h$119273][PD[-p$119272][PD[-p$119269][pertE[LI[1]]]]]*
        PD[-p$119271][PD[-h$119274][pertF[LI[1], -p$119270]]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119276, p$119277]*pertphi[LI[1]]*
        PD[-p$119276][PD[-p$119277][pertB[LI[1]]]]])/scale[]^2 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119279, p$119280]*pertpsi[LI[1]]*
        PD[-p$119279][PD[-p$119280][pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119282, p$119283]*metric\[Delta][p$119284, 
         p$119285]*timevec[h$119286]*PD[-h$119286][perth[LI[1], -p$119283, 
          -p$119285]]*PD[-p$119284][PD[-p$119282][pertB[LI[1]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119288, p$119289]*
        timevec[h$119290]*PD[-h$119290][pertpsi[LI[1]]]*
        PD[-p$119288][PD[-p$119289][pertB[LI[1]]]]])/scale[]^2 - 
    (hubbleC[]*Scalar[metric\[Delta][p$119292, p$119293]*
        PD[-p$119292][PD[-p$119293][pertB[LI[2]]]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119295, p$119296]*
        metric\[Delta][p$119297, p$119298]*timevec[h$119299]*
        PD[-h$119299][perth[LI[1], -p$119296, -p$119298]]*
        PD[-p$119297][PD[-p$119295][pertE[LI[1]]]]])/scale[]^2 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119301, p$119302]*timevec[h$119303]*
        PD[-h$119303][pertphi[LI[1]]]*PD[-p$119301][PD[-p$119302][
          pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119305, p$119306]*metric\[Delta][p$119307, 
         p$119308]*timevec[h$119309]*timevec[h$119310]*
        PD[-h$119310][PD[-h$119309][perth[LI[1], -p$119306, -p$119308]]]*
        PD[-p$119307][PD[-p$119305][pertE[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119312, p$119313]*timevec[h$119314]*
        timevec[h$119315]*PD[-h$119315][PD[-h$119314][pertphi[LI[1]]]]*
        PD[-p$119312][PD[-p$119313][pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119317, p$119318]*pertphi[LI[1]]*
        PD[-p$119317][PD[-p$119318][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119320, p$119321]*pertpsi[LI[1]]*
        PD[-p$119320][PD[-p$119321][pertpsi[LI[1]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$119323, p$119324]*PD[-p$119323][
        PD[-p$119324][pertpsi[LI[2]]]]]/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119326, p$119327]*pertphi[LI[1]]*
        timevec[h$119328]*PD[-p$119326][PD[-p$119327][PD[-h$119328][
           pertB[LI[1]]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119330, p$119331]*pertpsi[LI[1]]*
        timevec[h$119332]*PD[-p$119330][PD[-p$119331][PD[-h$119332][
           pertB[LI[1]]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$119334, p$119335]*timevec[h$119336]*
       PD[-p$119334][PD[-p$119335][PD[-h$119336][pertB[LI[2]]]]]]/scale[]^2 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119338, p$119339]*pertphi[LI[1]]*
        timevec[h$119340]*PD[-p$119338][PD[-p$119339][PD[-h$119340][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119342, p$119343]*pertpsi[LI[1]]*
        timevec[h$119344]*PD[-p$119342][PD[-p$119343][PD[-h$119344][
           pertE[LI[1]]]]]])/scale[]^2 + 
    (hubbleC[]*Scalar[metric\[Delta][p$119346, p$119347]*timevec[h$119348]*
        PD[-p$119346][PD[-p$119347][PD[-h$119348][pertE[LI[2]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$119350, p$119351]*
        metric\[Delta][p$119352, p$119353]*timevec[h$119354]*
        timevec[h$119355]*PD[-h$119354][perth[LI[1], -p$119351, -p$119353]]*
        PD[-p$119352][PD[-p$119350][PD[-h$119355][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$119357, p$119358]*
        timevec[h$119359]*timevec[h$119360]*PD[-h$119359][pertphi[LI[1]]]*
        PD[-p$119357][PD[-p$119358][PD[-h$119360][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119362, p$119363]*
        timevec[h$119364]*timevec[h$119365]*PD[-h$119364][pertpsi[LI[1]]]*
        PD[-p$119362][PD[-p$119363][PD[-h$119365][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$119367, p$119368]*pertphi[LI[1]]*
        timevec[h$119369]*timevec[h$119370]*PD[-p$119367][
         PD[-p$119368][PD[-h$119370][PD[-h$119369][pertE[LI[1]]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$119372, p$119373]*pertpsi[LI[1]]*
        timevec[h$119374]*timevec[h$119375]*PD[-p$119372][
         PD[-p$119373][PD[-h$119375][PD[-h$119374][pertE[LI[1]]]]]]])/
     scale[]^2 + Scalar[metric\[Delta][p$119377, p$119378]*timevec[h$119379]*
       timevec[h$119380]*PD[-p$119377][PD[-p$119378][PD[-h$119380][
          PD[-h$119379][pertE[LI[2]]]]]]]/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119382, p$119383]*metric\[Delta][p$119384, 
         p$119385]*timevec[h$119386]*PD[-h$119386][PD[-p$119385][
          pertF[LI[1], -p$119382]]]*PD[-p$119384][PD[-p$119383][
          pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119388, p$119389]*metric\[Delta][p$119390, 
         p$119391]*timevec[h$119392]*PD[-h$119392][PD[-p$119391][
          PD[-p$119388][pertE[LI[1]]]]]*PD[-p$119390][PD[-p$119389][
          pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119394, p$119395]*metric\[Delta][p$119396, 
         p$119397]*PD[-p$119394][PD[-p$119395][pertB[LI[1]]]]*
        PD[-p$119396][PD[-p$119397][pertB[LI[1]]]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119399, p$119400]*
        metric\[Delta][p$119401, p$119402]*timevec[h$119403]*
        PD[-h$119403][PD[-p$119402][pertF[LI[1], -p$119399]]]*
        PD[-p$119401][PD[-p$119400][pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119405, p$119406]*metric\[Delta][p$119407, 
         p$119408]*timevec[h$119409]*PD[-h$119409][PD[-p$119408][
          pertS[LI[1], -p$119405]]]*PD[-p$119407][PD[-p$119406][
          pertE[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119411, p$119412]*metric\[Delta][p$119413, 
         p$119414]*timevec[h$119415]*PD[-h$119415][PD[-p$119414][
          PD[-p$119411][pertB[LI[1]]]]]*PD[-p$119413][PD[-p$119412][
          pertE[LI[1]]]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119417, p$119418]*
        metric\[Delta][p$119419, p$119420]*timevec[h$119421]*
        PD[-h$119421][PD[-p$119420][PD[-p$119417][pertE[LI[1]]]]]*
        PD[-p$119419][PD[-p$119418][pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119423, p$119424]*metric\[Delta][p$119425, 
         p$119426]*timevec[h$119427]*timevec[h$119428]*
        PD[-h$119428][PD[-h$119427][PD[-p$119426][pertF[LI[1], -p$119423]]]]*
        PD[-p$119425][PD[-p$119424][pertE[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119430, p$119431]*metric\[Delta][p$119432, 
         p$119433]*timevec[h$119434]*timevec[h$119435]*
        PD[-h$119435][PD[-h$119434][PD[-p$119433][PD[-p$119430][
            pertE[LI[1]]]]]]*PD[-p$119432][PD[-p$119431][pertE[LI[1]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119437, p$119438]*
        metric\[Delta][p$119439, p$119440]*timevec[h$119441]*
        PD[-h$119441][pertS[LI[1], -p$119438]]*PD[-p$119439][
         PD[-p$119440][pertF[LI[1], -p$119437]]]])/scale[]^2 - 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119443, p$119444]*
        metric\[Delta][p$119445, p$119446]*pertS[LI[1], -p$119443]*
        PD[-p$119445][PD[-p$119446][pertF[LI[1], -p$119444]]]])/scale[]^2 + 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119448, p$119449]*
        metric\[Delta][p$119450, p$119451]*PD[-p$119448][pertB[LI[1]]]*
        PD[-p$119450][PD[-p$119451][pertF[LI[1], -p$119449]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119453, p$119454]*metric\[Delta][p$119455, 
         p$119456]*PD[-p$119453][pertpsi[LI[1]]]*PD[-p$119455][
         PD[-p$119456][pertF[LI[1], -p$119454]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119458, p$119459]*metric\[Delta][p$119460, 
         p$119461]*timevec[h$119462]*PD[-p$119458][PD[-h$119462][
          pertB[LI[1]]]]*PD[-p$119460][PD[-p$119461][pertF[LI[1], 
           -p$119459]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$119464, p$119465]*metric\[Delta][p$119466, 
         p$119467]*PD[-p$119464][PD[-p$119465][pertE[LI[1]]]]*
        PD[-p$119466][PD[-p$119467][pertphi[LI[1]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119469, p$119470]*metric\[Delta][p$119471, 
         p$119472]*pertS[LI[1], -p$119469]*PD[-p$119471][
         PD[-p$119472][pertS[LI[1], -p$119470]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119474, p$119475]*metric\[Delta][p$119476, 
         p$119477]*PD[-p$119474][pertB[LI[1]]]*PD[-p$119476][
         PD[-p$119477][pertS[LI[1], -p$119475]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119479, p$119480]*metric\[Delta][p$119481, 
         p$119482]*timevec[h$119483]*PD[-h$119483][pertS[LI[1], -p$119480]]*
        PD[-p$119481][PD[-p$119482][PD[-p$119479][pertE[LI[1]]]]]])/
     scale[]^2 - (10*hubbleC[]*Scalar[metric\[Delta][p$119485, p$119486]*
        metric\[Delta][p$119487, p$119488]*pertS[LI[1], -p$119485]*
        PD[-p$119487][PD[-p$119488][PD[-p$119486][pertE[LI[1]]]]]])/
     scale[]^2 + (10*hubbleC[]*Scalar[metric\[Delta][p$119490, p$119491]*
        metric\[Delta][p$119492, p$119493]*PD[-p$119490][pertB[LI[1]]]*
        PD[-p$119492][PD[-p$119493][PD[-p$119491][pertE[LI[1]]]]]])/
     scale[]^2 - (8*Scalar[metric\[Delta][p$119495, p$119496]*
        metric\[Delta][p$119497, p$119498]*PD[-p$119495][pertphi[LI[1]]]*
        PD[-p$119497][PD[-p$119498][PD[-p$119496][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119500, p$119501]*
        metric\[Delta][p$119502, p$119503]*PD[-p$119500][pertpsi[LI[1]]]*
        PD[-p$119502][PD[-p$119503][PD[-p$119501][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119505, p$119506]*
        metric\[Delta][p$119507, p$119508]*timevec[h$119509]*
        PD[-p$119505][PD[-h$119509][pertB[LI[1]]]]*PD[-p$119507][
         PD[-p$119508][PD[-p$119506][pertE[LI[1]]]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$119511, p$119512]*metric\[Delta][p$119513, 
        p$119514]*metric\[Delta][p$119515, p$119516]*
       PD[-p$119513][perth[LI[1], -p$119511, -p$119516]]*
       PD[-p$119515][perth[LI[1], -p$119512, -p$119514]]]/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119518, p$119519]*metric\[Delta][p$119520, 
         p$119521]*timevec[h$119522]*timevec[h$119523]*
        PD[-h$119523][perth[LI[1], -p$119518, -p$119520]]*
        PD[-p$119521][PD[-h$119522][pertF[LI[1], -p$119519]]]])/scale[]^2 - 
    Scalar[metric\[Delta][p$119525, p$119526]*metric\[Delta][p$119527, 
        p$119528]*timevec[h$119529]*timevec[h$119530]*
       PD[-p$119525][PD[-h$119530][pertF[LI[1], -p$119527]]]*
       PD[-p$119528][PD[-h$119529][pertF[LI[1], -p$119526]]]]/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119532, p$119533]*
        metric\[Delta][p$119534, p$119535]*timevec[h$119536]*
        PD[-p$119532][PD[-h$119536][pertF[LI[1], -p$119534]]]*
        PD[-p$119535][pertF[LI[1], -p$119533]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119538, p$119539]*metric\[Delta][p$119540, 
         p$119541]*timevec[h$119542]*PD[-p$119538][PD[-h$119542][
          pertS[LI[1], -p$119540]]]*PD[-p$119541][pertF[LI[1], -p$119539]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119544, p$119545]*
        metric\[Delta][p$119546, p$119547]*timevec[h$119548]*
        timevec[h$119549]*PD[-p$119544][PD[-h$119549][PD[-h$119548][
           pertF[LI[1], -p$119546]]]]*PD[-p$119547][pertF[LI[1], 
          -p$119545]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119551, p$119552]*
        metric\[Delta][p$119553, p$119554]*timevec[h$119555]*
        PD[-h$119555][perth[LI[1], -p$119551, -p$119553]]*
        PD[-p$119554][PD[-p$119552][pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119557, p$119558]*metric\[Delta][p$119559, 
         p$119560]*timevec[h$119561]*timevec[h$119562]*
        PD[-h$119562][PD[-h$119561][perth[LI[1], -p$119557, -p$119559]]]*
        PD[-p$119560][PD[-p$119558][pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119564, p$119565]*metric\[Delta][p$119566, 
         p$119567]*metric\[Delta][p$119568, p$119569]*
        PD[-p$119564][perth[LI[1], -p$119567, -p$119569]]*
        PD[-p$119568][PD[-p$119566][pertF[LI[1], -p$119565]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119571, p$119572]*metric\[Delta][p$119573, 
         p$119574]*metric\[Delta][p$119575, p$119576]*
        PD[-p$119573][PD[-p$119574][pertF[LI[1], -p$119572]]]*
        PD[-p$119575][PD[-p$119576][pertF[LI[1], -p$119571]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119578, p$119579]*metric\[Delta][p$119580, 
         p$119581]*metric\[Delta][p$119582, p$119583]*
        PD[-p$119580][pertF[LI[1], -p$119579]]*PD[-p$119582][
         PD[-p$119583][perth[LI[1], -p$119578, -p$119581]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119585, p$119586]*metric\[Delta][p$119587, 
         p$119588]*metric\[Delta][p$119589, p$119590]*
        PD[-p$119587][PD[-p$119586][pertE[LI[1]]]]*PD[-p$119589][
         PD[-p$119590][perth[LI[1], -p$119585, -p$119588]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119592, p$119593]*metric\[Delta][p$119594, 
         p$119595]*metric\[Delta][p$119596, p$119597]*perth[LI[1], -p$119592, 
         -p$119594]*PD[-p$119596][PD[-p$119597][perth[LI[1], -p$119593, 
           -p$119595]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119599, p$119600]*metric\[Delta][p$119601, 
         p$119602]*metric\[Delta][p$119603, p$119604]*
        PD[-p$119601][PD[-p$119602][pertF[LI[1], -p$119600]]]*
        PD[-p$119603][PD[-p$119604][PD[-p$119599][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119606, p$119607]*
        metric\[Delta][p$119608, p$119609]*metric\[Delta][p$119610, p$119611]*
        PD[-p$119608][PD[-p$119606][PD[-p$119607][pertE[LI[1]]]]]*
        PD[-p$119610][PD[-p$119611][PD[-p$119609][pertE[LI[1]]]]]])/
     scale[]^2 - (10*hubbleC[]*Scalar[metric\[Delta][p$119613, p$119614]*
        metric\[Delta][p$119615, p$119616]*PD[-p$119615][
         pertF[LI[1], -p$119614]]*PD[-p$119616][pertS[LI[1], -p$119613]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119618, p$119619]*
        metric\[Delta][p$119620, p$119621]*PD[-p$119620][
         pertS[LI[1], -p$119619]]*PD[-p$119621][pertS[LI[1], -p$119618]]])/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119623, p$119624]*
        metric\[Delta][p$119625, p$119626]*PD[-p$119624][
         pertF[LI[1], -p$119626]]*PD[-p$119625][pertS[LI[1], -p$119623]]])/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119628, p$119629]*
        metric\[Delta][p$119630, p$119631]*PD[-p$119630][
         pertS[LI[1], -p$119628]]*PD[-p$119631][pertF[LI[1], -p$119629]]])/
     scale[]^2 + Scalar[metric\[Delta][p$119633, p$119634]*
       metric\[Delta][p$119635, p$119636]*PD[-p$119634][
        pertS[LI[1], -p$119636]]*PD[-p$119635][pertS[LI[1], -p$119633]]]/
     scale[]^2 - Scalar[metric\[Delta][p$119638, p$119639]*
       metric\[Delta][p$119640, p$119641]*PD[-p$119640][
        pertS[LI[1], -p$119638]]*PD[-p$119641][pertS[LI[1], -p$119639]]]/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119643, p$119644]*
        metric\[Delta][p$119645, p$119646]*perth[LI[1], -p$119644, -p$119646]*
        timevec[h$119647]*PD[-p$119645][PD[-h$119647][pertF[LI[1], 
           -p$119643]]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119649, p$119650]*
        metric\[Delta][p$119651, p$119652]*timevec[h$119653]*
        PD[-p$119651][PD[-h$119653][pertF[LI[1], -p$119649]]]*
        PD[-p$119652][PD[-p$119650][pertE[LI[1]]]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119655, p$119656]*
        metric\[Delta][p$119657, p$119658]*timevec[h$119659]*
        PD[-p$119657][PD[-h$119659][pertF[LI[1], -p$119655]]]*
        PD[-p$119658][pertF[LI[1], -p$119656]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119661, p$119662]*metric\[Delta][p$119663, 
         p$119664]*perth[LI[1], -p$119662, -p$119664]*timevec[h$119665]*
        PD[-p$119663][PD[-h$119665][pertS[LI[1], -p$119661]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119667, p$119668]*metric\[Delta][p$119669, 
         p$119670]*timevec[h$119671]*PD[-p$119669][PD[-h$119671][
          pertS[LI[1], -p$119667]]]*PD[-p$119670][PD[-p$119668][
          pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119673, p$119674]*metric\[Delta][p$119675, 
         p$119676]*timevec[h$119677]*PD[-p$119675][PD[-h$119677][
          pertS[LI[1], -p$119673]]]*PD[-p$119676][pertF[LI[1], -p$119674]]])/
     scale[]^2 - Scalar[metric\[Delta][p$119679, p$119680]*
       metric\[Delta][p$119681, p$119682]*timevec[h$119683]*timevec[h$119684]*
       PD[-p$119681][PD[-h$119684][pertF[LI[1], -p$119679]]]*
       PD[-p$119682][PD[-h$119683][pertF[LI[1], -p$119680]]]]/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119686, p$119687]*metric\[Delta][p$119688, 
         p$119689]*perth[LI[1], -p$119687, -p$119689]*timevec[h$119690]*
        timevec[h$119691]*PD[-p$119688][PD[-h$119691][PD[-h$119690][
           pertF[LI[1], -p$119686]]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119693, p$119694]*metric\[Delta][p$119695, 
         p$119696]*timevec[h$119697]*timevec[h$119698]*
        PD[-p$119695][PD[-h$119698][PD[-h$119697][pertF[LI[1], -p$119693]]]]*
        PD[-p$119696][PD[-p$119694][pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119700, p$119701]*metric\[Delta][p$119702, 
         p$119703]*timevec[h$119704]*timevec[h$119705]*
        PD[-p$119702][PD[-h$119705][PD[-h$119704][pertF[LI[1], -p$119700]]]]*
        PD[-p$119703][pertF[LI[1], -p$119701]]])/scale[]^2 + 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119707, p$119708]*
        metric\[Delta][p$119709, p$119710]*PD[-p$119709][
         pertF[LI[1], -p$119708]]*PD[-p$119710][PD[-p$119707][
          pertB[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119712, p$119713]*metric\[Delta][p$119714, 
         p$119715]*PD[-p$119714][pertS[LI[1], -p$119713]]*
        PD[-p$119715][PD[-p$119712][pertB[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119717, p$119718]*metric\[Delta][p$119719, 
         p$119720]*PD[-p$119719][PD[-p$119718][pertB[LI[1]]]]*
        PD[-p$119720][PD[-p$119717][pertB[LI[1]]]]])/scale[]^2 - 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119722, p$119723]*
        metric\[Delta][p$119724, p$119725]*PD[-p$119724][
         pertS[LI[1], -p$119723]]*PD[-p$119725][PD[-p$119722][
          pertE[LI[1]]]]])/scale[]^2 + 
    (20*hubbleC[]*Scalar[metric\[Delta][p$119727, p$119728]*
        metric\[Delta][p$119729, p$119730]*PD[-p$119729][
         PD[-p$119728][pertB[LI[1]]]]*PD[-p$119730][PD[-p$119727][
          pertE[LI[1]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$119732, p$119733]*metric\[Delta][p$119734, 
         p$119735]*PD[-p$119734][pertF[LI[1], -p$119733]]*
        PD[-p$119735][PD[-p$119732][pertphi[LI[1]]]]])/scale[]^2 - 
    (8*Scalar[metric\[Delta][p$119737, p$119738]*metric\[Delta][p$119739, 
         p$119740]*PD[-p$119739][PD[-p$119738][pertE[LI[1]]]]*
        PD[-p$119740][PD[-p$119737][pertphi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119742, p$119743]*metric\[Delta][p$119744, 
         p$119745]*PD[-p$119744][pertF[LI[1], -p$119743]]*
        PD[-p$119745][PD[-p$119742][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119747, p$119748]*metric\[Delta][p$119749, 
         p$119750]*PD[-p$119749][PD[-p$119748][pertE[LI[1]]]]*
        PD[-p$119750][PD[-p$119747][pertpsi[LI[1]]]]])/scale[]^2 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119752, p$119753]*
        metric\[Delta][p$119754, p$119755]*perth[LI[1], -p$119753, -p$119755]*
        PD[-p$119754][PD[-p$119752][pertB[LI[1]]]]])/scale[]^2 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119757, p$119758]*
        metric\[Delta][p$119759, p$119760]*PD[-p$119759][
         PD[-p$119757][pertE[LI[1]]]]*PD[-p$119760][PD[-p$119758][
          pertB[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119762, p$119763]*metric\[Delta][p$119764, 
         p$119765]*perth[LI[1], -p$119763, -p$119765]*
        PD[-p$119764][PD[-p$119762][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119767, p$119768]*metric\[Delta][p$119769, 
         p$119770]*PD[-p$119769][PD[-p$119767][pertpsi[LI[1]]]]*
        PD[-p$119770][PD[-p$119768][pertE[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119772, p$119773]*metric\[Delta][p$119774, 
         p$119775]*perth[LI[1], -p$119773, -p$119775]*timevec[h$119776]*
        PD[-p$119774][PD[-p$119772][PD[-h$119776][pertB[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$119778, p$119779]*
        metric\[Delta][p$119780, p$119781]*timevec[h$119782]*
        PD[-p$119780][PD[-p$119778][PD[-h$119782][pertB[LI[1]]]]]*
        PD[-p$119781][PD[-p$119779][pertE[LI[1]]]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119784, p$119785]*
        metric\[Delta][p$119786, p$119787]*perth[LI[1], -p$119785, -p$119787]*
        timevec[h$119788]*PD[-p$119786][PD[-p$119784][PD[-h$119788][
           pertE[LI[1]]]]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119790, p$119791]*
        metric\[Delta][p$119792, p$119793]*timevec[h$119794]*
        PD[-p$119792][PD[-p$119790][PD[-h$119794][pertE[LI[1]]]]]*
        PD[-p$119793][PD[-p$119791][pertE[LI[1]]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119796, p$119797]*metric\[Delta][p$119798, 
         p$119799]*timevec[h$119800]*timevec[h$119801]*
        PD[-h$119800][perth[LI[1], -p$119797, -p$119799]]*
        PD[-p$119798][PD[-p$119796][PD[-h$119801][pertE[LI[1]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$119803, p$119804]*
        metric\[Delta][p$119805, p$119806]*timevec[h$119807]*
        timevec[h$119808]*PD[-p$119805][PD[-p$119803][PD[-h$119808][
           pertE[LI[1]]]]]*PD[-p$119806][PD[-h$119807][pertF[LI[1], 
           -p$119804]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119810, p$119811]*metric\[Delta][p$119812, 
         p$119813]*timevec[h$119814]*timevec[h$119815]*
        PD[-p$119812][PD[-p$119810][PD[-h$119815][pertE[LI[1]]]]]*
        PD[-p$119813][PD[-p$119811][PD[-h$119814][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119817, p$119818]*
        metric\[Delta][p$119819, p$119820]*perth[LI[1], -p$119818, -p$119820]*
        timevec[h$119821]*timevec[h$119822]*PD[-p$119819][
         PD[-p$119817][PD[-h$119822][PD[-h$119821][pertE[LI[1]]]]]]])/
     scale[]^2 - (4*Scalar[metric\[Delta][p$119824, p$119825]*
        metric\[Delta][p$119826, p$119827]*timevec[h$119828]*
        timevec[h$119829]*PD[-p$119826][PD[-p$119824][PD[-h$119829][
           PD[-h$119828][pertE[LI[1]]]]]]*PD[-p$119827][
         PD[-p$119825][pertE[LI[1]]]]])/scale[]^2 + 
    (10*hubbleC[]*Scalar[metric\[Delta][p$119831, p$119832]*
        metric\[Delta][p$119833, p$119834]*perth[LI[1], -p$119831, -p$119833]*
        PD[-p$119834][PD[-p$119832][pertB[LI[1]]]]])/scale[]^2 + 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119836, p$119837]*
        metric\[Delta][p$119838, p$119839]*PD[-p$119838][
         PD[-p$119836][pertB[LI[1]]]]*PD[-p$119839][pertF[LI[1], 
          -p$119837]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119841, p$119842]*
        metric\[Delta][p$119843, p$119844]*PD[-p$119843][
         PD[-p$119841][pertE[LI[1]]]]*PD[-p$119844][pertS[LI[1], 
          -p$119842]]])/scale[]^2 - 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119846, p$119847]*
        metric\[Delta][p$119848, p$119849]*pertS[LI[1], -p$119847]*
        PD[-p$119848][PD[-p$119849][pertF[LI[1], -p$119846]]]])/scale[]^2 - 
    (2*Scalar[metric\[Delta][p$119851, p$119852]*metric\[Delta][p$119853, 
         p$119854]*timevec[h$119855]*PD[-h$119855][pertS[LI[1], -p$119852]]*
        PD[-p$119853][PD[-p$119854][pertF[LI[1], -p$119851]]]])/scale[]^2 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119857, p$119858]*
        metric\[Delta][p$119859, p$119860]*PD[-p$119858][pertB[LI[1]]]*
        PD[-p$119859][PD[-p$119860][pertF[LI[1], -p$119857]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119862, p$119863]*metric\[Delta][p$119864, 
         p$119865]*PD[-p$119863][pertpsi[LI[1]]]*PD[-p$119864][
         PD[-p$119865][pertF[LI[1], -p$119862]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119867, p$119868]*metric\[Delta][p$119869, 
         p$119870]*timevec[h$119871]*PD[-p$119868][PD[-h$119871][
          pertB[LI[1]]]]*PD[-p$119869][PD[-p$119870][pertF[LI[1], 
           -p$119867]]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119873, p$119874]*metric\[Delta][p$119875, 
         p$119876]*perth[LI[1], -p$119873, -p$119875]*
        PD[-p$119876][PD[-p$119874][pertphi[LI[1]]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119878, p$119879]*metric\[Delta][p$119880, 
         p$119881]*perth[LI[1], -p$119878, -p$119880]*
        PD[-p$119881][PD[-p$119879][pertpsi[LI[1]]]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119883, p$119884]*metric\[Delta][p$119885, 
         p$119886]*PD[-p$119885][PD[-p$119883][pertpsi[LI[1]]]]*
        PD[-p$119886][pertF[LI[1], -p$119884]]])/scale[]^2 + 
    (4*Scalar[metric\[Delta][p$119888, p$119889]*metric\[Delta][p$119890, 
         p$119891]*timevec[h$119892]*PD[-p$119890][PD[-p$119888][
          PD[-h$119892][pertB[LI[1]]]]]*PD[-p$119891][
         pertF[LI[1], -p$119889]]])/scale[]^2 - 
    (4*hubbleC[]*Scalar[metric\[Delta][p$119894, p$119895]*
        metric\[Delta][p$119896, p$119897]*timevec[h$119898]*
        PD[-p$119896][PD[-p$119894][PD[-h$119898][pertE[LI[1]]]]]*
        PD[-p$119897][pertF[LI[1], -p$119895]]])/scale[]^2 - 
    (4*Scalar[metric\[Delta][p$119900, p$119901]*metric\[Delta][p$119902, 
         p$119903]*timevec[h$119904]*timevec[h$119905]*
        PD[-p$119902][PD[-p$119900][PD[-h$119905][PD[-h$119904][
            pertE[LI[1]]]]]]*PD[-p$119903][pertF[LI[1], -p$119901]]])/
     scale[]^2 - (2*hubbleC[]*Scalar[metric\[Delta][p$119907, p$119908]*
        metric\[Delta][p$119909, p$119910]*pertS[LI[1], -p$119908]*
        PD[-p$119909][PD[-p$119910][PD[-p$119907][pertE[LI[1]]]]]])/
     scale[]^2 - (2*Scalar[metric\[Delta][p$119912, p$119913]*
        metric\[Delta][p$119914, p$119915]*timevec[h$119916]*
        PD[-h$119916][pertS[LI[1], -p$119913]]*PD[-p$119914][
         PD[-p$119915][PD[-p$119912][pertE[LI[1]]]]]])/scale[]^2 + 
    (2*hubbleC[]*Scalar[metric\[Delta][p$119918, p$119919]*
        metric\[Delta][p$119920, p$119921]*PD[-p$119919][pertB[LI[1]]]*
        PD[-p$119920][PD[-p$119921][PD[-p$119918][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119923, p$119924]*
        metric\[Delta][p$119925, p$119926]*PD[-p$119924][pertpsi[LI[1]]]*
        PD[-p$119925][PD[-p$119926][PD[-p$119923][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119928, p$119929]*
        metric\[Delta][p$119930, p$119931]*timevec[h$119932]*
        PD[-p$119929][PD[-h$119932][pertB[LI[1]]]]*PD[-p$119930][
         PD[-p$119931][PD[-p$119928][pertE[LI[1]]]]]])/scale[]^2 + 
    (3*Scalar[metric\[Delta][p$119934, p$119935]*metric\[Delta][p$119936, 
         p$119937]*metric\[Delta][p$119938, p$119939]*
        PD[-p$119938][perth[LI[1], -p$119935, -p$119937]]*
        PD[-p$119939][perth[LI[1], -p$119934, -p$119936]]])/(2*scale[]^2) + 
    (4*Scalar[metric\[Delta][p$119941, p$119942]*metric\[Delta][p$119943, 
         p$119944]*metric\[Delta][p$119945, p$119946]*
        PD[-p$119945][PD[-p$119944][pertF[LI[1], -p$119942]]]*
        PD[-p$119946][perth[LI[1], -p$119941, -p$119943]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119948, p$119949]*metric\[Delta][p$119950, 
         p$119951]*metric\[Delta][p$119952, p$119953]*
        PD[-p$119952][PD[-p$119951][pertF[LI[1], -p$119949]]]*
        PD[-p$119953][PD[-p$119950][pertF[LI[1], -p$119948]]]])/scale[]^2 + 
    (2*Scalar[metric\[Delta][p$119955, p$119956]*metric\[Delta][p$119957, 
         p$119958]*metric\[Delta][p$119959, p$119960]*
        PD[-p$119959][perth[LI[1], -p$119956, -p$119958]]*
        PD[-p$119960][PD[-p$119957][PD[-p$119955][pertE[LI[1]]]]]])/
     scale[]^2 + (4*Scalar[metric\[Delta][p$119962, p$119963]*
        metric\[Delta][p$119964, p$119965]*metric\[Delta][p$119966, p$119967]*
        PD[-p$119966][PD[-p$119965][pertF[LI[1], -p$119963]]]*
        PD[-p$119967][PD[-p$119964][PD[-p$119962][pertE[LI[1]]]]]])/
     scale[]^2 + (2*Scalar[metric\[Delta][p$119969, p$119970]*
        metric\[Delta][p$119971, p$119972]*metric\[Delta][p$119973, p$119974]*
        PD[-p$119973][PD[-p$119972][PD[-p$119970][pertE[LI[1]]]]]*
        PD[-p$119974][PD[-p$119971][PD[-p$119969][pertE[LI[1]]]]]])/
     scale[]^2]}
