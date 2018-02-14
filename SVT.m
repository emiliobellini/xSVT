(* ::Package:: *)

(****  Settings ****)


$CodeDirectory="~/Codes/xSVT/";


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


Import[$CodeDirectory<>"Definitions.m"]


Import[$CodeDirectory<>"DerivedTensors.m"]


(****   Automatic Rules   ****)


Import[$CodeDirectory<>"AutomaticRules.m"]


(****   Assumptions   ****)


$Assumptions = {scale[]>0, hubbleC[]>0, hubbleP[]>0, primescalar[]!=0,vector0[]!=0};


(****   SVT Expand Rules   ****)


Import[$CodeDirectory <> "ExpandRules.m"]


(****   Commands   ****)


Import[$CodeDirectory<>"Commands.m"]


Import[$CodeDirectory<>"XtoScalar.m"]


SetOptions[ToCanonical, UseMetricOnVBundle -> None];
