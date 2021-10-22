(* ::Package:: *)

SubX0=MakeRule[{X[],primescalar[]^2/2/scale[]^2}];
invSubX0={primescalar[]^n_/;EvenQ[n]:>(2 scale[]^2 X[])^(n/2),primescalar[]^n_/;OddQ[n]:>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};
restoreXinG={Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


(* ::Subsection::Closed:: *)
(*Definitions*)


DefScalarFunction[DG4fun, PrintAs -> "\[CapitalDelta]\!\(\*SubscriptBox[\(G\), \(4\)]\)"]


(****   Metric   ****)


DefTensor[kscalsquared[], M3, PrintAs -> "\!\(\*SuperscriptBox[\(k\), \(2\)]\)"]

AutomaticRules[kscalsquared, {PD[ind1_]@kscalsquared[] :> 0}]


DefTensorSVT[pertetasync[LI[order]], {M1, M3}, PrintAs -> "\[Eta]", ScalarPertQ->True]
DefTensorSVT[perthsync[LI[order]], {M1, M3}, PrintAs -> "h", ScalarPertQ->True]
DefTensorSVT[pertalphasync[LI[order]], {M1, M3}, PrintAs -> "\[Alpha]", ScalarPertQ->True]


(****   Scalar Field   ****)


DefTensorSVT[densitySC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(SC\)]\)", BackgroundQ->True]
DefTensorSVT[pressureSC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(SC\)]\)", BackgroundQ->True]


DefTensorSVT[pertVsync[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(V\), \(X\)]\)", ScalarPertQ->True]


DefTensorSVT[pertxsync[LI[order]], {M1, M3}, PrintAs -> "x", ScalarPertQ->True]


DefTensorSVT[checkeinsteinfirst[], {M1, M3}, PrintAs -> "C"]


DefTensorSVT[pertxsyncnum[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(x\), \(N\)]\)", ScalarPertQ->True]
DefTensorSVT[pertxsyncden[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(x\), \(D\)]\)", ScalarPertQ->True]


(****   Matter Fields   ****)


DefTensorSVT[densityC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(mC\)]\)", BackgroundQ->True]
DefTensorSVT[pressureC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(mC\)]\)", BackgroundQ->True]


DefTensorSVT[densityRC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(rC\)]\)", BackgroundQ->True]
DefTensorSVT[pressureRC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(rC\)]\)", BackgroundQ->True]


DefTensorSVT[pertdensityC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(mC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertvelocityC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Theta]\), \(mC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertpressureC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(mC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertshearC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(mC\)]\)", ScalarPertQ->True]


DefTensorSVT[pertdensityRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(rC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertvelocityRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Theta]\), \(rC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertpressureRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(rC\)]\)", ScalarPertQ->True]
DefTensorSVT[pertshearRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(rC\)]\)", ScalarPertQ->True]


DefTensorSVT[pertpressureCRSA[LI[1]], {M1, M3}, PrintAs->"\!\(\*SubscriptBox[\(\[Delta]p\), \(RSA\)]\)", ScalarPertQ->True]


(****   Extra functions   ****)


DefTensorSVT[kinDoPP[], M1, PrintAs -> "\!\(\*SubscriptBox[\(D\), \(\[Phi]\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[alphaKoPP[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\[Phi]\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[alphaBoP[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\[Phi]\)]\)", BackgroundQ->True]
DefTensorSVT[alphaHoP[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\[Phi]\)]\)", BackgroundQ->True]


DefTensorSVT[A0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[A1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[A2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[A3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(3\)]\)", BackgroundQ->True]
DefTensorSVT[A4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(4\)]\)", BackgroundQ->True]
DefTensorSVT[A5[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(5\)]\)", BackgroundQ->True]
DefTensorSVT[A6[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(6\)]\)", BackgroundQ->True]
DefTensorSVT[A7[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(7\)]\)", BackgroundQ->True]
DefTensorSVT[A8[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(8\)]\)", BackgroundQ->True]
DefTensorSVT[A9[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(9\)]\)", BackgroundQ->True]
DefTensorSVT[A10[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(10\)]\)", BackgroundQ->True]
DefTensorSVT[A11[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(11\)]\)", BackgroundQ->True]
DefTensorSVT[A12[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(12\)]\)", BackgroundQ->True]
DefTensorSVT[A13[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(13\)]\)", BackgroundQ->True]
DefTensorSVT[A14[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(14\)]\)", BackgroundQ->True]
DefTensorSVT[A15[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(15\)]\)", BackgroundQ->True]
DefTensorSVT[A16[], M1, PrintAs -> "\!\(\*SubscriptBox[\(A\), \(16\)]\)", BackgroundQ->True]


DefTensorSVT[B0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[B1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[B2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[B3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(3\)]\)", BackgroundQ->True]
DefTensorSVT[B4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(4\)]\)", BackgroundQ->True]
DefTensorSVT[B5[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(5\)]\)", BackgroundQ->True]
DefTensorSVT[B6[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(6\)]\)", BackgroundQ->True]
DefTensorSVT[B7[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(7\)]\)", BackgroundQ->True]
DefTensorSVT[B8[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(8\)]\)", BackgroundQ->True]
DefTensorSVT[B9[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(9\)]\)", BackgroundQ->True]
DefTensorSVT[B10[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(10\)]\)", BackgroundQ->True]
DefTensorSVT[B11[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(11\)]\)", BackgroundQ->True]
DefTensorSVT[B12[], M1, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(12\)]\)", BackgroundQ->True]


DefTensorSVT[C0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[C1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[C2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[C3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(3\)]\)", BackgroundQ->True]
DefTensorSVT[C4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(4\)]\)", BackgroundQ->True]
DefTensorSVT[C5[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(5\)]\)", BackgroundQ->True]
DefTensorSVT[C6[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(6\)]\)", BackgroundQ->True]
DefTensorSVT[C7[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(7\)]\)", BackgroundQ->True]
DefTensorSVT[C8[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(8\)]\)", BackgroundQ->True]
DefTensorSVT[C9[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(9\)]\)", BackgroundQ->True]
DefTensorSVT[C10[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(10\)]\)", BackgroundQ->True]
DefTensorSVT[C11[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(11\)]\)", BackgroundQ->True]
DefTensorSVT[C12[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(12\)]\)", BackgroundQ->True]
DefTensorSVT[C13[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(13\)]\)", BackgroundQ->True]
DefTensorSVT[C14[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(14\)]\)", BackgroundQ->True]
DefTensorSVT[C15[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(15\)]\)", BackgroundQ->True]
DefTensorSVT[C16[], M1, PrintAs -> "\!\(\*SubscriptBox[\(C\), \(16\)]\)", BackgroundQ->True]


DefTensorSVT[E0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[E1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[E2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[E3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(3\)]\)", BackgroundQ->True]


DefTensorSVT[P0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(P\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[P1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(P\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[P2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(P\), \(2\)]\)", BackgroundQ->True]


DefTensorSVT[R0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(R\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[R1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(R\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[R2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(R\), \(2\)]\)", BackgroundQ->True]


DefTensorSVT[massQS2[], M1, PrintAs->"\!\(\*SuperscriptBox[\(\[Mu]\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[massRQS2[], M1, PrintAs->"\!\(\*SubsuperscriptBox[\(\[Mu]\), \(R\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[slopeQS[], M1, PrintAs->"s", BackgroundQ->True]
DefTensorSVT[frictionQS[], M1, PrintAs->"f", BackgroundQ->True]


(****   Unified functions   ****)


DefTensorSVT[rescaling[], M1, PrintAs -> "r", BackgroundQ->True]


DefTensorSVT[cK[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(K\)]\)", BackgroundQ->True]
DefTensorSVT[cB[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(B\)]\)", BackgroundQ->True]
DefTensorSVT[cH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(H\)]\)", BackgroundQ->True]
DefTensorSVT[cD[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(D\)]\)", BackgroundQ->True]
DefTensorSVT[c0[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(0\)]\)", BackgroundQ->True]
DefTensorSVT[c1[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(1\)]\)", BackgroundQ->True]
DefTensorSVT[c2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(2\)]\)", BackgroundQ->True]
DefTensorSVT[c3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(3\)]\)", BackgroundQ->True]
DefTensorSVT[c4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(4\)]\)", BackgroundQ->True]
DefTensorSVT[c5[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(5\)]\)", BackgroundQ->True]
DefTensorSVT[c6[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(6\)]\)", BackgroundQ->True]
DefTensorSVT[c7[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(7\)]\)", BackgroundQ->True]
DefTensorSVT[c8[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(8\)]\)", BackgroundQ->True]
DefTensorSVT[c9[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(9\)]\)", BackgroundQ->True]
DefTensorSVT[c10[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(10\)]\)", BackgroundQ->True]
DefTensorSVT[c11[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(11\)]\)", BackgroundQ->True]
DefTensorSVT[c12[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(12\)]\)", BackgroundQ->True]
DefTensorSVT[c13[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(13\)]\)", BackgroundQ->True]
DefTensorSVT[c14[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(14\)]\)", BackgroundQ->True]
DefTensorSVT[c15[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(15\)]\)", BackgroundQ->True]
DefTensorSVT[c16[], M1, PrintAs -> "\!\(\*SubscriptBox[\(c\), \(16\)]\)", BackgroundQ->True]


(* ::Subsection::Closed:: *)
(*Functions*)


ToHorndeski[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.alphaH[]:>0 //.alphaHH[]:>0;
	tmp = tmp //.primealphaH[]:>0 //.primealphaHH[]:>0;
	tmp = tmp //.pprimealphaH[]:>0 //.pprimealphaHH[]:>0;
	tmp = tmp //.ppprimealphaH[]:>0 //.ppprimealphaHH[]:>0;
	tmp = tmp //.pppprimealphaH[]:>0 //.pppprimealphaHH[]:>0;
	tmp = tmp //.dotalphaH[]:>0 //.dotalphaHH[]:>0;
	tmp = tmp //.ddotalphaH[]:>0 //.ddotalphaHH[]:>0;
	tmp = tmp //.dddotalphaH[]:>0 //.dddotalphaHH[]:>0;
	tmp = tmp //.ddddotalphaH[]:>0 //.ddddotalphaHH[]:>0;
	tmp = tmp // NoF4 // NoF5 // Expand;
	tmp // Expand
]


ToSync[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertpsi[LI[order_]]:>0;
	tmp = tmp //.pertB[LI[order_]]:>0;
	tmp = tmp //.pertS[LI[order_],_]:>0;
	tmp // Expand
]


SyncToClass[expr_,toalpha_:True] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertphi[LI[order_]]:>pertetasync[LI[order]];
	tmp = tmp //.pertE[LI[order_]]:>-1/2/kscal[]^2 (perthsync[LI[order]]+6 pertetasync[LI[order]]);
	tmp = tmp //.pertP[LI[order_]]:> -pertVsync[LI[order]];
	If[toalpha,
		tmp = tmp //.PD[-a_]@pertetasync[LI[1]]:>1/6 (2 kscal[]^2 timevec[-a] pertalphasync[LI[1]]-PD[-a]@perthsync[LI[1]]);
	];
	tmp // Expand
]


MatterToClass[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertdensity[LI[1]]:> pertdensityC[LI[1]]/densityC[];
	tmp = tmp //.pertvelocity[LI[1]] :> -3 scale[]/kscal[]^2/(density[] + pressure[]) pertvelocityC[LI[1]];
	tmp = tmp //.pertpressure[LI[1]] :> 3 (pertpressureC[LI[1]]-pertshearC[LI[1]]);
	tmp = tmp //.pertshear[LI[1]] :> 9 pertshearC[LI[1]] scale[]^2/kscal[]^2/(density[] + pressure[]);
	tmp = tmp //.primepertshear[LI[1]] :> Evaluate[PrintWell[TimeDer[3 pertshearC[LI[1]] scale[]^2/kscal[]^2/(density[] + pressure[])]]];
	tmp = tmp //.density[]:>3 densityC[] //.primedensity[]:>3 primedensityC[];
	tmp = tmp //.densityS[]:>3 densitySC[] //.primedensityS[]:>3 primedensitySC[];
	tmp = tmp //.pressure[]:>3 pressureC[] //.primepressure[]:>3 primepressureC[];
	tmp = tmp //.pressureS[]:>3 pressureSC[] //.primepressureS[]:>3 primepressureSC[];
	tmp // Expand
]


HubbleToClass[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pprimehubbleC[] :> scale[] pprimehubbleP[] + 3 scale[]^2 hubbleP[] primehubbleP[] + 2 scale[]^3 hubbleP[]^3;
	tmp = tmp //.primehubbleC[] :> scale[] primehubbleP[] + scale[]^2 hubbleP[]^2;
	tmp = tmp //.hubbleC[] :> scale[] hubbleP[];
	tmp // Expand
]


ClassSolve[expr_, var_] := Expand[Flatten[Solve[expr == 0, var]] //. List[elems___] /; Length[List[elems]] == 1 :> elems //. Rule -> Equal]


ScalarToXsync[expr_]:=Module[{tmp},
	tmp = expr //.alphaKoPP[]:>cK[] //.alphaBoP[]:>cB[] //.alphaHoP[]:>cH[];
	tmp = tmp //.kinDoPP[]:>cD[] //.C0[]:>c0[] //.C1[]:>c1[];
	tmp = tmp //.C2[]:>c2[] //.C3[]:>c3[] //.C4[]:>c4[];
	tmp = tmp //.C5[]:>c5[] //.C6[]:>c6[] //.C7[]:>c7[];
	tmp = tmp //.C8[]:>c8[] //.C9[]:>c9[] //.C10[]:>c10[];
	tmp = tmp //.C11[]:>c11[] //.C12[]:>c12[] //.C13[]:>c13[];
	tmp = tmp //.C14[]:>c14[] //.C15[]:>c15[] //.C16[]:>c16[];
	tmp = tmp // Expand;
	tmp = tmp //.PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pertscalar[LI[1]]:>Mpl rescaling[] PD[-a]@PD[-b]@pertxsync[LI[1]] // Expand;
	tmp = tmp //.PD[-a_?TangentM1`Q]@pertscalar[LI[1]]:>Mpl rescaling[] PD[-a]@pertxsync[LI[1]] // Expand;
	tmp = tmp //.pertscalar[LI[1]]:>Mpl rescaling[] pertxsync[LI[1]] // Expand;
	tmp
]


XsyncToVsync[expr_]:=Module[{tmp},
	tmp = expr //.cK[]:>alphaK[] //.cB[]:>alphaB[] //.cH[]:>alphaH[];
	tmp = tmp //.cD[]:>kinD[] //.c0[]:>A0[] //.c1[]:>A1[];
	tmp = tmp //.c2[]:>A2[] //.c3[]:>A3[] //.c4[]:>A4[];
	tmp = tmp //.c5[]:>A5[] //.c6[]:>A6[] //.c7[]:>A7[];
	tmp = tmp //.c8[]:>A8[] //.c9[]:>A9[] //.c10[]:>A10[];
	tmp = tmp //.c11[]:>A11[] //.c12[]:>A12[] //.c13[]:>A13[];
	tmp = tmp //.c14[]:>A14[] //.c15[]:>A15[] //.c16[]:>A16[];
	tmp = tmp // Expand;
	tmp = tmp //.rescaling[]:>-scale[] hubbleP[] // Expand;
	tmp = tmp //.pertxsync[LI[1]]:>pertVsync[LI[1]] // Expand;
	tmp
]


XsyncToScalar[expr_]:=Module[{tmp},
	tmp = expr //.cK[]:>alphaKoPP[] //.cB[]:>alphaBoP[] //.cH[]:>alphaHoP[];
	tmp = tmp //.cD[]:>kinDoPP[] //.c0[]:>C0[] //.c1[]:>C1[];
	tmp = tmp //.c2[]:>C2[] //.c3[]:>C3[] //.c4[]:>C4[];
	tmp = tmp //.c5[]:>C5[] //.c6[]:>C6[] //.c7[]:>C7[];
	tmp = tmp //.c8[]:>C8[] //.c9[]:>C9[] //.c10[]:>C10[];
	tmp = tmp //.c11[]:>C11[] //.c12[]:>C12[] //.c13[]:>C13[];
	tmp = tmp //.c14[]:>C14[] //.c15[]:>C15[] //.c16[]:>C16[];
	tmp = tmp //.rescaling[]:>1/Mpl // Expand;
	tmp = tmp //.pertxsync[LI[1]]:>pertscalar[LI[1]] // Expand;
	tmp
]


(* ::Subsection::Closed:: *)
(*MathematicaToClass Dictionary*)


(**
Here it is possible to give more values to each key.
When converting mathematica expressions to Class only
the first value is being used. But when Class code is
converted to Mathematica expressions all the values are
used to identify each Mathematica symbol.
The ordering is not important.
**)
$MathematicaToClass = 
	<|
	(* Metric *)
	scale[]            -> {"a"},
	hubbleP[]          -> {"H"},
	primehubbleP[]     -> {"pvecback[pba->index_bg_H_prime]"},
	pprimehubbleP[]    -> {"pvecback[pba->index_bg_H_prime_prime]"},
	kscalsquared[]     -> {"k2"},
	(* Scalar field *)
	X[]                -> {"X"},
	scalar[]           -> {"phi"},
	primescalar[]      -> {"phi_prime"},
	primescalar[]      -> {"phi_prime"},
	pprimescalar[]     -> {"pvecback[pba->index_bg_phi_prime_prime_smg]"},
	(* Functions *)
	G2fun              -> {"G2"},
	G3fun              -> {"G3"},
	G4fun              -> {"G4"},
	G5fun              -> {"G5"},
	F4fun              -> {"F4"},
	F5fun              -> {"F5"},
	DG4fun             -> {"DG4"},
	(* Densities *)
	densityC[]         -> {"rho_tot"},
	pressureC[]        -> {"p_tot"},
	densityRC[]        -> {"rho_r"},
	primepressureC[]   -> {"p_tot_p"},
	primedensitySC[]   -> {"pvecback[pba->index_bg_rho_prime_smg]"},
	densitySC[]        -> {"rho_smg","pvecback[pba->index_bg_rho_smg]"},
	pressureSC[]       -> {"p_smg","pvecback[pba->index_bg_p_smg]"},
	primepressureSC[]  -> {"p_smg_p"},
	primecurrentS[]    -> {"pvecback[pba->index_bg_current_prime_smg]"},
	currentS[]         -> {"pvecback[pba->index_bg_current_smg]"},
	shiftS[]           -> {"pvecback[pba->index_bg_shift_smg]"},
	(* Densities *)
	mass2[]            -> {"M2","pvecback[pba->index_bg_M2_smg]"},
	Dmass2[]           -> {"DelM2","pvecback[pba->index_bg_delta_M2_smg]"},
	alphaK[]           -> {"kin","pvecback[pba->index_bg_kineticity_smg]"},
	alphaB[]           -> {"bra","pvecback[pba->index_bg_braiding_smg]"},
	alphaT[]           -> {"ten","pvecback[pba->index_bg_tensor_excess_smg]"},
	alphaM[]           -> {"run","pvecback[pba->index_bg_mpl_running_smg]"},
	alphaH[]           -> {"beh","pvecback[pba->index_bg_beyond_horndeski_smg]"},
	alphaKoPP[]        -> {"kin_ss","pvecback[pba->index_bg_kineticity_over_phiphi_smg]"},
	alphaBoP[]         -> {"bra_s","pvecback[pba->index_bg_braiding_over_phi_smg]"},
	alphaHoP[]         -> {"beh_s","pvecback[pba->index_bg_beyond_horndeski_over_phi_smg]"},
	primealphaK[]      -> {"kin_p","pvecback[pba->index_bg_kineticity_prime_smg]"},
	primealphaB[]      -> {"bra_p","pvecback[pba->index_bg_braiding_prime_smg]"},
	primealphaT[]      -> {"ten_p","pvecback[pba->index_bg_tensor_excess_prime_smg]"},
	primealphaM[]      -> {"run_p","pvecback[pba->index_bg_mpl_running_prime_smg]"},
	primealphaH[]      -> {"beh_p","pvecback[pba->index_bg_beyond_horndeski_prime_smg]"},
	(* E's *)
	E0[]               -> {"E0", "pvecback[pba->index_bg_E0_smg]"},
	E1[]               -> {"E1", "pvecback[pba->index_bg_E1_smg]"},
	E2[]               -> {"E2", "pvecback[pba->index_bg_E2_smg]"},
	E3[]               -> {"E3", "pvecback[pba->index_bg_E3_smg]"},
	(* P's *)
	P0[]               -> {"P0", "pvecback[pba->index_bg_P0_smg]"},
	P1[]               -> {"P1", "pvecback[pba->index_bg_P1_smg]"},
	P2[]               -> {"P2", "pvecback[pba->index_bg_P2_smg]"},
	(* R's *)
	R0[]               -> {"R0", "pvecback[pba->index_bg_R0_smg]"},
	R1[]               -> {"R1", "pvecback[pba->index_bg_R1_smg]"},
	R2[]               -> {"R2", "pvecback[pba->index_bg_R2_smg]"},
	(* A's *)
	kinD[]             -> {"pvecback[pba->index_bg_kinetic_D_smg]"},
	A0[]               -> {"pvecback[pba->index_bg_A0_smg]"},
	A1[]               -> {"pvecback[pba->index_bg_A1_smg]"},
	A2[]               -> {"pvecback[pba->index_bg_A2_smg]"},
	A3[]               -> {"pvecback[pba->index_bg_A3_smg]"},
	A4[]               -> {"pvecback[pba->index_bg_A4_smg]"},
	A5[]               -> {"pvecback[pba->index_bg_A5_smg]"},
	A6[]               -> {"pvecback[pba->index_bg_A6_smg]"},
	A7[]               -> {"pvecback[pba->index_bg_A7_smg]"},
	A8[]               -> {"pvecback[pba->index_bg_A8_smg]"},
	A9[]               -> {"pvecback[pba->index_bg_A9_smg]"},
	A10[]              -> {"pvecback[pba->index_bg_A10_smg]"},
	A11[]              -> {"pvecback[pba->index_bg_A11_smg]"},
	A12[]              -> {"pvecback[pba->index_bg_A12_smg]"},
	A13[]              -> {"pvecback[pba->index_bg_A13_smg]"},
	A14[]              -> {"pvecback[pba->index_bg_A14_smg]"},
	A15[]              -> {"pvecback[pba->index_bg_A15_smg]"},
	A16[]              -> {"pvecback[pba->index_bg_A16_smg]"},
	(* B's *)
	B0[]               -> {"B0", "pvecback[pba->index_bg_B0_smg]"},
	B1[]               -> {"B1", "pvecback[pba->index_bg_B1_smg]"},
	B2[]               -> {"B2", "pvecback[pba->index_bg_B2_smg]"},
	B3[]               -> {"B3", "pvecback[pba->index_bg_B3_smg]"},
	B4[]               -> {"B4", "pvecback[pba->index_bg_B4_smg]"},
	B5[]               -> {"B5", "pvecback[pba->index_bg_B5_smg]"},
	B6[]               -> {"B6", "pvecback[pba->index_bg_B6_smg]"},
	B7[]               -> {"B7", "pvecback[pba->index_bg_B7_smg]"},
	B8[]               -> {"B8", "pvecback[pba->index_bg_B8_smg]"},
	B9[]               -> {"B9", "pvecback[pba->index_bg_B9_smg]"},
	B10[]              -> {"B10", "pvecback[pba->index_bg_B10_smg]"},
	B11[]              -> {"B11", "pvecback[pba->index_bg_B11_smg]"},
	B12[]              -> {"B12", "pvecback[pba->index_bg_B12_smg]"},
	(* C's *)
	kinDoPP[]          -> {"pvecback[pba->index_bg_kinetic_D_over_phiphi_smg]"},
	C0[]               -> {"pvecback[pba->index_bg_C0_smg]"},
	C1[]               -> {"pvecback[pba->index_bg_C1_smg]"},
	C2[]               -> {"pvecback[pba->index_bg_C2_smg]"},
	C3[]               -> {"pvecback[pba->index_bg_C3_smg]"},
	C4[]               -> {"pvecback[pba->index_bg_C4_smg]"},
	C5[]               -> {"pvecback[pba->index_bg_C5_smg]"},
	C6[]               -> {"pvecback[pba->index_bg_C6_smg]"},
	C7[]               -> {"pvecback[pba->index_bg_C7_smg]"},
	C8[]               -> {"pvecback[pba->index_bg_C8_smg]"},
	C9[]               -> {"pvecback[pba->index_bg_C9_smg]"},
	C10[]              -> {"pvecback[pba->index_bg_C10_smg]"},
	C11[]              -> {"pvecback[pba->index_bg_C11_smg]"},
	C12[]              -> {"pvecback[pba->index_bg_C12_smg]"},
	C13[]              -> {"pvecback[pba->index_bg_C13_smg]"},
	C14[]              -> {"pvecback[pba->index_bg_C14_smg]"},
	C15[]              -> {"pvecback[pba->index_bg_C15_smg]"},
	C16[]              -> {"pvecback[pba->index_bg_C16_smg]"},
	(* c's *)
	rescaling[]        -> {"res"},
	cD[]               -> {"cD"},
	cK[]               -> {"cK"},
	cB[]               -> {"cB"},
	cH[]               -> {"cH"},
	c0[]               -> {"c0"},
	c1[]               -> {"c1"},
	c2[]               -> {"c2"},
	c3[]               -> {"c3"},
	c4[]               -> {"c4"},
	c5[]               -> {"c5"},
	c6[]               -> {"c6"},
	c7[]               -> {"c7"},
	c8[]               -> {"c8"},
	c9[]               -> {"c9"},
	c10[]              -> {"c10"},
	c11[]              -> {"c11"},
	c12[]              -> {"c12"},
	c13[]              -> {"c13"},
	c14[]              -> {"c14"},
	c15[]              -> {"c15"},
	c16[]              -> {"c16"},
	primerescaling[]   -> {"res_p"},
	primecD[]          -> {"cD_p"},
	primecB[]          -> {"cB_p"},
	primecH[]          -> {"cH_p"},
	primec9[]          -> {"c9_p"},
	primec10[]         -> {"c10_p"},
	primec12[]         -> {"c12_p"},
	primec13[]         -> {"c13_p"},
	(* Perturbations metric *)
	checkeinsteinfirst[]      -> {"ppw->pvecmetric[ppw->index_mt_checkeinstein00_smg]"},
	pertetasync[LI[1]]        -> {"ppw->pvecmetric[ppw->index_mt_eta]"},
	primepertetasync[LI[1]]   -> {"ppw->pvecmetric[ppw->index_mt_eta_prime]"},
	primeperthsync[LI[1]]     -> {"ppw->pvecmetric[ppw->index_mt_h_prime]"},
	pprimeperthsync[LI[1]]    -> {"ppw->pvecmetric[ppw->index_mt_h_prime_prime]"},
	pertalphasync[LI[1]]      -> {"ppw->pvecmetric[ppw->index_mt_alpha]"},
	primepertalphasync[LI[1]] -> {"ppw->pvecmetric[ppw->index_mt_alpha_prime]"},
	(* Perturbations matter *)
	pertdensityC[LI[1]]       -> {"ppw->delta_rho"},
	pertpressureC[LI[1]]      -> {"ppw->delta_p"},
	pertvelocityC[LI[1]]      -> {"ppw->rho_plus_p_theta"},
	pertshearC[LI[1]]         -> {"ppw->rho_plus_p_shear"},
	pertpressureCRSA[LI[1]]   -> {"ppw->pvecmetric[ppw->index_mt_rsa_p_smg]"},
	pertdensityRC[LI[1]]      -> {"ppw->delta_rho_r"},
	pertvelocityRC[LI[1]]     -> {"ppw->rho_plus_p_theta_r"},
	(* Perturbations scalar field *)
	pertxsync[LI[1]]          -> {"ppw->pvecmetric[ppw->index_mt_x_smg]", "*x_qs_smg"},
	primepertxsync[LI[1]]     -> {"ppw->pvecmetric[ppw->index_mt_x_prime_smg]", "*x_prime_qs_smg"},
	pprimepertxsync[LI[1]]    -> {"ppw->pvecmetric[ppw->index_mt_x_prime_prime_smg]"},
	primepertxsyncnum[LI[1]]  -> {"x_prime_qs_smg_num"},
	primepertxsyncden[LI[1]]  -> {"x_prime_qs_smg_den"},
	(* Quasi static approximation *)
	massQS2[]                 -> {"mass2_qs"},
	primemassQS2[]            -> {"mass2_qs_p"},
	massRQS2[]                -> {"rad2_qs"},
	frictionQS[]              -> {"friction_qs"},
	slopeQS[]                 -> {"slope_qs"}
	|>;


(* ::Subsection::Closed:: *)
(*MathematicaToClass*)


$MathematicaToClass::usage = "$MathematicaToClass is a gloval variable that contains \
the Association object (similar to dictionary in python) used to convert Mathematica's \
expressions to Class code.";


MathematicaToClass::usage = "MathematicaToClass[expr] returns the Mathematica \
expression expr as a string that can be pasted into Class.";

SymbolRules::usage = "SymbolRules (Association, default: $MathematicaToClass) \
is an option for MathematicaToClass and ClassToMathematica. It contains the \
Association object (similar to dictionary in python) used to convert Mathematica's \
expressions to Class code.";


Options@MathematicaToClass = {
	SymbolRules -> $MathematicaToClass,
	Verbose     -> False
};

MathematicaToClass[expr_, OptionsPattern[]] := Module[
	{
	symbols = OptionValue@SymbolRules,
	verbose = OptionValue@Verbose,
	totmissing = {},
	toclass, missingQ, out
	},
	
	missingQ[symb_] := Module[{istens, isfun, ismissing, tot},
		istens = xTensorQ@Head@symb;
		isfun = ScalarFunctionQ@symb;
		ismissing = symbols[symb]===Missing["KeyAbsent",symb];
		tot = (istens || isfun) && ismissing;
		If[tot && verbose && Not@MemberQ[totmissing, symb],
			AppendTo[totmissing,symb];
			Print["WARNING: "<>ToString@symb<>" is missing!"]
		];
		tot
	];
	
	(* Equations *)
	toclass[Equal[expr1_, expr2_]] := toclass[expr1] <> " = " <> toclass[expr2];
	(* Sums *)
	toclass[expr1_ + expr2_] := toclass[expr1] <> " + " <> toclass[expr2];
	(* Products *)
	toclass[expr1_*expr2_] /; ToString[Head[expr1]] == "Plus" && ToString[Head[expr2]] == "Plus" := "(" <> toclass[expr1] <> ")*(" <> toclass[expr2] <> ")";
	toclass[expr1_*expr2_] /; ToString[Head[expr1]] == "Plus" && ToString[Head[expr2]] != "Plus" := "(" <> toclass[expr1] <> ")*" <> toclass[expr2];
	toclass[expr1_*expr2_] /; ToString[Head[expr1]] != "Plus" && ToString[Head[expr2]] == "Plus" := toclass[expr1] <> "*(" <> toclass[expr2] <> ")";
	toclass[expr1_*expr2_] /; ToString[Head[expr1]] != "Plus" && ToString[Head[expr2]] != "Plus" := toclass[expr1] <> "*" <> toclass[expr2];
	(* Sqrt *)
	toclass[Sqrt[expr1_]] := "sqrt(" <> toclass[expr1] <> ")";
	(* Numbers *)
	toclass[n_?NumberQ] /; ToString[Head[n]] == "Rational" && n >= 0 := ToString[N[Numerator[n]]] <> "/" <> ToString[N[Denominator[n]]];
	toclass[n_?NumberQ] /; ToString[Head[n]] == "Rational" && n < 0 := "(" <> ToString[N[Numerator[n]]] <> ")/" <> ToString[N[Denominator[n]]];
	toclass[n_?NumberQ] /; ToString[Head[n]] != "Rational" && n >= 0 := ToString[N[n]];
	toclass[n_?NumberQ] /; ToString[Head[n]] != "Rational" && n < 0 := "(" <> ToString[N[n]] <> ")";
	(* Powers *)
	toclass[expr1_^n_] /; ToString[Head[n]] == "Rational" := "pow(" <> toclass[expr1] <> "," <> ToString[Numerator[n]] <> "/" <> ToString[Denominator[n]] <> ")";
	toclass[expr1_^n_] /; ToString[Head[n]] != "Rational" := "pow(" <> toclass[expr1] <> "," <> ToString[n] <> ")";
	(* G functions *)
	toclass[fun_[field1_, field2_]] := toclass[fun];
	toclass[Derivative[n1_, n2_][fun_][field1_, field2_]] := toclass[fun] <> "_" <> StringJoin[Table[toclass[field2], {count, n2}]] <> StringJoin[Table[toclass[field1], {count, n1}]];
	(* Tensors *)
	toclass[symb_] /;Not@missingQ@symb := symbols[symb][[1]];
	toclass[symb_] /;missingQ@symb := ToString@Head@symb;

	out = expr // toclass;
	out <> ";"
]


(* ::Subsection:: *)
(*ClassToMathematica*)


ClassToMathematica::usage = "ClassToMathematica[text, var, pos:1] looks for var in text, \
trying to identify possible definitions for var. It selects the definition at position pos \
and convert it as a Mathematica expression. var is treated as a regular expression, which \
means that all the special characters should be properly escaped.";

Gfunctions::usage = "Gfunctions (List, default: {G2fun, G3fun, G4fun, DG4fun, \
G5fun, F4fun, F5fun} is an option for ClassToMathematica. It contains the list \
of all the G functions (it is important that they depend on GfunDependence).";
GfunDependence::usage = "GfunDependence (List, default: {scalar[], X[]}) is an \
option for ClassToMathematica. It contains the ordered list of dependences of \
the G functions.";


RegexEquation[var_] := RegularExpression["\\n\\s*"<>var<>"\\s*=[^%;]*;"]


Options@ParseEquation = {
	Verbose        -> False
};

ParseEquation[text_, var_,pos_:1,OptionsPattern[]]:=Module[
	{
	verbose = OptionValue@Verbose,
	list,str
	},
	str = "";
	list = StringCases[text,RegexEquation@var];
	If[Length@list==0,
		If[verbose,
			Print["WARNING: Variable "<>var<>" not found!"];
		];
		Return[str];
	];
	If[Length@list>1,
		If[verbose,
			Print["WARNING: Variable "<>var<>" defined "<>ToString@Length[list]<>" times!"];
			Print[StringTake[#,Min[100,StringLength[#]]]<>" ..."]&/@list;
			Print["You can choose among these definitions"];
		];
	];
	str = list[[pos]];
	str
]


Options@ClassToMathematica = {
	SymbolRules    -> $MathematicaToClass,
	Gfunctions     -> {G2fun, G3fun, G4fun, DG4fun, G5fun, F4fun, F5fun},
	GfunDependence -> {scalar[], X[]},
	Verbose        -> False
};

ClassToMathematica[text_, var_, pos_:1, OptionsPattern[]]:=Module[
	{
	dict = OptionValue@SymbolRules,
	verbose = OptionValue@Verbose,
	Gfuns = OptionValue@Gfunctions,
	Gdeps = OptionValue@GfunDependence,
	str,spec,specQ,GfunsQ,GdepsQ,GdepsN,dictQ,ldict,gd,todict
	},
	
	(* List of operators and parenthesis allowed in C *)
	spec = {"=","\\+","-","\\*","\\^","/","\\(","\\)",","};
	specQ[expr_] := Module[{tmp},
		tmp=AnyTrue[spec,StringMatchQ[expr,RegularExpression[#]]&];
		tmp
	];

	(* Convert the list of G dependence into list *)
	Gfuns = dict[#][[1]]&/@Gfuns;
	Gdeps = dict[#][[1]]&/@Gdeps;
	GfunsQ[expr_] := AnyTrue[Gfuns,StringMatchQ[expr,#]&];
	GdepsQ[expr_] := Module[{reg},
		reg = RegularExpression["("<>StringRiffle[Reverse@Gdeps,")*("]<>")*"];
		StringMatchQ[expr, reg]
	];
	GdepsN[expr_] := Module[{tmp1,tmp2},
		tmp1 = StringCount[expr,#]&/@Gdeps;
		tmp2 = StringCount[Gdeps,#]&/@Gdeps-IdentityMatrix@Length@Gdeps;
		tmp1-Dot[tmp2,tmp1]
	];
	
	(* Invert the Associaton map to get a list of {value\[Rule]key} *)
	dict = Normal@dict //.Rule[x_,{ys__}]:>Map[Rule[x,#]&,{ys}];
	dict = dict //.Rule[x_,y_?StringQ] :>Rule[y,x] // Flatten;
	dict = dict //.Rule[x_?StringQ,y_]/;Not@StringQ@y:>Rule[x,ToString@y];
	dict = Sort[dict, StringLength[#1[[1]]]>StringLength[#2[[1]]]&];
	ldict = dict //.Rule[a_,b_]:>a;
	dictQ[expr_] := MemberQ[ldict, expr];
	todict[expr_] := StringReplace[expr, dict];

	(* Parse Equation *)
	str = ParseEquation[text,var,pos,Verbose->verbose];
	(* Remove white spaces and new lines *)
	str = StringReplace[str,{
		RegularExpression["\\n"]->"",
		RegularExpression["\\s"]->"",
		RegularExpression["\\."]->""}
		];

	(* Special syntax (equal, powers) *)
	str = "("<>StringReplace[str,{"="->")==(", ";"->")"}];
	str = StringReplace[str, "pow("~~x__~~","~~n__~~")"/;StringFreeQ[x,"pow("] && StringMatchQ[n,RegularExpression["-*[0-9]+"]]:>"(("<>x<>")^("<>n<>"))"];

	(* G functions and their derivatives *)
	gd = "["<>StringRiffle[StringReplace[Gdeps,dict],","]<>"]";
	str = StringReplace[str,b1_~~x__~~b2_/;(specQ[b1] && GfunsQ[x] && specQ[b2]):>b1<>x<>gd<>b2];
	str = StringReplace[str,x__~~"_"~~y__/;(GfunsQ[x] && GdepsQ[y]):>"Derivative["<>StringRiffle[GdepsN[y],","]<>"]["<>x<>"]"<>gd];

	(* Replace dictionary of symbols *)
	(* TODO: improve this. StringReplace applied many times to replace all the occurencies but then I need to remove the extra [] *)
	spec = Union[spec,{"\\[","\\]"}];
	str = StringReplace[str,b1_~~x__~~b2_/;(specQ[b1] && dictQ[x] && specQ[b2]):>b1<>todict[x]<>b2];
	str = StringReplace[str,b1_~~x__~~b2_/;(specQ[b1] && dictQ[x] && specQ[b2]):>b1<>todict[x]<>b2];
	str = StringReplace[str,b1_~~x__~~b2_/;(specQ[b1] && dictQ[x] && specQ[b2]):>b1<>todict[x]<>b2];
	str = StringReplace[str,RegularExpression["(\\[\\])+"]:>"[]"];

	(* Replace dictionary of symbols *)
	str = str // ToExpression;

	str
]
