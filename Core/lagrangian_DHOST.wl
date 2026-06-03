(* ::Package:: *)

L2 = G2fun[scalarcov[], Xcov[]];
L4 = G4fun[scalarcov[], Xcov[]] RicciScalarCD[] + A4fun[scalarcov[], Xcov[]] Scalar[CD[\[Alpha]]@scalarcov[] CD[-\[Alpha]]@CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Gamma]]@scalarcov[] CD[-\[Gamma]]@scalarcov[]];


Lgravity = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[L2 + L4]]] // NoScalar // ReplaceDummies;
