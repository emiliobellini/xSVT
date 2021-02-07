(* ::Package:: *)

L2 = G2fun[scalarcov[], Xcov[]];
L3 = -G3fun[scalarcov[], Xcov[]] CD[-\[Mu]]@CD[\[Mu]]@scalarcov[];
L4 = G4fun[scalarcov[], Xcov[]] RicciScalarCD[] +
	(Scalar[CD[-\[Mu]]@CD[\[Mu]]@scalarcov[]]^2 - CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Nu]]@CD[\[Mu]]@scalarcov[]) Derivative[0, 1][G4fun][scalarcov[], Xcov[]] +
	F4fun[scalarcov[], Xcov[]] epsilonmetricg[\[Alpha],\[Beta],\[Eta],\[Lambda]] epsilonmetricg[\[Mu],\[Nu],\[Sigma],-\[Lambda]] CD[-\[Alpha]]@scalarcov[] CD[-\[Mu]]@scalarcov[] CD[-\[Beta]]@CD[-\[Nu]]@scalarcov[] CD[-\[Eta]]@CD[-\[Sigma]]@scalarcov[];
L5 = G5fun[scalarcov[], Xcov[]] EinsteinCD[-\[Mu], -\[Nu]] CD[\[Mu]]@CD[\[Nu]]@scalarcov[] -
	1/6 (Scalar[CD[-\[Mu]]@CD[\[Mu]]@scalarcov[]]^3 - 3 CD[-\[Mu]]@CD[\[Mu]]@scalarcov[] CD[-\[Nu]]@CD[-\[Alpha]]@scalarcov[] CD[\[Nu]]@CD[\[Alpha]]@scalarcov[] + 2 CD[\[Mu]]@CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[-\[Mu]]@scalarcov[]) Derivative[0, 1][G5fun][scalarcov[], Xcov[]] +
	F5fun[scalarcov[], Xcov[]] epsilonmetricg[\[Alpha],\[Beta],\[Eta],\[Lambda]] epsilonmetricg[\[Mu],\[Nu],\[Sigma],\[Tau]] CD[-\[Alpha]]@scalarcov[] CD[-\[Mu]]@scalarcov[] CD[-\[Beta]]@CD[-\[Nu]]@scalarcov[] CD[-\[Eta]]@CD[-\[Sigma]]@scalarcov[] CD[-\[Lambda]]@CD[-\[Tau]]@scalarcov[];


Lgravity = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[L2 + L3 + L4 + L5]]] // NoScalar // ReplaceDummies;
