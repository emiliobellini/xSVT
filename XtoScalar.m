(* ::Package:: *)

XtoScalarrules = Xcov[]:>-1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];


X0=Xcov[] //.XtoScalarrules // Decomposition[0];
X1=Xcov[] //.XtoScalarrules // Decomposition[1];
X2=Xcov[] //.XtoScalarrules // Decomposition[2];


X1cov = Perturbation[Xcov[] //.XtoScalarrules,1] // ExpandPerturbation
X2cov = Perturbation[Xcov[] //.XtoScalarrules,2] // ExpandPerturbation


XtoScalarrules = Flatten[{MakeRule[{X[],Evaluate[X0]}],
	MakeRule[{pertX[LI[1]],Evaluate[X1]}],MakeRule[{pertX[LI[2]],Evaluate[X2]}],
	MakeRule[{pertXcov[LI[1]],Evaluate[X1cov]}],MakeRule[{pertXcov[LI[2]],Evaluate[X2cov]}]}];


XtoScalar[expr_] := expr //.XtoScalarrules //.fun_[scalar[],X0]:>fun[scalar[],X[]] // ToCanonical // ReplaceDummies


Clear[X1,X2]
