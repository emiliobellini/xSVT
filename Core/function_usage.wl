(* ::Package:: *)

(* ::Title:: *)
(*Functions usage*)


(* ::Section::Closed:: *)
(*Global variables*)


$CodeDirectory::usage = "$CodeDirectory (string) is a global variable that stores \
the path to the xSVT code.";
$EquationsDirectory::usage = "$EquationsDirectory (string) is a global variable \
that stores the location of the equations that xSVT tries to import.";
$Theory::usage = "$Theory (string) is a global variable where the user specifies \
the theory that he wants to use. It affects the tensors that will be defined and \
the equations imported. Options: GR (General Relativity), ST (scalar-tensor, \
beyond Horndeski), ALL (import everything).";
$Metric::usage = "$Metric (string) is a global variable where the user specifies \
the metric that he wants to use. The only option for now is: FRW Flat.";
$ScalarPerts::usage = "$ScalarPerts (boolean) is a global variable that \
automatically suppress (if False) scalar perturbations in the 3+1 decomposition.";
$VectorPerts::usage = "$VectorPerts (boolean) is a global variable that \
automatically suppress (if False) vector perturbations in the 3+1 decomposition.";
$TensorPerts::usage = "$TensorPerts (boolean) is a global variable that \
automatically suppress (if False) tensor perturbations in the 3+1 decomposition.";
$ImportDecompositionRules::usage = "$ImportDecompositionRules (string) is a global \
variable that allows the user to import preconputed or custom decomposition rules \
instead of the default ones. Leave an empty string to use default rules.";


GlobalOptionsSVT::usage = "GlobalOptionsSVT[opt] returns the value of the option \
opt. It is a place holder for common options used in xSVT functions. It contains \
the names of manifolds, metrics and time slicing tensor. These names are then used \
internally in the code or when calling other functions. When these ingredients are \
properly defined in xAct, this function is called, in order to avoid duplicating them. \
If one wants to change these names for the full code, he has to do that in Definitions.wl \
before the execution of the code. It is always possible to do it afterwards, but all the \
executed code will depend on the old names. Changing the options of GlobalOptionsSVT will \
change these names glovally. Check Options[GlobalOptionsSVT] for a full list of available options.";

Manifold1D::usage = "Manifold1D (symbol, default: M1) is an option for \
GlobalOptionsSVT. It contains the name of the 1D manifold.";
Manifold3D::usage = "Manifold3D (symbol, default: M3) is an option for \
GlobalOptionsSVT. It contains the name of the 3D manifold.";
Manifold4D::usage = "Manifold4D (symbol, default: M4) is an option for \
GlobalOptionsSVT. It contains the name of the 4D manifold.";
TimeVec::usage = "TimeVec (symbol, default: timevec) is an option for \
GlobalOptionsSVT. It stores the name of the vector used for the time slicing.";
Metric3D::usage = "Metric3D (symbol, default: metric\[Delta]) is an option for \
GlobalOptionsSVT. It contains the name of the 3D metric.";
Metric4D::usage = "Metric4D (symbol, default: metricg) is an option for \
GlobalOptionsSVT. It contains the name of the 4D metric.";
KVec::usage = "KVec (symbol, default: kvec) is an option for \
GlobalOptionsSVT It stores the name of the 3-momentum k^i.";
Verbose::usage = "Verbose (boolean, default: False) is an option for \
GlobalOptionsSVT. If True it prints on the screen additional information.";


$SVTDecompositionRules::usage = "$SVTDecompositionRules is a global variable that \
contains a list of rules used to decompose tensors when performing a 3+1 split. \
The structure of this variable is {BasicRules, DerRules}, where BasicRules \
contains lists of basic rules (metric, scalar field, matter, ..) and DerRules \
contains all the derived rules. Note that if you want to use all the rules together \
or even just rulesBasic alone you should Flatten them.";


(* ::Subsection::Closed:: *)
(*Import/Export*)


SVTExport::usage =
"SVTExport[expr] is a small script to easily export expr into a predefined folder \
and name. Check Options[SVTExport] for a full list of available options.";

ExportName::usage = "ExportName (string, default: Automatic) is an \
option for SVTExport. It allows to define a custom name for the output file. \
If it is different from Automatic, the option ExportSuffix is ignored.";
ExportDirectory::usage = "ExportDirectory (string, default: $EquationsDirectory) is an \
option for SVTExport. It allows to define a custom folder for the output file.";
ExportSuffix::usage = "ExportSuffix (string, default: $Theory) is an \
option for SVTExport. It allows to define a custom suffix for the output file. \
If ExportName is different from Automatic, this option is ignored.";


SVTImport::usage =
"SVTImport[name] is a small script to easily import the equation with name name from \
a predefined folder. name is a string that contains the name of the file to be imported \
without extension and suffix. Check Options[SVTImport] for a full list of available options.";

ImportVarName::usage = "ImportVarName (string, default: Automatic) is an \
option for SVTImport. It allows to define a custom name for the variable containing \
the output file.";
ImportDirectory::usage = "ImportDirectory (string, default: $EquationsDirectory) is an \
option for SVTImport. It allows to define a custom folder for the input file.";
ImportSuffix::usage = "ImportSuffix (string, default: $Theory) is an option for \
SVTImport and ImportEquations. It allows to define a custom suffix for the input file.";


ImportEquations::usage =
"ImportEquations[dir] is a small script to easily import equations from a predefined \
folder. Using SVTImport, it imports all the files ending with ImportSuffix. By default \
it removes the suffix, to shorten the name of the variable. If ImportSuffix is an empty \
string it imports all the equations in the folder, without removing the suffix to avoid \
conflicts. Check Options[SVTImport] for a full list of available options.";


(* ::Section::Closed:: *)
(*Definition and properties of tensors*)


AutomaticRulesSVT::usage = "AutomaticRulesSVT[tensor] defines automatic rules for \
tensor. In detail, it assumes that background quantities are only time dependent, \
vector and tensor perturbations are divergence-free and tensor perturbations are \
traceless.";

BackgroundQ::usage = "BackgroundQ (boolean, default:False) is an option for \
AutomaticRulesSVT, DefDerivedTensorsSVT and DefTensorsSVT (in the last two cases \
it is used only if AutomaticRulesSVTQ->True). If True the tensor is considered as \
a background quantity, only time dependent, and rules to automatically suppress \
spatial derivatives are defined.";
ScalarPertQ::usage = "ScalarPertQ (boolean, default:False) is an option for \
AutomaticRulesSVT, DefDerivedTensorsSVT and DefTensorsSVT (in the last two cases \
it is used only if AutomaticRulesSVTQ->True). If True the tensor is considered as \
a scalar perturbation. Then, if $ScalarPerts=False, these quantities are automatically \
suppressed.";
VectorPertQ::usage = "VectorPertQ (boolean, default:False) is an option for \
AutomaticRulesSVT, DefDerivedTensorsSVT and DefTensorsSVT (in the last two cases \
it is used only if AutomaticRulesSVTQ->True). If True the tensor is considered as \
a vector perturbation (divergence-free). Then, rules to automatically suppress its \
divergence are implemented.";
TensorPertQ::usage = "TensorPertQ (boolean, default:False) is an option for \
AutomaticRulesSVT, DefDerivedTensorsSVT and DefTensorsSVT (in the last two cases \
it is used only if AutomaticRulesSVTQ->True). If True the tensor is considered as \
a tensor perturbation (divergence-free, traceless). Then, rules to automatically \
suppress its divergence and trace are implemented.";


DefDerivedTensorsSVT::usage = "DefDerivedTensorsSVT[tensor] defines automatically a \
bunch of useful tensors derived from 'tensor'. The argument 'tensor' can be either \
the name of the symbol or the full expression with the indices required (e.g. both \
'tensor' and 'tensor[a, b, c]'. For tensors in the 4D manifold and cosmological \
perturbations, a new tensor is defined (labelled with a suffix 'G') that can be \
useful when performing gauge transoformations to have at hand a gauge transformed \
quantity. For time dependent quantities, time derivatives are defined as independent \
tensors (useful for printing layout). Derivatives w.r.t. conformal time are \
labelled with the prefix 'prime' for first derivatives and additional 'p's for \
higher derivatives in front of the name of the tensor. E.g., the third derivative of \
'tensor' will be 'ppprimetensor'. Derivatives w.r.t. physical time follow the same \
logic with 'dot' and 'd' replacing 'prime' and 'p' respectively. Check \
Options[DefDerivedTensorsSVT] for a full list of available options.";

MaxTimeDerivatives::usage = "MaxTimeDerivatives (integer, default: 2) is an option for \
DefDerivedTensorsSVT. It fixes the maximum number of time derivatives that will be \
defined for each tensor.";
AutomaticRulesSVTQ::usage = "AutomaticRulesSVTQ (boolean, default: True) is an option for \
DefDerivedTensorsSVT and DefTensorSVT (in this case only if DefDerivedTensorsSVTQ->True). \
If True AutomaticRulesSVT is used on each derived tensor.";


DefTensorSVT::usage = "DefTensorSVT[tensor, man] performs potentially three \
steps. Initially it defines 'tensor' on the manifold 'man' using the xAct`DefTensor \
function (all the DefTensor options are available). Then, if DefDerivedTensorsSVTQ is \
True, it uses the DefDerivedTensorsSVT function. Finally, if AutomaticRulesSVTQ is True, \
it uses the AutomaticRulesSVTQ function on tensor and on all the derived tensors. Check \
Options[DefTensorsSVT] for a full list of available options.";

DefDerivedTensorsSVTQ::usage = "DefDerivedTensorsSVTQ (boolean, default:True) is an option for \
DefTensorSVT. If True the DefDerivedTensorsSVT is used.";


(* ::Section::Closed:: *)
(*Manipulation of expressions*)


Listify::usage =
"Listify[fun, expr, args] converts expr into a list. Then, it runs the function fun on \
each element of the list and finally delistify. It is useful to speed up the computation of \
large expressions. Finally, args is a list that contains all the additional arguments of fun. \
If there are no additional parameters an empty list should be passed. \
Check Options[Listify] for a full list of available options.";

ListMethod::usage =
"ListMethod (default: 'All') is an option for ListMethod. Possible values are 'All', 'Part', 'Collect' and 'SamePerts'.\
If method is 'All', the input expression is decomposed at once. If method is 'Part', the input expression \
is decomposed in many parts of equal length, set by the option PartLength. If method is 'Collect', the terms \
in CollectVars are first collected in the input expression, and then the decomposition is run on each of these \
terms. If it is 'SamePerts', terms with the same perturbations will be collected together. 'Part', \
'Collect' and 'SamePerts' are particularly useful for long expressions. Tipically you do not want to run \
ToCanonical on more than 10^4 terms at once.";

PartLength::usage =
"PartLength (default: 1000) is an option for Listify. It accepts positive integers. If \
Method = 'Listify' it fixes the length of each part of the expression.";

CollectVars::usage =
"CollectVars (default: {}) is an option for Listify. It accepts a list of variables to collect and internally \
it uses the Mathematica function Coefficient.";


SortRiemannIndices::usage =
"SortRiemannIndices[expr, covd] uses the cyclic simmetry of the Riemann tensor to sort its indices \
and reduce the number of independent Riemann tensors in expr. This is not necessarily going to make \
expr shorter. The idea is that for any permutation of the indices {a,b,c,d}, only the terms with \
{a,b,c,d} and {a,c,b,d} should be present.";


GRToBuildingBlocks::usage =
"GRToBuildingBlocks[expr, covd] rewrites GR curvature tensors in expr into \
longer expressions their building blocks. In the \
simplest scenario these building blocks are the basic ingredients of the theory (metric, matter field, \
scalar field, ..). Check Options[GRToBuildingBlocks] for a full list of available options.";

ToMetric::usage = "ToMetric (boolean, default: True) is an option for \
GRToBuildingBlocks. If True curvature tensor are rewritten as derivatives of the \
metric, otherwise Christoffel symbols.";


(* ::Section::Closed:: *)
(*3+1 Decomposition*)


SplitSpaceTime::usage =
"SplitSpaceTime[expr, freeindsrules] uses the Einstein summation rule on the dummy \
indices of expr to split the ones associated to the 4 dimensional space-time manifold \
into 3 dimensional space and 1 dimensional time indices. It then uses uses freeindsrules \
to replace 4D indices with the requested ones. Check Options[SplitDummySpaceTime] \
for a full list of available options.";


SVTPerturbation::usage =
"SVTPerturbation[expr, order] perturb expr to order. It is a shorthand for the xTensor \
functions Perturbation and ExpandPerturbation.";


SVTExpand::usage =
"SVTExpand[expr] uses the expansion rules to perform the 3+1 expansion. Check \
Options[SVTExpand] for a full list of available options.";

UseDerivedResults::usage = "UseDerivedResults (boolean, default:True) is an \
option for SVTExpand. If True it uses both basic and derived rules for the \
expansion, otherwise only the basic rules.";
DecompositionRules::usage = "DecompositionRules (string, default \
$SVTDecompositionRules) is an option for SVTExpand. It contains the name \
of the variable with the of basic and derived rules used in the decomposition.";


(* ::Subsection:: *)
(*SVTDecomposition*)


SVTDecomposition::usage =
"SVTDecomposition[expr, orderPT, freeindsrules] is the main function of xSVT. The pipeline can be \
divided in 4 blocks, each one can be activated and deactivated (default: all active) by a dedicated \
option. They are:
(i) SVTPerturbation: perturb expr at ExpansionOrder;
(ii) GRToBuildingBlocks: expr, a covariant expression on the space-time manifold, is expanded on its \
building blocks, i.e. quantities with associated decomposition rules in $DecompositionRules;
(iii) SplitSpaceTime: split dummy space-time indices into space and time as well as use IndicesRules \
to replace the free indices. This module starts the 3+1 decomposition, but tensors are still the \
space-time ones with space and time indices;
(iv) SVTExpand: apply the decomposition rules stored in $DecompositionRules and canonicalize expr with \
the properties of vectors and tensors on the space manifold. This module completes the 3+1 decomposition.
Check Options[SVTDecomposition] for a full list of available options.";


SVTPerturbationQ::usage =
"SVTPerturbationQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SVTPerturbation module. This perturbs expr at any order.";

GRToBuildingBlocksQ::usage =
"GRToBuildingBlocksQ (default: True) is a boolean option for SVTDecomposition which switches on/off \
the GRToBuildingBlocks module. This expands a covariant expression on the space-time manifold on its \
building blocks, i.e. quantities with associated decomposition rules in $DecompositionRules.";

SplitSpaceTimeQ::usage =
"SplitSpaceTimeQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SplitSpaceTime module. This splits dummy space-time indices into space and time as well as use \
IndicesRules to replace the free indices.";

SVTExpandQ::usage =
"SVTExpandQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SVTExpand module. This applis the decomposition rules stored in $DecompositionRules and canonicalize \
expr with the properties of vectors and tensors on the space manifold.";

StoreResultQ::usage =
"StoreResultQ (default: False) is a boolean option for SVTDecomposition. It stores the result of the computation \
in the derived rules of $DecompostionRules. To build the rules it uses the built-in MakeRule with its default options. \
The left-hand side is given by the input expression (after substituting the right indices with IndicesRules) while the \
right-hand side is the result. It is particularly convenient to decompose long calculation in smaller ones.";

StoreName::usage =
"StoreName (default: None) is an option for SVTDecomposition. It used only in combination with StoreResultQ=True. \
It contains the tensorial expression used on the left-hand side of the stored rules.";


(* ::Section::Closed:: *)
(*PrintWell*)


PrintWell::usage =
"PrintWell[expr] rewrites expr in a more readable format. Time derivatives \
are represented as primes (conformal time) or dots (physical time). Whenever \
possible, space derivatives are replaced with laplacians. This is intended for \
visualisations purposes only. Calculations should be carried on without Printwell.";


UnPrintWell::usage =
"UnPrintWell[expr] reverts the PrintWell command.";


CollectPerts::usage =
"CollectPerts[expr, {addvars}, options] uses first the PrintWell command, and then \
collects the perturbations in expr. Additionally, after the perturbations it \
collects all the variables addvar. The argument options includes all the options \
of the Collect function.";


(* ::Section::Closed:: *)
(*Useful functions*)


TimeDer::usage =
"TimeDer[expr] takes the time derivative (w.r.t. conformal time) of expr.";


FourierT::usage =
"FourierT[expr] calculates the Fourier transform of expr. It is capable to calculate \
the Fourier transform up to second order in perturbation theory. In this case, the \
output is not the Fourier transform itself, but its integrand. This is to say that, \
if F is the Fourier transform, the output will be f, where \
F(k)=Integral[d^3p d^3q delta(k-p-q) f(k,p,q)].";
