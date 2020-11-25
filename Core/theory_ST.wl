(* ::Package:: *)

(* ::Title:: *)
(*Theory ST*)


(* ::Section:: *)
(*Definitions*)


(* ::Subsection::Closed:: *)
(*Scalar Field*)


DefTensor[scalarcov[], M4, PrintAs -> "\[Phi]"]
DefTensorPerturbation[pertscalarcov[LI[order]], scalarcov[], M4, PrintAs -> "\[Delta]\[Phi]"]


DefTensor[Xcov[], M4, PrintAs -> "X"]
DefTensorPerturbation[pertXcov[LI[order]], Xcov[], M4, PrintAs -> "\[Delta]X"]


DefTensorSVT[scalar[], M1, PrintAs -> "\[Phi]", BackgroundQ->True]
DefTensorSVT[pertscalar[LI[order]], {M1, M3}, PrintAs -> "\[Delta]\[Phi]", ScalarPertQ->True]
DefTensorSVT[pertV[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(X\)]\)", ScalarPertQ->True]


DefTensorSVT[X[], M1, BackgroundQ->True]
DefTensorSVT[pertX[LI[order]], {M1, M3}, PrintAs -> "\[Delta]X", ScalarPertQ->True]


(* ::Subsection::Closed:: *)
(*Alphas*)


DefTensorSVT[currentS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(J\), \(\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[shiftS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(\[Phi]\)]\)", BackgroundQ->True]


DefTensorSVT[densityS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[pressureS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)", BackgroundQ->True]


DefTensorSVT[mass2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)", BackgroundQ->True]


DefTensorSVT[Dmass2[], M1, PrintAs -> "\[CapitalDelta]\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)", BackgroundQ->True]


DefTensorSVT[alphaM[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M\)]\)", BackgroundQ->True]
DefTensorSVT[alphaK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)", BackgroundQ->True]
DefTensorSVT[alphaT[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\)]\)", BackgroundQ->True]


DefTensorSVT[alphaMM[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(MM\)]\)", BackgroundQ->True]
DefTensorSVT[alphaKK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(KK\)]\)", BackgroundQ->True]
DefTensorSVT[alphaBB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(BB\)]\)", BackgroundQ->True]
DefTensorSVT[alphaTT[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(TT\)]\)", BackgroundQ->True]
DefTensorSVT[alphaHH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(HH\)]\)", BackgroundQ->True]
DefTensorSVT[alphaDEG[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(DEG\)]\)", BackgroundQ->True]


DefTensorSVT[kinD[], M1, PrintAs -> "D", BackgroundQ->True]
DefTensorSVT[cs2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(S\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[ct2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(T\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[Qs[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[Qt[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(T\)]\)", BackgroundQ->True]
DefTensorSVT[kB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(k\), \(B\)]\)", BackgroundQ->True]


AutomaticRules[primemass2, {primemass2[] :> hubbleC[] mass2[] alphaM[]}]
AutomaticRules[dotmass2, {dotmass2[] :> hubbleP[] mass2[] alphaM[]}]


(* ::Subsection::Closed:: *)
(*Scalar functions*)


DefScalarFunction[G2fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(2\)]\)"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]
DefScalarFunction[G4fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(4\)]\)"]
DefScalarFunction[G5fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(5\)]\)"]


DefScalarFunction[F4fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(4\)]\)"]
DefScalarFunction[F5fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(5\)]\)"]


(* ::Subsection::Closed:: *)
(*Sources*)


DefTensor[source11[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(11\)]\)"]


(* ::Section:: *)
(*Expansion Rules*)


(****   Scalar Field   ****)

scalarrules = Flatten[{
	scalarcov[] :> scalar[],
	pertscalarcov[LI[order_]] :> pertscalar[LI[order]],
	Xcov[]:>X[],
	pertXcov[LI[order_]]:>pertX[LI[order]]}];
If[fill,
	$SVTDecompositionRules[[1]] = Union[$SVTDecompositionRules[[1]], scalarrules];
]

Print[Column[{"Scalar field Decomposition", ScreenDollarIndices[scalarrules]}]]
Clear[scalarrules]


(* ::Section:: *)
(*Tex Corrections*)


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
