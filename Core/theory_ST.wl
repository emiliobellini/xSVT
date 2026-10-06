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


DefTensor[scalarvelcov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(V\), \(X\)]\)"]
DefTensorPerturbation[pertscalarvelcov[LI[order], \[Mu]], scalarvelcov[\[Mu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]V\), \(X\)]\)"]


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


DefTensorSVT[alphaK2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B2\)]\)", BackgroundQ->True]


DefTensorSVT[alphaK3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B3\)]\)", BackgroundQ->True]


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


(* ::Subsection::Closed:: *)
(*Sources*)


DefTensor[source11[LI[order]], {M1, M3}, PrintAs -> "\!\(\*SubscriptBox[\(S\), \(11\)]\)"]


(* ::Subsection::Closed:: *)
(*Functions*)


SubX0 = MakeRule[{X[], primescalar[]^2/2/scale[]^2}];
invSubX0={primescalar[]^n_/;EvenQ[n]:>(2 scale[]^2 X[])^(n/2),primescalar[]^n_/;(OddQ[n] && n>0):>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};
restoreXinG={Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


TimeDerG[expr_] := TimeDer[expr //.SubX0] //.restoreXinG


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
(*Functions*)


(****   NoG's   ****)
NoG2[expr_]:=expr //.Derivative[__][G2fun][__]:>0 //.G2fun[__]:>0
NoG3[expr_]:=expr //.Derivative[__][G3fun][__]:>0 //.G3fun[__]:>0
NoG4[expr_]:=expr //.Derivative[__][G4fun][__]:>0 //.G4fun[__]:>0 //.Derivative[__][DG4fun][__]:>0//.DG4fun[__]:>0


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


Tex[primealphaM] ^= "\\alpha^\\prime_\\textrm{M}";
Tex[primealphaK] ^= "\\alpha^\\prime_\\textrm{K}";
Tex[primealphaB] ^= "\\alpha^\\prime_\\textrm{B}";


Tex[pprimealphaM] ^= "\\alpha^{\\prime\\prime}_\\textrm{M}";
Tex[pprimealphaK] ^= "\\alpha^{\\prime\\prime}_\\textrm{K}";
Tex[pprimealphaB] ^= "\\alpha^{\\prime\\prime}_\\textrm{B}";


Tex[alphaK2] ^= "\\alpha_\\textrm{K2}";
Tex[alphaB2] ^= "\\alpha_\\textrm{B2}";


Tex[primealphaK2] ^= "\\alpha^\\prime_\\textrm{K2}";
Tex[primealphaB2] ^= "\\alpha^\\prime_\\textrm{B2}";


Tex[pprimealphaK2] ^= "\\alpha^{\\prime\\prime}_\\textrm{K2}";
Tex[pprimealphaB2] ^= "\\alpha^{\\prime\\prime}_\\textrm{B2}";


Tex[alphaK3] ^= "\\alpha_\\textrm{K3}";
Tex[alphaB3] ^= "\\alpha_\\textrm{B3}";


Tex[primealphaK3] ^= "\\alpha^\\prime_\\textrm{K3}";
Tex[primealphaB3] ^= "\\alpha^\\prime_\\textrm{B3}";


Tex[pprimealphaK3] ^= "\\alpha^{\\prime\\prime}_\\textrm{K3}";
Tex[pprimealphaB3] ^= "\\alpha^{\\prime\\prime}_\\textrm{B3}";


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
