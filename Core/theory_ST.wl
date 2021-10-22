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
DefTensorSVT[pertP[LI[order]], {M1, M3}, PrintAs -> "\[Pi]", ScalarPertQ->True]


DefTensorSVT[X[], M1, BackgroundQ->True]
DefTensorSVT[pertX[LI[order]], {M1, M3}, PrintAs -> "\[Delta]X", ScalarPertQ->True]


(* ::Subsection::Closed:: *)
(*Alphas*)


DefTensorSVT[currentS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(J\), \(\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[shiftS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(\[Phi]\)]\)", BackgroundQ->True]


DefTensorSVT[densityS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[pressureS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)", BackgroundQ->True]


DefTensorSVT[mass2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)", BackgroundQ->True]


DefTensorSVT[Dmass2[], M1, PrintAs -> "\[Delta]\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)", BackgroundQ->True]


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


DefTensorSVT[wS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(w\), \(S\)]\)", BackgroundQ->True]
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


(* ::Section::Closed:: *)
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


(****   X to Scalar Field   ****)
XcovToScalarcov[expr_]:= expr //.MakeRule[{Xcov[], Evaluate[-1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[]]}];
ScalarcovToXcov[expr_]:= expr //.Gfun_[scalarcov[],x_]:>Gfun[scalarcov[],Xcov[]];


(* ::Section:: *)
(*To alphas*)


(* ::Subsection::Closed:: *)
(*Definitions*)


EQmass2 = - mass2[] + 
	2 (G4fun[scalar[], X[]] -
	2 primescalar[]^2/(2 scale[]^2) Derivative[0, 1][G4fun][scalar[], X[]] -
	primescalar[]^2/(2 scale[]^2) (hubbleC[] primescalar[]/scale[]^2 Derivative[0, 1][G5fun][scalar[], X[]] -
	Derivative[1, 0][G5fun][scalar[], X[]]) -
	primescalar[]^4 F4fun[scalar[], X[]]/scale[]^4 +
	3 hubbleC[] primescalar[]^5 F5fun[scalar[], X[]]/scale[]^6) // ToCanonical;


EQalphaK = - hubbleC[]^2/scale[]^2 alphaK[] mass2[] +
	(6*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(3*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^6 +
	(24*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(72*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(7*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(120*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 +
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 +
	(54*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^10 -
	(66*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) +
	(6*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 -
	(6*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(scale[]^12) -
	(2*primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(18*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(15*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(6*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(3*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^8 // ToCanonical;


EQalphaB = - alphaB[] hubbleC[]/scale[] mass2[] +
	(primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^3 +
	(4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^3 +
	(3*hubbleC[]^2*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^5 +
	(4*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^5 +
	(16*hubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^5 +
	(hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^7 -
	(30*hubbleC[]^2*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^7) +
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^7 -
	(6*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^9) -
	(2*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[] -
	(4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^3 -
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^3 -
	(2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 // ToCanonical;


EQalphaT = - alphaT[] mass2[] +
	(2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 +
	(2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) -
	(2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2 // ToCanonical;


EQalphaH = - mass2[] alphaH[] +
	(2*primescalar[]^4*F4fun[scalar[], X[]])/(scale[]^4) -
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) // ToCanonical;


EQalphaKK = - hubbleC[]^2*mass2[]*alphaKK[]/scale[]^2 +
	(21*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(2*scale[]^6) +
	(6*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(4*scale[]^4) -
	(hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(4*scale[]^8) +
	(hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(4*scale[]^10) -
	(primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(12*scale[]^6) -
	(hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/(2*scale[]^10) -
	(hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(12*scale[]^12) +
	(4*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/(3*scale[]^4) -
	(2*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(7*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(12*scale[]^6) +
	(hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(2*scale[]^6) -
	(hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(4*scale[]^8) +
	(hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(2*scale[]^8) +
	(hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/(4*scale[]^10) -
	(24*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 +
	(18*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(48*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^10 -
	(5*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(2*scale[]^10) +
	(3*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(2*scale[]^12) -
	(hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/(2*scale[]^12) +
	(hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/(2*scale[]^14) // ToCanonical;


EQalphaBB = - hubbleC[]*mass2[]*alphaBB[]/scale[] -
	(primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^5 -
	(12*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^5 -
	(7*hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^7 -
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^7 -
	(hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^9 -
	(4*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[] +
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^3 +
	(8*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 +
	(2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/scale[]^5 +
	(2*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^7 +
	(-(32*hubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^5 +
	(120*hubbleC[]^2*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^7 -
	(32*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^7 +
	(66*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^9) -
	(4*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^9 +
	(6*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(scale[]^11)) // ToCanonical;


EQalphaTT = - alphaTT[] mass2[] +
	2 primescalar[]^3 hubbleC[] Derivative[0, 1][G5fun][scalar[], X[]]/scale[]^4 // ToCanonical;


EQalphaMM = -mass2[]*alphaMM[] -
	(primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 -
	(primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^4 -
	(hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^6) +
	(primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2 +
	(primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(2*scale[]^4) // ToCanonical;


EQalphaHH = - mass2[] alphaHH[] +
	(4*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^4 -
	(18*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) +
	(primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(scale[]^6) -
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^8) // ToCanonical;


EQalphaDEG = -alphaDEG[] mass2[] + 12 primescalar[]^5 hubbleC[]/scale[]^6 F5fun[scalar[],X[]];


EQdensityS = -densityS[] -
	G2fun[scalar[], X[]] +
	(3*Mpl^2*hubbleC[]^2)/scale[]^2 -
	(6*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(12*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(5*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(6*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(30*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(42*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(6 hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 -
	(9*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 // ToCanonical;


EQpressureS = - pressureS[] +
	G2fun[scalar[], X[]] -
	Mpl^2*hubbleC[]^2/scale[]^2 +
	(2*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 -
	(2*Mpl^2*primehubbleC[])/scale[]^2 +
	(4*G4fun[scalar[], X[]]*primehubbleC[])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(4*primehubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(2*hubbleC[]*primehubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]^3*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(4*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(16*hubbleC[]*pprimescalar[]*primescalar[]^3*F4fun[scalar[], X[]])/scale[]^6 +
	(14*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 -
	(4*primehubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 -
	(hubbleC[]^2*pprimescalar[]*primescalar[]^4*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(30*hubbleC[]^2*pprimescalar[]*primescalar[]^4*F5fun[scalar[], X[]])/(scale[]^8) -
	(30*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) +
	(12*hubbleC[]*primehubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]^5*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(4*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(6*hubbleC[]^2*pprimescalar[]*primescalar[]^6*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(6*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 +
	(2*pprimescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(4*hubbleC[]*pprimescalar[]*primescalar[]*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 +
	(2*primehubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 +
	(2*pprimescalar[]*primescalar[]^2*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]*pprimescalar[]*primescalar[]^3*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(4*hubbleC[]*primescalar[]^5*Derivative[1, 0][F4fun][scalar[], X[]])/scale[]^6 +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[1, 0][F5fun][scalar[], X[]])/(scale[]^8) +
	(2*primescalar[]^2*Derivative[2, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]^3*Derivative[2, 0][G5fun][scalar[], X[]])/scale[]^4 // ToCanonical;


EQBHdegeneracy = primescalar[]^2/2/scale[]^2 Derivative[0,1][G5fun][scalar[],X[]] F4fun[scalar[],X[]]-
	3 F5fun[scalar[],X[]] (G4fun[scalar[],X[]]-
		2 primescalar[]^2/2/scale[]^2 Derivative[0,1][G4fun][scalar[],X[]]+
		primescalar[]^2/2/scale[]^2 Derivative[1,0][G5fun][scalar[],X[]]) // ToCanonical;


(* ::Subsection::Closed:: *)
(*Functions*)


(****   NoG's   ****)
NoG2[expr_]:=expr//.Derivative[__][G2fun][__]:>0//.G2fun[__]:>0
NoG3[expr_]:=expr//.Derivative[__][G3fun][__]:>0//.G3fun[__]:>0
NoG4[expr_]:=expr//.Derivative[__][G4fun][__]:>0//.G4fun[__]:>0//.Derivative[__][DG4fun][__]:>0//.DG4fun[__]:>0
NoG5[expr_]:=expr//.Derivative[__][G5fun][__]:>0//.G5fun[__]:>0
NoF4[expr_]:=expr//.Derivative[__][F4fun][__]:>0//.F4fun[__]:>0
NoF5[expr_]:=expr//.Derivative[__][F5fun][__]:>0//.F5fun[__]:>0


PertScalarToPertP[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertscalar[LI[2]] :> primescalar[] pertP[LI[2]] + pprimescalar[] pertP[LI[1]]^2 // Expand;
	tmp = tmp //.pertscalar[LI[1]] :> primescalar[] pertP[LI[1]] // Expand;
	tmp
]


PertPToPertScalar[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertP[LI[2]] :> pertscalar[LI[2]]/primescalar[] - pprimescalar[]/primescalar[]^3 pertscalar[LI[1]]^2 // Expand;
	tmp = tmp //.pertP[LI[1]] :> pertscalar[LI[1]]/primescalar[] // Expand;
	tmp
]


subSV1 = -primescalar[]/scale[] PD[-i]@pertV[LI[2]]+
	2/primescalar[] timevec[a] PD[-a]@pertscalar[LI[1]] PD[-i]@pertscalar[LI[1]]-
	2 pertpsi[LI[1]] PD[-i]@pertscalar[LI[1]];
subSV2 = PD[-j]@subSV1 // SVTExpand // Symmetrize // SVTExpand;
subSV4 = PD[-j]@PD[-k]@PD[-l]@subSV1 // SVTExpand // Symmetrize // SVTExpand;


PertScalarToPertV[expr_] := Module[{tmp}, tmp = expr;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subSV4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subSV2]}] // Expand;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[2]]], Evaluate[subSV1]}] // Expand;*)
	tmp = tmp //.pertscalar[LI[1]] :> -primescalar[]/scale[] pertV[LI[1]] // Expand;
	tmp
]


subPV1 = -PD[-i]@pertV[LI[2]]/scale[]+
	2 timevec[a] PD[-a]@pertP[LI[1]] PD[-i]@pertP[LI[1]]-
	2 pertpsi[LI[1]] PD[-i]@pertP[LI[1]];
subPV2 = PD[-j]@subPV1 // SVTExpand // Symmetrize // SVTExpand;
subPV4 = PD[-j]@PD[-k]@PD[-l]@subPV1 // SVTExpand // Symmetrize // SVTExpand;


PertPToPertV[expr_] := Module[{tmp}, tmp = expr;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subPV4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subPV2]}] // Expand;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[2]]], Evaluate[subPV1]}] // Expand;*)
	tmp = tmp //.pertP[LI[1]] :> -pertV[LI[1]]/scale[] // Expand;
	tmp
]


(* ::Section::Closed:: *)
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
