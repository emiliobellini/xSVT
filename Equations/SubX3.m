(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pertX[LI[3]]] :> Module[{}, 
   (-6*pertscalar[LI[1]]^2*pprimescalar[]^2*Scalar[pertpsi[LI[1]]] + 
     12*hubbleC[]*pertscalar[LI[1]]^2*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]] - 6*hubbleC[]^2*pertscalar[LI[1]]^2*
      primescalar[]^2*Scalar[pertpsi[LI[1]]] + 3*pprimescalar[]^2*
      Scalar[pertscalar[LI[1]]*pertscalar[LI[2]]] - 
     6*hubbleC[]*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*pertscalar[LI[2]]] + 
     3*hubbleC[]^2*primescalar[]^2*Scalar[pertscalar[LI[1]]*
        pertscalar[LI[2]]] - 12*pprimescalar[]*primescalar[]*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]*timevec[h$17802]*
        PD[-h$17802][pertscalar[LI[1]]]] + 12*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[1]]*timevec[h$17804]*
        PD[-h$17804][pertscalar[LI[1]]]] + 3*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[2]]*timevec[h$17806]*PD[-h$17806][
         pertscalar[LI[1]]]] - 3*hubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[2]]*timevec[h$17808]*PD[-h$17808][
         pertscalar[LI[1]]]] + 3*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]*timevec[h$17810]*PD[-h$17810][
         pertscalar[LI[2]]]] - 3*hubbleC[]*primescalar[]^2*
      Scalar[pertscalar[LI[1]]*timevec[h$17812]*PD[-h$17812][
         pertscalar[LI[2]]]] - 6*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*timevec[h$17814]*timevec[h$17815]*
        PD[-h$17814][pertscalar[LI[1]]]*PD[-h$17815][pertscalar[LI[1]]]] + 
     3*primescalar[]^2*Scalar[timevec[h$17817]*timevec[h$17818]*
        PD[-h$17817][pertscalar[LI[1]]]*PD[-h$17818][pertscalar[LI[2]]]] + 
     6*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$17820, p$17821]*
        pertS[LI[1], -p$17820]*pertscalar[LI[1]]*PD[-p$17821][
         pertscalar[LI[1]]]] - 6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$17823, p$17824]*pertS[LI[1], -p$17823]*
        pertscalar[LI[1]]*PD[-p$17824][pertscalar[LI[1]]]] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17826, p$17827]*
        pertS[LI[1], -p$17826]*timevec[h$17828]*PD[-h$17828][
         pertscalar[LI[1]]]*PD[-p$17827][pertscalar[LI[1]]]] - 
     6*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$17830, p$17831]*
        pertscalar[LI[1]]*PD[-p$17830][pertB[LI[1]]]*
        PD[-p$17831][pertscalar[LI[1]]]] + 6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$17833, p$17834]*pertscalar[LI[1]]*
        PD[-p$17833][pertB[LI[1]]]*PD[-p$17834][pertscalar[LI[1]]]] - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17836, p$17837]*
        timevec[h$17838]*PD[-h$17838][pertscalar[LI[1]]]*
        PD[-p$17836][pertB[LI[1]]]*PD[-p$17837][pertscalar[LI[1]]]] + 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17840, p$17841]*
        metric\[Delta][p$17842, p$17843]*perth[LI[1], -p$17841, -p$17843]*
        PD[-p$17840][pertscalar[LI[1]]]*PD[-p$17842][pertscalar[LI[1]]]] - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17845, p$17846]*pertphi[LI[1]]*
        PD[-p$17845][pertscalar[LI[1]]]*PD[-p$17846][pertscalar[LI[1]]]] - 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17848, p$17849]*
        PD[-p$17848][pertscalar[LI[1]]]*PD[-p$17849][pertscalar[LI[2]]]] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17851, p$17852]*
        metric\[Delta][p$17853, p$17854]*PD[-p$17851][pertF[LI[1], -p$17854]]*
        PD[-p$17852][pertscalar[LI[1]]]*PD[-p$17853][pertscalar[LI[1]]]] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17856, p$17857]*
        metric\[Delta][p$17858, p$17859]*PD[-p$17856][pertscalar[LI[1]]]*
        PD[-p$17858][pertscalar[LI[1]]]*PD[-p$17859][PD[-p$17857][
          pertE[LI[1]]]]] - 24*pertpsi[LI[1]]^2*pprimescalar[]*primescalar[]*
      Scalar[pertscalar[LI[1]]]*scale[] + 24*hubbleC[]*pertpsi[LI[1]]^2*
      primescalar[]^2*Scalar[pertscalar[LI[1]]]*scale[] + 
     6*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[2]]*pertscalar[LI[1]]]*
      scale[] - 6*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[2]]*pertscalar[LI[1]]]*scale[] + 
     6*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$17865, p$17866]*
        pertS[LI[1], -p$17865]*pertS[LI[1], -p$17866]*pertscalar[LI[1]]]*
      scale[] - 6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$17868, p$17869]*pertS[LI[1], -p$17868]*
        pertS[LI[1], -p$17869]*pertscalar[LI[1]]]*scale[] + 
     6*pprimescalar[]*primescalar[]*Scalar[pertpsi[LI[1]]*pertscalar[LI[2]]]*
      scale[] - 6*hubbleC[]*primescalar[]^2*
      Scalar[pertpsi[LI[1]]*pertscalar[LI[2]]]*scale[] - 
     pprimescalar[]*primescalar[]*Scalar[pertscalar[LI[3]]]*scale[] + 
     hubbleC[]*primescalar[]^2*Scalar[pertscalar[LI[3]]]*scale[] - 
     24*pertpsi[LI[1]]^2*primescalar[]^2*Scalar[timevec[h$17875]*
        PD[-h$17875][pertscalar[LI[1]]]]*scale[] + 
     6*primescalar[]^2*Scalar[pertpsi[LI[2]]*timevec[h$17877]*
        PD[-h$17877][pertscalar[LI[1]]]]*scale[] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17879, p$17880]*
        pertS[LI[1], -p$17879]*pertS[LI[1], -p$17880]*timevec[h$17881]*
        PD[-h$17881][pertscalar[LI[1]]]]*scale[] + 
     6*primescalar[]^2*Scalar[pertpsi[LI[1]]*timevec[h$17883]*
        PD[-h$17883][pertscalar[LI[2]]]]*scale[] - 
     primescalar[]^2*Scalar[timevec[h$17885]*PD[-h$17885][pertscalar[LI[3]]]]*
      scale[] - 12*pprimescalar[]*primescalar[]*
      Scalar[metric\[Delta][p$17887, p$17888]*pertS[LI[1], -p$17887]*
        pertscalar[LI[1]]*PD[-p$17888][pertB[LI[1]]]]*scale[] + 
     12*hubbleC[]*primescalar[]^2*Scalar[metric\[Delta][p$17890, p$17891]*
        pertS[LI[1], -p$17890]*pertscalar[LI[1]]*PD[-p$17891][pertB[LI[1]]]]*
      scale[] - 12*primescalar[]^2*Scalar[metric\[Delta][p$17893, p$17894]*
        pertS[LI[1], -p$17893]*timevec[h$17895]*PD[-h$17895][
         pertscalar[LI[1]]]*PD[-p$17894][pertB[LI[1]]]]*scale[] + 
     6*pprimescalar[]*primescalar[]*Scalar[metric\[Delta][p$17897, p$17898]*
        pertscalar[LI[1]]*PD[-p$17897][pertB[LI[1]]]*
        PD[-p$17898][pertB[LI[1]]]]*scale[] - 6*hubbleC[]*primescalar[]^2*
      Scalar[metric\[Delta][p$17900, p$17901]*pertscalar[LI[1]]*
        PD[-p$17900][pertB[LI[1]]]*PD[-p$17901][pertB[LI[1]]]]*scale[] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17903, p$17904]*
        timevec[h$17905]*PD[-h$17905][pertscalar[LI[1]]]*
        PD[-p$17903][pertB[LI[1]]]*PD[-p$17904][pertB[LI[1]]]]*scale[] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17907, p$17908]*
        metric\[Delta][p$17909, p$17910]*perth[LI[1], -p$17908, -p$17910]*
        pertS[LI[1], -p$17907]*PD[-p$17909][pertscalar[LI[1]]]]*scale[] - 
     12*primescalar[]^2*Scalar[metric\[Delta][p$17912, p$17913]*
        pertphi[LI[1]]*pertS[LI[1], -p$17912]*PD[-p$17913][
         pertscalar[LI[1]]]]*scale[] + 12*primescalar[]^2*
      Scalar[metric\[Delta][p$17915, p$17916]*pertpsi[LI[1]]*
        pertS[LI[1], -p$17915]*PD[-p$17916][pertscalar[LI[1]]]]*scale[] - 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17918, p$17919]*
        pertS[LI[2], -p$17918]*PD[-p$17919][pertscalar[LI[1]]]]*scale[] - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17921, p$17922]*
        metric\[Delta][p$17923, p$17924]*perth[LI[1], -p$17922, -p$17924]*
        PD[-p$17921][pertB[LI[1]]]*PD[-p$17923][pertscalar[LI[1]]]]*scale[] + 
     12*primescalar[]^2*Scalar[metric\[Delta][p$17926, p$17927]*
        pertphi[LI[1]]*PD[-p$17926][pertB[LI[1]]]*PD[-p$17927][
         pertscalar[LI[1]]]]*scale[] - 12*primescalar[]^2*
      Scalar[metric\[Delta][p$17929, p$17930]*pertpsi[LI[1]]*
        PD[-p$17929][pertB[LI[1]]]*PD[-p$17930][pertscalar[LI[1]]]]*scale[] + 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17932, p$17933]*
        PD[-p$17932][pertB[LI[2]]]*PD[-p$17933][pertscalar[LI[1]]]]*scale[] - 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17935, p$17936]*
        pertS[LI[1], -p$17935]*PD[-p$17936][pertscalar[LI[2]]]]*scale[] + 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17938, p$17939]*
        PD[-p$17938][pertB[LI[1]]]*PD[-p$17939][pertscalar[LI[2]]]]*scale[] + 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17941, p$17942]*
        metric\[Delta][p$17943, p$17944]*pertS[LI[1], -p$17941]*
        PD[-p$17942][pertF[LI[1], -p$17944]]*PD[-p$17943][pertscalar[LI[1]]]]*
      scale[] - 6*primescalar[]^2*Scalar[metric\[Delta][p$17946, p$17947]*
        metric\[Delta][p$17948, p$17949]*PD[-p$17946][pertB[LI[1]]]*
        PD[-p$17947][pertF[LI[1], -p$17949]]*PD[-p$17948][pertscalar[LI[1]]]]*
      scale[] + 6*primescalar[]^2*Scalar[metric\[Delta][p$17951, p$17952]*
        metric\[Delta][p$17953, p$17954]*pertS[LI[1], -p$17951]*
        PD[-p$17953][pertF[LI[1], -p$17952]]*PD[-p$17954][pertscalar[LI[1]]]]*
      scale[] - 6*primescalar[]^2*Scalar[metric\[Delta][p$17956, p$17957]*
        metric\[Delta][p$17958, p$17959]*PD[-p$17956][pertB[LI[1]]]*
        PD[-p$17958][pertF[LI[1], -p$17957]]*PD[-p$17959][pertscalar[LI[1]]]]*
      scale[] + 12*primescalar[]^2*Scalar[metric\[Delta][p$17961, p$17962]*
        metric\[Delta][p$17963, p$17964]*pertS[LI[1], -p$17961]*
        PD[-p$17963][pertscalar[LI[1]]]*PD[-p$17964][PD[-p$17962][
          pertE[LI[1]]]]]*scale[] - 12*primescalar[]^2*
      Scalar[metric\[Delta][p$17966, p$17967]*metric\[Delta][p$17968, 
         p$17969]*PD[-p$17966][pertB[LI[1]]]*PD[-p$17968][pertscalar[LI[1]]]*
        PD[-p$17969][PD[-p$17967][pertE[LI[1]]]]]*scale[] - 
     24*pertpsi[LI[1]]^3*primescalar[]^2*scale[]^2 + 
     12*primescalar[]^2*Scalar[pertpsi[LI[1]]*pertpsi[LI[2]]]*scale[]^2 - 
     primescalar[]^2*Scalar[pertpsi[LI[3]]]*scale[]^2 + 
     3*primescalar[]^2*Scalar[metric\[Delta][p$17973, p$17974]*
        metric\[Delta][p$17975, p$17976]*perth[LI[1], -p$17974, -p$17976]*
        pertS[LI[1], -p$17973]*pertS[LI[1], -p$17975]]*scale[]^2 - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17978, p$17979]*pertphi[LI[1]]*
        pertS[LI[1], -p$17978]*pertS[LI[1], -p$17979]]*scale[]^2 + 
     12*primescalar[]^2*Scalar[metric\[Delta][p$17981, p$17982]*
        pertpsi[LI[1]]*pertS[LI[1], -p$17981]*pertS[LI[1], -p$17982]]*
      scale[]^2 - 3*primescalar[]^2*Scalar[metric\[Delta][p$17984, p$17985]*
        pertS[LI[1], -p$17984]*pertS[LI[2], -p$17985]]*scale[]^2 - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$17987, p$17988]*
        metric\[Delta][p$17989, p$17990]*perth[LI[1], -p$17988, -p$17990]*
        pertS[LI[1], -p$17987]*PD[-p$17989][pertB[LI[1]]]]*scale[]^2 + 
     12*primescalar[]^2*Scalar[metric\[Delta][p$17992, p$17993]*
        pertphi[LI[1]]*pertS[LI[1], -p$17992]*PD[-p$17993][pertB[LI[1]]]]*
      scale[]^2 - 24*primescalar[]^2*Scalar[metric\[Delta][p$17995, p$17996]*
        pertpsi[LI[1]]*pertS[LI[1], -p$17995]*PD[-p$17996][pertB[LI[1]]]]*
      scale[]^2 + 3*primescalar[]^2*Scalar[metric\[Delta][p$17998, p$17999]*
        pertS[LI[2], -p$17998]*PD[-p$17999][pertB[LI[1]]]]*scale[]^2 + 
     3*primescalar[]^2*Scalar[metric\[Delta][p$18001, p$18002]*
        metric\[Delta][p$18003, p$18004]*perth[LI[1], -p$18002, -p$18004]*
        PD[-p$18001][pertB[LI[1]]]*PD[-p$18003][pertB[LI[1]]]]*scale[]^2 - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$18006, p$18007]*pertphi[LI[1]]*
        PD[-p$18006][pertB[LI[1]]]*PD[-p$18007][pertB[LI[1]]]]*scale[]^2 + 
     12*primescalar[]^2*Scalar[metric\[Delta][p$18009, p$18010]*
        pertpsi[LI[1]]*PD[-p$18009][pertB[LI[1]]]*PD[-p$18010][pertB[LI[1]]]]*
      scale[]^2 + 3*primescalar[]^2*Scalar[metric\[Delta][p$18012, p$18013]*
        pertS[LI[1], -p$18012]*PD[-p$18013][pertB[LI[2]]]]*scale[]^2 - 
     3*primescalar[]^2*Scalar[metric\[Delta][p$18015, p$18016]*
        PD[-p$18015][pertB[LI[1]]]*PD[-p$18016][pertB[LI[2]]]]*scale[]^2 - 
     6*primescalar[]^2*Scalar[metric\[Delta][p$18018, p$18019]*
        metric\[Delta][p$18020, p$18021]*pertS[LI[1], -p$18018]*
        PD[-p$18019][pertF[LI[1], -p$18021]]*PD[-p$18020][pertB[LI[1]]]]*
      scale[]^2 + 6*primescalar[]^2*Scalar[metric\[Delta][p$18023, p$18024]*
        metric\[Delta][p$18025, p$18026]*pertS[LI[1], -p$18023]*
        pertS[LI[1], -p$18025]*PD[-p$18026][pertF[LI[1], -p$18024]]]*
      scale[]^2 - 6*primescalar[]^2*Scalar[metric\[Delta][p$18028, p$18029]*
        metric\[Delta][p$18030, p$18031]*pertS[LI[1], -p$18028]*
        PD[-p$18030][pertB[LI[1]]]*PD[-p$18031][pertF[LI[1], -p$18029]]]*
      scale[]^2 + 6*primescalar[]^2*Scalar[metric\[Delta][p$18033, p$18034]*
        metric\[Delta][p$18035, p$18036]*PD[-p$18033][pertB[LI[1]]]*
        PD[-p$18035][pertB[LI[1]]]*PD[-p$18036][pertF[LI[1], -p$18034]]]*
      scale[]^2 + 6*primescalar[]^2*Scalar[metric\[Delta][p$18038, p$18039]*
        metric\[Delta][p$18040, p$18041]*pertS[LI[1], -p$18038]*
        pertS[LI[1], -p$18040]*PD[-p$18041][PD[-p$18039][pertE[LI[1]]]]]*
      scale[]^2 - 12*primescalar[]^2*Scalar[metric\[Delta][p$18043, p$18044]*
        metric\[Delta][p$18045, p$18046]*pertS[LI[1], -p$18043]*
        PD[-p$18045][pertB[LI[1]]]*PD[-p$18046][PD[-p$18044][pertE[LI[1]]]]]*
      scale[]^2 + 6*primescalar[]^2*Scalar[metric\[Delta][p$18048, p$18049]*
        metric\[Delta][p$18050, p$18051]*PD[-p$18048][pertB[LI[1]]]*
        PD[-p$18050][pertB[LI[1]]]*PD[-p$18051][PD[-p$18049][pertE[LI[1]]]]]*
      scale[]^2)/scale[]^4]}
