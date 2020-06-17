(* ::Package:: *)

(* ::Section:: *)
(*Miscellaneous functions*)


(* ::Subsection:: *)
(*SplitDummySpaceTime*)


SplitDummySpaceTime::usage =
"SplitDummySpaceTime[expr,m4,m3,m1] uses the Einstein summation rule on the dummy \
indices of expr to split the ones associated to the 4 dimensional space-time manifold \
into 3 dimensional space and 1 dimensional time indices. SplitDummySpaceTime[expr] uses \
the standard manifold names SplitDummySpaceTime[expr,m4:M4,m3:M3,m1:M1].";


SplitDummySpaceTime[expr_, m4_:M4, m3_:M3, m1_:M1] := Module[{listall, tm4, tm3, tm1, rules},
	tm4 = TangentBundleOfManifold[m4];
	tm3 = TangentBundleOfManifold[m3];
	tm1 = TangentBundleOfManifold[m1];
	listall = IndicesOf[tm4, Dummy, Up][expr];
	rules = Table[listall[[col]] -> IndexList[DummyIn[tm3], DummyIn[tm1]], {col, Length[listall]}];
	TraceDummy[expr, rules]
	]


(* ::Subsection::Closed:: *)
(*SortRiemannIndices*)


SortRiemannIndices::usage =
"SortRiemannIndices[expr,covd] uses the cyclic simmetry of the Riemann tensor to sort its indices \
and reduce the number of independent Riemann tensors in expr. This is not necessarily going to make \
expr shorter. The idea is that for any permutation of the indices {a,b,c,d}, only the terms with \
{a,b,c,d} and {a,c,b,d} should be present.";


SortRiemannIndices[expr_, cd_?CovDQ] := Module[{tmp,riem,vb,rule},
	vb = TangentBundleOfManifold@ManifoldOfCovD@cd;
	riem = GiveSymbol[Riemann,cd];
	rule = riem[-\[Alpha]_,-\[Nu]_,-\[Beta]_,-\[Mu]_]/;OrderedQ[{\[Alpha],\[Beta],\[Mu],\[Nu]}]:>-riem[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]]-riem[-\[Alpha],-\[Mu],-\[Nu],-\[Beta]];
	tmp = ToCanonical[expr, UseMetricOnVBundle->{vb}];
	tmp = tmp // SeparateMetric[MetricOfCovD[cd]];
	tmp = tmp /.rule;
	tmp = ToCanonical[tmp, UseMetricOnVBundle->{vb}];
	tmp
]


(* ::Subsection::Closed:: *)
(*GRToRiemann*)


GRToRiemann::usage =
"GRToRiemann[expr,man] converts Weyl and Einstein tensors into Riemann curvature tensors in expr. \
It also canonicalize use metric on VBundle associated to man.";


GRToRiemann[expr_, man_?ManifoldQ] := Module[{tmp,vb},
	vb = TangentBundleOfManifold@man;
	tmp = expr // WeylToRiemann;
	tmp = tmp // EinsteinToRicci;
	tmp = tmp // NoScalar // Expand;
	tmp = ToCanonical[tmp,UseMetricOnVBundle->{vb}];
	tmp
]


(* ::Subsection::Closed:: *)
(*PDToCovDs*)


PDToCovDs::usage =
"PDToCovDs[expr,covd] changes any instance of the partial derivative in expr into a covariant \
derivative covd and Christoffel symbols relating covd and PD. It also replaces partial derivatives \
of the Christoffel symbols with Riemann curvature tensors.";


PDToCovDs[expr_, cd_?CovDQ] := Module[{vb,tot,withCh,freeCh,zeroQ},
	vb = TangentBundleOfManifold@ManifoldOfCovD@cd;
	tot = ChangeCovD[expr, PD, cd];
	tot = ToCanonical[tot, UseMetricOnVBundle->{vb}];
	tot = SeparateMetric[MetricOfCovD[cd]][tot];
	tot = Flatten[{tot /.Plus->List}];
	withCh = tot*Boole[Map[Not[FreeQ[#, GiveSymbol[Christoffel, cd]]]&,tot]] /.List->Plus;
	freeCh = tot*Boole[Map[FreeQ[#, GiveSymbol[Christoffel, cd]]&,tot]] /.List->Plus;
	zeroQ = ToCanonical[withCh+freeCh-Evaluate[tot /.List->Plus], UseMetricOnVBundle->{vb}];
	If[zeroQ=!=0, Warning["Something wrong with PDToCovDs. Failed zero check!"]];
	withCh = ChangeCovD[withCh, cd, PD];
	withCh = ToCanonical[withCh, UseMetricOnVBundle->None];
	withCh = GradChristoffelToRiemann[withCh, cd];
	withCh = ToCanonical[withCh, UseMetricOnVBundle->None];
	withCh = GradChristoffelToRiemann[withCh, cd];
	withCh = ToCanonical[withCh, UseMetricOnVBundle->None];
	withCh = ChangeCovD[withCh, PD, cd];
	withCh = ToCanonical[withCh, UseMetricOnVBundle->{vb}];
	freeCh+withCh
]


(* ::Section:: *)
(*SVTDecomposition*)


Begin["SVTDecompositionTools`"];


(* ::Subsection::Closed:: *)
(*SVTDecomposition tools*)


ListifyExpr[expr_, decmethod_, chunkslength_, collectvars_] := Module[
	{
	tmpexpr = expr,
	tmpexpr1, tmpexpr2
	},

	If[Head[tmpexpr]=!=Plus, tmpexpr = Expand[tmpexpr], tmpexpr = tmpexpr];
	If[decmethod==="All", tmpexpr = {tmpexpr}];
	If[decmethod==="Chunks",
		If[Head[tmpexpr]===Plus,
			tmpexpr = Replace[tmpexpr,Plus->List,{1},Heads->True];
			tmpexpr1 = Partition[tmpexpr /.Plus->List,chunkslength];
			tmpexpr2 = tmpexpr[[-Mod[Length[tmpexpr],chunkslength];;-1]];
			tmpexpr = Append[tmpexpr1, tmpexpr2];
			tmpexpr = Map[# /.List->Plus &, tmpexpr];,
			tmpexpr = {tmpexpr}
		];
	];
	If[decmethod==="Collect",
		tmpexpr1 = Map[Expand[#*Coefficient[tmpexpr, #]]&,collectvars];
		tmpexpr2 = {Expand[tmpexpr-Evaluate[tmpexpr1 /.List->Plus]]};
		tmpexpr = Union[tmpexpr1,tmpexpr2];
	];
	tmpexpr
]


DeListifyExpr[expr_] :=Module[
	{
	tmpexpr = expr
	},
	
	tmpexpr = tmpexpr /.List->Plus;
	tmpexpr
	]


(* ::Subsection::Closed:: *)
(*GRToBuildingBlocks*)


GRToBuildingBlocks[expr_, tometric_, man_, verbose_] := Module[
	{
	metric = (MetricsOfVBundle@TangentBundleOfManifold@man)[[1]],
	covd = CovDOfMetric@(MetricsOfVBundle@TangentBundleOfManifold@man)[[1]],
	tmpexpr
	},
	
	If[verbose, PrintLevel["Replacing various GR tensors with Riemann tensors when possible.", 1]];
	tmpexpr = GRToRiemann[expr, man];
	If[verbose, PrintLevel["Sorting covariant derivatives.", 1]];
	tmpexpr = tmpexpr // SortCovDs;
	tmpexpr = SeparateMetric[metric][tmpexpr];
	If[verbose, PrintLevel["Converting covariant derivatives into partial derivatives.", 1]];
	tmpexpr = ChangeCovD[tmpexpr, covd, PD];
	If[tometric,
		If[verbose, PrintLevel["Replacing Riemann tensors with Christoffel symbols.", 1]];
		tmpexpr = tmpexpr // RiemannToChristoffel // Expand;
		If[verbose, PrintLevel["Replacing Christoffel symbols with metric derivatives.", 1]];
		tmpexpr = tmpexpr // ChristoffelToGradMetric;
	];
	If[verbose, PrintLevel["Canonicalizing expression.", 1]];
	tmpexpr = tmpexpr // NoScalar // Expand;
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle -> None];
	tmpexpr
]


(* ::Subsection::Closed:: *)
(*Perturbation*)


SVTPerturbation[expr_, order_, man_, verbose_] := Module[
	{
	covd = CovDOfMetric@(MetricsOfVBundle@TangentBundleOfManifold@man)[[1]],
	metric = (MetricsOfVBundle@TangentBundleOfManifold@man)[[1]],
	tman = TangentBundleOfManifold@man,
	tmpexpr
	},
	
	If[verbose, PrintLevel["Perturbing expression.", 1]];
	tmpexpr = Perturbation[expr, order];
	tmpexpr = tmpexpr // ExpandPerturbation;
	If[verbose, PrintLevel["Converting covariant derivatives into partial derivatives.", 1]];
	tmpexpr = ChangeCovD[tmpexpr, covd, PD];
	If[verbose, PrintLevel["Canonicalizing expression.", 1]];
	tmpexpr = tmpexpr // SeparateMetric[metric] // NoScalar;
	tmpexpr = ToCanonical[tmpexpr,UseMetricOnVBundle->None];
	tmpexpr
]


(* ::Subsection::Closed:: *)
(*SplitSpaceTime*)


SplitSpaceTime[expr_, freeindsrules_, man4_, man3_, man1_, verbose_] := Module[
	{
	metric4 = (MetricsOfVBundle@TangentBundleOfManifold@man4)[[1]],
	tman1 = TangentBundleOfManifold@man1,
	timevecs, tmpexpr
	},

	If[verbose, PrintLevel["Splitting dummy indices.", 1]];
	tmpexpr = expr // SeparateMetric[metric4];
	tmpexpr = SplitDummySpaceTime[expr, man4, man3, man1];
	If[verbose, PrintLevel["Replacing free indices.", 1]];
	tmpexpr = tmpexpr //.freeindsrules;
	timevecs = IndicesOf[Free,tman1][tmpexpr] /.IndexList->List;
	timevecs = Cases[timevecs,a_:>timevec[-a]];
	timevecs = timevecs /.List->Times;
	tmpexpr = tmpexpr timevecs // Expand;

	tmpexpr
]


(* ::Subsection:: *)
(*SVTExpand*)


SVTExpand[expr_, usederivedresults_, man3_, man1_, verbose_] := Module[
	{
	metric3 = (MetricsOfVBundle@TangentBundleOfManifold@man3)[[1]],
	covd3 = CovDOfMetric@(MetricsOfVBundle@TangentBundleOfManifold@man3)[[1]],
	tman3 = TangentBundleOfManifold@man3,
	tmpexpr
	},

	tmpexpr = NoScalar[expr] //.Flatten[$DecompositionRules[[1]]] // Expand;
	tmpexpr = GradMetricToChristoffel[tmpexpr, metric3, PD];
	tmpexpr = GradMetricToChristoffel[tmpexpr, metric3, PD] // Expand;
	tmpexpr = PDToCovDs[tmpexpr, covd3];
	tmpexpr = Expand[tmpexpr];
	tmpexpr = SeparateMetric[metric3][tmpexpr];	
	tmpexpr = SortCovDs[tmpexpr, covd3];	
	tmpexpr = tmpexpr /.SymmetricSpaceRules[covd3, kappa];
	If[usederivedresults,
		tmpexpr = NoScalar[tmpexpr] //.Flatten[$DecompositionRules[[2]]];
	];
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->{metric3}];

	tmpexpr
]


End[];


(* ::Subsection:: *)
(*SVTDecomposition*)


$DecompositionRules::usage =
"$DecompositionRules is a global variable that contains a list of rules used to decompose tensors when \
performing a 3+1 split. The structure of this variable is {rulesBasic, rulesDer}, where rulesBasic \
contains lists of basic rules (metric, scalar field, matter, ..) and rulesDer contains all the derived \
rules. Note that if you want to use all the rules together or even just rulesBasic alone you should \
Flatten them.";


SVTDecomposition::usage =
"SVTDecomposition[expr] is the main function of xSVT. The pipeline can be divided into 4 blocks, \
each one can be activated and deactivated (default: all active) by a specific option. These are:
(i) GRToBuildingBlocks: expr, a covariant expression on the space-time manifold, is expanded on its \
building blocks, i.e. quantities with associated decomposition rules in $DecompositionRules;
(ii) SVTPerturbation: perturb expr at ExpansionOrder;
(iii) SplitSpaceTime: split dummy space-time indices into space and time as well as use IndicesRules \
to replace the free indices. This module starts the 3+1 decomposition, but tensors are still the \
space-time ones with space and time indices;
(iv) SVTExpand: apply the decomposition rules stored in $DecompositionRules and canonicalize expr with \
the properties of vectors and tensors on the space manifold. This module completes the 3+1 decomposition.
Check Options[SVTDecomposition] for a full list of available options.";


GRToBuildingBlocksQ::usage =
"GRToBuildingBlocksQ (default: True) is a boolean option for SVTDecomposition which switches on/off \
the GRToBuildingBlocks module. This expands a covariant expression on the space-time manifold on its \
building blocks, i.e. quantities with associated decomposition rules in $DecompositionRules.";

PerturbQ::usage =
"PerturbQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SVTPerturbation module. This perturbs expr at ExpansionOrder.";

SplitSpaceTimeQ::usage =
"SplitSpaceTimeQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SplitSpaceTime module. This splits dummy space-time indices into space and time as well as use \
IndicesRules to replace the free indices.";

SVTExpandQ::usage =
"SVTExpandQ (default: True) is a boolean option for SVTDecomposition which switches on/off the \
SVTExpand module. This applis the decomposition rules stored in $DecompositionRules and canonicalize \
expr with the properties of vectors and tensors on the space manifold.";

ExpansionOrder::usage =
"ExpansionOrder (default: 0) is an option for SVTDecomposition. It accepts positive integers and fixes the \
expansion order in perturbation theory used by the SVTPerturbation module.";

IndicesRules::usage =
"IndicesRules (default: {}) is an option for SVTDecomposition. It accepts a list of rules where the left \
hand side is a free index of the given expression, while the right hand side is the component we want to \
calculate. Covariant and controvariant indices are equivalent and their nature should not be specified in \
the rules, as they are directly inferred from the given expression. If the left hand side of IndicesRules \
and the controvariant form of the free indices of the given expression do not match a warning message is \
raised. E.g. {\[Mu]->a,\[Nu]->i}.";

ManifoldsName::usage =
"ManifoldsName (default: {M4, M3, M1}) is an option for SVTDecomposition. It accepts a list of three \
manifolds that are going to be assumed during the decomposition. First element should be the name of the \
space-time manifold, the second one the space manifold and the last the time manifold.";

GRToGradMetricQ::usage =
"GRToGradMetricQ (default: False) is a boolean option for SVTDecomposition. It expands the given expression \
down to its fundamental ingredients: i.e. metric, its derivatives and other fundamental tensors.";

UseDerivedResultsQ::usage =
"UseDerivedResultsQ (default: True) is a boolean option for SVTDecomposition. It applies the derived rules \
stored in $DecompostionRules to simplify long calculations. Note that basic rules are always used (if you \
do not want them switch of the SVTExpandQ option).";

DecompositionMethod::usage =
"DecompositionMethod (default: 'All') is an option for SVTDecomposition. Possible values are 'All', 'Chunks' and \
'Collect'. If method is 'All', the input expression is decomposed at once. If method is 'Chunks', the input \
expression is decomposed in chunks of ChunksLength. If method is 'Collect', the terms in CollectVars are first \
collected in the input expression, and then the decomposition is run on each of these terms. 'Chunks' and 'Collect' \
are particularly useful for long expressions (tipically you do not want to run ToCanonical on more than 10^4 \
terms at once.).";

ChunksLength::usage =
"ChunksLength (default: 1000) is an option for SVTDecomposition. It accepts positive integers. If \
DecomposeMethod = 'Chunks' it fixes the length of the chunks.";

CollectVars::usage =
"CollectVars (default: {}) is an option for SVTDecomposition. It accepts a list of variables to collect and internally \
it uses the Mathematica function Coefficient.";

StoreResultQ::usage =
"StoreResultQ (default: False) is a boolean option for SVTDecomposition. It stores the result of the computation \
in the derived rules of $DecompostionRules. To build the rules it uses the built-in MakeRule with its default options. \
The left-hand side is given by the input expression (after substituting the right indices with IndicesRules) while the \
right-hand side is the result. It is particularly convenient to decompose long calculation in smaller ones.";

VerboseQ::usage =
"VerboseQ (default: False) is a boolean option for SVTDecomposition. It prints informative messages about the advances \
of the decomposition.";


Options[SVTDecomposition] = {
	GRToBuildingBlocksQ   -> True,
	PerturbQ              -> True,
	SplitSpaceTimeQ       -> True,
	SVTExpandQ            -> True,
	ExpansionOrder        -> 0,
	IndicesRules          -> {},
	ManifoldsName         -> {M4, M3, M1},
	GRToGradMetricQ       -> False,
	UseDerivedResultsQ    -> True,
	DecompositionMethod   -> "All",
	ChunksLength          -> 1000,
	CollectVars           -> {},
	StoreResultQ          -> False,
	VerboseQ              -> True
};


SVTDecomposition[expr_, OptionsPattern[]] := Module[
	{
		(* Read all the options and assign their value to local variables *)
		runGRToBuildingBlocks   = OptionValue[GRToBuildingBlocksQ],
		runPerturb              = OptionValue[PerturbQ],
		runSplitSpaceTime       = OptionValue[SplitSpaceTimeQ],
		runSVTExpand            = OptionValue[SVTExpandQ],
		orderPT                = OptionValue[ExpansionOrder],
		freeindsrules          = OptionValue[IndicesRules],
		m4                     = OptionValue[ManifoldsName][[1]],
		m3                     = OptionValue[ManifoldsName][[2]],
		m1                     = OptionValue[ManifoldsName][[3]],
		tometric               = OptionValue[GRToGradMetricQ],
		usederivedresults      = OptionValue[UseDerivedResultsQ],
		decmethod              = OptionValue[DecompositionMethod],
		chunkslength           = OptionValue[ChunksLength],
		collectvars            = OptionValue[CollectVars],
		storeresults           = OptionValue[StoreResultQ],
		verbose                = OptionValue[VerboseQ],
		(* Additional variables *)
		tm4, tm3, tm1,
		time1, time2,
		tmpexpr = expr
	},
	
	
	(* Check that the input is as expected, to avoid surprises during the execution. *)
	On[Assert];
	(* First, check the defined manifolds and define their tangent vector bundle *)
	Assert[ManifoldQ[m4] && DimOfManifold[m4]==4];
	Assert[ManifoldQ[m3] && DimOfManifold[m3]==3];
	Assert[ManifoldQ[m1] && DimOfManifold[m1]==1];
	{tm4, tm3, tm1} = TangentBundleOfManifold@#&/@{m4, m3, m1};
	(* Second, validate input expression *)
	Validate[tmpexpr];
	(* Third, options needed always *)
	Assert[BooleanQ[runGRToBuildingBlocks]];
	Assert[BooleanQ[runPerturb]];
	Assert[BooleanQ[runSplitSpaceTime]];
	Assert[BooleanQ[runSVTExpand]];
	Assert[decmethod==="All" || decmethod==="Chunks" || decmethod==="Collect"];
	Assert[BooleanQ[verbose]];
	Assert[BooleanQ[storeresults]];
	(* Fourth, options needed by specific modules *)
	If[decmethod==="Chunks", Assert[IntegerQ[chunkslength] && chunkslength>0]];
	If[decmethod==="Collect", Assert[Head[collectvars]==List]];
	If[runGRToBuildingBlocks, Assert[BooleanQ[tometric]]];
	If[runPerturb, Assert[IntegerQ[orderPT] && orderPT>=0]];
	If[runSVTExpand, Assert[BooleanQ[usederivedresults]]];
	If[runSplitSpaceTime,
		Assert[Head[freeindsrules]==List];
		Assert[AllTrue[freeindsrules, Head[#]===Rule || Head[#]===RuleDelayed &]];
		With[{
			indsL = #[[1]]&/@freeindsrules //.List->IndexList,
			indsR = #[[2]]&/@freeindsrules //.List->IndexList
			},
			Assert[AllTrue[indsL, VBundleOfIndex[#]===tm4 && UpIndexQ[#] &]];
			Assert[AllTrue[indsR, (VBundleOfIndex[#]===tm3 ||
				VBundleOfIndex[#]===tm1) && UpIndexQ[#] &]];
			Assert[Length[indsL]==Length[DeleteDuplicates[indsL]]];
			Assert[Length[indsR]==Length[DeleteDuplicates[indsR]]];
			Assert[Evaluate[Abs[#]&/@IndicesOf[Free][tmpexpr] //.Abs[a_]:>a]===indsL];
		];
	];
	Off[Assert];

	(* GRToBuildingBlocks *)
	If[runGRToBuildingBlocks,
		If[verbose, PrintLevel["1 - Running GRToBuildingBlocks module", 0]];
		time1 = SessionTime[];
		tmpexpr = SVTDecompositionTools`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		tmpexpr = SVTDecompositionTools`GRToBuildingBlocks[#, tometric, m4,
			If[Length[tmpexpr]==1,verbose,False]]&/@tmpexpr;
		tmpexpr = SVTDecompositionTools`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* Perturbation *)
	If[runPerturb && orderPT>0,
		If[verbose, PrintLevel["2 - Running Perturbation module", 0]];
		time1 = SessionTime[];
		tmpexpr = SVTDecompositionTools`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		tmpexpr = SVTDecompositionTools`SVTPerturbation[#, orderPT, m4,
			If[Length[tmpexpr]==1,verbose,False]]&/@tmpexpr;
		tmpexpr = SVTDecompositionTools`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* SplitSpaceTime *)
	If[runSplitSpaceTime,
		If[verbose, PrintLevel["3 - Running SplitSpaceTime module", 0]];
		time1 = SessionTime[];
		tmpexpr = SVTDecompositionTools`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		tmpexpr = SVTDecompositionTools`SplitSpaceTime[#, freeindsrules, m4, m3, m1,
			If[Length[tmpexpr]==1,verbose,False]]&/@tmpexpr;
		tmpexpr = SVTDecompositionTools`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* SVTExpand *)
	If[runSVTExpand,
		If[verbose, PrintLevel["4 - Running SVTExpand module", 0]];
		time1 = SessionTime[];
		tmpexpr = SVTDecompositionTools`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		tmpexpr = SVTDecompositionTools`SVTExpand[#, usederivedresults, m3, m1,
			If[Length[tmpexpr]==1,verbose,False]]&/@tmpexpr;
		tmpexpr = SVTDecompositionTools`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* storeresults *)
	If[storeresults,
		If[verbose, PrintLevel["5 - Storing result in $DecompositionRules", 0]];
		Module[{
			timevecs, left, right, rule
		},
			left = expr //.freeindsrules;
			timevecs = IndicesOf[Free,tm1][left] /.IndexList->List;
			timevecs = Cases[timevecs,a_:>timevec[a]];
			timevecs = timevecs /.List->Times;
			right = timevecs*tmpexpr;
			rule = MakeRule[{left, right}, Evaluate->True];
			$DecompositionRules[[2]] = Union[$DecompositionRules[[2]], rule];
		];
	];



	tmpexpr
]
