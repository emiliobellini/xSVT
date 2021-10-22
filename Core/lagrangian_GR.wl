(* ::Package:: *)

Lgravity = Sqrt[-Detmetricg[]] ContractMetric[ToCanonical[EinsteinToRicci[Mpl^2/2 (RicciScalarCD[]-2 Lambda)]]] // NoScalar // ReplaceDummies;
