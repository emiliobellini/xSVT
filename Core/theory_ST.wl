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


(* ::Subsection:: *)
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


DefTensorSVT[alphaM2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaK2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaT2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaDEG[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(DEG\)]\)", BackgroundQ->True]


DefTensorSVT[alphaM3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaK3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaB3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaT3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H4\)]\)", BackgroundQ->True]


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


EQalphaK2 = (180*F5fun[scalar[], X[]]*hubbleC[]^3*primescalar[]^5)/scale[]^8 - (72*F4fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^4)/scale[]^6 - 
 (alphaK2[]*hubbleC[]^2*mass2[])/scale[]^2 - (144*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 + 
 (225*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^10 - (3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/
  scale[]^4 - (3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 - 
 (45*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 + (54*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/
  scale[]^12 - (3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) - (15*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/
  (2*scale[]^6) - (27*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 - 
 (27*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^8) - (3*hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/
  scale[]^12 + (3*hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/scale[]^14 - 
 (primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(2*scale[]^6) - (3*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) - 
 (24*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 - (6*hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/
  scale[]^10 - (3*hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/scale[]^10 - 
 (hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(2*scale[]^12) + (2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 + 
 (9*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 + (18*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/
  scale[]^6 + (primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(2*scale[]^6) + (18*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/
  scale[]^6 + (27*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(2*scale[]^8) + 
 (3*hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/scale[]^8 + (3*hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/
  (2*scale[]^10) // ToCanonical;


EQalphaB2 = (20*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 - (16*F4fun[scalar[], X[]]*hubbleC[]*primescalar[]^4)/(3*scale[]^5) - 
 (alphaB2[]*hubbleC[]*mass2[])/scale[] - (28*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(3*scale[]^7) + 
 (18*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^9 + (4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/
  (3*scale[]^3) - (4*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(3*scale[]^9) + 
 (2*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/scale[]^11 - (primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(3*scale[]^5) - 
 (8*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(3*scale[]^5) - (5*hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/
  (3*scale[]^7) - (4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(3*scale[]^7) - 
 (hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(3*scale[]^9) - (4*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/(3*scale[]) - 
 (4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/(3*scale[]^3) + (2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/(3*scale[]^3) + 
 (2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 + (2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(3*scale[]^5) + 
 (2*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(3*scale[]^7) // ToCanonical;


EQalphaT2 = -(alphaT2[]*mass2[]) + (9*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/scale[]^6 - (2*F4fun[scalar[], X[]]*primescalar[]^4)/scale[]^4 - 
 (primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^6 + (3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^8 - 
 (primescalar[]^2*(3*pprimescalar[] + 4*hubbleC[]*primescalar[])*Derivative[0, 1][G5fun][scalar[], X[]])/(6*scale[]^4) - 
 (primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^4 - (hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^6) + 
 (primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(2*scale[]^4) // ToCanonical;


EQalphaM2 = (-6*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 - (alphaM2[]*hubbleC[]*mass2[])/scale[] + (hubbleC[]^2*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^5 // ToCanonical;


EQalphaH2 = -(alphaH2[]*mass2[]) + (3*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(2*scale[]^6) - (primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(2*scale[]^6) + 
 (3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^8) // ToCanonical;


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


EQalphaK3 = (-270*F5fun[scalar[], X[]]*hubbleC[]^3*primescalar[]^5)/scale[]^8 + (72*F4fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^4)/scale[]^6 - 
 (alphaK3[]*hubbleC[]^2*mass2[])/scale[]^2 + (324*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 - 
 (1305*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^10) + (3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/
  (2*scale[]^4) + (3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/(2*scale[]^6) + 
 (207*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 - (603*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/
  (2*scale[]^12) + (3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) + (51*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/
  (4*scale[]^6) + (27*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 + 
 (87*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(4*scale[]^8) + (69*hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/
  (2*scale[]^12) - (81*hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/(2*scale[]^14) + 
 (7*primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(4*scale[]^6) + (15*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) + 
 (123*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(2*scale[]^8) + (87*hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/
  (4*scale[]^10) + (3*hubbleC[]^2*primescalar[]^12*Derivative[0, 4][F4fun][scalar[], X[]])/(2*scale[]^14) - 
 (3*hubbleC[]^3*primescalar[]^13*Derivative[0, 4][F5fun][scalar[], X[]])/(2*scale[]^16) + (primescalar[]^8*Derivative[0, 4][G2fun][scalar[], X[]])/(4*scale[]^8) + 
 (3*hubbleC[]*primescalar[]^9*Derivative[0, 4][G3fun][scalar[], X[]])/(4*scale[]^10) + (21*hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/
  scale[]^10 + (19*hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(4*scale[]^12) + 
 (3*hubbleC[]^2*primescalar[]^10*Derivative[0, 5][G4fun][scalar[], X[]])/(2*scale[]^12) + (hubbleC[]^3*primescalar[]^11*Derivative[0, 5][G5fun][scalar[], X[]])/
  (4*scale[]^14) - (2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 - (9*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/
  (2*scale[]^4) - (18*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 - 
 (2*primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/scale[]^6 - (63*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(2*scale[]^6) - 
 (36*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^8 - (primescalar[]^8*Derivative[1, 3][G3fun][scalar[], X[]])/(4*scale[]^8) - 
 (33*hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(2*scale[]^8) - (45*hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/
  (4*scale[]^10) - (3*hubbleC[]*primescalar[]^9*Derivative[1, 4][G4fun][scalar[], X[]])/(2*scale[]^10) - 
 (3*hubbleC[]^2*primescalar[]^10*Derivative[1, 4][G5fun][scalar[], X[]])/(4*scale[]^12) // ToCanonical;


EQalphaB3 = (-16*F4fun[scalar[], X[]]*hubbleC[]*primescalar[]^4)/(15*scale[]^5) - (alphaB3[]*hubbleC[]*mass2[])/scale[] + 
 (44*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(15*scale[]^7) - (56*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/
  (5*scale[]^9) + (4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/(5*scale[]^3) + 
 (8*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(3*scale[]^9) - (26*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/
  (5*scale[]^11) - (4*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(5*scale[]^5) + 
 (4*hubbleC[]*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/(15*scale[]^11) - (2*hubbleC[]^2*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/
  (5*scale[]^13) + (primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(15*scale[]^7) + (4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/
  (5*scale[]^7) + (7*hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(15*scale[]^9) + 
 (4*hubbleC[]*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/(15*scale[]^9) + (hubbleC[]^2*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/
  (15*scale[]^11) - (16*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/(15*scale[]) - (4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/
  (5*scale[]^3) + (8*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/(15*scale[]^3) + (2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/
  (3*scale[]^5) - (2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(15*scale[]^5) - (8*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/
  (15*scale[]^7) - (2*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(15*scale[]^7) - (2*hubbleC[]*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/
  (15*scale[]^9) // ToCanonical;


EQalphaT3 = -(alphaT3[]*mass2[]) - (9*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(4*scale[]^6) + (primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^6 - 
 (9*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^8) - (3*pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/
  (8*scale[]^4) - (hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/(6*scale[]^4) + 
 (primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(4*scale[]^8) - (3*hubbleC[]*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(4*scale[]^10) + 
 (5*hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(12*scale[]^6) + (primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(4*scale[]^6) + 
 (hubbleC[]*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(8*scale[]^8) - (primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(8*scale[]^4) - 
 (primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(8*scale[]^6) // ToCanonical;


EQalphaM3 = (4*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 - (alphaM3[]*hubbleC[]*mass2[])/scale[] + (2*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^9 - (hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(3*scale[]^7) // ToCanonical;


EQalphaH3 = -(alphaH3[]*mass2[]) + (F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(4*scale[]^6) - (hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/
  (2*scale[]^8) + (primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(12*scale[]^8) - (hubbleC[]*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/
  (4*scale[]^10) // ToCanonical;


EQalphaH4 = -(alphaH4[]*mass2[]) + primescalar[]^7*hubbleC[]*Derivative[0, 1][F5fun][scalar[], X[]]/scale[]^8;


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


Tex[alphaM2] ^= "\\alpha_\\textrm{M2}";
Tex[alphaK2] ^= "\\alpha_\\textrm{K2}";
Tex[alphaB2] ^= "\\alpha_\\textrm{B2}";
Tex[alphaT2] ^= "\\alpha_\\textrm{T2}";
Tex[alphaH2] ^= "\\alpha_\\textrm{H2}";
Tex[alphaDEG] ^= "\\alpha_\\textrm{DEG}";


Tex[alphaM3] ^= "\\alpha_\\textrm{M3}";
Tex[alphaK3] ^= "\\alpha_\\textrm{K3}";
Tex[alphaB3] ^= "\\alpha_\\textrm{B3}";
Tex[alphaT3] ^= "\\alpha_\\textrm{T3}";
Tex[alphaH3] ^= "\\alpha_\\textrm{H3}";
Tex[alphaH4] ^= "\\alpha_\\textrm{H4}";


Tex[cs2] ^= "c_\\textrm{S}^2";
Tex[ct2] ^= "c_\\textrm{T}^2";
Tex[Qs] ^= "Q_\\textrm{S}";
Tex[Qt] ^= "Q_\\textrm{T}";
