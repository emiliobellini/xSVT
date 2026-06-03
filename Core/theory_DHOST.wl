(* ::Package:: *)

(* ::Title:: *)
(*Theory DHOST*)


(* ::Section:: *)
(*Definitions*)


(* ::Subsection:: *)
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


DefTensor[scalarvelcov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(V\), \(X\)]\)"]
DefTensorPerturbation[pertscalarvelcov[LI[order], \[Mu]], scalarvelcov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]V\), \(X\)]\)"]


DefTensorSVT[scaleB[], M1, PrintAs -> "b", BackgroundQ->True]
DefTensorSVT[hubbleBC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalH]\), \(b\)]\)", BackgroundQ->True]
DefTensorSVT[hubbleBP[], M1, PrintAs -> "\!\(\*SubscriptBox[\(H\), \(b\)]\)", BackgroundQ->True]
DefTensorSVT[scalarB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Phi]\), \(b\)]\)", BackgroundQ->True]
DefTensorSVT[XB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(X\), \(b\)]\)", BackgroundQ->True]


DefTensorSVT[scalarBB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Phi]\), \(bb\)]\)", BackgroundQ->True]


DefTensorSVT[densityB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(mB\)]\)", BackgroundQ->True]
DefTensorSVT[pressureB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(mB\)]\)", BackgroundQ->True]
DefTensorSVT[wB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(w\), \(mB\)]\)", BackgroundQ->True]


DefTensorSVT[lambdaS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(X\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaSS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaSX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]X\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaXX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(XX\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaSSS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]\[Phi]\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaSSX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]\[Phi]X\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaSXX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(\[Phi]XX\)]\)", BackgroundQ->True]
DefTensorSVT[lambdaXXX[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Lambda]\), \(XXX\)]\)", BackgroundQ->True]


DefTensor[kscalB[], M3, PrintAs -> "\!\(\*SubscriptBox[\(k\), \(B\)]\)"]


DefTensorSVT[pertphiB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\!\(\*SubscriptBox[\(\[CapitalPhi]\), \(B\)]\)\",\nFontSize->14]\)", ScalarPertQ->True]
DefTensorSVT[pertpsiB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*StyleBox[\"\!\(\*SubscriptBox[\(\[CapitalPsi]\), \(B\)]\)\",\nFontSize->14]\)", ScalarPertQ->True]
DefTensorSVT[pertBB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(B\)]\)", ScalarPertQ->True]
DefTensorSVT[pertEB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(B\)]\)", ScalarPertQ->True]


DefTensorSVT[pertSB[LI[order], -i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(B\)]\)", VectorPertQ->True]
DefTensorSVT[pertFB[LI[order], -i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(B\)]\)", VectorPertQ->True]
DefTensorSVT[perthB[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "\!\(\*SubscriptBox[\(h\), \(B\)]\)", TensorPertQ->True]


DefTensorSVT[pertdensityB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(mB\)]\)", ScalarPertQ->True]
DefTensorSVT[pertvelocityB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(mB\)]\)", ScalarPertQ->True]
DefTensorSVT[pertpressureB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(mB\)]\)", ScalarPertQ->True]
DefTensorSVT[pertshearB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(mB\)]\)", ScalarPertQ->True]


DefTensorSVT[pertvelocityvecB[LI[order], i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(mB\)]\)", VectorPertQ->True]
DefTensorSVT[pertshearvecB[LI[order], -i], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(mB\)]\)", VectorPertQ->True]
DefTensorSVT[pertsheartenB[LI[order], -i, -j], {M1, M3}, Symmetric[{-i, -j}], PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(mB\)]\)", TensorPertQ->True]


DefTensorSVT[pertscalarB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Phi]\), \(XB\)]\)", ScalarPertQ->True]
DefTensorSVT[pertVB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(XB\)]\)", ScalarPertQ->True]
DefTensorSVT[pertPB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Pi]\), \(XB\)]\)", ScalarPertQ->True]


DefTensorSVT[pertetasyncB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Eta]\), \(B\)]\)", ScalarPertQ->True]
DefTensorSVT[perthsyncB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(h\), \(B\)]\)", ScalarPertQ->True]
DefTensorSVT[pertalphasyncB[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)", ScalarPertQ->True]


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


DefTensorSVT[wS[], M1, PrintAs -> "\!\(\*SubscriptBox[\(w\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[kinD[], M1, PrintAs -> "D", BackgroundQ->True]
DefTensorSVT[cs2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(S\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[ct2[], M1, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(c\), \(T\)], \(2\)]\)", BackgroundQ->True]
DefTensorSVT[Qs[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(S\)]\)", BackgroundQ->True]
DefTensorSVT[Qt[], M1, PrintAs -> "\!\(\*SubscriptBox[\(Q\), \(T\)]\)", BackgroundQ->True]
DefTensorSVT[kB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(k\), \(B\)]\)", BackgroundQ->True]


DefTensorSVT[Geff[], M1, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(eff\)]\)", BackgroundQ->True]
DefTensorSVT[slip[], M1, PrintAs -> "\[Eta]", BackgroundQ->True]
DefTensorSVT[Glight[], M1, PrintAs->"\[CapitalSigma]", BackgroundQ->True]


AutomaticRules[primemass2, {primemass2[] :> hubbleC[] mass2[] alphaM[]}]
AutomaticRules[dotmass2, {dotmass2[] :> hubbleP[] mass2[] alphaM[]}]


(* ::Subsection::Closed:: *)
(*Scalar functions*)


DefScalarFunction[G2fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(2\)]\)"]
DefScalarFunction[G3fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(3\)]\)"]
DefScalarFunction[G4fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(4\)]\)"]
DefScalarFunction[G5fun, PrintAs -> "\!\(\*SubscriptBox[\(G\), \(5\)]\)"]


DefScalarFunction[DG4fun, PrintAs -> "\[CapitalDelta]\!\(\*SubscriptBox[\(G\), \(4\)]\)"]


DefScalarFunction[F2fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(2\)]\)"]
DefScalarFunction[F3fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(3\)]\)"]


DefScalarFunction[F4fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(4\)]\)"]
DefScalarFunction[F5fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(5\)]\)"]


DefScalarFunction[A4fun, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(4\)]\)"]


(* ::Subsection:: *)
(*Functions*)


SubX0 = MakeRule[{X[], primescalar[]^2/2/scale[]^2}];
invSubX0 = {primescalar[]^n_/;EvenQ[n] :> (2 scale[]^2 X[])^(n/2),primescalar[]^n_/;(OddQ[n] && n>0):>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};
restoreXinG = {Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


TimeDerG[expr_] := TimeDer[expr //.SubX0] //.restoreXinG


Options[ToScaleBback] = {
	SubA -> False
};

ToScaleBback[expr_, OptionsPattern[]] := Module[{tmp, lambdaval, suba},
	suba = OptionValue@SubA;
	lambdaval = - Log[G4fun[scalar[], X[]]]/2;
	tmp = expr;
	(* Scalar field derivatives *)
	tmp = tmp //.pppprimescalar[] :> (scale[]/scaleB[])^4 (
			+ pppprimescalarB[]
			- 6 hubbleBC[] ppprimescalarB[]
			- (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimescalarB[]
			- (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primescalarB[])
		+ 6 hubbleC[] ppprimescalar[]
		+ (4 primehubbleC[] - 11 hubbleC[]^2) pprimescalar[]
		+ (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primescalar[];
	tmp = tmp //.ppprimescalar[] :> (scale[]/scaleB[])^3 (
			+ ppprimescalarB[]
			- 3 hubbleBC[] pprimescalarB[]
			- (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[])
		+ 3 hubbleC[] pprimescalar[]
		+ (primehubbleC[] - 2 hubbleC[]^2) primescalar[];
	tmp = tmp //.pprimescalar[] :> (scale[]/scaleB[])^2 (
			+ pprimescalarB[]
			- hubbleBC[] primescalarB[])
		+ hubbleC[] primescalar[];
	tmp = tmp //.primescalar[] :> scale[]/scaleB[] primescalarB[];
	(* Hubble *)
	tmp = tmp //.pprimehubbleC[] :> (scale[]/scaleB[])^3 (
			+ pprimehubbleBC[]
			- 4 hubbleBC[] primehubbleBC[]
			+ 2 hubbleBC[]^3
			+ lambdaS[] (ppprimescalarB[] - 3 hubbleBC[] pprimescalarB[] - (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[])
			+ lambdaX[] (ppprimeXB[] - 3 hubbleBC[] pprimeXB[] - (primehubbleBC[] - 2 hubbleBC[]^2) primeXB[])
			+ 3 lambdaSS[] primescalarB[] (pprimescalarB[] - hubbleBC[] primescalarB[])
			+ 3 lambdaSX[] (primescalarB[] pprimeXB[] - 2 hubbleBC[] primescalarB[] primeXB[] + pprimescalarB[] primeXB[])
			+ 3 lambdaXX[] primeXB[] (pprimeXB[] - hubbleBC[] primeXB[])
			+ lambdaSSS[] primescalarB[]^3
			+ 3 lambdaSSX[] primescalarB[]^2 primeXB[]
			+ 3 lambdaSXX[] primescalarB[] primeXB[]^2
			+ lambdaXXX[] primeXB[]^3)
		+ 2 hubbleC[] (2 primehubbleC[] - hubbleC[]^2);
	tmp = tmp //.primehubbleC[] :> (scale[]/scaleB[])^2 (
			+ primehubbleBC[]
			- hubbleBC[]^2
			+ lambdaX[] (pprimeXB[] - hubbleBC[] primeXB[])
			+ lambdaS[] (pprimescalarB[] - hubbleBC[] primescalarB[])
			+ lambdaXX[] primeXB[]^2
			+ 2 lambdaSX[] primescalarB[] primeXB[]
			+ lambdaSS[] primescalarB[]^2)
		+ hubbleC[]^2;
	tmp = tmp //.hubbleC[] :> scale[]/scaleB[] (
			+ hubbleBC[]
			+ lambdaX[] primeXB[]
			+ lambdaS[] primescalarB[]);
	(* X *)
	tmp = tmp //.ppprimeXB[] :> primescalarB[] pppprimescalarB[]/scaleB[]^2
		+ 3 pprimescalarB[] ppprimescalarB[]/scaleB[]^2
		- 6 hubbleBC[] pprimeXB[]
		- 2 (3 primehubbleBC[] + 6 hubbleBC[]^2) primeXB[]
		- 2 (pprimehubbleBC[] + 6 hubbleBC[] primehubbleBC[] + 4 hubbleBC[]^3) XB[];
	tmp = tmp //.pprimeXB[] :> primescalarB[]/scaleB[]^2 ppprimescalarB[]
		+ pprimescalarB[]^2/scaleB[]^2
		- 2 (primehubbleBC[] + 2 hubbleBC[]^2) XB[]
		- 4 hubbleBC[] primeXB[];
	tmp = tmp //.primeXB[] :> primescalarB[] pprimescalarB[]/scaleB[]^2
		- 2 hubbleBC[] XB[];
	tmp = tmp //.XB[] :> primescalarB[]^2/2/scaleB[]^2;
	(* Matter *)
	(*tmp = tmp //.primew[] :> scale[]/scaleB[] primewB[];*);
	(* Lambdas *)
	tmp = tmp //.lambdaS[] -> D[lambdaval, {scalar[], 1}, {X[], 0}];
	tmp = tmp //.lambdaX[] -> D[lambdaval, {scalar[], 0}, {X[], 1}];
	tmp = tmp //.lambdaSS[] -> D[lambdaval, {scalar[], 2}, {X[], 0}];
	tmp = tmp //.lambdaSX[] -> D[lambdaval, {scalar[], 1}, {X[], 1}];
	tmp = tmp //.lambdaXX[] -> D[lambdaval, {scalar[], 0}, {X[], 2}];
	tmp = tmp //.lambdaSSS[] -> D[lambdaval, {scalar[], 3}, {X[], 0}];
	tmp = tmp //.lambdaSSX[] -> D[lambdaval, {scalar[], 2}, {X[], 1}];
	tmp = tmp //.lambdaSXX[] -> D[lambdaval, {scalar[], 1}, {X[], 2}];
	tmp = tmp //.lambdaXXX[] -> D[lambdaval, {scalar[], 0}, {X[], 3}];
	If[suba,
		tmp = tmp //.scale[] :> Exp[lambdaval]  scaleB[];	
	];
	(* Output *)
	tmp
]


ToScaleB[expr_] := Module[{
	tmp = expr,
	lambdaval = - Log[G4fun[scalarB[], XB[]]]/2,
	pertslistA = {pertphi, pertpsi, pertB, pertE, pertS, pertF, perth, pertdensity, pertvelocity, pertpressure, pertshear, pertshearvec, pertshearten, pertscalar, pertP, pertV, pertetasync, perthsync, pertalphasync},
	primepertslistA, pprimepertslistA, ppprimepertslistA, pppprimepertslistA,
	pertslistB,
	primepertslistB, pprimepertslistB, ppprimepertslistB, pppprimepertslistB
	},
	
	primepertslistA = ToExpression["prime" <> ToString[#]]&/@pertslistA;
	pprimepertslistA = ToExpression["pprime" <> ToString[#]]&/@pertslistA;
	ppprimepertslistA = ToExpression["ppprime" <> ToString[#]]&/@pertslistA;
	pppprimepertslistA = ToExpression["pppprime" <> ToString[#]]&/@pertslistA;
	pertslistB = ToExpression[ToString[#] <> "B"]&/@pertslistA;
	primepertslistB = ToExpression["prime" <> ToString[#]]&/@pertslistB;
	pprimepertslistB = ToExpression["pprime" <> ToString[#]]&/@pertslistB;
	ppprimepertslistB = ToExpression["ppprime" <> ToString[#]]&/@pertslistB;
	pppprimepertslistB = ToExpression["pppprime" <> ToString[#]]&/@pertslistB;

	(* Perturbations *)
	(* Replace Time Derivatives *)
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[LI[order_], inds___] /; !StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["prime" <> ToString[tens]][LI[order], inds];
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[LI[order_], inds___] /; StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["p" <> ToString[tens]][LI[order], inds];
	(* Fourth Derivatives *)
	tmp = tmp //.pppprimetensA_[LI[order_], inds___] /; MemberQ[pppprimepertslistA, pppprimetensA] :> Module[
		{pos, primetensA, pprimetensA, ppprimetensA, primetensB, pprimetensB, ppprimetensB, pppprimetensB},
		pos = Position[pppprimepertslistA, pppprimetensA];
		primetensA = Extract[primepertslistA, pos][[1]];
		pprimetensA = Extract[pprimepertslistA, pos][[1]];
		ppprimetensA = Extract[ppprimepertslistA, pos][[1]];
		primetensB = Extract[primepertslistB, pos][[1]];
		pprimetensB = Extract[pprimepertslistB, pos][[1]];
		ppprimetensB = Extract[ppprimepertslistB, pos][[1]];
		pppprimetensB = Extract[pppprimepertslistB, pos][[1]];
		(scale[]/scaleB[])^4 (
			+ pppprimetensB[LI[order], inds]
			- 6 hubbleBC[] ppprimetensB[LI[order], inds]
			- (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimetensB[LI[order], inds]
			- (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primetensB[LI[order], inds]
			)
		+ 6 hubbleC[] ppprimetensA[LI[order], inds]
		+ (4 primehubbleC[] - 11 hubbleC[]^2) pprimetensA[LI[order], inds]
		+ (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primetensA[LI[order], inds]
		];
	(* Third Derivatives *)
	tmp = tmp //.ppprimetensA_[LI[order_], inds___] /; MemberQ[ppprimepertslistA, ppprimetensA] :> Module[
		{pos, primetensA, pprimetensA, primetensB, pprimetensB, ppprimetensB},
		pos = Position[ppprimepertslistA, ppprimetensA];
		primetensA = Extract[primepertslistA, pos][[1]];
		pprimetensA = Extract[pprimepertslistA, pos][[1]];
		primetensB = Extract[primepertslistB, pos][[1]];
		pprimetensB = Extract[pprimepertslistB, pos][[1]];
		ppprimetensB = Extract[ppprimepertslistB, pos][[1]];
		(scale[]/scaleB[])^3 (
			+ ppprimetensB[LI[order], inds]
			- 3 hubbleBC[] pprimetensB[LI[order], inds]
			- (primehubbleBC[] - 2 hubbleBC[]^2) primetensB[LI[order], inds]
			)
		+ 3 hubbleC[] pprimetensA[LI[order], inds]
		+ (primehubbleC[] - 2 hubbleC[]^2) primetensA[LI[order], inds]
		];
	(* Second Derivatives *)
	tmp = tmp //.pprimetensA_[LI[order_], inds___] /; MemberQ[pprimepertslistA, pprimetensA] :> Module[
		{pos, primetensA, primetensB, pprimetensB},
		pos = Position[pprimepertslistA, pprimetensA];
		primetensA = Extract[primepertslistA, pos][[1]];
		primetensB = Extract[primepertslistB, pos][[1]];
		pprimetensB = Extract[pprimepertslistB, pos][[1]];
		(scale[]/scaleB[])^2 (
			+ pprimetensB[LI[order], inds]
			- hubbleBC[] primetensB[LI[order], inds])
		+ hubbleC[] primetensA[LI[order], inds]
		];
	(* First Derivatives *)
	tmp = tmp //.primetensA_[LI[order_], inds___] /; MemberQ[primepertslistA, primetensA] :> Module[
		{pos, primetensB},
		pos = Position[primepertslistA, primetensA];
		primetensB = Extract[primepertslistB, pos][[1]];
		scale[]/scaleB[] primetensB[LI[order], inds]
		];
	(* Zero Derivatives *)
	tmp = tmp //.tensA_[LI[order_], inds___] /; MemberQ[pertslistA, tensA] :> Module[
		{pos, tensB},
		pos = Position[pertslistA, tensA];
		tensB=Extract[pertslistB, pos][[1]];
		tensB[LI[order], inds]
		];

	(* Scalar field derivatives *)
	tmp = tmp //.pppprimescalar[] :> (scale[]/scaleB[])^4 (
			+ pppprimescalarB[]
			- 6 hubbleBC[] ppprimescalarB[]
			- (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimescalarB[]
			- (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primescalarB[])
		+ 6 hubbleC[] ppprimescalar[]
		+ (4 primehubbleC[] - 11 hubbleC[]^2) pprimescalar[]
		+ (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primescalar[];
	tmp = tmp //.ppprimescalar[] :> (scale[]/scaleB[])^3 (
			+ ppprimescalarB[]
			- 3 hubbleBC[] pprimescalarB[]
			- (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[])
		+ 3 hubbleC[] pprimescalar[]
		+ (primehubbleC[] - 2 hubbleC[]^2) primescalar[];
	tmp = tmp //.pprimescalar[] :> (scale[]/scaleB[])^2 (
			+ pprimescalarB[]
			- hubbleBC[] primescalarB[])
		+ hubbleC[] primescalar[];
	tmp = tmp //.primescalar[] :> scale[]/scaleB[] primescalarB[];
	(* Hubble physical *)
	tmp = tmp //.pprimehubbleP[] :> (pprimehubbleC[] - 3 hubbleP[] primehubbleP[] scale[]^2 - 2 hubbleP[]^3 scale[]^3)/scale[];
	tmp = tmp //.primehubbleP[] :> (primehubbleC[] - hubbleP[]^2 scale[]^2)/scale[];
	tmp = tmp //.hubbleP[] :> hubbleC[]/scale[];
	(* Hubble *)
	tmp = tmp //.pprimehubbleC[] :> (scale[]/scaleB[])^3 (
			+ pprimehubbleBC[]
			- 4 hubbleBC[] primehubbleBC[]
			+ 2 hubbleBC[]^3
			+ lambdaS[] (ppprimescalarB[] - 3 hubbleBC[] pprimescalarB[] - (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[])
			+ lambdaX[] (ppprimeXB[] - 3 hubbleBC[] pprimeXB[] - (primehubbleBC[] - 2 hubbleBC[]^2) primeXB[])
			+ 3 lambdaSS[] primescalarB[] (pprimescalarB[] - hubbleBC[] primescalarB[])
			+ 3 lambdaSX[] (primescalarB[] pprimeXB[] - 2 hubbleBC[] primescalarB[] primeXB[] + pprimescalarB[] primeXB[])
			+ 3 lambdaXX[] primeXB[] (pprimeXB[] - hubbleBC[] primeXB[])
			+ lambdaSSS[] primescalarB[]^3
			+ 3 lambdaSSX[] primescalarB[]^2 primeXB[]
			+ 3 lambdaSXX[] primescalarB[] primeXB[]^2
			+ lambdaXXX[] primeXB[]^3)
		+ 2 hubbleC[] (2 primehubbleC[] - hubbleC[]^2);
	tmp = tmp //.primehubbleC[] :> (scale[]/scaleB[])^2 (
			+ primehubbleBC[]
			- hubbleBC[]^2
			+ lambdaX[] (pprimeXB[] - hubbleBC[] primeXB[])
			+ lambdaS[] (pprimescalarB[] - hubbleBC[] primescalarB[])
			+ lambdaXX[] primeXB[]^2
			+ 2 lambdaSX[] primescalarB[] primeXB[]
			+ lambdaSS[] primescalarB[]^2)
		+ hubbleC[]^2;
	tmp = tmp //.hubbleC[] :> scale[]/scaleB[] (
			+ hubbleBC[]
			+ lambdaX[] primeXB[]
			+ lambdaS[] primescalarB[]);
	(* X *)
	tmp = tmp //.ppprimeXB[] :> primescalarB[] pppprimescalarB[]/scaleB[]^2
		+ 3 pprimescalarB[] ppprimescalarB[]/scaleB[]^2
		- 6 hubbleBC[] pprimeXB[]
		- 2 (3 primehubbleBC[] + 6 hubbleBC[]^2) primeXB[]
		- 2 (pprimehubbleBC[] + 6 hubbleBC[] primehubbleBC[] + 4 hubbleBC[]^3) XB[];
	tmp = tmp //.pprimeXB[] :> primescalarB[]/scaleB[]^2 ppprimescalarB[]
		+ pprimescalarB[]^2/scaleB[]^2
		- 2 (primehubbleBC[] + 2 hubbleBC[]^2) XB[]
		- 4 hubbleBC[] primeXB[];
	tmp = tmp //.primeXB[] :> primescalarB[] pprimescalarB[]/scaleB[]^2
		- 2 hubbleBC[] XB[];
	tmp = tmp //.XB[] :> primescalarB[]^2/2/scaleB[]^2;
	(* Matter *)
	tmp = tmp //.primedensity[] :> scale[]/scaleB[] primedensityB[];
	tmp = tmp //.primepressure[] :> scale[]/scaleB[] primepressureB[];
	tmp = tmp //.primew[] :> scale[]/scaleB[] primewB[];
	(* Inside G functions *)
	tmp = tmp //.scalar[] :> scalarB[];
	tmp = tmp //.X[] :> XB[];
	(* Matter *)
	tmp = tmp //.density[] :> densityB[];
	tmp = tmp //.pressure[] :> pressureB[];
	tmp = tmp //.w[] :> wB[];
	(* Lambdas *)
	tmp = tmp //.lambdaS[] -> D[lambdaval, {scalarB[], 1}, {XB[], 0}];
	tmp = tmp //.lambdaX[] -> D[lambdaval, {scalarB[], 0}, {XB[], 1}];
	tmp = tmp //.lambdaSS[] -> D[lambdaval, {scalarB[], 2}, {XB[], 0}];
	tmp = tmp //.lambdaSX[] -> D[lambdaval, {scalarB[], 1}, {XB[], 1}];
	tmp = tmp //.lambdaXX[] -> D[lambdaval, {scalarB[], 0}, {XB[], 2}];
	tmp = tmp //.lambdaSSS[] -> D[lambdaval, {scalarB[], 3}, {XB[], 0}];
	tmp = tmp //.lambdaSSX[] -> D[lambdaval, {scalarB[], 2}, {XB[], 1}];
	tmp = tmp //.lambdaSXX[] -> D[lambdaval, {scalarB[], 1}, {XB[], 2}];
	tmp = tmp //.lambdaXXX[] -> D[lambdaval, {scalarB[], 0}, {XB[], 3}];
	(*tmp = tmp //.scale[] :> Exp[lambdaval]  scaleB[];*);
	(* kscal *)
	tmp = tmp //.kscal[] :> scale[]/scaleB[] kscalB[];
	tmp
]


Options[ToScaleAback] = {
	SubB -> False
};

ToScaleAback[expr_, OptionsPattern[]] := Module[{tmp, lambdaval, subb},
	subb = OptionValue@SubB;
	lambdaval = - Log[G4fun[scalar[], X[]]]/2;
	tmp = expr;
	(* Scalar field derivatives *)
	tmp = tmp //.pppprimescalarB[] :> (scaleB[]/scale[])^4 (
			+ pppprimescalar[]
			- 6 hubbleC[] ppprimescalar[]
			- (4 primehubbleC[] - 11 hubbleC[]^2) pprimescalar[]
			- (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primescalar[])
		+ 6 hubbleBC[] ppprimescalarB[]
		+ (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimescalarB[]
		+ (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primescalarB[];
	tmp = tmp //.ppprimescalarB[] :> (scaleB[]/scale[])^3 (
			+ ppprimescalar[]
			- 3 hubbleC[] pprimescalar[]
			- (primehubbleC[] - 2 hubbleC[]^2) primescalar[])
		+ 3 hubbleBC[] pprimescalarB[]
		+ (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[];
	tmp = tmp //.pprimescalarB[] :> (scaleB[]/scale[])^2 (
			+ pprimescalar[]
			- hubbleC[] primescalar[])
		+ hubbleBC[] primescalarB[];
	tmp = tmp //.primescalarB[] :> scaleB[]/scale[] primescalar[];
	(* Hubble *)
	tmp = tmp //.pprimehubbleBC[] :> (scaleB[]/scale[])^3 (
			+ pprimehubbleC[]
			- 4 hubbleC[] primehubbleC[]
			+ 2 hubbleC[]^3
			- lambdaS[] (ppprimescalar[] - 3 hubbleC[] pprimescalar[] - (primehubbleC[] - 2 hubbleC[]^2) primescalar[])
			- lambdaX[] (ppprimeX[] - 3 hubbleC[] pprimeX[] - (primehubbleC[] - 2 hubbleC[]^2) primeX[])
			- 3 lambdaSS[] primescalar[] (pprimescalar[] - hubbleC[] primescalar[])
			- 3 lambdaSX[] (primescalar[] pprimeX[] - 2 hubbleC[] primescalar[] primeX[] + pprimescalar[] primeX[])
			- 3 lambdaXX[] primeX[] (pprimeX[] - hubbleC[] primeX[])
			- lambdaSSS[] primescalar[]^3
			- 3 lambdaSSX[] primescalar[]^2 primeX[]
			- 3 lambdaSXX[] primescalar[] primeX[]^2
			- lambdaXXX[] primeX[]^3)
		+ 2 hubbleBC[] (2 primehubbleBC[] - hubbleBC[]^2);
	tmp = tmp //.primehubbleBC[] :> (scaleB[]/scale[])^2 (
			+ primehubbleC[]
			- hubbleC[]^2
			- lambdaX[] (pprimeX[] - hubbleC[] primeX[])
			- lambdaS[] (pprimescalar[] - hubbleC[] primescalar[])
			- lambdaXX[] primeX[]^2
			- 2 lambdaSX[] primescalar[] primeX[]
			- lambdaSS[] primescalar[]^2)
		+ hubbleBC[]^2;
	tmp = tmp //.hubbleBC[] :> scaleB[]/scale[] (
			+ hubbleC[]
			- lambdaX[] primeX[]
			- lambdaS[] primescalar[]);
	(* X *)
	tmp = tmp //.ppprimeX[] :> primescalar[] pppprimescalar[]/scale[]^2
		+ 3 pprimescalar[] ppprimescalar[]/scale[]^2
		- 6 hubbleC[] pprimeX[]
		- 2 (3 primehubbleC[] + 6 hubbleC[]^2) primeX[]
		- 2 (pprimehubbleC[] + 6 hubbleC[] primehubbleC[] + 4 hubbleC[]^3) X[];
	tmp = tmp //.pprimeX[] :> primescalar[]/scale[]^2 ppprimescalar[]
		+ pprimescalar[]^2/scale[]^2
		- 2 (primehubbleC[] + 2 hubbleC[]^2) X[]
		- 4 hubbleC[] primeX[];
	tmp = tmp //.primeX[] :> primescalar[] pprimescalar[]/scale[]^2
		- 2 hubbleC[] X[];
	tmp = tmp //.X[] :> primescalar[]^2/2/scale[]^2;
	(* Matter *)
	tmp = tmp //.primewB[] :> scaleB[]/scale[] primew[];
	(* Lambdas *)
	tmp = tmp //.lambdaS[] -> D[lambdaval, {scalar[], 1}, {X[], 0}];
	tmp = tmp //.lambdaX[] -> D[lambdaval, {scalar[], 0}, {X[], 1}];
	tmp = tmp //.lambdaSS[] -> D[lambdaval, {scalar[], 2}, {X[], 0}];
	tmp = tmp //.lambdaSX[] -> D[lambdaval, {scalar[], 1}, {X[], 1}];
	tmp = tmp //.lambdaXX[] -> D[lambdaval, {scalar[], 0}, {X[], 2}];
	tmp = tmp //.lambdaSSS[] -> D[lambdaval, {scalar[], 3}, {X[], 0}];
	tmp = tmp //.lambdaSSX[] -> D[lambdaval, {scalar[], 2}, {X[], 1}];
	tmp = tmp //.lambdaSXX[] -> D[lambdaval, {scalar[], 1}, {X[], 2}];
	tmp = tmp //.lambdaXXX[] -> D[lambdaval, {scalar[], 0}, {X[], 3}];
	If[subb,
		tmp = tmp //.scaleB[] :> Exp[-lambdaval]  scale[];
	];
	(* Output *)
	tmp
]


ToScaleA[expr_] := Module[{
	tmp = expr,
	lambdaval = - Log[G4fun[scalar[], X[]]]/2,
	pertslistA = {pertphi, pertpsi, pertB, pertE, pertS, pertF, perth, pertdensity, pertvelocity, pertpressure, pertshear, pertshearvec, pertshearten, pertscalar, pertP, pertV, pertetasync, perthsync, pertalphasync},
	primepertslistA, pprimepertslistA, ppprimepertslistA, pppprimepertslistA,
	pertslistB,
	primepertslistB, pprimepertslistB, ppprimepertslistB, pppprimepertslistB
	},

	primepertslistA = ToExpression["prime" <> ToString[#]]&/@pertslistA;
	pprimepertslistA = ToExpression["pprime" <> ToString[#]]&/@pertslistA;
	ppprimepertslistA = ToExpression["ppprime" <> ToString[#]]&/@pertslistA;
	pppprimepertslistA = ToExpression["pppprime" <> ToString[#]]&/@pertslistA;
	pertslistB = ToExpression[ToString[#] <> "B"]&/@pertslistA;
	primepertslistB = ToExpression["prime" <> ToString[#]]&/@pertslistB;
	pprimepertslistB = ToExpression["pprime" <> ToString[#]]&/@pertslistB;
	ppprimepertslistB = ToExpression["ppprime" <> ToString[#]]&/@pertslistB;
	pppprimepertslistB = ToExpression["pppprime" <> ToString[#]]&/@pertslistB;

	(* Perturbations *)
	(* Fourth Derivatives *)
	tmp = tmp //.pppprimetensB_[LI[order_], inds___] /; MemberQ[pppprimepertslistB, pppprimetensB] :> Module[
		{pos, primetensB, pprimetensB, ppprimetensB, primetensA, pprimetensA, ppprimetensA, pppprimetensA},
		pos = Position[pppprimepertslistB, pppprimetensB];
		primetensB = Extract[primepertslistB, pos][[1]];
		pprimetensB = Extract[pprimepertslistB, pos][[1]];
		ppprimetensB = Extract[ppprimepertslistB, pos][[1]];
		primetensA = Extract[primepertslistA, pos][[1]];
		pprimetensA = Extract[pprimepertslistA, pos][[1]];
		ppprimetensA = Extract[ppprimepertslistA, pos][[1]];
		pppprimetensA = Extract[pppprimepertslistA, pos][[1]];
		(scaleB[]/scale[])^4 (
			+ pppprimetensA[LI[order], inds]
			- 6 hubbleC[] ppprimetensA[LI[order], inds]
			- (4 primehubbleC[] - 11 hubbleC[]^2) pprimetensA[LI[order], inds]
			- (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primetensA[LI[order], inds]
			)
		+ 6 hubbleBC[] ppprimetensB[LI[order], inds]
		+ (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimetensB[LI[order], inds]
		+ (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primetensB[LI[order], inds]
		];
	(* Third Derivatives *)
	tmp = tmp //.ppprimetensB_[LI[order_], inds___] /; MemberQ[ppprimepertslistB, ppprimetensB] :> Module[
		{pos, primetensB, pprimetensB, primetensA, pprimetensA, ppprimetensA},
		pos = Position[ppprimepertslistB, ppprimetensB];
		primetensB = Extract[primepertslistB, pos][[1]];
		pprimetensB = Extract[pprimepertslistB, pos][[1]];
		primetensA = Extract[primepertslistA, pos][[1]];
		pprimetensA = Extract[pprimepertslistA, pos][[1]];
		ppprimetensA = Extract[ppprimepertslistA, pos][[1]];
		(scaleB[]/scale[])^3 (
			+ ppprimetensA[LI[order], inds]
			- 3 hubbleC[] pprimetensA[LI[order], inds]
			- (primehubbleC[] - 2 hubbleC[]^2) primetensA[LI[order], inds]
			)
		+ 3 hubbleBC[] pprimetensB[LI[order], inds]
		+ (primehubbleBC[] - 2 hubbleBC[]^2) primetensB[LI[order], inds]
		];
	(* Second Derivatives *)
	tmp = tmp //.pprimetensB_[LI[order_], inds___] /; MemberQ[pprimepertslistB, pprimetensB] :> Module[
		{pos, primetensB, primetensA, pprimetensA},
		pos = Position[pprimepertslistB, pprimetensB];
		primetensB = Extract[primepertslistB, pos][[1]];
		primetensA = Extract[primepertslistA, pos][[1]];
		pprimetensA = Extract[pprimepertslistA, pos][[1]];
		(scaleB[]/scale[])^2 (
			+ pprimetensA[LI[order], inds]
			- hubbleC[] primetensA[LI[order], inds])
		+ hubbleBC[] primetensB[LI[order], inds]
		];
	(* First Derivatives *)
	tmp = tmp //.primetensB_[LI[order_], inds___] /; MemberQ[primepertslistB, primetensB] :> Module[
		{pos, primetensA},
		pos = Position[primepertslistB, primetensB];
		primetensA = Extract[primepertslistA, pos][[1]];
		scaleB[]/scale[] primetensA[LI[order], inds]
		];
	(* Zero Derivatives *)
	tmp = tmp //.tensB_[LI[order_], inds___] /; MemberQ[pertslistB, tensB] :> Module[
		{pos, tensA},
		pos = Position[pertslistB, tensB];
		tensA=Extract[pertslistA, pos][[1]];
		tensA[LI[order], inds]
		];
	(* Restore Time Derivatives *)
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"pp*ime*"] :>PutScalar[Module[{a=DummyIn[TangentM1]}, PutScalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"pp*ime*"] :>PutScalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]];
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"prime*"] :>PutScalar[Module[{a=DummyIn[TangentM1]}, Scalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"prime*"] :>PutScalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]];
	tmp = tmp // SeparateMetric[] // ToCanonical // NoScalar;

	(* Scalar field derivatives *)
	tmp = tmp //.pppprimescalarB[] :> (scaleB[]/scale[])^4 (
			+ pppprimescalar[]
			- 6 hubbleC[] ppprimescalar[]
			- (4 primehubbleC[] - 11 hubbleC[]^2) pprimescalar[]
			- (pprimehubbleC[] - 7 hubbleC[] primehubbleC[] + 6 hubbleC[]^3) primescalar[])
		+ 6 hubbleBC[] ppprimescalarB[]
		+ (4 primehubbleBC[] - 11 hubbleBC[]^2) pprimescalarB[]
		+ (pprimehubbleBC[] - 7 hubbleBC[] primehubbleBC[] + 6 hubbleBC[]^3) primescalarB[];
	tmp = tmp //.ppprimescalarB[] :> (scaleB[]/scale[])^3 (
			+ ppprimescalar[]
			- 3 hubbleC[] pprimescalar[]
			- (primehubbleC[] - 2 hubbleC[]^2) primescalar[])
		+ 3 hubbleBC[] pprimescalarB[]
		+ (primehubbleBC[] - 2 hubbleBC[]^2) primescalarB[];
	tmp = tmp //.pprimescalarB[] :> (scaleB[]/scale[])^2 (
			+ pprimescalar[]
			- hubbleC[] primescalar[])
		+ hubbleBC[] primescalarB[];
	tmp = tmp //.primescalarB[] :> scaleB[]/scale[] primescalar[];
	(* Hubble *)
	tmp = tmp //.pprimehubbleBC[] :> (scaleB[]/scale[])^3 (
			+ pprimehubbleC[]
			- 4 hubbleC[] primehubbleC[]
			+ 2 hubbleC[]^3
			- lambdaS[] (ppprimescalar[] - 3 hubbleC[] pprimescalar[] - (primehubbleC[] - 2 hubbleC[]^2) primescalar[])
			- lambdaX[] (ppprimeX[] - 3 hubbleC[] pprimeX[] - (primehubbleC[] - 2 hubbleC[]^2) primeX[])
			- 3 lambdaSS[] primescalar[] (pprimescalar[] - hubbleC[] primescalar[])
			- 3 lambdaSX[] (primescalar[] pprimeX[] - 2 hubbleC[] primescalar[] primeX[] + pprimescalar[] primeX[])
			- 3 lambdaXX[] primeX[] (pprimeX[] - hubbleC[] primeX[])
			- lambdaSSS[] primescalar[]^3
			- 3 lambdaSSX[] primescalar[]^2 primeX[]
			- 3 lambdaSXX[] primescalar[] primeX[]^2
			- lambdaXXX[] primeX[]^3)
		+ 2 hubbleBC[] (2 primehubbleBC[] - hubbleBC[]^2);
	tmp = tmp //.primehubbleBC[] :> (scaleB[]/scale[])^2 (
			+ primehubbleC[]
			- hubbleC[]^2
			- lambdaX[] (pprimeX[] - hubbleC[] primeX[])
			- lambdaS[] (pprimescalar[] - hubbleC[] primescalar[])
			- lambdaXX[] primeX[]^2
			- 2 lambdaSX[] primescalar[] primeX[]
			- lambdaSS[] primescalar[]^2)
		+ hubbleBC[]^2;
	tmp = tmp //.hubbleBC[] :> scaleB[]/scale[] (
			+ hubbleC[]
			- lambdaX[] primeX[]
			- lambdaS[] primescalar[]);
	(* X *)
	tmp = tmp //.ppprimeX[] :> primescalar[] pppprimescalar[]/scale[]^2
		+ 3 pprimescalar[] ppprimescalar[]/scale[]^2
		- 6 hubbleC[] pprimeX[]
		- 2 (3 primehubbleC[] + 6 hubbleC[]^2) primeX[]
		- 2 (pprimehubbleC[] + 6 hubbleC[] primehubbleC[] + 4 hubbleC[]^3) X[];
	tmp = tmp //.pprimeX[] :> primescalar[]/scale[]^2 ppprimescalar[]
		+ pprimescalar[]^2/scale[]^2
		- 2 (primehubbleC[] + 2 hubbleC[]^2) X[]
		- 4 hubbleC[] primeX[];
	tmp = tmp //.primeX[] :> primescalar[] pprimescalar[]/scale[]^2
		- 2 hubbleC[] X[];
	tmp = tmp //.X[] :> primescalar[]^2/2/scale[]^2;
	(* Matter *)
	tmp = tmp //.primedensityB[] :> scaleB[]/scale[] primedensity[];
	tmp = tmp //.primepressureB[] :> scaleB[]/scale[] primepressure[];
	tmp = tmp //.primewB[] :> scaleB[]/scale[] primew[];
	(*(* Inside G functions *)
	tmp = tmp //.scalarB[] :> scalar[];
	tmp = tmp //.XB[] :> X[];
	(* Matter *)
	tmp = tmp //.densityB[] :> density[];
	tmp = tmp //.pressureB[] :> pressure[];
	tmp = tmp //.wB[] :> w[];*);
	(* Lambdas *)
	tmp = tmp //.lambdaS[] -> D[lambdaval, {scalar[], 1}, {X[], 0}];
	tmp = tmp //.lambdaX[] -> D[lambdaval, {scalar[], 0}, {X[], 1}];
	tmp = tmp //.lambdaSS[] -> D[lambdaval, {scalar[], 2}, {X[], 0}];
	tmp = tmp //.lambdaSX[] -> D[lambdaval, {scalar[], 1}, {X[], 1}];
	tmp = tmp //.lambdaXX[] -> D[lambdaval, {scalar[], 0}, {X[], 2}];
	tmp = tmp //.lambdaSSS[] -> D[lambdaval, {scalar[], 3}, {X[], 0}];
	tmp = tmp //.lambdaSSX[] -> D[lambdaval, {scalar[], 2}, {X[], 1}];
	tmp = tmp //.lambdaSXX[] -> D[lambdaval, {scalar[], 1}, {X[], 2}];
	tmp = tmp //.lambdaXXX[] -> D[lambdaval, {scalar[], 0}, {X[], 3}];
	tmp = tmp //.scaleB[] :> Exp[-lambdaval]  scale[];
	(* kscal *)
	tmp = tmp //.kscalB[] :> scaleB[]/scale[] kscal[];
	tmp
]


ReplaceBwithA[expr_] := Module[{tmp},
	tmp = expr;
	(* Scale and Hubble *)
	tmp = tmp //.scaleB[] :> scale[];
	tmp = tmp //.hubbleBC[] :> hubbleC[];
	tmp = tmp //.primehubbleBC[] :> primehubbleC[];
	tmp = tmp //.pprimehubbleBC[] :> pprimehubbleC[];
	(* Scalar field *)
	tmp = tmp //.scalarB[] :> scalar[];
	tmp = tmp //.primescalarB[] :> primescalar[];
	tmp = tmp //.pprimescalarB[] :> pprimescalar[];
	tmp = tmp //.ppprimescalarB[] :> ppprimescalar[];
	tmp = tmp //.pppprimescalarB[] :> pppprimescalar[];
	(* X *)
	tmp = tmp //.XB[] :> X[];
	(* Matter *)
	tmp = tmp //.densityB[] :> density[];
	tmp = tmp //.primedensityB[] :> primedensity[];
	tmp = tmp //.pprimedensityB[] :> pprimedensity[];
	tmp = tmp //.pressureB[] :> pressure[];
	tmp = tmp //.primepressureB[] :> primepressure[];
	tmp = tmp //.wB[] :> w[];
	tmp = tmp //.primewB[] :> primew[];
	tmp
]


ReplaceAwithB[expr_] := Module[{tmp},
	tmp = expr;
	(* Scale and Hubble *)
	tmp = tmp //.scale[] :> scaleB[];
	tmp = tmp //.hubbleC[] :> hubbleBC[];
	tmp = tmp //.primehubbleC[] :> primehubbleBC[];
	tmp = tmp //.pprimehubbleC[] :> pprimehubbleBC[];
	(* Scalar field *)
	tmp = tmp //.scalar[] :> scalarB[];
	tmp = tmp //.primescalar[] :> primescalarB[];
	tmp = tmp //.pprimescalar[] :> pprimescalarB[];
	tmp = tmp //.ppprimescalar[] :> ppprimescalarB[];
	tmp = tmp //.pppprimescalar[] :> pppprimescalarB[];
	(* X *)
	tmp = tmp //.X[] :> XB[];
	(* Matter *)
	tmp = tmp //.density[] :> densityB[];
	tmp = tmp //.primedensity[] :> primedensityB[];
	tmp = tmp //.pprimedensity[] :> pprimedensityB[];
	tmp = tmp //.pressure[] :> pressureB[];
	tmp = tmp //.primepressure[] :> primepressureB[];
	tmp = tmp //.w[] :> wB[];
	tmp = tmp //.primew[] :> primewB[];
	tmp
]


TimeDerB[expr_] := Module[{tmp},
	tmp = expr;
	tmp = tmp // ReplaceBwithA;
	tmp = tmp // TimeDer;
	tmp = tmp // ReplaceAwithB;
	tmp
]


RedefHpert[expr_] := Module[{tmp, idx, coeff},
	idx = DummyIn@TangentM1;
	coeff = -3 primescalar[]/scale[]^2 Derivative[0,1][G4fun][scalar[],X[]]/G4fun[scalar[],X[]];
	tmp = expr;
	(* Third derivative *)
	tmp = tmp //.PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-c_?TangentM1`Q]@perthsync[LI[1]] :> PD[-a]@PD[-b]@PD[-c]@perthsyncB[LI[1]]
		+ timevec[-b] timevec[-c] TimeDerG@TimeDerG@coeff timevec[idx] PD[-a]@PD[-idx]@pertscalar[LI[1]]
		+ timevec[-b] TimeDerG@coeff timevec[idx] PD[-a]@PD[-c]@PD[-idx]@pertscalar[LI[1]]
		+ timevec[-c] TimeDerG@coeff timevec[idx] PD[-a]@PD[-b]@PD[-idx]@pertscalar[LI[1]]
		+ coeff timevec[idx] PD[-a]@PD[-b]@PD[-c]@PD[-idx]@pertscalar[LI[1]]
		;
	(* Second derivative *)
	tmp = tmp //.PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@perthsync[LI[1]] :> PD[-a]@PD[-b]@perthsyncB[LI[1]]
		+ timevec[-b] TimeDerG@coeff timevec[idx] PD[-a]@PD[-idx]@pertscalar[LI[1]]
		+ coeff timevec[idx] PD[-a]@PD[-b]@PD[-idx]@pertscalar[LI[1]];
	(* First derivative *)
	tmp = tmp //.PD[-a_?TangentM1`Q]@perthsync[LI[1]] :> PD[-a]@perthsyncB[LI[1]]
		+ coeff timevec[idx] PD[-a]@PD[-idx]@pertscalar[LI[1]];
	tmp
]


(* ::Section::Closed:: *)
(*Expansion Rules*)


(****   Scalar Field   ****)

scalarrules = Flatten[{
	scalarcov[] :> scalar[],
	pertscalarcov[LI[order_]] :> pertscalar[LI[order]],
	Xcov[]:>X[],
	pertXcov[LI[order_]]:>pertX[LI[order]],
	scalarvelcov[a_?TangentM1`Q] :> timevec[a]/scale[],
	scalarvelcov[i_?TangentM3`Q] :> 0,
	MakeRule[{pertscalarvelcov[LI[1], a], -((pertpsi[LI[1]]*timevec[a])/scale[])}],
	MakeRule[{pertscalarvelcov[LI[2], a], (3*pertpsi[LI[1]]^2*timevec[a])/scale[] - (pertpsi[LI[2]]*timevec[a])/scale[] - (metric\[Delta][i, j]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a])/scale[] + (2*metric\[Delta][i, j]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]])/scale[] - (metric\[Delta][i, j]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]])/scale[] + (metric\[Delta][i, j]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[])}],
	MakeRule[{pertscalarvelcov[LI[3], a], (-15*pertpsi[LI[1]]^3*timevec[a])/scale[] + (9*pertpsi[LI[1]]*pertpsi[LI[2]]*timevec[a])/scale[] - (pertpsi[LI[3]]*timevec[a])/scale[] + (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a])/scale[] - (6*metric\[Delta][i, j]*pertphi[LI[1]]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a])/scale[] + (9*metric\[Delta][i, j]*pertpsi[LI[1]]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a])/scale[] - (3*metric\[Delta][i, j]*pertS[LI[1], -i]*pertS[LI[2], -j]*timevec[a])/scale[] - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]])/scale[] + (12*metric\[Delta][i, j]*pertphi[LI[1]]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]])/scale[] - (18*metric\[Delta][i, j]*pertpsi[LI[1]]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]])/scale[] + (3*metric\[Delta][i, j]*pertS[LI[2], -i]*timevec[a]*PD[-j][pertB[LI[1]]])/scale[] + (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]])/scale[] - (6*metric\[Delta][i, j]*pertphi[LI[1]]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]])/scale[] + (9*metric\[Delta][i, j]*pertpsi[LI[1]]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]])/scale[] + (3*metric\[Delta][i, j]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[2]]])/scale[] - (3*metric\[Delta][i, j]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[2]]])/scale[] - (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + (6*metric\[Delta][i, j]*pertphi[LI[1]]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + (3*metric\[Delta][i, j]*pertpsi[LI[1]]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - (6*metric\[Delta][i, j]*timevec[a]*timevec[b]*PD[-b][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^3*scale[]) + (3*metric\[Delta][i, j]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[2]]])/(primescalar[]^2*scale[]) + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a]*PD[-l][pertF[LI[1], -k]])/scale[] - (6*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-j][pertF[LI[1], -i]]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -i]*pertS[LI[1], -j]*timevec[a]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] - (12*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -i]*timevec[a]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-i][pertB[LI[1]]]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-i][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]^2*scale[])}],
	MakeRule[{pertscalarvelcov[LI[1], i], metric\[Delta][i, j] PD[-j]@pertV[LI[1]]}]
	(*MakeRule[{pertscalarvelcov[LI[1], i], (metric\[Delta][i, j]*pertS[LI[1], -j])/scale[] - (metric\[Delta][i, j]*PD[-j][pertB[LI[1]]])/scale[] - (metric\[Delta][i, j]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[])}],
	MakeRule[{pertscalarvelcov[LI[2], i], (-2*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertS[LI[1], -j])/scale[] + (4*metric\[Delta][i, j]*pertphi[LI[1]]*pertS[LI[1], -j])/scale[] - (2*metric\[Delta][i, j]*pertpsi[LI[1]]*pertS[LI[1], -j])/scale[] + (metric\[Delta][i, j]*pertS[LI[2], -j])/scale[] + (2*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*PD[-j][pertB[LI[1]]])/scale[] - (4*metric\[Delta][i, j]*pertphi[LI[1]]*PD[-j][pertB[LI[1]]])/scale[] + (2*metric\[Delta][i, j]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]])/scale[] - (metric\[Delta][i, j]*PD[-j][pertB[LI[2]]])/scale[] + (2*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - (4*metric\[Delta][i, j]*pertphi[LI[1]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - (2*metric\[Delta][i, j]*pertpsi[LI[1]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) + (2*metric\[Delta][i, j]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - (metric\[Delta][i, j]*PD[-j][pertscalar[LI[2]]])/(primescalar[]*scale[]) - (2*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] - (2*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + (2*metric\[Delta][i, l]*metric\[Delta][j, k]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + (2*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + (2*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + (2*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - (4*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + (4*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + (4*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]*scale[])}],
	MakeRule[{pertscalarvelcov[LI[3], i], (6*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*perth[LI[1], -l, -n]*pertS[LI[1], -j])/scale[] - 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[2], -k, -l]*pertS[LI[1], -j])/scale[] - 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertphi[LI[1]]*pertS[LI[1], -j])/scale[] + (24*metric\[Delta][i, j]*pertphi[LI[1]]^2*pertS[LI[1], -j])/scale[] + 
 (6*metric\[Delta][i, j]*pertphi[LI[2]]*pertS[LI[1], -j])/scale[] + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertpsi[LI[1]]*pertS[LI[1], -j])/scale[] - 
 (12*metric\[Delta][i, j]*pertphi[LI[1]]*pertpsi[LI[1]]*pertS[LI[1], -j])/scale[] + (9*metric\[Delta][i, j]*pertpsi[LI[1]]^2*pertS[LI[1], -j])/scale[] - 
 (3*metric\[Delta][i, j]*pertpsi[LI[2]]*pertS[LI[1], -j])/scale[] - (3*metric\[Delta][i, j]*metric\[Delta][k, l]*pertS[LI[1], -j]*pertS[LI[1], -k]*pertS[LI[1], -l])/scale[] - 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertS[LI[2], -j])/scale[] + (6*metric\[Delta][i, j]*pertphi[LI[1]]*pertS[LI[2], -j])/scale[] - 
 (3*metric\[Delta][i, j]*pertpsi[LI[1]]*pertS[LI[2], -j])/scale[] + (metric\[Delta][i, j]*pertS[LI[3], -j])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*perth[LI[1], -l, -n]*PD[-j][pertB[LI[1]]])/scale[] + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[2], -k, -l]*PD[-j][pertB[LI[1]]])/scale[] + 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertphi[LI[1]]*PD[-j][pertB[LI[1]]])/scale[] - 
 (24*metric\[Delta][i, j]*pertphi[LI[1]]^2*PD[-j][pertB[LI[1]]])/scale[] - (6*metric\[Delta][i, j]*pertphi[LI[2]]*PD[-j][pertB[LI[1]]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]])/scale[] + 
 (12*metric\[Delta][i, j]*pertphi[LI[1]]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]])/scale[] - (9*metric\[Delta][i, j]*pertpsi[LI[1]]^2*PD[-j][pertB[LI[1]]])/scale[] + 
 (3*metric\[Delta][i, j]*pertpsi[LI[2]]*PD[-j][pertB[LI[1]]])/scale[] + (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*PD[-j][pertB[LI[2]]])/scale[] - 
 (6*metric\[Delta][i, j]*pertphi[LI[1]]*PD[-j][pertB[LI[2]]])/scale[] + (3*metric\[Delta][i, j]*pertpsi[LI[1]]*PD[-j][pertB[LI[2]]])/scale[] - 
 (metric\[Delta][i, j]*PD[-j][pertB[LI[3]]])/scale[] - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*perth[LI[1], -l, -n]*PD[-j][pertscalar[LI[1]]])/
  (primescalar[]*scale[]) + (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[2], -k, -l]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertphi[LI[1]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (24*metric\[Delta][i, j]*pertphi[LI[1]]^2*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - (6*metric\[Delta][i, j]*pertphi[LI[2]]*PD[-j][pertscalar[LI[1]]])/
  (primescalar[]*scale[]) + (6*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*pertpsi[LI[1]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (12*metric\[Delta][i, j]*pertphi[LI[1]]*pertpsi[LI[1]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (3*metric\[Delta][i, j]*pertpsi[LI[1]]^2*PD[-j][pertscalar[LI[1]]])/(primescalar[]*scale[]) - (3*metric\[Delta][i, j]*pertpsi[LI[2]]*PD[-j][pertscalar[LI[1]]])/
  (primescalar[]*scale[]) - (6*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/
  (primescalar[]^2*scale[]) + (12*metric\[Delta][i, j]*pertphi[LI[1]]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + 
 (6*metric\[Delta][i, j]*pertpsi[LI[1]]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + 
 (3*metric\[Delta][i, j]*timevec[a]*PD[-a][pertscalar[LI[2]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - 
 (6*metric\[Delta][i, j]*timevec[a]*timevec[b]*PD[-a][pertscalar[LI[1]]]*PD[-b][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]])/(primescalar[]^3*scale[]) + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*perth[LI[1], -k, -l]*PD[-j][pertscalar[LI[2]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, j]*pertphi[LI[1]]*PD[-j][pertscalar[LI[2]]])/(primescalar[]*scale[]) - (3*metric\[Delta][i, j]*pertpsi[LI[1]]*PD[-j][pertscalar[LI[2]]])/
  (primescalar[]*scale[]) + (3*metric\[Delta][i, j]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[2]]])/(primescalar[]^2*scale[]) - 
 (metric\[Delta][i, j]*PD[-j][pertscalar[LI[3]]])/(primescalar[]*scale[]) + (3*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -j]*pertS[LI[1], -k]*PD[-l][pertB[LI[1]]])/
  scale[] + (6*metric\[Delta][i, j]*metric\[Delta][k, l]*pertS[LI[1], -j]*pertS[LI[1], -k]*PD[-l][pertB[LI[1]]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-k][pertB[LI[1]]]*PD[-l][pertB[LI[1]]])/scale[] - 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*pertS[LI[1], -j]*PD[-k][pertB[LI[1]]]*PD[-l][pertB[LI[1]]])/scale[] + 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-j][pertB[LI[1]]]*PD[-k][pertB[LI[1]]]*PD[-l][pertB[LI[1]]])/scale[] + 
 (6*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*perth[LI[1], -m, -n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (6*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*perth[LI[1], -m, -n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (6*metric\[Delta][i, m]*metric\[Delta][j, k]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (24*metric\[Delta][i, l]*metric\[Delta][j, k]*pertphi[LI[1]]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (6*metric\[Delta][i, l]*metric\[Delta][j, k]*pertpsi[LI[1]]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (3*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[2], -j]*PD[-l][pertF[LI[1], -k]])/scale[] - (3*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[2], -j]*PD[-l][pertF[LI[1], -k]])/
  scale[] - (6*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*perth[LI[1], -m, -n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (6*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*perth[LI[1], -m, -n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (6*metric\[Delta][i, m]*metric\[Delta][j, k]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (24*metric\[Delta][i, l]*metric\[Delta][j, k]*pertphi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (6*metric\[Delta][i, l]*metric\[Delta][j, k]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (3*metric\[Delta][i, l]*metric\[Delta][j, k]*PD[-j][pertB[LI[2]]]*PD[-l][pertF[LI[1], -k]])/scale[] + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[2]]]*PD[-l][pertF[LI[1], -k]])/scale[] - 
 (3*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -j]*PD[-l][pertF[LI[2], -k]])/scale[] - (3*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-l][pertF[LI[2], -k]])/
  scale[] + (3*metric\[Delta][i, l]*metric\[Delta][j, k]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[2], -k]])/scale[] + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[2], -k]])/scale[] - 
 (3*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -j]*pertS[LI[1], -k]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (6*metric\[Delta][i, l]*metric\[Delta][j, k]*pertS[LI[1], -j]*PD[-k][pertB[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (3*metric\[Delta][i, l]*metric\[Delta][j, k]*PD[-j][pertB[LI[1]]]*PD[-k][pertB[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, m]*metric\[Delta][j, n]*metric\[Delta][k, l]*perth[LI[1], -m, -n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*perth[LI[1], -m, -n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, j]*metric\[Delta][k, m]*metric\[Delta][l, n]*perth[LI[1], -m, -n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (24*metric\[Delta][i, j]*metric\[Delta][k, l]*pertphi[LI[1]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (6*metric\[Delta][i, j]*metric\[Delta][k, l]*pertpsi[LI[1]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - 
 (6*metric\[Delta][i, j]*metric\[Delta][k, l]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-k][pertF[LI[2], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-k][pertF[LI[2], -j]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) + 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*pertS[LI[1], -j]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[1]]]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-j][pertB[LI[1]]]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^2*scale[]) - 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-j][pertscalar[LI[1]]]*PD[-k][pertscalar[LI[1]]]*PD[-l][pertscalar[LI[1]]])/(primescalar[]^3*scale[]) + 
 (3*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[2]]])/(primescalar[]*scale[]) + 
 (3*metric\[Delta][i, j]*metric\[Delta][k, l]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[2]]])/(primescalar[]*scale[]) - 
 (48*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*pertS[LI[1], -j]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*pertS[LI[1], -j]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[2], -j]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + 
 (48*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[2]]]*PD[-l][PD[-k][pertE[LI[1]]]])/scale[] + 
 (48*metric\[Delta][i, k]*metric\[Delta][j, l]*pertphi[LI[1]]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]*scale[]) + 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*pertpsi[LI[1]]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]*scale[]) - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*timevec[a]*PD[-a][pertscalar[LI[1]]]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]^2*scale[]) + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertscalar[LI[2]]]*PD[-l][PD[-k][pertE[LI[1]]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*pertS[LI[1], -j]*PD[-l][PD[-k][pertE[LI[2]]]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertB[LI[1]]]*PD[-l][PD[-k][pertE[LI[2]]]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*PD[-j][pertscalar[LI[1]]]*PD[-l][PD[-k][pertE[LI[2]]]])/(primescalar[]*scale[]) + 
 (6*metric\[Delta][i, l]*metric\[Delta][j, n]*metric\[Delta][k, m]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] + 
 (6*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, n]*metric\[Delta][l, m]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] + 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] - 
 (6*metric\[Delta][i, l]*metric\[Delta][j, n]*metric\[Delta][k, m]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] - 
 (6*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, n]*metric\[Delta][l, m]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][pertF[LI[1], -m]])/scale[] - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*PD[-k][pertF[LI[1], -j]]*PD[-m][pertF[LI[1], -l]]*PD[-n][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, j]*metric\[Delta][k, m]*metric\[Delta][l, n]*PD[-k][pertF[LI[1], -j]]*PD[-m][pertF[LI[1], -l]]*PD[-n][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*PD[-k][pertF[LI[1], -j]]*PD[-m][pertF[LI[1], -l]]*PD[-n][pertscalar[LI[1]]])/(primescalar[]*scale[]) - 
 (6*metric\[Delta][i, j]*metric\[Delta][k, l]*metric\[Delta][m, n]*PD[-k][pertF[LI[1], -j]]*PD[-m][pertF[LI[1], -l]]*PD[-n][pertscalar[LI[1]]])/(primescalar[]*scale[]) + 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -l, -m]*pertS[LI[1], -j]*PD[-n][PD[-k][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -l, -m]*PD[-j][pertB[LI[1]]]*PD[-n][PD[-k][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -l, -m]*PD[-j][pertscalar[LI[1]]]*PD[-n][PD[-k][pertE[LI[1]]]])/(primescalar[]*scale[]) + 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*pertS[LI[1], -j]*PD[-n][PD[-l][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*PD[-j][pertB[LI[1]]]*PD[-n][PD[-l][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*perth[LI[1], -k, -m]*PD[-j][pertscalar[LI[1]]]*PD[-n][PD[-l][pertE[LI[1]]]])/(primescalar[]*scale[]) + 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*pertS[LI[1], -j]*PD[-m][PD[-k][pertE[LI[1]]]]*PD[-n][PD[-l][pertE[LI[1]]]])/scale[] - 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*PD[-j][pertB[LI[1]]]*PD[-m][PD[-k][pertE[LI[1]]]]*PD[-n][PD[-l][pertE[LI[1]]]])/scale[] - 
 (24*metric\[Delta][i, k]*metric\[Delta][j, l]*metric\[Delta][m, n]*PD[-j][pertscalar[LI[1]]]*PD[-m][PD[-k][pertE[LI[1]]]]*PD[-n][PD[-l][pertE[LI[1]]]])/(primescalar[]*scale[]) + 
 (12*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] + 
 (12*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] + 
 (12*metric\[Delta][i, m]*metric\[Delta][j, k]*metric\[Delta][l, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] + 
 (12*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*pertS[LI[1], -j]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, l]*metric\[Delta][j, m]*metric\[Delta][k, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, m]*metric\[Delta][j, k]*metric\[Delta][l, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*PD[-j][pertB[LI[1]]]*PD[-l][pertF[LI[1], -k]]*PD[-n][PD[-m][pertE[LI[1]]]])/scale[] - 
 (12*metric\[Delta][i, m]*metric\[Delta][j, n]*metric\[Delta][k, l]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]]*PD[-n][PD[-m][pertE[LI[1]]]])/(primescalar[]*scale[]) - 
 (12*metric\[Delta][i, m]*metric\[Delta][j, l]*metric\[Delta][k, n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]]*PD[-n][PD[-m][pertE[LI[1]]]])/(primescalar[]*scale[]) - 
 (12*metric\[Delta][i, k]*metric\[Delta][j, m]*metric\[Delta][l, n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]]*PD[-n][PD[-m][pertE[LI[1]]]])/(primescalar[]*scale[]) - 
 (12*metric\[Delta][i, j]*metric\[Delta][k, m]*metric\[Delta][l, n]*PD[-k][pertF[LI[1], -j]]*PD[-l][pertscalar[LI[1]]]*PD[-n][PD[-m][pertE[LI[1]]]])/(primescalar[]*scale[])}]*)
	}];
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


EQDHOSTdegeneracy = - A4fun[scalar[],X[]] + 3/2 Derivative[0,1][G4fun][scalar[],X[]]^2/G4fun[scalar[],X[]] // ToCanonical;


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


(* ::Subsection::Closed:: *)
(*Functions*)


(****   NoG's   ****)
NoG2[expr_]:=expr//.Derivative[__][G2fun][__]:>0//.G2fun[__]:>0
NoG3[expr_]:=expr//.Derivative[__][G3fun][__]:>0//.G3fun[__]:>0
NoG4[expr_]:=expr//.Derivative[__][G4fun][__]:>0//.G4fun[__]:>0//.Derivative[__][DG4fun][__]:>0//.DG4fun[__]:>0
NoG5[expr_]:=expr//.Derivative[__][G5fun][__]:>0//.G5fun[__]:>0
NoF4[expr_]:=expr//.Derivative[__][F4fun][__]:>0//.F4fun[__]:>0
NoF5[expr_]:=expr//.Derivative[__][F5fun][__]:>0//.F5fun[__]:>0


StdG4[expr_]:=expr //.Derivative[__][G4fun][__]:>0 //.G4fun[__]:>Mpl^2/2 //.Derivative[__][DG4fun][__]:>0 //.DG4fun[__]:>0


PertScalarToPertP[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertscalar[LI[3]] :> primescalar[] pertP[LI[3]] + 3 pprimescalar[] pertP[LI[2]] pertP[LI[1]] + ppprimescalar[] pertP[LI[1]]^3 // Expand;
	tmp = tmp //.pertscalarG[LI[3]] :> primescalar[] pertPG[LI[3]] + 3 pprimescalar[] pertPG[LI[2]] pertPG[LI[1]] + ppprimescalar[] pertPG[LI[1]]^3 // Expand;
	tmp = tmp //.pertscalar[LI[2]] :> primescalar[] pertP[LI[2]] + pprimescalar[] pertP[LI[1]]^2 // Expand;
	tmp = tmp //.pertscalarG[LI[2]] :> primescalar[] pertPG[LI[2]] + pprimescalar[] pertPG[LI[1]]^2 // Expand;
	tmp = tmp //.pertscalar[LI[1]] :> primescalar[] pertP[LI[1]] // Expand;
	tmp = tmp //.pertscalarG[LI[1]] :> primescalar[] pertPG[LI[1]] // Expand;
	tmp
]


PertPToPertScalar[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertP[LI[3]] :> pertscalar[LI[3]]/primescalar[] - 3 pprimescalar[]/primescalar[]^3 pertscalar[LI[2]] pertscalar[LI[1]] - (ppprimescalar[]-3 pprimescalar[]^2/primescalar[])/primescalar[]^4 pertscalar[LI[1]]^3 // Expand;
	tmp = tmp //.pertPG[LI[3]] :> pertscalarG[LI[3]]/primescalar[] - 3 pprimescalar[]/primescalar[]^3 pertscalarG[LI[2]] pertscalarG[LI[1]] - (ppprimescalar[]-3 pprimescalar[]^2/primescalar[])/primescalar[]^4 pertscalarG[LI[1]]^3 // Expand;
	tmp = tmp //.pertP[LI[2]] :> pertscalar[LI[2]]/primescalar[] - pprimescalar[]/primescalar[]^3 pertscalar[LI[1]]^2 // Expand;
	tmp = tmp //.pertPG[LI[2]] :> pertscalarG[LI[2]]/primescalar[] - pprimescalar[]/primescalar[]^3 pertscalarG[LI[1]]^2 // Expand;
	tmp = tmp //.pertP[LI[1]] :> pertscalar[LI[1]]/primescalar[] // Expand;
	tmp = tmp //.pertPG[LI[1]] :> pertscalarG[LI[1]]/primescalar[] // Expand;
	tmp
]


subStoVthird1 = 3*pertpsi[LI[1]]^2*PD[-i][pertscalar[LI[1]]] - 3*pertpsi[LI[2]]*PD[-i][pertscalar[LI[1]]] - 3*metric\[Delta][p$363887, p$363888]*pertS[LI[1], -p$363887]*
  pertS[LI[1], -p$363888]*PD[-i][pertscalar[LI[1]]] + (6*pertpsi[LI[1]]*timevec[h$363889]*PD[-h$363889][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]])/primescalar[] + 
 (3*timevec[h$363889]*PD[-h$363889][pertscalar[LI[2]]]*PD[-i][pertscalar[LI[1]]])/primescalar[] - 
 (6*timevec[h$363889]*timevec[h$363890]*PD[-h$363889][pertscalar[LI[1]]]*PD[-h$363890][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]])/primescalar[]^2 - 
 3*pertpsi[LI[1]]*PD[-i][pertscalar[LI[2]]] + (3*timevec[h$363889]*PD[-h$363889][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[2]]])/primescalar[] - 
 (primescalar[]*PD[-i][pertV[LI[3]]])/scale[] + 6*metric\[Delta][p$363887, p$363888]*pertS[LI[1], -p$363887]*PD[-i][pertscalar[LI[1]]]*PD[-p$363888][pertB[LI[1]]] - 
 3*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalar[LI[1]]]*PD[-p$363887][pertB[LI[1]]]*PD[-p$363888][pertB[LI[1]]] + 
 (6*metric\[Delta][p$363887, p$363888]*pertS[LI[1], -p$363887]*PD[-i][pertscalar[LI[1]]]*PD[-p$363888][pertscalar[LI[1]]])/primescalar[] - 
 (6*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalar[LI[1]]]*PD[-p$363887][pertB[LI[1]]]*PD[-p$363888][pertscalar[LI[1]]])/primescalar[] - 
 (3*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalar[LI[1]]]*PD[-p$363887][pertscalar[LI[1]]]*PD[-p$363888][pertscalar[LI[1]]])/primescalar[]^2;
subStoVthird2 = PD[-j]@subStoVthird1 // SVTExpand // Symmetrize // SVTExpand;
(*subStoVthird4 = PD[-j]@PD[-k]@PD[-l]@subStoVthird1 // SVTExpand // Symmetrize // SVTExpand;*)


subStoVthird1G = 3*pertpsiG[LI[1]]^2*PD[-i][pertscalarG[LI[1]]] - 3*pertpsiG[LI[2]]*PD[-i][pertscalarG[LI[1]]] - 3*metric\[Delta][p$363887, p$363888]*pertSG[LI[1], -p$363887]*
  pertSG[LI[1], -p$363888]*PD[-i][pertscalarG[LI[1]]] + (6*pertpsiG[LI[1]]*timevec[h$363889]*PD[-h$363889][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]])/primescalar[] + 
 (3*timevec[h$363889]*PD[-h$363889][pertscalarG[LI[2]]]*PD[-i][pertscalarG[LI[1]]])/primescalar[] - 
 (6*timevec[h$363889]*timevec[h$363890]*PD[-h$363889][pertscalarG[LI[1]]]*PD[-h$363890][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]])/primescalar[]^2 - 
 3*pertpsiG[LI[1]]*PD[-i][pertscalarG[LI[2]]] + (3*timevec[h$363889]*PD[-h$363889][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[2]]])/primescalar[] - 
 (primescalar[]*PD[-i][pertVG[LI[3]]])/scale[] + 6*metric\[Delta][p$363887, p$363888]*pertSG[LI[1], -p$363887]*PD[-i][pertscalarG[LI[1]]]*PD[-p$363888][pertBG[LI[1]]] - 
 3*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalarG[LI[1]]]*PD[-p$363887][pertBG[LI[1]]]*PD[-p$363888][pertBG[LI[1]]] + 
 (6*metric\[Delta][p$363887, p$363888]*pertSG[LI[1], -p$363887]*PD[-i][pertscalarG[LI[1]]]*PD[-p$363888][pertscalarG[LI[1]]])/primescalar[] - 
 (6*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalarG[LI[1]]]*PD[-p$363887][pertBG[LI[1]]]*PD[-p$363888][pertscalarG[LI[1]]])/primescalar[] - 
 (3*metric\[Delta][p$363887, p$363888]*PD[-i][pertscalarG[LI[1]]]*PD[-p$363887][pertscalarG[LI[1]]]*PD[-p$363888][pertscalarG[LI[1]]])/primescalar[]^2;
subStoVthird2G = PD[-j]@subStoVthird1G // SVTExpand // Symmetrize // SVTExpand;
(*subStoVthird4G = PD[-j]@PD[-k]@PD[-l]@subStoVthird1G // SVTExpand // Symmetrize // SVTExpand;*)


subStoVsec1 = -2*pertpsi[LI[1]]*PD[-i][pertscalar[LI[1]]] + (2*timevec[h$361546]*PD[-h$361546][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]])/primescalar[] - 
 (primescalar[]*PD[-i][pertV[LI[2]]])/scale[];
subStoVsec2 = PD[-j]@subStoVsec1 // SVTExpand // Symmetrize // SVTExpand;
subStoVsec4 = PD[-j]@PD[-k]@PD[-l]@subStoVsec1 // SVTExpand // Symmetrize // SVTExpand;


subStoVsec1G = -2*pertpsiG[LI[1]]*PD[-i][pertscalarG[LI[1]]] + (2*timevec[h$361546]*PD[-h$361546][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]])/primescalar[] - 
 (primescalar[]*PD[-i][pertVG[LI[2]]])/scale[];
subStoVsec2G = PD[-j]@subStoVsec1G // SVTExpand // Symmetrize // SVTExpand;
subStoVsec4G = PD[-j]@PD[-k]@PD[-l]@subStoVsec1G // SVTExpand // Symmetrize // SVTExpand;


PertScalarToPertV[expr_] := Module[{tmp}, tmp = expr;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[3]]], Evaluate[subStoVthird4]}] // Expand;*)
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalarG[LI[3]]], Evaluate[subStoVthird4G]}] // Expand;*)
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[3]]], Evaluate[subStoVthird2]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalarG[LI[3]]], Evaluate[subStoVthird2G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[3]]], Evaluate[subStoVthird1]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalarG[LI[3]]], Evaluate[subStoVthird1G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subStoVsec4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalarG[LI[2]]], Evaluate[subStoVsec4G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subStoVsec2]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalarG[LI[2]]], Evaluate[subStoVsec2G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalar[LI[2]]], Evaluate[subStoVsec1]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertscalarG[LI[2]]], Evaluate[subStoVsec1G]}] // Expand;
	tmp = tmp //.pertscalar[LI[1]] :> -primescalar[]/scale[] pertV[LI[1]] // Expand;
	tmp = tmp //.pertscalarG[LI[1]] :> -primescalar[]/scale[] pertVG[LI[1]] // Expand;
	tmp
]


subVtoSthird1 = (scale[]*(3*pertpsi[LI[1]]^2*primescalar[]^2*PD[-i][pertscalar[LI[1]]] - 3*pertpsi[LI[2]]*primescalar[]^2*PD[-i][pertscalar[LI[1]]] - 
   3*metric\[Delta][p$32736, p$32737]*pertS[LI[1], -p$32736]*pertS[LI[1], -p$32737]*primescalar[]^2*PD[-i][pertscalar[LI[1]]] + 
   3*primescalar[]*timevec[h$32738]*PD[-h$32738][pertscalar[LI[2]]]*PD[-i][pertscalar[LI[1]]] - 6*timevec[h$32738]*timevec[h$32739]*PD[-h$32738][pertscalar[LI[1]]]*
    PD[-h$32739][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]] + 3*primescalar[]*timevec[h$32738]*PD[-h$32738][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[2]]] - 
   3*pertpsi[LI[1]]*primescalar[]*(-2*timevec[h$32738]*PD[-h$32738][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]] + primescalar[]*PD[-i][pertscalar[LI[2]]]) - 
   primescalar[]^2*PD[-i][pertscalar[LI[3]]] + 6*metric\[Delta][p$32736, p$32737]*pertS[LI[1], -p$32736]*primescalar[]^2*PD[-i][pertscalar[LI[1]]]*
    PD[-p$32737][pertB[LI[1]]] - 3*metric\[Delta][p$32736, p$32737]*primescalar[]^2*PD[-i][pertscalar[LI[1]]]*PD[-p$32736][pertB[LI[1]]]*PD[-p$32737][pertB[LI[1]]] + 
   6*metric\[Delta][p$32736, p$32737]*pertS[LI[1], -p$32736]*primescalar[]*PD[-i][pertscalar[LI[1]]]*PD[-p$32737][pertscalar[LI[1]]] - 
   6*metric\[Delta][p$32736, p$32737]*primescalar[]*PD[-i][pertscalar[LI[1]]]*PD[-p$32736][pertB[LI[1]]]*PD[-p$32737][pertscalar[LI[1]]] - 
   3*metric\[Delta][p$32736, p$32737]*PD[-i][pertscalar[LI[1]]]*PD[-p$32736][pertscalar[LI[1]]]*PD[-p$32737][pertscalar[LI[1]]]))/primescalar[]^3;
subVtoSthird2 = PD[-j]@subVtoSthird1 // SVTExpand // Symmetrize // SVTExpand;
(*subVtoSthird4 = PD[-j]@PD[-k]@PD[-l]@subVtoSthird1 // SVTExpand // Symmetrize // SVTExpand;*)


subVtoSthird1G = (scale[]*(3*pertpsiG[LI[1]]^2*primescalar[]^2*PD[-i][pertscalarG[LI[1]]] - 3*pertpsiG[LI[2]]*primescalar[]^2*PD[-i][pertscalarG[LI[1]]] - 
   3*metric\[Delta][p$32736, p$32737]*pertSG[LI[1], -p$32736]*pertSG[LI[1], -p$32737]*primescalar[]^2*PD[-i][pertscalarG[LI[1]]] + 
   3*primescalar[]*timevec[h$32738]*PD[-h$32738][pertscalarG[LI[2]]]*PD[-i][pertscalarG[LI[1]]] - 6*timevec[h$32738]*timevec[h$32739]*PD[-h$32738][pertscalarG[LI[1]]]*
    PD[-h$32739][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]] + 3*primescalar[]*timevec[h$32738]*PD[-h$32738][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[2]]] - 
   3*pertpsiG[LI[1]]*primescalar[]*(-2*timevec[h$32738]*PD[-h$32738][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]] + primescalar[]*PD[-i][pertscalarG[LI[2]]]) - 
   primescalar[]^2*PD[-i][pertscalarG[LI[3]]] + 6*metric\[Delta][p$32736, p$32737]*pertSG[LI[1], -p$32736]*primescalar[]^2*PD[-i][pertscalarG[LI[1]]]*
    PD[-p$32737][pertBG[LI[1]]] - 3*metric\[Delta][p$32736, p$32737]*primescalar[]^2*PD[-i][pertscalarG[LI[1]]]*PD[-p$32736][pertBG[LI[1]]]*PD[-p$32737][pertBG[LI[1]]] + 
   6*metric\[Delta][p$32736, p$32737]*pertSG[LI[1], -p$32736]*primescalar[]*PD[-i][pertscalarG[LI[1]]]*PD[-p$32737][pertscalarG[LI[1]]] - 
   6*metric\[Delta][p$32736, p$32737]*primescalar[]*PD[-i][pertscalarG[LI[1]]]*PD[-p$32736][pertBG[LI[1]]]*PD[-p$32737][pertscalarG[LI[1]]] - 
   3*metric\[Delta][p$32736, p$32737]*PD[-i][pertscalarG[LI[1]]]*PD[-p$32736][pertscalarG[LI[1]]]*PD[-p$32737][pertscalarG[LI[1]]]))/primescalar[]^3;
subVtoSthird2G = PD[-j]@subVtoSthird1G // SVTExpand // Symmetrize // SVTExpand;
(*subVtoSthird4G = PD[-j]@PD[-k]@PD[-l]@subVtoSthird1G // SVTExpand // Symmetrize // SVTExpand;*)


subVtoSsec1 = -((scale[]*(2*pertpsi[LI[1]]*primescalar[]*PD[-i][pertscalar[LI[1]]] - 2*timevec[h$32124]*PD[-h$32124][pertscalar[LI[1]]]*PD[-i][pertscalar[LI[1]]] + 
    primescalar[]*PD[-i][pertscalar[LI[2]]]))/primescalar[]^2);
subVtoSsec2 = PD[-j]@subVtoSsec1 // SVTExpand // Symmetrize // SVTExpand;
subVtoSsec4 = PD[-j]@PD[-k]@PD[-l]@subVtoSsec1 // SVTExpand // Symmetrize // SVTExpand;


subVtoSsec1G = -((scale[]*(2*pertpsiG[LI[1]]*primescalar[]*PD[-i][pertscalarG[LI[1]]] - 2*timevec[h$32124]*PD[-h$32124][pertscalarG[LI[1]]]*PD[-i][pertscalarG[LI[1]]] + 
    primescalar[]*PD[-i][pertscalarG[LI[2]]]))/primescalar[]^2);
subVtoSsec2G = PD[-j]@subVtoSsec1G // SVTExpand // Symmetrize // SVTExpand;
subVtoSsec4G = PD[-j]@PD[-k]@PD[-l]@subVtoSsec1G // SVTExpand // Symmetrize // SVTExpand;


PertVToPertScalar[expr_] := Module[{tmp}, tmp = expr;
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertV[LI[3]]], Evaluate[subVtoSthird4]}] // Expand;*)
	(*tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertVG[LI[3]]], Evaluate[subVtoSthird4G]}] // Expand;*)
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertV[LI[3]]], Evaluate[subVtoSthird2]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertVG[LI[3]]], Evaluate[subVtoSthird2G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertV[LI[3]]], Evaluate[subVtoSthird1]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertVG[LI[3]]], Evaluate[subVtoSthird1G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertV[LI[2]]], Evaluate[subVtoSsec4]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertVG[LI[2]]], Evaluate[subVtoSsec4G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertV[LI[2]]], Evaluate[subVtoSsec2]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertVG[LI[2]]], Evaluate[subVtoSsec2G]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertV[LI[2]]], Evaluate[subVtoSsec1]}] // Expand;
	tmp = xSVTUtilities`FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@pertVG[LI[2]]], Evaluate[subVtoSsec1G]}] // Expand;
	tmp = tmp //.pertV[LI[1]] :> -scale[]/primescalar[] pertscalar[LI[1]] // Expand;
	tmp = tmp //.pertVG[LI[1]] :> -scale[]/primescalar[] pertscalarG[LI[1]] // Expand;
	tmp
]


PertPToPertV[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp // PertPToPertScalar;
	tmp = tmp // PertScalarToPertV;
	tmp
]


PertVToPertP[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp // PertVToPertScalar;
	tmp = tmp // PertScalarToPertP;
	tmp
]


(* ::Section::Closed:: *)
(*Tex Corrections*)


Tex[pertV] ^= "v_\\textrm{X}";


Tex[densityS] ^= "\\mathcal{E}_\\textrm{S}";
Tex[pressureS] ^= "\\mathcal{P}_\\textrm{S}";


Tex[primedensityS] ^= "\\mathcal{E}^\\prime_\\textrm{S}";
Tex[primepressureS] ^= "\\mathcal{P}^\\prime_\\textrm{S}";


Tex[pprimedensityS] ^= "\\mathcal{E}^{\\prime\\prime}_\\textrm{S}";
Tex[pprimepressureS] ^= "\\mathcal{P}^{\\prime\\prime}_\\textrm{S}";


Tex[mass2] ^= "M_*^2";
Tex[alphaM] ^= "\\alpha_\\textrm{M}";
Tex[alphaK] ^= "\\alpha_\\textrm{K}";
Tex[alphaB] ^= "\\alpha_\\textrm{B}";
Tex[alphaT] ^= "\\alpha_\\textrm{T}";
Tex[alphaH] ^= "\\alpha_\\textrm{H}";


Tex[primealphaM] ^= "\\alpha^\\prime_\\textrm{M}";
Tex[primealphaK] ^= "\\alpha^\\prime_\\textrm{K}";
Tex[primealphaB] ^= "\\alpha^\\prime_\\textrm{B}";
Tex[primealphaT] ^= "\\alpha^\\prime_\\textrm{T}";
Tex[primealphaH] ^= "\\alpha^\\prime_\\textrm{H}";


Tex[pprimealphaM] ^= "\\alpha^{\\prime\\prime}_\\textrm{M}";
Tex[pprimealphaK] ^= "\\alpha^{\\prime\\prime}_\\textrm{K}";
Tex[pprimealphaB] ^= "\\alpha^{\\prime\\prime}_\\textrm{B}";
Tex[pprimealphaT] ^= "\\alpha^{\\prime\\prime}_\\textrm{T}";
Tex[pprimealphaH] ^= "\\alpha^{\\prime\\prime}_\\textrm{H}";


Tex[alphaM2] ^= "\\alpha_\\textrm{M2}";
Tex[alphaK2] ^= "\\alpha_\\textrm{K2}";
Tex[alphaB2] ^= "\\alpha_\\textrm{B2}";
Tex[alphaT2] ^= "\\alpha_\\textrm{T2}";
Tex[alphaH2] ^= "\\alpha_\\textrm{H2}";
Tex[alphaDEG] ^= "\\alpha_\\textrm{DEG}";


Tex[primealphaM2] ^= "\\alpha^\\prime_\\textrm{M2}";
Tex[primealphaK2] ^= "\\alpha^\\prime_\\textrm{K2}";
Tex[primealphaB2] ^= "\\alpha^\\prime_\\textrm{B2}";
Tex[primealphaT2] ^= "\\alpha^\\prime_\\textrm{T2}";
Tex[primealphaH2] ^= "\\alpha^\\prime_\\textrm{H2}";
Tex[primealphaDEG] ^= "\\alpha^\\prime_\\textrm{DEG}";


Tex[pprimealphaM2] ^= "\\alpha^{\\prime\\prime}_\\textrm{M2}";
Tex[pprimealphaK2] ^= "\\alpha^{\\prime\\prime}_\\textrm{K2}";
Tex[pprimealphaB2] ^= "\\alpha^{\\prime\\prime}_\\textrm{B2}";
Tex[pprimealphaT2] ^= "\\alpha^{\\prime\\prime}_\\textrm{T2}";
Tex[pprimealphaH2] ^= "\\alpha^{\\prime\\prime}_\\textrm{H2}";
Tex[pprimealphaDEG] ^= "\\alpha^{\\prime\\prime}_\\textrm{DEG}";


Tex[alphaM3] ^= "\\alpha_\\textrm{M3}";
Tex[alphaK3] ^= "\\alpha_\\textrm{K3}";
Tex[alphaB3] ^= "\\alpha_\\textrm{B3}";
Tex[alphaT3] ^= "\\alpha_\\textrm{T3}";
Tex[alphaH3] ^= "\\alpha_\\textrm{H3}";
Tex[alphaH4] ^= "\\alpha_\\textrm{H4}";


Tex[primealphaM3] ^= "\\alpha^\\prime_\\textrm{M3}";
Tex[primealphaK3] ^= "\\alpha^\\prime_\\textrm{K3}";
Tex[primealphaB3] ^= "\\alpha^\\prime_\\textrm{B3}";
Tex[primealphaT3] ^= "\\alpha^\\prime_\\textrm{T3}";
Tex[primealphaH3] ^= "\\alpha^\\prime_\\textrm{H3}";
Tex[primealphaH4] ^= "\\alpha^\\prime_\\textrm{H4}";


Tex[pprimealphaM3] ^= "\\alpha^{\\prime\\prime}_\\textrm{M3}";
Tex[pprimealphaK3] ^= "\\alpha^{\\prime\\prime}_\\textrm{K3}";
Tex[pprimealphaB3] ^= "\\alpha^{\\prime\\prime}_\\textrm{B3}";
Tex[pprimealphaT3] ^= "\\alpha^{\\prime\\prime}_\\textrm{T3}";
Tex[pprimealphaH3] ^= "\\alpha^{\\prime\\prime}_\\textrm{H3}";
Tex[pprimealphaH4] ^= "\\alpha^{\\prime\\prime}_\\textrm{H4}";


Tex[cs2] ^= "c_\\textrm{S}^2";
Tex[ct2] ^= "c_\\textrm{T}^2";
Tex[Qs] ^= "Q_\\textrm{S}";
Tex[Qt] ^= "Q_\\textrm{T}";


Tex[primecs2] ^= "c^\\prime_\\textrm{S}^2";
Tex[primect2] ^= "c^\\prime_\\textrm{T}^2";
Tex[primeQs] ^= "Q^\\prime_\\textrm{S}";
Tex[primeQt] ^= "Q^\\prime_\\textrm{T}";


Tex[pprimecs2] ^= "c^{\\prime\\prime}_\\textrm{S}^2";
Tex[pprimect2] ^= "c^{\\prime\\prime}_\\textrm{T}^2";
Tex[pprimeQs] ^= "Q^{\\prime\\prime}_\\textrm{S}";
Tex[pprimeQt] ^= "Q^{\\prime\\prime}_\\textrm{T}";


Tex[source11] ^= "S_{11}";
