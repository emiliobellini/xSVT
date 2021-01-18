(* ::Package:: *)

DefScalarFunction[DG4fun, PrintAs -> "\[CapitalDelta]\!\(\*SubscriptBox[\(G\), \(4\)]\)"]


(****   Definitions   ****)


tensorsbefore = $Tensors;


(****   Metric   ****)


DefTensor[pertetasync[LI[order]], {M1, M3}, PrintAs -> "\[Eta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perthsync[LI[order]], {M1, M3}, PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertalphasync[LI[order]], {M1, M3}, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Scalar Field   ****)


DefTensor[densitySC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(SC\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[pressureSC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(SC\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[pertVsync[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(V\), \(X\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


(****   Matter Fields   ****)


DefTensor[densityC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(mC\)]\)",
	DefInfo -> {"tensor", "background"}]
DefTensor[pressureC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(mC\)]\)",
	DefInfo -> {"tensor", "background"}]


DefTensor[densityRC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Rho]\), \(rC\)]\)",
	DefInfo -> {"tensor", "background"}]
DefTensor[pressureRC[], M1, PrintAs -> "\!\(\*SubscriptBox[\(p\), \(rC\)]\)",
	DefInfo -> {"tensor", "background"}]


DefTensor[pertdensityC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(mC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocityC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Theta]\), \(mC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressureC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(mC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(mC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertdensityRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Rho]\), \(rC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocityRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Theta]\), \(rC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressureRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(rC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshearRC[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\[Sigma]\), \(rC\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


tensorstoderive = Complement[$Tensors, tensorsbefore];
Import[$CodeDirectory<>"Core/DerivedTensors.wl"]
Clear[tensorsbefore, tensorstoderive]


(****   Commands   ****)


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


SyncToClass[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertphi[LI[order_]]:>pertetasync[LI[order]];
	tmp = tmp //.pertE[LI[order_]]:>-1/2/kscal[]^2 (perthsync[LI[order]]+6 pertetasync[LI[order]]);
	tmp = tmp //.pertV[LI[order_]]:>scale[] pertVsync[LI[order]];
	tmp = tmp //.PD[-a_]@pertetasync[LI[1]]:>1/6 (2 kscal[]^2 timevec[-a] pertalphasync[LI[1]]-PD[-a]@perthsync[LI[1]]);
	tmp // Expand
]


MatterToClass[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.pertdensity[LI[1]]:>3 pertdensityC[LI[1]]/densityC[];
	tmp = tmp //.pertvelocity[LI[1]] :> -3 scale[]/kscal[]^2/(density[] + pressure[]) pertvelocityC[LI[1]];
	tmp = tmp //.pertpressure[LI[1]] :> 3 pertpressureC[LI[1]];
	tmp = tmp //.pertshear[LI[1]] :> 3 pertshearC[LI[1]] scale[]^2/kscal[]^2/(density[] + pressure[]);
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
	tmp = tmp //.X[] :> primescalar[]^2/(2 scale[]^2);
	tmp = tmp //.primescalar[]^exp_ /; Mod[exp, 2] == 0 :> (2 scale[]^2 X[])^(exp/2);
	tmp = tmp //.primescalar[]^exp_ /; Mod[exp, 2] != 0 && Abs[exp] > 1 :> primescalar[] (2 scale[]^2 X[])^((exp - 1)/2);
	tmp // Expand
]


ClassSolve[expr_, var_] := Expand[Flatten[Solve[expr == 0, var]] //. List[elems___] /; Length[List[elems]] == 1 :> elems //. Rule -> Equal]


(* OLD *)


(*DefTensor[classE0[], M4, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(0\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[classE1[], M4, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(1\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[classE2[], M4, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(2\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[classE3[], M4, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(3\)]\)", DefInfo -> {"tensor", "local class function"}]*)


(*DefTensor[classB[], M4, PrintAs -> "B", DefInfo -> {"tensor", "local class function"}]
DefTensor[classA[], M4, PrintAs -> "A", DefInfo -> {"tensor", "local class function"}]
DefTensor[classR[], M4, PrintAs -> "R", DefInfo -> {"tensor", "local class function"}]*)


(*DefTensor[classM[], M4, PrintAs -> "M", DefInfo -> {"tensor", "local class function"}]
DefTensor[classF[], M4, PrintAs -> "F", DefInfo -> {"tensor", "local class function"}]
DefTensor[classP[], M4, PrintAs -> "P", DefInfo -> {"tensor", "local class function"}]*)


(*DefTensor[classC[], M4, PrintAs -> "C", DefInfo -> {"tensor", "local class function"}]
DefTensor[classD[], M4, PrintAs -> "D", DefInfo -> {"tensor", "local class function"}]
DefTensor[classE[], M4, PrintAs -> "E", DefInfo -> {"tensor", "local class function"}]
DefTensor[classG[], M4, PrintAs -> "G", DefInfo -> {"tensor", "local class function"}]
DefTensor[classJ[], M4, PrintAs -> "J", DefInfo -> {"tensor", "local class function"}]
DefTensor[classK[], M4, PrintAs -> "K", DefInfo -> {"tensor", "local class function"}]
DefTensor[classL[], M4, PrintAs -> "L", DefInfo -> {"tensor", "local class function"}]*)


(*DefTensor[classN[], M4, PrintAs -> "N", DefInfo -> {"tensor", "local class function"}]
DefTensor[classO[], M4, PrintAs -> "O", DefInfo -> {"tensor", "local class function"}]
DefTensor[classS[], M4, PrintAs -> "S", DefInfo -> {"tensor", "local class function"}]*)


(*DefTensor[massQS2[],M4,PrintAs->"\!\(\*SuperscriptBox[\(\[Mu]\), \(2\)]\)", DefInfo -> {"tensor", "background"}]
DefTensor[massRadQS2[],M4,PrintAs->"\!\(\*SubsuperscriptBox[\(\[Mu]\), \(R\), \(2\)]\)", DefInfo -> {"tensor", "background"}]
DefTensor[slopeQS[],M4,PrintAs->"s", DefInfo -> {"tensor", "background"}]
DefTensor[frictionQS[],M4,PrintAs->"f", DefInfo -> {"tensor", "background"}]*)


(*DefTensor[rhog[],M4,PrintAs->"\[Rho]g", DefInfo -> {"tensor", "background"}]
DefTensor[rhour[],M4,PrintAs->"\[Rho]ur", DefInfo -> {"tensor", "background"}]
DefTensor[rhocrit[],M4,PrintAs->"\[Rho]crit", DefInfo -> {"tensor", "background"}]*)


(*DefTensor[gamma1[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(1\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma2[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(2\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma3[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(3\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma4[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(4\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma5[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(5\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma6[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(6\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma7[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(7\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma8[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(8\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma9[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(9\)]\)", DefInfo -> {"tensor", "local class function"}]
DefTensor[gamma10[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Gamma]\), \(10\)]\)", DefInfo -> {"tensor", "local class function"}]*)
