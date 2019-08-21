(* ::Package:: *)

(****   Manifolds   ****)


DefManifold[M1, 1, IndexRange[a, h]]
DefManifold[M3, 3, IndexRange[i, p]]
DefManifold[M4, 4, {\[Alpha], \[Beta], \[Eta], \[Lambda], \[Mu], \[Nu], \[Sigma], \[Tau], \[Gamma]}]


(****   Metrics   ****)


DefMetric[-1, metricg[-\[Mu], -\[Nu]], CD, SymbolOfCovD -> {";", "\[EmptyDownTriangle]"},
	PrintAs -> "g", CurvatureRelations->True]
DefMetric[1, metric\[Delta][-i, -j], CDS, SymbolOfCovD -> {";", "\[Del]"},
	PrintAs -> "\[Delta]", FlatMetric -> True]


PrintAs[RiemannCD] ^= "R";
PrintAs[RicciCD] ^= "R";
PrintAs[RicciScalarCD] ^= "R";
PrintAs[EinsteinCD] ^= "G";
PrintAs[ChristoffelCD] ^= "\[CapitalGamma]";


DefMetricPerturbation[metricg, pertmetricg, \[Epsilon]g];
PrintAs[pertmetricg] ^= "\[Delta]g";
DefMetricPerturbation[metric\[Delta], pertmetric\[Delta], \[Epsilon]\[Delta]];


DefTensor[timevec[a], M1, PrintAs -> "t"]


(****   Metric   ****)


DefTensor[scale[], M1, PrintAs -> "a", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleC[], M1, PrintAs -> "\[ScriptCapitalH]", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleP[], M1, PrintAs -> "H", DefInfo -> {"tensor", "background"}]


DefTensor[pertphi[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPhi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpsi[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPsi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertB[LI[order]], {M1, M3}, PrintAs -> "B",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertE[LI[order]], {M1, M3}, PrintAs -> "E",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertS[LI[order], -i], {M1, M3}, PrintAs -> "S",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertF[LI[order], -i], {M1, M3}, PrintAs -> "F",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perth[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertetasync[LI[order]], {M1, M3}, PrintAs -> "\[Eta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perthsync[LI[order]], {M1, M3}, PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertalphasync[LI[order]], {M1, M3}, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Scalar Field   ****)


DefTensor[scalarcov[], M4, PrintAs -> "\[Phi]"]
DefTensorPerturbation[pertscalarcov[LI[order]], scalarcov[], M4, PrintAs -> "\[Delta]\[Phi]"]


DefTensor[scalar[], M1, PrintAs -> "\[Phi]", DefInfo -> {"tensor", "background"}]
DefTensor[pertscalar[LI[order]], {M1, M3}, PrintAs -> "\[Delta]\[Phi]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertV[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(X\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[Xcov[], M4, PrintAs -> "X"]
DefTensorPerturbation[pertXcov[LI[order]], Xcov[], M4, PrintAs -> "\[Delta]X"]


DefTensor[X[], M1, DefInfo -> {"tensor", "background"}]
DefTensor[pertX[LI[order]], {M1, M3}, PrintAs -> "\[Delta]X",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[current[], M1, PrintAs -> "J",
	DefInfo -> {"tensor", "background"}]
DefTensor[shift[], M1, PrintAs -> "S",
	DefInfo -> {"tensor", "background"}]


(****   Matter Field   ****)


DefTensor[stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "T"]


DefTensor[densitycov[], M4, PrintAs -> "\[Rho]"]
DefTensor[pressurecov[], M4, PrintAs -> "p"]
DefTensor[velocitycov[\[Mu]], M4, PrintAs -> "u"]
DefTensor[shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\[Sigma]"]


DefTensorPerturbation[pertdensitycov[LI[order]], densitycov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(m\)]\)"]
DefTensorPerturbation[pertpressurecov[LI[order]], pressurecov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)"]
DefTensorPerturbation[pertvelocitycov[LI[order], \[Mu]], velocitycov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]u\), \(m\)]\)"]
DefTensorPerturbation[pertshearcov[LI[order], -\[Mu], -\[Nu]], shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(m\)]\)"]


DefTensor[density[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(m\)]\)",
	DefInfo -> {"tensor", "background"}]
DefTensor[pressure[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(m\)]\)",
	DefInfo -> {"tensor", "background"}]


DefTensor[pertdensity[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocity[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressure[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshear[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertvelocityvec[LI[order], i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearvec[LI[order], -i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearten[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


(****   k vectors   ****)


DefTensor[kvec[-i], M3, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]
DefTensor[kscal[], M3, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]


(****   Gauge Transformations   ****)


DefTensor[gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]
DefTensorPerturbation[pertgauge[LI[order], \[Mu]], gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]


DefTensor[pertgaugealpha[LI[order]], {M1, M3}, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugebeta[LI[order]], {M1, M3}, PrintAs -> "\[Beta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugegamma[LI[order], -i], {M1, M3}, PrintAs -> "\[Gamma]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Alphas   ****)


DefTensor[densityS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[pressureS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[mass2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaM[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaT[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaMM[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(MM\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaKK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(KK\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaBB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(BB\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaTT[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(TT\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaHH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(HH\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaDEG[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(DEG\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[kinD[], M1, PrintAs -> "D",
	DefInfo -> {"tensor", "building function"}]
DefTensor[cs2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(S\)], \(2\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[ct2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(T\)], \(2\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[Qs[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[Qt[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(T\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[kB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(k\), \(B\)]\)",
	DefInfo -> {"tensor", "building function"}]


(****   Scalar Functions   ****)


DefScalarFunction[G2fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(2\)]\)"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]
DefScalarFunction[G4fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(4\)]\)"]
DefScalarFunction[G5fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(5\)]\)"]


DefScalarFunction[F4fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(4\)]\)"]
DefScalarFunction[F5fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(5\)]\)"]


(****   Sources   ****)


DefTensor[source1[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(1\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source2[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(2\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source3[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(3\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source4[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(4\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source5[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(5\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source6[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(6\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source7[LI[order],-i,-j], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(7\)]\)",
	DefInfo -> {"tensor", "source"}]


DefTensor[source8[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(8\)]\)",
	DefInfo -> {"tensor", "source"}]


DefTensor[source9[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(9\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source10[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(10\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[source11[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(11\)]\)",
	DefInfo -> {"tensor", "source"}]


DefTensor[sourceS[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(S\)]\)",
	DefInfo -> {"tensor", "source"}]
DefTensor[sourceT[LI[order],-i,-j], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(T\)]\)",
	DefInfo -> {"tensor", "source"}]


(****   Tex Correction   ****)


xAct`TexAct`Private`OpenParenthesis[0] := "\\left";
xAct`TexAct`Private`CloseParenthesis[0] := "\\right";
xAct`TexAct`Private`OpenParenthesis[1] := "\\left";
xAct`TexAct`Private`CloseParenthesis[1] := "\\right";
xAct`TexAct`Private`OpenParenthesis[2] := "\\left";
xAct`TexAct`Private`CloseParenthesis[2] := "\\right";
xAct`TexAct`Private`OpenParenthesis[3] := "\\left";
xAct`TexAct`Private`CloseParenthesis[3] := "\\right";
xAct`TexAct`Private`OpenParenthesis[4] := "\\left";
xAct`TexAct`Private`CloseParenthesis[4] := "\\right";
xAct`TexAct`Private`OpenParenthesis[level_Integer?NonNegative] := "\\left";
xAct`TexAct`Private`CloseParenthesis[level_Integer?NonNegative] := "\\right";


Tex[f_?ScalarFunctionQ[vars__]] := Tex[f]


Tex[Derivative[ders__][f_?ScalarFunctionQ][vars__]] := StringInsert[StringDrop[StringJoin[Insert[Flatten[{StringSplit[Tex[f], "_"], Map[StringInsert[#, " ", -1] &, Map[ToString, Flatten[MapThread[Table[#1, {#2}] &, {Map[Tex, {vars}], {ders}}]]]]}], "_{", 2]], -1], "}", -1]


Tex[Lap[expr_]] := "\\nabla^2\\left(" <> Tex[expr] <> "\\right)"


Tex[x_Rational]:="\\frac{"<>ToString[Numerator[x]]<>"}{"<>ToString[Denominator[x]]<>"}"


ExtraSpaceIfBackslash[str_String]:=If[StringFreeQ[str,"\\"],str,StringJoin[str," "]];
TexIndexForm[index_]:=Tex[IndexForm[index]]
(* One index *)
TexUpIndex[index_]:=ExtraSpaceIfBackslash@TexIndexForm@index;
$TexPrintInitialBracesQ=False;
initbraces[]:=If[$TexPrintInitialBracesQ,"{}",""];
(* Main *)
TexIndices[]:=Sequence[];
TexIndices[first_?UpIndexQ,more___]:=StringJoin[initbraces[],"^{",TexUpIndex[first],TexIndicesFromUp[more],"}"];
TexIndices[first_?DownIndexQ,more___]:=StringJoin[initbraces[],"_{",TexUpIndex[ChangeIndex@first],TexIndicesFromDown[more],"}"];
(* Previous index was up *)
TexIndicesFromUp[]:=Sequence[];
TexIndicesFromUp[first_?UpIndexQ,more___]:=StringJoin[TexUpIndex[first],TexIndicesFromUp[more]];
TexIndicesFromUp[first_?DownIndexQ,more___]:=StringJoin["}{}_{",TexUpIndex[ChangeIndex@first],TexIndicesFromDown[more]];
(* Previous index was down *)
TexIndicesFromDown[]:=Sequence[];
TexIndicesFromDown[first_?DownIndexQ,more___]:=StringJoin[TexUpIndex[ChangeIndex@first],TexIndicesFromDown[more]];
TexIndicesFromDown[first_?UpIndexQ,more___]:=StringJoin["}{}^{",TexUpIndex[first],TexIndicesFromUp[more]];
(* With derivative indices in postfix notation *)
TexCovDIndices[post_][first_?UpIndexQ,more___]:=StringJoin["{}^{",post,TexUpIndex[first],TexIndicesFromUp[more],"}"];
TexCovDIndices[post_][first_?DownIndexQ,more___]:=StringJoin["{}_{",post,TexUpIndex[ChangeIndex@first],TexIndicesFromDown[more],"}"];
(* Tensors *)
Tex[tensor_?xTensorQ[LI[1],indices___]]:=StringJoin[Tex[tensor],TexIndices[indices]];


Tex[pertdensity] ^= "\\delta_\\textrm{m}";
Tex[pertvelocity] ^= "v_\\textrm{m}";
Tex[pertpressure] ^= "\\delta p_\\textrm{m}";
Tex[pertshear] ^= "\\sigma_\\textrm{m}";
Tex[pertvelocityvec] ^= "v_\\textrm{m}";
Tex[pertshearvec] ^= "\\sigma_\\textrm{m}";
Tex[pertshearten] ^= "\\sigma_\\textrm{m}";


Tex[pertV] ^= "v_\\textrm{X}";


Tex[densityS] ^= "\\mathcal{E}_\\textrm{S}";
Tex[pressureS] ^= "\\mathcal{P}_\\textrm{S}";


Tex[mass2] ^= "M_*^2";
Tex[alphaM] ^= "\\alpha_\\textrm{M}";
Tex[alphaK] ^= "\\alpha_\\textrm{K}";
Tex[alphaB] ^= "\\alpha_\\textrm{B}";
Tex[alphaT] ^= "\\alpha_\\textrm{T}";
Tex[alphaH] ^= "\\alpha_\\textrm{H}";


Tex[alphaMM] ^= "\\alpha_\\textrm{MM}";
Tex[alphaKK] ^= "\\alpha_\\textrm{KK}";
Tex[alphaBB] ^= "\\alpha_\\textrm{BB}";
Tex[alphaTT] ^= "\\alpha_\\textrm{TT}";
Tex[alphaHH] ^= "\\alpha_\\textrm{HH}";
Tex[alphaDEG] ^= "\\alpha_\\textrm{DEG}";


Tex[cs2] ^= "c_\\textrm{S}^2";
Tex[ct2] ^= "c_\\textrm{T}^2";
Tex[Qs] ^= "Q_\\textrm{S}";
Tex[Qt] ^= "Q_\\textrm{T}";


Tex[source1] ^= "S_1";
Tex[source2] ^= "S_2";
Tex[source3] ^= "S_3";
Tex[source4] ^= "S_4";
Tex[source5] ^= "S_5";
Tex[source6] ^= "S_6";
Tex[source7] ^= "S_7";


Tex[sourceS] ^= "S_\\textrm{S}";
Tex[sourceT] ^= "S_\\textrm{T}";
