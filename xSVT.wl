(* ::Package:: *)

(****  Settings ****)


$CodeDirectory = $HomeDirectory<>"/.Mathematica/Applications/xSVT/Core/";


$RecursionLimit = 32768;
$IterationLimit = 32768;


<< xAct`xTensor`
<< xAct`xPert`
<< xAct`TexAct`


xAct`xTensor`Private`Symmetry1D[sym_StrongGenSet, inds_] := sym;


$CovDFormat = "Prefix";


$DefInfoQ = False;
SetOptions[AutomaticRules, Verbose -> False];
SetOptions[MakeRule, ContractMetrics -> False, MetricOn -> None];


Unprotect[IndexForm];
IndexForm[LI[x_]] := ColorString[ToString[x], RGBColor[1, 0, 0]];
Protect[IndexForm];


(****   Definitions   ****)


Import[$CodeDirectory<>"Definitions.wl"]


(*Import[$CodeDirectory<>"DerivedTensors.wl"]*)


(*SetOptions[ToCanonical, UseMetricOnVBundle->{TangentM4}];*)


(*Off[VBundleOfIndex::unknown]*)


(****   Automatic Rules   ****)


(*Import[$CodeDirectory<>"AutomaticRules.wl"]*)


(****   Assumptions   ****)


(*$Assumptions = {scale[]>0, hubbleC[]>0, hubbleP[]>0, primescalar[]!=0};*)


(****   SVT Expand Rules   ****)


(*Import[$CodeDirectory <> "ExpandRules.wl"]*)


(****   Commands   ****)


(*Import[$CodeDirectory<>"Commands.wl"]*)


(****   Import Basic Quantities   ****)


(*Import[$CodeDirectory<>"Lagrangian.wl"]*)


(*Import[$CodeDirectory<>"AlphaDefinitions.wl"]*)


(****   Import Additional Functions   ****)


(*If[$ExtraFunctions==1,
	Import[$CodeDirectory<>"ExtraFunctions.wl"]]*)
