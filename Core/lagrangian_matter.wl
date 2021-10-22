(* ::Package:: *)

Lmatter = -Sqrt[-Detmetricg[]] (1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@mattercov[] CD[-\[Nu]]@mattercov[]+V[mattercov[]]) // NoScalar // ReplaceDummies;


EQmattertoscalar = VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
EQmattertoscalar = 2  EQmattertoscalar/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical;
