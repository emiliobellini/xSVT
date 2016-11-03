(* ::Package:: *)

(****  Settings ****)


$CodeDirectory="~/Dropbox/SVT/xSVT/";
$RecursionLimit = 8192;


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


(****   SVT Expand Rules   ****)


Import[$CodeDirectory <> "ExpandRules.m"]


(****   Commands   ****)


Import[$CodeDirectory<>"Commands.m"]


SetOptions[ToCanonical, UseMetricOnVBundle -> None];