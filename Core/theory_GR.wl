(* ::Package:: *)

(* ::Title:: *)
(*Theory GR*)


(* ::Section:: *)
(*Definitions*)


(****   Manifolds   ****)

DefManifold[M1, 1, IndexRange[a, h]]
DefManifold[M3, 3, IndexRange[i, p]]
DefManifold[M4, 4, {\[Alpha], \[Beta], \[Eta], \[Lambda], \[Mu], \[Nu], \[Sigma], \[Tau], \[Gamma]}]


(* ::Subsection::Closed:: *)
(*Metric*)


DefMetric[-1, metricg[-\[Mu], -\[Nu]], CD, SymbolOfCovD -> {";", "\[EmptyDownTriangle]"},
	PrintAs -> "g", CurvatureRelations->True]

AutomaticRules[metricg, {
	metricg[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	metricg[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0
	}]


(*TODO: rethink this when adding curvature*)
DefMetric[1, metric\[Delta][-i, -j], CDS, SymbolOfCovD -> {";", "\[Del]"},
	PrintAs -> "\[Delta]", CurvatureRelations->True, FlatMetric -> True];
Print["The MakeRule error comes from the FlatMetric->True option in DefMetric"];

AutomaticRules[metric\[Delta], {
	PD[\[Mu]_]@metric\[Delta][j_?TangentM3`pmQ, k_?TangentM3`pmQ] :> 0
	}]


PrintAs[RiemannCD] ^= "R";
PrintAs[RicciCD] ^= "R";
PrintAs[RicciScalarCD] ^= "R";
PrintAs[EinsteinCD] ^= "G";
PrintAs[ChristoffelCD] ^= "\[CapitalGamma]";


DefMetricPerturbation[metricg, pertmetricg, \[Epsilon]g];
PrintAs[pertmetricg] ^= "\[Delta]g";
DefMetricPerturbation[metric\[Delta], pertmetric\[Delta], \[Epsilon]\[Delta]];

AutomaticRules[pertmetric\[Delta], {pertmetric\[Delta][LI[order_], i_?TangentM3`pmQ, j_?TangentM3`pmQ] :> 0}]


DefTensor[timevec[a], M1, PrintAs -> "t"]

AutomaticRules[timevec, {
	timevec[-a_?TangentM1`Q] timevec[a_?TangentM1`Q] :> 1,
	timevec[i_?TangentM3`pmQ] :> 0,
	PD[\[Mu]_]@timevec[b_] :> 0
	}]


Unprotect[delta];
AutomaticRules[delta, {
	delta[a_?TangentM1`pmQ, b_?TangentM1`pmQ] :> timevec[a] timevec[b],
	delta[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	delta[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0
	}]
Protect[delta];


(****   k vectors   ****)


DefTensor[kvec[-i], M3, PrintAs -> "k"]
DefTensor[kscal[], M3, PrintAs -> "k"]

AutomaticRules[kvec, {PD[ind1_]@kvec[ind2___] :> 0}]
AutomaticRules[kscal, {PD[ind1_]@kscal[ind2___] :> 0}]
AutomaticRules[kvec, {metric\[Delta][i_?TangentM3`Q, j_?TangentM3`Q] kvec[-i_?TangentM3`Q] kvec[-j_?TangentM3`Q] :> kscal[]^2}];


DefTensor[kvec1[-i], M3, PrintAs -> "p"]
DefTensor[kscal1[], M3, PrintAs -> "p"]

AutomaticRules[kvec1, {PD[ind1_]@kvec1[ind2___] :> 0}]
AutomaticRules[kscal1, {PD[ind1_]@kscal1[ind2___] :> 0}]
AutomaticRules[kvec1, {metric\[Delta][i_?TangentM3`Q, j_?TangentM3`Q] kvec1[-i_?TangentM3`Q] kvec1[-j_?TangentM3`Q] :> kscal1[]^2}];


DefTensor[kvec2[-i], M3, PrintAs -> "q"]
DefTensor[kscal2[], M3, PrintAs -> "q"]

AutomaticRules[kvec2, {PD[ind1_]@kvec2[ind2___] :> 0}]
AutomaticRules[kscal2, {PD[ind1_]@kscal2[ind2___] :> 0}]
AutomaticRules[kvec2, {metric\[Delta][i_?TangentM3`Q, j_?TangentM3`Q] kvec2[-i_?TangentM3`Q] kvec2[-j_?TangentM3`Q] :> kscal2[]^2}];


(****   Metric   ****)


DefConstantSymbol[Mpl, PrintAs->"\!\(\*SubscriptBox[\(M\), \(Pl\)]\)"]
DefConstantSymbol[kappa, PrintAs->"\[Kappa]"]
DefConstantSymbol[Lambda, PrintAs->"\[CapitalLambda]"]


DefTensorSVT[scale[], M1, PrintAs -> "a", BackgroundQ->True]
DefTensorSVT[hubbleC[], M1, PrintAs -> "\[ScriptCapitalH]", BackgroundQ->True]
DefTensorSVT[hubbleP[], M1, PrintAs -> "H", BackgroundQ->True]

AutomaticRules[primescale, {primescale[] :> scale[] hubbleC[]}];
AutomaticRules[dotscale, {dotscale[] :> scale[] hubbleP[]}];


DefTensorSVT[pertphi[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPhi]\",\nFontSize->14]\)", ScalarPertQ->True]
DefTensorSVT[pertpsi[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPsi]\",\nFontSize->14]\)", ScalarPertQ->True]
DefTensorSVT[pertB[LI[order]], {M1, M3}, PrintAs -> "B", ScalarPertQ->True]
DefTensorSVT[pertE[LI[order]], {M1, M3}, PrintAs -> "E", ScalarPertQ->True]


DefTensorSVT[pertS[LI[order], -i], {M1, M3}, PrintAs -> "S", VectorPertQ->True]
DefTensorSVT[pertF[LI[order], -i], {M1, M3}, PrintAs -> "F", VectorPertQ->True]
DefTensorSVT[perth[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "h", TensorPertQ->True]


(* ::Subsection::Closed:: *)
(*Matter*)


DefScalarFunction[V]

DefTensor[mattercov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[CurlyPhi]\), \(m\)]\)"]
DefTensorPerturbation[pertmattercov[LI[order]], mattercov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[CurlyPhi]\), \(m\)]\)"]

DefTensorSVT[matter[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[CurlyPhi]\), \(m\)]\)", BackgroundQ->True]
DefTensorSVT[pertmatter[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[CurlyPhi]\), \(m\)]\)", ScalarPertQ->True]


DefTensor[stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "T"]

DefTensor[densitycov[], M4, PrintAs -> "\[Rho]"]
DefTensor[pressurecov[], M4, PrintAs -> "p"]
DefTensor[velocitycov[\[Mu]], M4, PrintAs -> "u"]
DefTensor[shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\[Sigma]"]

(*AutomaticRules[stressenergy,
	{stressenergy[\[Mu]_?TangentM4`pmQ, \[Nu]_?TangentM4`pmQ] :> (densitycov[] + pressurecov[]) velocitycov[\[Mu]] velocitycov[\[Nu]] + pressurecov[] metricg[\[Mu], \[Nu]] + shearcov[\[Mu], \[Nu]]}]*)
AutomaticRules[velocitycov, {velocitycov[i_?TangentM3`pmQ] :> 0}]
AutomaticRules[shearcov, {
	shearcov[i_?TangentM3`pmQ, j_?TangentM3`pmQ] :> 0,
	shearcov[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0,
	shearcov[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	shearcov[a_?TangentM1`pmQ, b_?TangentM1`pmQ] :> 0
	}]


DefTensorPerturbation[pertdensitycov[LI[order]], densitycov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(m\)]\)"]
DefTensorPerturbation[pertpressurecov[LI[order]], pressurecov[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)"]
DefTensorPerturbation[pertvelocitycov[LI[order], \[Mu]], velocitycov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]u\), \(m\)]\)"]
DefTensorPerturbation[pertshearcov[LI[order], -\[Mu], -\[Nu]], shearcov[-\[Mu], -\[Nu]], M4, Symmetric[{-\[Mu], -\[Nu]}], PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(m\)]\)"]


DefTensorSVT[density[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(m\)]\)", BackgroundQ->True]
DefTensorSVT[pressure[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(m\)]\)", BackgroundQ->True]


DefTensorSVT[pertdensity[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(m\)]\)", ScalarPertQ->True]
DefTensorSVT[pertvelocity[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", ScalarPertQ->True]
DefTensorSVT[pertpressure[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)", ScalarPertQ->True]
DefTensorSVT[pertshear[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", ScalarPertQ->True]


DefTensorSVT[pertvelocityvec[LI[order], i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", VectorPertQ->True]
DefTensorSVT[pertshearvec[LI[order], -i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", VectorPertQ->True]
DefTensorSVT[pertshearten[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", TensorPertQ->True]


(* ::Subsection::Closed:: *)
(*Gauge Transformations*)


DefTensor[gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]
DefTensorPerturbation[pertgauge[LI[order], \[Mu]], gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]


DefTensorSVT[pertgaugealpha[LI[order]], {M1, M3}, PrintAs -> "\[Alpha]", ScalarPertQ->True]
DefTensorSVT[pertgaugebeta[LI[order]], {M1, M3}, PrintAs -> "\[Beta]", ScalarPertQ->True]
DefTensorSVT[pertgaugegamma[LI[order], -i], {M1, M3}, PrintAs -> "\[Gamma]", VectorPertQ->True]


(* ::Subsection::Closed:: *)
(*Sources*)


DefTensor[source1[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(1\)]\)"]
DefTensor[source2[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(2\)]\)"]
DefTensor[source3[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(3\)]\)"]
DefTensor[source4[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(4\)]\)"]
DefTensor[source5[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(5\)]\)"]
DefTensor[source6[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(6\)]\)"]
DefTensor[source7[LI[order],-i,-j], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(7\)]\)"]


DefTensor[source8[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(8\)]\)"]
DefTensor[source9[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(9\)]\)"]
DefTensor[source10[LI[order],-i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(10\)]\)"]


(* ::Section:: *)
(*Expansion Rules*)


(****   Metric   ****)

metricrules = {
	metricg[-a_?TangentM1`Q, -b_?TangentM1`Q] :> -timevec[-a] timevec[-b] scale[]^2, 
	metricg[-i_?TangentM3`Q, -j_?TangentM3`Q] :> scale[]^2 metric\[Delta][-i, -j], 
	metricg[a_?TangentM1`Q, b_?TangentM1`Q] :> -timevec[a] timevec[b] scale[]^-2, 
	metricg[i_?TangentM3`Q, j_?TangentM3`Q] :> scale[]^-2 metric\[Delta][i, j], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> -2 scale[]^2 pertpsi[LI[order]] timevec[-a] timevec[-b], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -j_?TangentM3`Q] :> 
		scale[]^2 (-2 pertphi[LI[order]] metric\[Delta][-i, -j] + perth[LI[order], -i, -j] + PD[-i]@pertF[LI[order], -j] + PD[-j]@pertF[LI[order], -i] + 2 PD[-i]@PD[-j]@pertE[LI[order]]),
	Detmetricg[] :> -scale[]^8};
If[fill,
	$SVTDecompositionRules[[1]] = Union[$SVTDecompositionRules[[1]], metricrules];
]

Print[Column[{"Metric Decomposition", ScreenDollarIndices[metricrules]}]]
Clear[metricrules];


$StressEnergyDecomposition = stressenergy[\[Mu]_?TangentM4`pmQ, \[Nu]_?TangentM4`pmQ] :> (densitycov[] + pressurecov[]) velocitycov[\[Mu]] velocitycov[\[Nu]] + pressurecov[] metricg[\[Mu], \[Nu]] + shearcov[\[Mu], \[Nu]];

Print[Column[{"Stress-Energy Tensor Decomposition", ScreenDollarIndices[$StressEnergyDecomposition]}]]


(****   Matter Field   ****)

matterrules = Flatten[{
	mattercov[] :> matter[],
	pertmattercov[LI[order_]] :> pertmatter[LI[order]],
	densitycov[] :> density[],
	pressurecov[] :> pressure[],
	velocitycov[a_?TangentM1`Q] :> timevec[a] scale[]^-1,
	pertdensitycov[LI[order_]] :> density[] pertdensity[LI[order]],
	pertpressurecov[LI[order_]] :> pertpressure[LI[order]],
	MakeRule[{pertvelocitycov[LI[1], a], timevec[a] (pertmetricg[LI[1], -b, -c] timevec[b] timevec[c])/2/scale[]^3}],
	MakeRule[{pertvelocitycov[LI[2], c], timevec[c] (metric\[Delta][-i, -j]*pertvelocitycov[LI[1], i]*pertvelocitycov[LI[1], j]*scale[] + (2*pertmetricg[LI[1], -i, -a]*pertvelocitycov[LI[1], i]*timevec[a])/scale[]^2 - pertvelocitycov[LI[1], a]*pertvelocitycov[LI[1], b]*scale[]*timevec[-a]*timevec[-b] + (2*pertmetricg[LI[1], -a, -b]*pertvelocitycov[LI[1], a]*timevec[b])/scale[]^2 + (pertmetricg[LI[2], -a, -b]*timevec[a]*timevec[b])/(2*scale[]^3))}],
	MakeRule[{pertvelocitycov[LI[1], i], (pertvelocityvec[LI[1], i] + metric\[Delta][i, j] PD[-j]@pertvelocity[LI[1]]-scale[] metric\[Delta][i, j] PD[-j]@pertB[LI[1]])/scale[]^2}],
	MakeRule[{pertvelocitycov[LI[2], i], (pertvelocityvec[LI[2], i] + metric\[Delta][i, j] PD[-j]@pertvelocity[LI[2]]-scale[] metric\[Delta][i, j] PD[-j]@pertB[LI[2]])/scale[]^2}],
	MakeRule[{pertshearcov[LI[1], -i, -j], (density[] + pressure[]) (pertshearten[LI[1], -i, -j] + PD[-i]@pertshearvec[LI[1], -j] + PD[-j]@pertshearvec[LI[1], -i] + 1/2 PD[-i]@PD[-j]@pertshear[LI[1]] - 1/2 metric\[Delta][-i, -j] metric\[Delta][k, l] PD[-k]@PD[-l]@pertshear[LI[1]])}],
	MakeRule[{pertshearcov[LI[2], -i, -j], (density[] + pressure[]) (pertshearten[LI[2], -i, -j] + PD[-i]@pertshearvec[LI[2], -j] + PD[-j]@pertshearvec[LI[2], -i] + 1/2 PD[-i]@PD[-j]@pertshear[LI[2]] - 1/2 metric\[Delta][-i, -j] metric\[Delta][k, l] PD[-k]@PD[-l]@pertshear[LI[2]])}],
	pertshearcov[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> 0,
	pertshearcov[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> 0,
	pertshearcov[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> 0
	}];
If[fill,
	$SVTDecompositionRules[[1]] = Union[$SVTDecompositionRules[[1]], matterrules];
]

Print[Column[{"Matter field Decomposition", ScreenDollarIndices[matterrules]}]]
Clear[matterrules]


(****   Gauge Transformations   ****)

gaugerules = Flatten[{
	gauge[\[Mu]_] :> 0,
	pertgauge[LI[order_], a_?TangentM1`Q] :> timevec[a] pertgaugealpha[LI[order]],
	MakeRule[{pertgauge[LI[order_], i], metric\[Delta][i, j] (PD[-j]@pertgaugebeta[LI[order]] + pertgaugegamma[LI[order], -j])}]}];
If[fill,
	$SVTDecompositionRules[[1]] = Union[$SVTDecompositionRules[[1]], gaugerules];
]

Print[Column[{"Gauge Decomposition", ScreenDollarIndices[gaugerules]}]]
Clear[gaugerules]


(* ::Section:: *)
(*Tex Corrections*)


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


Tex[source1] ^= "S_1";
Tex[source2] ^= "S_2";
Tex[source3] ^= "S_3";
Tex[source4] ^= "S_4";
Tex[source5] ^= "S_5";
Tex[source6] ^= "S_6";
Tex[source7] ^= "S_7";


Tex[source8] ^= "S_8";
Tex[source9] ^= "S_9";
Tex[source10] ^= "S_{10}";
