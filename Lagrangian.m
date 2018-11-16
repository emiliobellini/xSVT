(* ::Package:: *)

quadraticH = Scalar[CD[-\[Mu]]@CD[\[Mu]]@scalarcov[]]^2 - CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Nu]]@CD[\[Mu]]@scalarcov[]
quadraticBH = CD[\[Mu]]@scalarcov[] CD[\[Nu]]@scalarcov[] CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[-\[Alpha]]@CD[\[Alpha]]@scalarcov[] - CD[\[Mu]]@scalarcov[] CD[-\[Alpha]]@scalarcov[] CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Alpha]]@CD[\[Nu]]@scalarcov[]
cubicH = Scalar[CD[-\[Mu]]@CD[\[Mu]]@scalarcov[]]^3 - 3 CD[-\[Mu]]@CD[\[Mu]]@scalarcov[] CD[-\[Nu]]@CD[-\[Alpha]]@scalarcov[] CD[\[Nu]]@CD[\[Alpha]]@scalarcov[] + 2 CD[\[Mu]]@CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[-\[Mu]]@scalarcov[]
cubicBH = Scalar[CD[-\[Mu]]@CD[\[Mu]]@scalarcov[]]^2 CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Alpha]]@CD[\[Beta]]@scalarcov[] - 2 CD[-\[Mu]]@CD[\[Mu]]@scalarcov[] CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@CD[\[Nu]]@scalarcov[] CD[-\[Nu]]@CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@scalarcov[] - CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[] CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@CD[\[Beta]]@scalarcov[] CD[-\[Beta]]@scalarcov[] + 2 CD[-\[Mu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[] CD[-\[Nu]]@CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@CD[\[Beta]]@scalarcov[] CD[-\[Beta]]@scalarcov[]


L2 = Kfun[scalarcov[], Xcov[]] // ReplaceDummies;
L3 = -G3fun[scalarcov[], Xcov[]] CD[-\[Mu]]@CD[\[Mu]]@scalarcov[] // ReplaceDummies;
L4 = G4fun[scalarcov[], Xcov[]] RicciScalarCD[] + quadraticH Derivative[0, 1][G4fun][scalarcov[], Xcov[]] // ReplaceDummies;
L5 = G5fun[scalarcov[], Xcov[]] EinsteinCD[-\[Mu], -\[Nu]] CD[\[Mu]]@CD[\[Nu]]@scalarcov[] - 1/6 cubicH Derivative[0, 1][G5fun][scalarcov[], Xcov[]] // ReplaceDummies;
L4t = (quadraticH Xcov[] + quadraticBH) Derivative[0, 2][G4funtilde][scalarcov[], Xcov[]] // ReplaceDummies;
L5t = - 1/12 (2 Xcov[] cubicH + 3 cubicBH) Derivative[0, 2][G5funtilde][scalarcov[], Xcov[]] // ReplaceDummies;


Lmatter = - 1/2 metricg[\[Mu],\[Nu]] PD[-\[Mu]]@mattercov[] PD[-\[Nu]]@mattercov[] - V[mattercov[]]


L = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[L2 + L3 + L4 + L5 + L4t + L5t + Lmatter]]];
