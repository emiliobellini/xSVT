(* ::Package:: *)

(* ::Title:: *)
(*Functions definitions*)


Options[GlobalOptionsSVT] = {
	Manifold1D -> M1,
	Manifold3D -> M3,
	Manifold4D -> M4,
	TimeVec -> timevec,
	Metric3D -> metric\[Delta],
	Metric4D -> metricg,
	KVec -> kvec,
	Verbose -> False
};

GlobalOptionsSVT[opt_, OptionsPattern[]] := Return@OptionValue@opt;


(* ::Subsection:: *)
(*Utilities*)


Begin["xSVTUtilities`"];


PrintLevel[msg_, level_:0] := Print[If[level>0,StringRepeat["-", 4*level]<>"> ",""]<>msg]


Warning[msg_, level_:0] := PrintLevel["\n\!\(\*
StyleBox[\"WARNING\",\nFontColor->RGBColor[1, 0, 0]]\)\!\(\*
StyleBox[\" \",\nFontColor->RGBColor[1, 0, 0]]\):: "<>msg<>"\n", level]


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


FindOptions[useropts_, outerfun_, innerfun_] := Module[{selectedoptions},
	selectedoptions = Rule[#, _]&/@ReplaceRepeated[useropts, Rule[left_, right_]:>left];
	selectedoptions = DeleteCases[Options[outerfun], selectedoptions //.List->Alternatives];
	selectedoptions = Evaluate@FilterRules[Join[useropts, selectedoptions], Options[innerfun]];
	selectedoptions
]



(*FirstT[expr_] := Module[
	{
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3pmQ = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`pmQ"]
	},

	expr //. PD[a_?tan1pmQ]@PD[i_?tan3pmQ]@object_ :> PD[i]@PD[a]@object
]*)


(*FirstS[expr_] := Module[
	{
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3pmQ = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`pmQ"]
	},

	expr //. PD[i_?tan3pmQ]@PD[a_?tan3pmQ]@object_ :> PD[a]@PD[i]@object
]*)


(*FirstS[expr_] := expr //. PD[i_?TangentM3`pmQ]@PD[a_?TangentM1`pmQ]@object_ :> PD[a]@PD[i]@object*)


(*FirstDummies[expr1_+expr2_] := FirstDummies[expr1] + FirstDummies[expr2]
FirstDummies[expr1_*expr2_] := FirstDummies[expr1] * FirstDummies[expr2]
FirstDummies[tens_] := Module[{idx, pdidx, final, count}, final = tens;
	pdidx = IndicesOf[PD][final];
	If[IsPert[final] && Length[pdidx]>0,
		idx = FindIndices[Evaluate[final]];
		For[count=1,count<=Length[idx],count++,
			If[!MemberQ[pdidx,idx[[count]]],idx[[count]]=0;];
		];
		idx = DeleteCases[idx,0];
		idx = MapThread[Rule,{idx, IndexSort[idx]}//.IndexList->List];
		final = ReplaceIndex[Evaluate[final],idx];
		];
	final]*)


End[];


(* ::Section:: *)
(*Definition and properties of tensors*)


(* ::Subsection::Closed:: *)
(*AutomaticRulesSVT*)


Options[AutomaticRulesSVT] = {
	BackgroundQ -> False,
	ScalarPertQ -> False,
	VectorPertQ -> False,
	TensorPertQ -> False
};

AutomaticRulesSVT[tensor_, opts:OptionsPattern[{AutomaticRulesSVT, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	man1 = OptionValue@Manifold1D,
	man3 = OptionValue@Manifold3D,
	backQ = OptionValue@BackgroundQ,
	scalQ = OptionValue@ScalarPertQ,
	vecQ = OptionValue@VectorPertQ,
	tensQ = OptionValue@TensorPertQ,
	timevec = OptionValue@TimeVec,
	kvec = OptionValue@KVec,
	(** Additional variables **)
	tan1Q = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`Q"],
	tan3Q = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`Q"],
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3pmQ = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`pmQ"],
	tensorname, slots, idx1, order
	},

	(** Get tensor name **)
	If[Head@tensor===Symbol, tensorname=tensor, tensorname=Head@tensor];
	slots = Replace[#, Abs[x_]:>x]& /@Abs@SlotsOfTensor@tensorname;
	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[ManifoldQ@man1 && DimOfManifold@man1==1];
	Assert[ManifoldQ@man3 && DimOfManifold@man3==3];
	Assert[BooleanQ@backQ];
	Assert[BooleanQ@scalQ];
	Assert[BooleanQ@vecQ];
	Assert[BooleanQ@tensQ];
	Assert[Total@Boole[{backQ, scalQ, vecQ, tensQ}]<=1];
	Assert[xTensorQ@tensorname];
	Assert[xTensorQ@timevec];
	Assert[DependenciesOfTensor@timevec==={man1}];
	Assert[SlotsOfTensor@timevec==={Tangent@man1}];
	If[backQ,
		Assert[DependenciesOfTensor@tensorname==={man1}];
		Assert[slots==={}];
	];
	If[scalQ || vecQ || tensQ,
		Assert[DependenciesOfTensor@tensorname==={man1, man3}];
		If[scalQ, Assert[slots==={xAct`xTensor`Labels}]];
		If[vecQ, Assert[slots==={xAct`xTensor`Labels, Tangent@man3}]];
		If[tensQ, Assert[slots==={xAct`xTensor`Labels, Tangent@man3, Tangent@man3}]];
	];
	Off[Assert];

	(** Background **)
	If[backQ,
		AutomaticRules[#, {PD[i_?tan3pmQ]@#[] :> 0}]&/@{tensorname};
		If[StringMatchQ[ToString@tensorname, RegularExpression@"p*prime.*"],
			AutomaticRules[#, {PD[-a_?tan1Q]@#[] :> timevec[-a] ToExpression["p"<>ToString[#]<>"[]"]}]&/@{tensorname};,
			If[Not@StringMatchQ[ToString@tensorname, RegularExpression@"d*dot.*"],
				AutomaticRules[#, {PD[-a_?tan1Q]@#[] :> timevec[-a] ToExpression["prime"<>ToString[#]<>"[]"]}]&/@{tensorname};
			];
		];
	];

	(** Scalar Perturbations **)
	If[scalQ,
		If[Not@$ScalarPerts, AutomaticRules[#, {#[LI[order_]] :> 0}]&/@{tensorname}];
	];

	(** Vector Perturbations **)
	If[vecQ,
		If[Not@$VectorPerts, AutomaticRules[#, {#[LI[order_], i_?tan3pmQ] :> 0}]&/@{tensorname}];
		AutomaticRules[#, {
			PD[i_?tan3Q]@#[LI[order_], -i_?tan3Q] :> 0,
			PD[-i_?tan3Q]@#[LI[order_], i_?tan3Q] :> 0
		}]&/@{tensorname};
		AutomaticRules[#, {
			kvec[i_?tan3Q] #[LI[order_], -i_?tan3Q] :> 0,
			kvec[-i_?tan3Q] #[LI[order_], i_?tan3Q] :> 0
		}]&/@{tensorname};
		AutomaticRules[#, {
			kvec[i_?tan3Q] PD[a_?tan1Q]@#[LI[order_], -i_?tan3Q] :> 0,
			kvec[-i_?tan3Q] PD[a_?tan1Q]@#[LI[order_], i_?tan3Q] :> 0
		}]&/@{tensorname};
		AutomaticRules[#, {
			kvec[i_?tan3Q] PD[a_?tan1Q]@PD[b_?tan1Q]@#[LI[order_], -i_?tan3Q] :> 0,
			kvec[-i_?tan3Q] PD[a_?tan1Q]@PD[b_?tan1Q]@#[LI[order_], i_?tan3Q] :> 0
		}]&/@{tensorname};
	];

	(** Tensor Perturbations **)
	If[tensQ,
		If[Not@$TensorPerts, AutomaticRules[#, {#[LI[order_], i_?tan3pmQ, j_?tan3pmQ] :> 0}]&/@{tensorname}];
		AutomaticRules[#, {
			#[LI[order_], i_?tan3Q, -i_?tan3Q] :> 0,
			#[LI[order_], -i_?tan3Q, i_?tan3Q] :> 0, 
			PD[i_?tan3Q]@#[LI[order_], -i_?tan3Q, j_?tan3pmQ] :> 0,
			PD[-i_?tan3Q]@#[LI[order_], i_?tan3Q, j_?tan3pmQ] :> 0, 
            PD[i_?tan3Q]@#[LI[order_], j_?tan3pmQ, -i_?tan3Q] :> 0,
            PD[-i_?tan3Q]@#[LI[order_], j_?tan3pmQ, i_?tan3Q] :> 0
        }]&/@{tensorname};
        AutomaticRules[#, {
	        kvec[i_?tan3Q] #[LI[order_], -i_?tan3Q, j_?tan3pmQ] :> 0,
	        kvec[-i_?tan3Q] #[LI[order_], i_?tan3Q, j_?tan3pmQ] :> 0, 
            kvec[i_?tan3Q] #[LI[order_], j_?tan3pmQ, -i_?tan3Q] :> 0,
            kvec[-i_?tan3Q] #[LI[order_], j_?tan3pmQ, i_?tan3Q] :> 0
        }]&/@{tensorname};
        AutomaticRules[#, {
	        kvec[i_?tan3Q] PD[a_?tan1pmQ]@#[LI[order_], -i_?tan3Q, j_?tan3pmQ] :> 0,
	        kvec[-i_?tan3Q] PD[a_?tan1pmQ]@#[LI[order_], i_?tan3Q, j_?tan3pmQ] :> 0, 
            kvec[i_?tan3Q] PD[a_?tan1pmQ]@#[LI[order_], j_?tan3pmQ, -i_?tan3Q] :> 0,
            kvec[-i_?tan3Q] PD[a_?tan1pmQ]@#[LI[order_], j_?tan3pmQ, i_?tan3Q] :> 0
        }]&/@{tensorname};
        AutomaticRules[#, {
	        kvec[i_?tan3Q] PD[a_?tan1pmQ]@PD[b_?tan1pmQ]@#[LI[order_], -i_?tan3Q, j_?tan3pmQ] :> 0,
	        kvec[-i_?tan3Q] PD[a_?tan1pmQ]@PD[b_?tan1pmQ]@#[LI[order_], i_?tan3Q, j_?tan3pmQ] :> 0, 
            kvec[i_?tan3Q] PD[a_?tan1pmQ]@PD[b_?tan1pmQ]@#[LI[order_], j_?tan3pmQ, -i_?tan3Q] :> 0,
            kvec[-i_?tan3Q] PD[a_?tan1pmQ]@PD[b_?tan1pmQ]@#[LI[order_], j_?tan3pmQ, i_?tan3Q] :> 0
        }]&/@{tensorname};
	];
	
	If[verbose,
		xSVTUtilities`PrintLevel["Defined automatic rules for "<>tensor, 1];
	]
]


(* ::Subsection::Closed:: *)
(*DefDerivedTensorsSVT*)


Options[DefDerivedTensorsSVT] = Join[{
	MaxTimeDerivatives -> 2,
	AutomaticRulesSVTQ -> True
}, Options[AutomaticRulesSVT]];

DefDerivedTensorsSVT[tensor_, opts : OptionsPattern[{DefDerivedTensorsSVT, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	man1 = OptionValue@Manifold1D,
	man3 = OptionValue@Manifold3D,
	man4 = OptionValue@Manifold4D,
	maxtders = OptionValue@MaxTimeDerivatives,
	automaticQ = OptionValue@AutomaticRulesSVTQ,
	(** Additional variables **)
	tensorname, derivedtensor, basetens,
	defproperties, print, tex,
	nconfder, nphysder, iter, prefix,
	selectedoptions
	},

	(** Get tensor name **)
	If[Head@tensor===Symbol, tensorname=tensor, tensorname=Head@tensor];
	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[ManifoldQ@man1 && DimOfManifold@man1==1];
	Assert[ManifoldQ@man3 && DimOfManifold@man3==3];
	Assert[ManifoldQ@man4 && DimOfManifold@man4==4];
	Assert[xTensorQ@tensorname];
	Assert[IntegerQ@maxtders];
	Off[Assert];

	(** Properties of new tensor **)
	defproperties[tensin_, tensout_, printas_, texas_, autoQ_] := Module[{},
		xTensorQ[tensout] ^= True;
		DefInfo@tensout ^= DefInfo@tensin;
		SlotsOfTensor@tensout ^= Evaluate@SlotsOfTensor@tensin;
		SymmetryGroupOfTensor@tensout ^= Evaluate@SymmetryGroupOfTensor@tensin;
		DependenciesOfTensor@tensout ^= Evaluate@DependenciesOfTensor@tensin;
		HostsOf@tensout ^= Evaluate@HostsOf@tensin;
		PrintAs@Evaluate@tensout ^= Evaluate[ToString[printas@PrintAs@Evaluate@tensin, StandardForm]];
		Tex@Evaluate@tensout ^= texas@tensin;
		AppendTo[$Tensors, tensout];
		If[autoQ,
			selectedoptions = xSVTUtilities`FindOptions[{opts}, DefDerivedTensorsSVT, AutomaticRulesSVT];
			AutomaticRulesSVT[tensout, selectedoptions];
		];
	];

	(** Define additional tensor useful for gauge transformations **)
	If[MemberQ[DependenciesOfTensor@tensorname, man4] || MemberQ[DependenciesOfTensor@tensorname, man3],
		derivedtensor = ToExpression[ToString@tensorname<>"G"];
		print[expr_] := Overscript[expr, "~"];
		tex[expr_] := "\\tilde{"<>TexPrint[expr]<>"}";
		defproperties[tensorname, derivedtensor, print, tex, automaticQ]
	];

	(** Define time derivatives as new tensors (both conformal and prime) **)
	If[MemberQ[DependenciesOfTensor@tensorname, man1],
		nconfder = 0;
		nphysder = 0;
		(** Get number and type of time derivatives of input tensor **)
		basetens = tensorname;
		If[StringMatchQ[ToString@tensorname, RegularExpression@"p*prime.*"],
			nconfder = StringPosition[ToString@tensorname, "prime"][[1,1]];
			basetens = ToExpression@StringReplace[ToString@tensorname, RegularExpression["p*prime"]->""];
		];
		If[StringMatchQ[ToString@tensorname, RegularExpression["d*dot.*"]],
			nphysder = StringPosition[ToString@tensorname, "dot"][[1,1]];
			basetens = ToExpression@StringReplace[ToString@tensorname, RegularExpression["d*dot"]->""];
		];
		On[Assert];
		Assert[xTensorQ@basetens];
		Off[Assert];
		
		(** Do not do anything if too many derivatives **)
		If[nconfder>=maxtders || nphysder>=maxtders, Return[]];
		
		(** Do conformal derivatives if no physical ones are present **)
		If[nphysder==0,
			For[iter=nconfder+1, iter<=maxtders, iter++,
				prefix = StringJoin@Table["p", iter-nconfder];
				If[nconfder==0, prefix=StringJoin[prefix,"rime"]];
				derivedtensor = ToExpression[prefix<>ToString@tensorname];
				print[expr_] := ToExpression@StringJoin[expr,Table["'", iter]];
				tex[expr_] := TexPrint[expr]<>"^{"<>StringJoin@Table["\\prime", iter]<>"}";
				defproperties[basetens, derivedtensor, print, tex, automaticQ]
			];
		];

		(** Do physical derivatives if no conformal ones are present **)
		If[nconfder==0,
			For[iter=nphysder+1, iter<=maxtders, iter++,
				prefix = StringJoin@Table["d", iter-nphysder];
				If[nphysder==0, prefix=StringJoin[prefix,"ot"]];
				derivedtensor = ToExpression[prefix<>ToString@tensorname];
				print[expr_] := Overscript[expr, StringJoin@Table["\[Bullet]", iter]];
				tex[expr_] := "\\"<>StringJoin@Table["d", iter]<>"ot{"<>TexPrint@expr<>"}";
				defproperties[basetens, derivedtensor, print, tex, automaticQ]
			];
		];
	];

	If[verbose,
		xSVTUtilities`PrintLevel["Defined derived tensors for "<>ToString[tensor], 1];
	]
]


(* ::Subsection::Closed:: *)
(*DefTensorSVT*)


Options[DefTensorSVT] = Join[{
	DefDerivedTensorsSVTQ -> True,
	AutomaticRulesSVTQ -> True
}, Options[DefTensor], Options[DefDerivedTensorsSVT], Options[AutomaticRulesSVTQ]];

DefTensorSVT[tensor_, man_, opts___?OptionQ] := DefTensorSVT[tensor, man, GenSet[], opts]
DefTensorSVT[tensor_, man_, sym_, opts : OptionsPattern[{DefTensorSVT, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	derivedQ = OptionValue[DefDerivedTensorsSVTQ],
	automaticQ = OptionValue[AutomaticRulesSVTQ],
	(** Additional variables **)
	tensorname, selectedoptions
	},

	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[ManifoldQ[#]]&/@Flatten[{man}];
	Assert[BooleanQ[derivedQ]];
	Assert[BooleanQ[automaticQ]];
	Off[Assert];

	(** Get tensor name **)
	If[Head[tensor]===Symbol, tensorname=tensor, tensorname=Head[tensor]];

	(** Define tensor **)
	selectedoptions = xSVTUtilities`FindOptions[{opts}, DefTensorSVT, DefTensor];
	DefTensor[tensor, man, sym, selectedoptions];

	(** Derived tensors tensor **)
	If[derivedQ,
		selectedoptions = xSVTUtilities`FindOptions[{opts}, DefTensorSVT, DefDerivedTensorsSVT];
		DefDerivedTensorsSVT[tensorname, selectedoptions];
	];

	(** Automatic rules on tensor **)
	If[automaticQ,
		selectedoptions = xSVTUtilities`FindOptions[{opts}, DefTensorSVT, AutomaticRulesSVT];
		AutomaticRulesSVT[tensorname, selectedoptions];
	];

	If[verbose,
		xSVTUtilities`PrintLevel["Defined tensor "<>tensor, 1];
	]
]


(* ::Section:: *)
(*Manipulation of expressions*)


(* ::Subsection::Closed:: *)
(*SortRiemannIndices*)


SortRiemannIndices[expr_, cd_?CovDQ] := Module[
	{
	(** Read options **)
	tan = Tangent@ManifoldOfCovD@cd,
	(** Additional variables **)
	tmp,riem,rule
	},

	riem = GiveSymbol[Riemann,cd];
	rule = riem[-\[Alpha]_,-\[Nu]_,-\[Beta]_,-\[Mu]_]/;OrderedQ[{\[Alpha],\[Beta],\[Mu],\[Nu]}]:>-riem[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]]-riem[-\[Alpha],-\[Mu],-\[Nu],-\[Beta]];
	tmp = ToCanonical[expr, UseMetricOnVBundle->{tan}];
	tmp = tmp // SeparateMetric[MetricOfCovD@cd];
	tmp = tmp /.rule;
	tmp = ToCanonical[tmp, UseMetricOnVBundle->{tan}];
	tmp
]


(* ::Subsection::Closed:: *)
(*GRToBuildingBlocks*)


Options[GRToBuildingBlocks] = {
	ToMetric -> True
};

GRToBuildingBlocks[expr_, cd_?CovDQ, opts:OptionsPattern[{GRToBuildingBlocks, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	tometric = OptionValue@ToMetric,
	(** Additional variables **)
	metric = MetricOfCovD@cd,
	tan = Tangent@ManifoldOfCovD@cd,
	tmp
	},

	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[BooleanQ@tometric];
	Off[Assert];

	If[verbose, xSVTUtilities`PrintLevel["Started GRToBuildingBlocks.", 0]];
	If[verbose, xSVTUtilities`PrintLevel["Replacing various GR tensors with Riemann tensors when possible.", 1]];
	tmp = expr // WeylToRiemann;
	tmp = tmp // EinsteinToRicci;
	tmp = tmp // NoScalar // Expand;
	tmp = ToCanonical[tmp, UseMetricOnVBundle->{tan}];

	If[verbose, xSVTUtilities`PrintLevel["Sorting covariant derivatives.", 1]];
	tmp = tmp // SortCovDs;
	tmp = SeparateMetric[metric][tmp];
	
	If[verbose, xSVTUtilities`PrintLevel["Converting covariant derivatives into partial derivatives.", 1]];
	tmp = ChangeCovD[tmp, cd, PD];

	If[tometric,
		If[verbose, xSVTUtilities`PrintLevel["Replacing Riemann tensors with Christoffel symbols.", 1]];
		tmp = tmp // RiemannToChristoffel // Expand;
		If[verbose, xSVTUtilities`PrintLevel["Replacing Christoffel symbols with metric derivatives.", 1]];
		tmp = tmp // ChristoffelToGradMetric;
	];

	If[verbose, xSVTUtilities`PrintLevel["Canonicalizing expression.", 1]];
	tmp = tmp // NoScalar // Expand;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	If[verbose, xSVTUtilities`PrintLevel["Finished GRToBuildingBlocks.", 0]];

	tmp
]


(* ::Section:: *)
(*3+1 Decomposition*)


(* ::Subsection::Closed:: *)
(*SplitSpaceTime*)


SplitSpaceTime[expr_, freeindsrules_, opts : OptionsPattern[{SplitSpaceTime, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	tanm1 = Tangent@OptionValue@Manifold1D,
	tanm3 = Tangent@OptionValue@Manifold3D,
	tanm4 = Tangent@OptionValue@Manifold4D,
	metric4 = OptionValue@Metric4D,
	(** Additional variables **)
	timevecs, tmpexpr, listall, subs
	},

	(** Check that the input is as expected **)
	On[Assert];
	Assert[Head[freeindsrules]==List && Apply[And, Or[Head[#]===Rule,Head[#]===RuleDelayed]&/@freeindsrules]];
	Assert[BooleanQ@verbose];
	Assert[VBundleQ@tanm1 && DimOfVBundle@tanm1==1];
	Assert[VBundleQ@tanm3 && DimOfVBundle@tanm3==3];
	Assert[VBundleQ@tanm4 && DimOfVBundle@tanm4==4];
	Assert[MetricQ@metric4 && VBundleOfMetric@metric4==tanm4];
	Off[Assert];

	If[verbose, xSVTUtilities`PrintLevel["Started SplitSpaceTime.", 0]];
	If[verbose, xSVTUtilities`PrintLevel["Splitting dummy indices.", 1]];
	tmpexpr = expr // SeparateMetric[metric4];
	listall = IndicesOf[tanm4, Dummy, Up][tmpexpr];
	subs = Table[listall[[col]] -> IndexList[DummyIn[tanm3], DummyIn[tanm1]], {col, Length[listall]}];
	tmpexpr = TraceDummy[tmpexpr, subs];
	
	If[verbose, xSVTUtilities`PrintLevel["Replacing free indices.", 1]];
	If[Not[freeindsrules===None],
		tmpexpr = tmpexpr //.freeindsrules;
	];
	timevecs = IndicesOf[Free, tanm1][tmpexpr] /.IndexList->List;
	timevecs = Cases[timevecs,a_:>timevec[-a]];
	timevecs = timevecs /.List->Times;
	tmpexpr = tmpexpr timevecs // Expand;

	If[verbose, xSVTUtilities`PrintLevel["Finished SplitSpaceTime.", 0]];
	tmpexpr
]


(* ::Subsection::Closed:: *)
(*SVTPerturbation*)


SVTPerturbation[expr_, order_, opts : OptionsPattern[{SVTPerturbation, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	(** Additional variables **)
	tmpexpr
	},
	
	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[IntegerQ@order && order>=0];
	Off[Assert];

	If[verbose, xSVTUtilities`PrintLevel["Started SVTPerturbation.", 0]];
	tmpexpr = Perturbation[expr, order];
	tmpexpr = tmpexpr // ExpandPerturbation;
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->None];
	If[verbose, xSVTUtilities`PrintLevel["Finished SVTPerturbation.", 0]];
	tmpexpr
]


(* ::Subsection::Closed:: *)
(*SVTExpand*)


Options[SVTExpand] = {
	UseDerivedResults -> True,
	DecompositionRules -> "$SVTDecompositionRules"
};

SVTExpand[expr_, opts:OptionsPattern[{SVTExpand, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose = OptionValue@Verbose,
	metric3 = OptionValue@Metric3D,
	usederived = OptionValue@UseDerivedResults,
	baserules = ToExpression[OptionValue@DecompositionRules][[1]],
	derivedrules = ToExpression[OptionValue@DecompositionRules][[2]],
	(** Additional variables **)
	tmpexpr
	},

	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[BooleanQ@usederived];
	Assert[Head[baserules]==List && Apply[And, Or[Head[#]===Rule,Head[#]===RuleDelayed]&/@baserules]];
	Assert[Head[derivedrules]==List && Apply[And, Or[Head[#]===Rule,Head[#]===RuleDelayed]&/@derivedrules]];
	Off[Assert];
	
	tmpexpr = NoScalar[expr] //.Flatten[baserules] // Expand;
	If[Not@FlatMetricQ@metric3,
		tmpexpr = GradMetricToChristoffel[tmpexpr, metric3, PD];
		tmpexpr = GradMetricToChristoffel[tmpexpr, metric3, PD] // Expand;
		tmpexpr = ChangeCovD[tmpexpr, PD, CovDOfMetric@metric3];
		tmpexpr = Expand[tmpexpr];
		tmpexpr = SeparateMetric[metric3][tmpexpr];	
		tmpexpr = SortCovDs[tmpexpr, CovDOfMetric@metric3];	
		tmpexpr = tmpexpr /.SymmetricSpaceRules[CovDOfMetric@metric3, kappa];
	];
	If[usederived,
		tmpexpr = NoScalar[tmpexpr] //.Flatten[derivedrules];
	];
	tmpexpr = tmpexpr // Expand // ContractMetric;
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->{metric3}];
	tmpexpr = tmpexpr // SeparateMetric[metric3] // Expand;
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->{metric3}];
	tmpexpr // NoScalar
]


(* ::Subsection::Closed:: *)
(*SVTDecomposition*)


Options[SVTDecomposition] = Join[{
	SVTPerturbationQ      -> True,
	GRToBuildingBlocksQ   -> True,
	SplitSpaceTimeQ       -> True,
	SVTExpandQ            -> True,
	DecompositionMethod   -> "All",
	ChunksLength          -> 1000,
	CollectVars           -> {},
	StoreResultQ          -> False,
	StoreName             -> None
}, Options[GRToBuildingBlocks], Options[SplitSpaceTime], Options[SVTPerturbation], Options[SVTExpand]];

SVTDecomposition[expr_, orderPT_, freeindsrules_, opts : OptionsPattern[{SVTDecomposition, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose                 = OptionValue@Verbose,
	runSVTPerturbation      = OptionValue@SVTPerturbationQ,
	runGRToBuildingBlocks   = OptionValue@GRToBuildingBlocksQ,
	runSplitSpaceTime       = OptionValue@SplitSpaceTimeQ,
	runSVTExpand            = OptionValue@SVTExpandQ,
	cd                      = CovDOfMetric@OptionValue@Metric4D,
	decmethod               = OptionValue@DecompositionMethod,
	chunkslength            = OptionValue@ChunksLength,
	collectvars             = OptionValue@CollectVars,
	storeresults            = OptionValue@StoreResultQ,
	tanm1                   = Tangent@OptionValue@Manifold1D,
	tanm3                   = Tangent@OptionValue@Manifold3D,
	tanm4                   = Tangent@OptionValue@Manifold4D,
	decrules                = OptionValue@DecompositionRules,
	storename               = OptionValue@StoreName,
	(** Additional variables **)
	tmpexpr = expr,
	time1, time2, selectedoptions
	},

	(** Check that the input is as expected **)
	On[Assert];
	Validate[tmpexpr];
	Validate@Evaluate@storename;
	Assert[IntegerQ@orderPT && orderPT>=0];
	Assert[BooleanQ@verbose];
	Assert[BooleanQ@runSVTPerturbation];
	Assert[BooleanQ@runGRToBuildingBlocks];
	Assert[BooleanQ@runSplitSpaceTime];
	Assert[BooleanQ@runSVTExpand];
	Assert[StringQ@decmethod && MemberQ[{"All", "Chunks", "Collect"}, decmethod]];
	Assert[BooleanQ@storeresults];
	Assert[VBundleQ@tanm1 && DimOfVBundle@tanm1==1];
	Assert[VBundleQ@tanm3 && DimOfVBundle@tanm3==3];
	Assert[VBundleQ@tanm4 && DimOfVBundle@tanm4==4];

	If[decmethod==="Chunks", Assert[IntegerQ[chunkslength] && chunkslength>0]];
	If[decmethod==="Collect", Assert[Head[collectvars]==List]];
	If[runSVTPerturbation, Assert[IntegerQ[orderPT] && orderPT>=0]];
	If[runSplitSpaceTime,
		Assert[Head[freeindsrules]==List];
		Assert[AllTrue[freeindsrules, Head[#]===Rule || Head[#]===RuleDelayed &]];
		With[{
			indsL = #[[1]]&/@freeindsrules //.List->IndexList,
			indsR = #[[2]]&/@freeindsrules //.List->IndexList
			},
			Assert[AllTrue[indsL, VBundleOfIndex[#]===tanm4 && UpIndexQ[#] &]];
			Assert[AllTrue[indsR, (VBundleOfIndex[#]===tanm3 || VBundleOfIndex[#]===tanm1) && UpIndexQ[#] &]];
			Assert[Length[indsL]==Length[DeleteDuplicates[indsL]]];
			Assert[Length[indsR]==Length[DeleteDuplicates[indsR]]];
			Assert[Evaluate[Abs[#]&/@IndicesOf[Free][tmpexpr] //.Abs[a_]:>a]===indsL];
		];
	];
	If[storeresults, Assert[xTensorQ@Head@storename]];
	Off[Assert];

	(* Perturbation *)
	If[runSVTPerturbation && orderPT>0,
		If[verbose, xSVTUtilities`PrintLevel["1 - Running SVTPerturbation module", 0]];
		time1 = SessionTime[];
		tmpexpr = xSVTUtilities`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		selectedoptions = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SVTPerturbation];
		tmpexpr = SVTPerturbation[#, orderPT, selectedoptions]&/@tmpexpr;
		tmpexpr = xSVTUtilities`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* GRToBuildingBlocks *)
	If[runGRToBuildingBlocks,
		If[verbose, xSVTUtilities`PrintLevel["2 - Running GRToBuildingBlocks module", 0]];
		time1 = SessionTime[];
		tmpexpr = xSVTUtilities`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		selectedoptions = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, GRToBuildingBlocks];
		tmpexpr = GRToBuildingBlocks[#, cd, selectedoptions]&/@tmpexpr;
		tmpexpr = xSVTUtilities`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* SplitSpaceTime *)
	If[runSplitSpaceTime,
		If[verbose, xSVTUtilities`PrintLevel["3 - Running SplitSpaceTime module", 0]];
		time1 = SessionTime[];
		tmpexpr = xSVTUtilities`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		selectedoptions = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SplitSpaceTime];
		tmpexpr = SplitSpaceTime[#, freeindsrules, selectedoptions]&/@tmpexpr;
		tmpexpr = xSVTUtilities`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* SVTExpand *)
	If[runSVTExpand,
		If[verbose, xSVTUtilities`PrintLevel["4 - Running SVTExpand module", 0]];
		time1 = SessionTime[];
		tmpexpr = xSVTUtilities`ListifyExpr[tmpexpr, decmethod, chunkslength, collectvars];
		selectedoptions = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SplitSpaceTime];
		tmpexpr = SVTExpand[#, selectedoptions]&/@tmpexpr;
		tmpexpr = xSVTUtilities`DeListifyExpr[tmpexpr];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];
	];

	(* storeresults *)
	If[storeresults,
		If[verbose, xSVTUtilities`PrintLevel["5 - Storing result in $DecompositionRules", 0]];
		Module[{
			timevecs, right, rule, step, myUnion
		},
			timevecs = IndicesOf[Free,tanm1][storename] /.IndexList->List;
			timevecs = Cases[timevecs,a_:>timevec[a]];
			timevecs = timevecs /.List->Times;
			right = timevecs*tmpexpr;
			rule = MakeRule[{storename, right}, Evaluate->True];
			Print[rule[[1]]];
			SetAttributes[step, HoldAll];
			step[TT_] := Module[{P},
				P = (P = Return[#, TraceScan] &) &;
				TraceScan[P, TT, TraceDepth -> 1]
			];
			myUnion[str_String, val_] := step @ Symbol[str] /. _[s_Symbol] :> (s = Insert[s,val,{2,-1}]);
			myUnion[decrules, rule[[1]]];
		];
	];

	tmpexpr
]
