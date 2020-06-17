(* ::Package:: *)

(****  Settings ****)


$RecursionLimit = 32768;
$IterationLimit = 32768;


<< xAct`xTensor`
<< xAct`xPert`
<< xAct`xTras`
<< xAct`TexAct`


xAct`xTensor`Private`Symmetry1D[sym_StrongGenSet, inds_] := sym;


$CovDFormat = "Prefix";


$DefInfoQ = False;
SetOptions[AutomaticRules, Verbose -> False];
SetOptions[MakeRule, ContractMetrics -> False, MetricOn -> None];


Unprotect[IndexForm];
IndexForm[LI[x_]] := ColorString[ToString[x], RGBColor[1, 0, 0]];
Protect[IndexForm];


(****   Print messages and Warnings   ****)


PrintLevel[msg_, level_:0] := Print[If[level>0,StringRepeat["-", 4*level]<>"> ",""]<>msg]


Warning[msg_, level_:0] := PrintLevel["\n\!\(\*
StyleBox[\"WARNING\",\nFontColor->RGBColor[1, 0, 0]]\)\!\(\*
StyleBox[\" \",\nFontColor->RGBColor[1, 0, 0]]\):: "<>msg<>"\n", level]


(****   Definitions   ****)


Import[$CodeDirectory<>"Core/Definitions.wl"]


Import[$CodeDirectory<>"Core/DerivedTensors.wl"]


SetOptions[ToCanonical, UseMetricOnVBundle->None];


Off[VBundleOfIndex::unknown]


(****   Automatic Rules   ****)


Import[$CodeDirectory<>"Core/AutomaticRules.wl"]


(****   Assumptions   ****)


$Assumptions = {scale[]>0, hubbleC[]>0, hubbleP[]>0, primescalar[]!=0};


(****   SVT Expand Rules   ****)


Import[$CodeDirectory <> "Core/ExpandRules.wl"]


(****   Commands   ****)


Import[$CodeDirectory<>"Core/Commands.wl"]


(****   Commands   ****)


(****   Import Basic Quantities   ****)


Import[$CodeDirectory<>"Core/Lagrangian.wl"]


Import[$CodeDirectory<>"Core/AlphaDefinitions.wl"]


(****   Import Additional Functions   ****)


If[$ExtraFunctions,
	Import[$CodeDirectory<>"Core/ExtraFunctions.wl"]]
