(* ::Package:: *)

(* ::Title:: *)
(*xSVT*)


(* ::Section:: *)
(*Initialise*)


(* ::Subsection:: *)
(*Preliminary checks*)


(****
  Check that the code can be properly initialised.
  Preliminary global variables should be defined here in "list", together
  with a function that checks that their value has the expected type.
****)

list = Map[Unevaluated, Unevaluated@{
	{$CodeDirectory,             StringQ},
	{$EquationsDirectory,        StringQ},
	{$Theory,                    StringQ},
	{$Metric,                    StringQ},
	{$ScalarPertsQ,              BooleanQ},
	{$VectorPertsQ,              BooleanQ},
	{$TensorPertsQ,              BooleanQ},
	{$ImportDecompositionRules,  StringQ},
	{$ToClass,                   BooleanQ}
}, {2}];
listvar = #[[1]] & /@list;
listtype = #[[2]] & /@list;

exit = False;

If[Not[ValueQ[#]],
	Print["The variable "<>ToString[#]<>" has not been defined, but it is necessary!"];
	exit = True;
] & /@ listvar;

MapThread[
If[Not[#1@#2],
	Print["The variable "<>ToString[Unevaluated[#2]]<>" is not of the correct type ("<>ToString[#1]<>" needed)."];
	exit = True;
] &, {listtype, listvar}];

If[exit, Print["Exiting..."]; Exit[]];
Clear[list, listvar, listtype, exit];


(* ::Subsection::Closed:: *)
(*Main xAct call and global settings*)


(** These variables help to manage long expressions **)
$RecursionLimit = 32768;
$IterationLimit = 32768;

(** This is the main call to xAct and subpackages **)
<< xAct`xTensor`
<< xAct`xPert`
<< xAct`xTras`
<< xAct`TexAct`

(** Correct known bug with 1D manifolds **)
xAct`xTensor`Private`Symmetry1D[sym_StrongGenSet, inds_] := sym;

(** Use Prefix or Postfix notation for covariant derivatives **)
$CovDFormat = "Prefix";

(** Suppress verbose **)
$DefInfoQ = False;
SetOptions[AutomaticRules, Verbose -> False];

SetOptions[MakeRule, ContractMetrics -> False, MetricOn -> None];

(** Color in red the perturbation index **)
Unprotect[IndexForm];
IndexForm[LI[x_]] := ColorString[ToString[x], RGBColor[1, 0, 0]];
Protect[IndexForm];


(* ::Section:: *)
(*xSVT pipeline*)


(****
  Initialise global variables containing the
  list of tensors defined in xSVT.
****)

$ListBackground = List[];
$ListScalarPerts = List[];
$ListVectorPerts = List[];
$ListTensorPerts = List[];


(****
  Usage and Definitions.
  These modules group together definition and usage
  of xSVT functions and variables.
****)

Import[FileNameJoin[{$CodeDirectory,"Core","function_usage.wl"}]]

Import[FileNameJoin[{$CodeDirectory,"Core","function_definitions.wl"}]]


(****
Try to import DecompositionRules, a global variable
filled with all the expansion rules.
****)

If[FileExistsQ[$ImportDecompositionRules],
	$SVTDecompositionRules = Import[$ImportDecompositionRules];
	fill = False;
	Print["Using rules from "<>$ImportDecompositionRules<>"."];
	Print[Column[{"Basic decomposition rules", ScreenDollarIndices[$SVTDecompositionRules[[1]]]}]];
	Print[Column[{"Derived decomposition rules", ScreenDollarIndices[$SVTDecompositionRules[[2]]]}]];,
	$SVTDecompositionRules = {{},{}};
	fill = True;
	Print["Using default rules."];
];


(****
	Theory.
	Each of these modules contains the necessary definitions and rules to
	run xSVT: manifolds, metrics, tensors, ...
	The main module focuses on the tensors of General Relativity plus matter
	(treated as a fluid with density, pressure, velocity and shear). The
	additional modules introduce theory specific ingredients.
****)

(** Basic definitions: GR and matter **)
Import[FileNameJoin[{$CodeDirectory,"Core","theory_GR_matter.wl"}]]

(** Additional definitions: ST **)
If[$Theory=="ST" || $Theory=="STfast" || $Theory=="ALL", Import[FileNameJoin[{$CodeDirectory,"Core","theory_ST.wl"}]]];

Clear[fill]


(****   Some global option   ****)

SetOptions[ToCanonical, UseMetricOnVBundle->{TangentM4}];
Off[VBundleOfIndex::unknown]
Off[Attributes::ssle]

$Assumptions = {scale[]>0, hubbleC[]>0, hubbleP[]>0, primescalar[]!=0};


(****   Lagrangian   ****)

Import[FileNameJoin[{$CodeDirectory,"Core","lagrangian_matter.wl"}]];

If[$Theory=="GR", Import[FileNameJoin[{$CodeDirectory,"Core","lagrangian_GR.wl"}]]];

If[$Theory=="ST" || $Theory=="STfast", Import[FileNameJoin[{$CodeDirectory,"Core","lagrangian_ST.wl"}]]];


(****   ToClass   ****)


If[$ToClass, Import[FileNameJoin[{$CodeDirectory,"Core","to_class.wl"}]]];
