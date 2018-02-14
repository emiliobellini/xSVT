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
DefTensor[pertscalar[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(X\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[Xcov[], M4]
DefTensorPerturbation[pertXcov[LI[order]], Xcov[], M4, PrintAs -> "\[Delta]X"]


DefTensor[X[], M4, DefInfo -> {"tensor", "background"}]
DefTensor[pertX[LI[order]], M4, PrintAs -> "\[Delta]X",
	DefInfo -> {"tensor", "perturbation"}]


(****   Matter Field   ****)


DefTensor[stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "T"]


DefTensor[densitycov[], M4, PrintAs -> "\[Rho]"]
DefTensor[pressurecov[], M4, PrintAs -> "p"]
DefTensor[velocitycov[\[Mu]], M4, PrintAs -> "u"]
DefTensor[shearcov[-\[Mu], -\[Nu]], M4, PrintAs -> "\[Sigma]"]


DefTensorPerturbation[pertdensitycov[LI[order]], densitycov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(m\)]\)"]
DefTensorPerturbation[pertpressurecov[LI[order]], pressurecov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)"]
DefTensorPerturbation[pertvelocitycov[LI[order], \[Mu]], velocitycov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]u\), \(m\)]\)"]
DefTensorPerturbation[pertshearcov[LI[order], -\[Mu], -\[Nu]], shearcov[-\[Mu], -\[Nu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(m\)]\)"]


DefTensor[density[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(m\)]\)", DefInfo -> {"tensor", "background"}]
DefTensor[pressure[], M4, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(m\)]\)", DefInfo -> {"tensor", "background"}]


DefTensor[pertdensity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressure[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshear[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertvelocityvec[LI[order], i], M3, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearvec[LI[order], -i], M3, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearten[LI[order], -i, -j], M3, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


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


DefTensor[densityS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[pressureS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[mass2S[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(S\)], \(2\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaMS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\!\(\*OverscriptBox[\(\[Alpha]\), \(^\)]\)\), \(M\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaKS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\!\(\*OverscriptBox[\(\[Alpha]\), \(^\)]\)\), \(K\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaBS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\!\(\*OverscriptBox[\(\[Alpha]\), \(^\)]\)\), \(B\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaTS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\!\(\*OverscriptBox[\(\[Alpha]\), \(^\)]\)\), \(T\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaHS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\!\(\*OverscriptBox[\(\[Alpha]\), \(^\)]\)\), \(H\)]\)",
	DefInfo -> {"tensor", "building function"}]


(****   Scalar Functions   ****)


DefScalarFunction[Kfun, PrintAs -> "K"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]
DefScalarFunction[G4fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(4\)]\)"]
DefScalarFunction[G5fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(5\)]\)"]


DefScalarFunction[G4funtilde, PrintAs -> "\!\(\*SubscriptBox[OverscriptBox[\(G\), \(\[Tilde]\)], \(4\)]\)"]
DefScalarFunction[G5funtilde, PrintAs -> "\!\(\*SubscriptBox[OverscriptBox[\(G\), \(\[Tilde]\)], \(5\)]\)"]


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
