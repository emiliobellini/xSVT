(* ::Package:: *)

XtoScalarrules = Xcov[]:>-1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];


X0=Xcov[] //.XtoScalarrules // Decomposition[0];
X1=Xcov[] //.XtoScalarrules // Decomposition[1];
X2=Xcov[] //.XtoScalarrules // Decomposition[2];


X0cov = Xcov[] //.XtoScalarrules
X1cov = Perturbation[Xcov[] //.XtoScalarrules,1] // ExpandPerturbation
X2cov = Perturbation[Xcov[] //.XtoScalarrules,2] // ExpandPerturbation


XtoScalarrules = Flatten[{MakeRule[{X[],Evaluate[X0]}],
	MakeRule[{pertX[LI[1]],Evaluate[X1]}],MakeRule[{pertX[LI[2]],Evaluate[X2]}],
	MakeRule[{Xcov[],Evaluate[X0cov]}],
	MakeRule[{pertXcov[LI[1]],Evaluate[X1cov]}],MakeRule[{pertXcov[LI[2]],Evaluate[X2cov]}]}];


XtoScalar[expr_] := Module[{tmp}, tmp=expr;
	tmp = tmp //.fun_[scalarcov[],Xcov[]]:>fun[scalarcov[],Scalar[fvar]];
	tmp = tmp //.XtoScalarrules;
	tmp = tmp //.fun_[scalarcov[],Scalar[fvar]]:>fun[scalarcov[],Xcov[]];
	tmp = tmp //.fun_[scalar[],X0]:>fun[scalar[],X[]];
	tmp = tmp //.MakeRule[{CD[\[Alpha]]@Xcov[],Evaluate[CD[\[Alpha]]@X0cov[]]}];
	tmp = tmp // ToCanonical // ReplaceDummies;
	tmp]


Clear[X1,X2]
