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


(****   Tensors   ****)


(****   Metric   ****)


DefConstantSymbol[Mpl,PrintAs->"\!\(\*SubscriptBox[\(M\), \(Pl\)]\)"]


DefMetricPerturbation[metricg, pertmetricg, \[Epsilon]g];
PrintAs[pertmetricg] ^= "\[Delta]g";
DefMetricPerturbation[metric\[Delta], pertmetric\[Delta], \[Epsilon]\[Delta]];


DefTensor[timevec[a], M1, PrintAs -> "t"]


DefTensor[scale[], M4, PrintAs -> "a", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleC[], M4, PrintAs -> "\[ScriptCapitalH]", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleP[], M4, PrintAs -> "H", DefInfo -> {"tensor", "background"}]


DefTensor[pertphi[LI[order]], M4, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPhi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpsi[LI[order]], M4, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPsi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertB[LI[order]], M4, PrintAs -> "B",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertE[LI[order]], M4, PrintAs -> "E",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertS[LI[order], -i], M3, PrintAs -> "S",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertF[LI[order], -i], M3, PrintAs -> "F",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perth[LI[order], -i, -j], M3, Symmetric[{-i, -j}], PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertetasync[LI[order]], M4, PrintAs -> "\[Eta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perthsync[LI[order]], M4, PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertalphasync[LI[order]], M4, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Scalar Field   ****)


DefTensor[scalarcov[], M4, PrintAs -> "\[Phi]"]
DefTensorPerturbation[pertscalarcov[LI[order]], scalarcov[], M4, PrintAs -> "\[Delta]\[Phi]"]


DefTensor[scalar[], M4, PrintAs -> "\[Phi]", DefInfo -> {"tensor", "background"}]
DefTensor[pertscalarpre[LI[order]], M4, PrintAs -> "\[Delta]\[Phi]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertscalar[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(X\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertxi[LI[order]], M4, PrintAs -> "\[Xi]",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[Xcov[], M4, PrintAs -> "X"]
DefTensorPerturbation[pertXcov[LI[order]], Xcov[], M4, PrintAs -> "\[Delta]X"]


DefTensor[X[], M4, DefInfo -> {"tensor", "background"}]
DefTensor[pertX[LI[order]], M4, PrintAs -> "\[Delta]X",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[currentcov[-\[Mu]], M4, PrintAs -> "J"]
DefTensor[shiftcov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(\[Phi]\)]\)"]


DefTensor[current[], M4, PrintAs -> "\[ScriptN]", DefInfo -> {"tensor", "background"}]
DefTensor[shift[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(\[Phi]\)]\)", DefInfo -> {"tensor", "background"}]


(****   Matter Field   ****)


DefScalarFunction[V]


DefTensor[mattercov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[CurlyPhi]\), \(m\)]\)"]
DefTensorPerturbation[pertmattercov[LI[order]], mattercov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[CurlyPhi]\), \(m\)]\)"]


DefTensor[matter[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[CurlyPhi]\), \(m\)]\)", DefInfo -> {"tensor", "background"}]
DefTensor[pertmatter[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[CurlyPhi]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


DefTensor[stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "T"]
DefTensorPerturbation[pertstressenergy[LI[order],-\[Mu], -\[Nu]], stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "\[Delta]T"]


DefTensor[densitycov[], M4, PrintAs -> "\[Rho]"]
DefTensor[pressurecov[], M4, PrintAs -> "p"]
DefTensor[velocitycov[\[Mu]], M4, PrintAs -> "u"]
DefTensor[shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\[Sigma]"]


DefTensorPerturbation[pertdensitycov[LI[order]], densitycov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(m\)]\)"]
DefTensorPerturbation[pertpressurecov[LI[order]], pressurecov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)"]
DefTensorPerturbation[pertvelocitycov[LI[order], \[Mu]], velocitycov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]u\), \(m\)]\)"]
DefTensorPerturbation[pertshearcov[LI[order], -\[Mu], -\[Nu]], shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(m\)]\)"]


DefTensor[density[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(m\)]\)", DefInfo -> {"tensor", "background"}]
DefTensor[pressure[], M4, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(m\)]\)", DefInfo -> {"tensor", "background"}]


DefTensor[pertdensity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressure[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshear[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertvelocityvec[LI[order], i], M3, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearvec[LI[order], -i], M3, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearten[LI[order], -i, -j], M3, Symmetric[{-i, -j}], PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


(****   k vectors   ****)


DefTensor[kvec[-i], M3, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]
DefTensor[kscal[], M4, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]


(****   Gauge Transformations   ****)


DefTensor[gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]
DefTensorPerturbation[pertgauge[LI[order], \[Mu]], gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]


DefTensor[pertgaugealpha[LI[order]], M4, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugebeta[LI[order]], M4, PrintAs -> "\[Beta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugegamma[LI[order], -i], M4, PrintAs -> "\[Gamma]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Parametrization Functions - Scalar   ****)


DefTensor[densityS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[pressureS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[wS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(w\), \(S\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[mass2[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[alphaM[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaK[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaB[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaT[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaH[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[alphaMM[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(MM\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaKK[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(KK\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaBB[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(BB\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaTT[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(TT\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaHH[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(HH\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[alphaDEG[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(DEG\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[cs2[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(S\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[ct2[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(T\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[Qs[], M4, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(S\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[Qt[], M4, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(T\)]\)", DefInfo -> {"tensor", "building function"}]


DefTensor[cs2N[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(SN\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[cs2D[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(SD\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[ca2[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(a\)], \(2\)]\)", DefInfo -> {"tensor", "building function"}]
DefTensor[ess[], M4, PrintAs -> "s", DefInfo -> {"tensor", "building function"}]


(****   Scalar Functions   ****)


DefScalarFunction[Kfun, PrintAs -> "K"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]
DefScalarFunction[G4fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(4\)]\)"]
DefScalarFunction[G5fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(5\)]\)"]


DefScalarFunction[F4fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(4\)]\)"]
DefScalarFunction[F5fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(5\)]\)"]


(****   Sources   ****)


DefTensor[source1[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(1\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source2[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(2\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source3[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(3\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source4[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(4\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source5[LI[order],-i], M3, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(5\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source6[LI[order],-i], M3, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(6\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source7[LI[order],-i,-j], M3, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(7\)]\)", DefInfo -> {"tensor", "source"}]


DefTensor[source8[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(8\)]\)", DefInfo -> {"tensor", "source"}]


DefTensor[source9[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(9\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source10[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(10\)]\)", DefInfo -> {"tensor", "source"}]
DefTensor[source11[LI[order],-i], M4, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(11\)]\)", DefInfo -> {"tensor", "source"}]


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


Tex[mass2S] ^= "M_*^2";
Tex[alphaMS] ^= "\\alpha_\\textrm{M}";
Tex[alphaKS] ^= "\\alpha_\\textrm{K}";
Tex[alphaBS] ^= "\\alpha_\\textrm{B}";
Tex[alphaTS] ^= "\\alpha_\\textrm{T}";
Tex[alphaHS] ^= "\\alpha_\\textrm{H}";
