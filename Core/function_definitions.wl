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


(* ::Subsection::Closed:: *)
(*Utilities*)


Begin["xSVTUtilities`"];


PrintLevel[msg_, level_:0] := Print[Row[{If[level>0,StringRepeat["-", 4*level]<>"> ",""],msg}]]


Warning[msg_, level_:0] := PrintLevel["\n\!\(\*
StyleBox[\"WARNING\",\nFontColor->RGBColor[1, 0, 0]]\)\!\(\*
StyleBox[\" \",\nFontColor->RGBColor[1, 0, 0]]\):: "<>msg<>"\n", level]


SetDefInfo[tens_, backQ_, scalQ_, vecQ_, tensQ_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	str = ""
	},
	
	If[backQ, str=backS];
	If[scalQ, str=scalS];
	If[vecQ, str=vecS];
	If[tensQ, str=tensS];
	
	DefInfo[tens] ^= {DefInfo[tens][[1]], str};
]


GetTypeTens[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	{type===backS, type===scalS, type===vecS, type===tensS}
]


BackQ[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	type===backS
]


ScalQ[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	type===scalS
]


VecQ[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	type===vecS
]


TensQ[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	type===tensS
]


(* True if scalar or vector or tensor perturbation *)
SVTPertQ[tens_] := Module[
	{
	backS = "background",
	scalS = "scalar perturbation",
	vecS = "vector perturbation",
	tensS = "tensor perturbation",
	type = DefInfo[tens][[2]]
	},
	
	Or[type===scalS, type===vecS, type===tensS]
]


(* True for perturbation (anything that is a xAct tensor and has a Label Index LI) *)
PertQ[tens_] := Module[
	{
	head = tens
	},
	
	head = Head@Evaluate[head //.PD[__]@smth_:>smth];
	xTensorQ[head] && MemberQ[SlotsOfTensor[head],xAct`xTensor`Labels]
]


ListifyExpr[expr_, method_, partlength_, collectvars_] := Module[
	{
	tmpexpr = expr,
	tmpexpr1, tmpexpr2, tmpexpr3,
	count, lengths, findperts, pos
	},

	If[Head[tmpexpr]=!=Plus, tmpexpr = Expand[tmpexpr], tmpexpr = tmpexpr];
	If[method==="All", tmpexpr = {tmpexpr}];
	If[method==="Part",
		If[Head[tmpexpr]===Plus,
			tmpexpr = Replace[tmpexpr,Plus->List,{1},Heads->True];
			tmpexpr1 = Partition[tmpexpr /.Plus->List,partlength];
			tmpexpr2 = tmpexpr[[-Mod[Length[tmpexpr],partlength];;-1]];
			tmpexpr = Append[tmpexpr1, tmpexpr2];
			tmpexpr = Map[# /.List->Plus &, tmpexpr];,
			tmpexpr = {tmpexpr}
		];
	];
	If[method==="Collect",
		tmpexpr1 = Table[0,Length[collectvars]+1];
		For[count=1,count<=Length[collectvars],count++,
			tmpexpr1[[count]] = collectvars[[count]] Coefficient[tmpexpr,collectvars[[count]]] // Expand;
			tmpexpr = tmpexpr-tmpexpr1[[count]] // Expand;
		];
		tmpexpr1[[Length[collectvars]+1]] = tmpexpr;
		lengths = Map[Length[#]&,tmpexpr1];
		If[Length[expr]!=Evaluate[lengths //.List->Plus],Print["Total length does not match the sum of the lengths!"];];
		tmpexpr = tmpexpr1;
		(* This code below is more elegant but it has a bug. If in a term of expr
		are present two variables of collectvars, this term is duplicated *)
		(*tmpexpr1 = Map[Expand[#*Coefficient[tmpexpr, #]]&,collectvars];
		tmpexpr2 = {Expand[tmpexpr-Evaluate[tmpexpr1 /.List->Plus]]};
		tmpexpr = Union[tmpexpr1,tmpexpr2];*)
	];
	If[method==="SamePerts",
		findperts[elem_]:=Module[{tmpelem},
			tmpelem = elem //.Plus->List //.Times->List;
			tmpelem = tmpelem //.Power[x_,exp_]:>Table[x,{i,exp}] //.PD[_]@obj_:>obj;
			tmpelem = tmpelem // Flatten;
			tmpelem = tmpelem*Boole[xSVTUtilities`PertQ[#]&/@tmpelem];
			tmpelem = DeleteCases[tmpelem,0];
			Head[#]&/@tmpelem
		];
		tmpexpr1 = Flatten@{Replace[tmpexpr,Plus->List,{1},Heads->True]};
		tmpexpr2 = findperts[#]&/@tmpexpr1;
		tmpexpr2 = Sort[#]&/@tmpexpr2;
		tmpexpr3 = DeleteDuplicates[tmpexpr2];
		pos=Position[tmpexpr2,#]&/@tmpexpr3;
		pos=Flatten[#]&/@pos;
		tmpexpr1 = tmpexpr1[[#]]&/@pos;
		tmpexpr = ReplaceRepeated[#,List->Plus]&/@tmpexpr1;
	];
	If[Head[tmpexpr]=!=List, tmpexpr={tmpexpr}];
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



FirstT[expr_, OptionsPattern[{GlobalOptionsSVT}]] := Module[
	{
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3pmQ = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`pmQ"]
	},

	expr //. PD[a_?tan1pmQ]@PD[i_?tan3pmQ]@object_ :> PD[i]@PD[a]@object
]


FirstS[expr_, OptionsPattern[{GlobalOptionsSVT}]] := Module[
	{
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3pmQ = Symbol[ToString@Tangent@OptionValue@Manifold3D<>"`pmQ"]
	},

	expr //. PD[i_?tan3pmQ]@PD[a_?tan1pmQ]@object_ :> PD[a]@PD[i]@object
]


DivFree[expr1_+expr2_] := DivFree[expr1] + DivFree[expr2]
DivFree[expr1_*expr2_] := DivFree[expr1] * DivFree[expr2]
DivFree[expr_, OptionsPattern[{GlobalOptionsSVT}]] := Module[
	{
	tan1pmQ = Symbol[ToString@Tangent@OptionValue@Manifold1D<>"`pmQ"],
	tan3 = Tangent@OptionValue@Manifold3D,
	tmp, head, idxpert, idxPD, commonidx
	},
	
	tmp = expr;
	head = Head@Evaluate[tmp //.PD[__]@smth_:>smth];
	If[xTensorQ@head && xSVTUtilities`PertQ@tmp,
		If[xSVTUtilities`VecQ@head || xSVTUtilities`TensQ@head,
			idxpert = -#&/@IndicesOf[tan3, head][tmp];
			idxPD = IndicesOf[tan3, PD][tmp];
			commonidx=Intersection[idxpert, idxPD];
			If[Length@commonidx>0, tmp=0];
		];
	];
	tmp
]


HasPlusQ[expr_] := If[Head[Expand[expr]]===Plus, True, False]


FourierTAtom[expr_, k_] := Module[{append, ispert, tmp},
	tmp = Flatten[{expr} //.Times->List];
	ispert = Boole[xSVTUtilities`PertQ[# //.PD[__]@tens_:>tens]&/@tmp];
	If[Total[ispert]>1,Print["WARNING: Careful with this! This function can not deal with the convolution of multiple functions. Use FourierT instead!"]];
	If[k===kvec,append=""];
	If[k===kvec1,append="kvec1"];
	If[k===kvec2,append="kvec2"];
	tmp = ToCanonical[expr //. PD[-i_?TangentM3`Q]@tens_ :> -I k[-i] tens, UseMetricOnVBundle -> None];
	tmp = ToCanonical[tmp //. head_[args___] /;(xSVTUtilities`PertQ[head[args]] && Not[StringMatchQ[ToString[head], RegularExpression[".*"<>append]]]) :> ToExpression[ToString[head]<>append][args], UseMetricOnVBundle -> None];
	tmp
]


End[];


(* ::Subsection::Closed:: *)
(*Import/Export*)


Options[SVTExport] = {
	ExportName -> Automatic,
	ExportDirectory -> $EquationsDirectory,
	ExportSuffix -> $Theory
};

SetAttributes[SVTExport, HoldFirst];

SVTExport[expr_, OptionsPattern[]]:=Module[
	{
	name = OptionValue@ExportName,
	dir = OptionValue@ExportDirectory,
	suffix = OptionValue@ExportSuffix,
	file, success
	},

	If[name===Automatic,
		name = ToString@HoldForm@expr;
		If[suffix=!="",
			name = name <> "_" <> suffix;];
		name = name <> ".m";
	];
	file = dir<>name;
	
	success = Check[Export[file, Evaluate@expr], False];
	If[success=!=False, Print["Succesfully exported at "<>file]];
]


Options[SVTImport] = {
	ImportVarName -> Automatic,
	ImportDirectory -> $EquationsDirectory,
	ImportSuffix -> $Theory,
	Verbose -> True
};

SVTImport[name_, OptionsPattern[]]:=Module[
	{
	varname = OptionValue@ImportVarName,
	dir = OptionValue@ImportDirectory,
	suffix = OptionValue@ImportSuffix,
	verbose = OptionValue@Verbose,
	file, tmp, success
	},

	If[varname===Automatic,
		varname = name;
	];

	file = dir<>name;
	If[suffix=!="",
		file = file <> "_" <> suffix;
	];
	file = file <> ".m";
	
	Clear[Evaluate@varname];
	success = Check[MapThread[Set, {ToExpression[#] & /@ {varname}, Import[#] & /@ {file}}],False];
	If[success=!=False && verbose, Print["Succesfully imported "<>varname<>" from "<>file];];
]


Options[ImportEquations] = {
	ImportSuffix -> $Theory
};

ImportEquations[dir_, OptionsPattern[]] := Module[
	{
	suffix = OptionValue@ImportSuffix,
	files, names
	},

	files = FileNames[dir<>"*"<>suffix<>".m"];
	names = StringReplace[files, dir->""];
	names = StringReplace[names, ".m"->""];
	If[suffix==="",
		names = StringReplace[names, "_"->""];,
		names = StringSplit[#,"_"][[1]]&/@names;
	];
	
	SVTImport[#,
		ImportVarName -> #,
		ImportDirectory -> dir,
		ImportSuffix ->suffix,
		Verbose -> False]&/@names;
	Print["Imported equations:"];
	Print[names];
]


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
	MaxTimeDerivatives -> 4,
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
	backQ = OptionValue@BackgroundQ,
	scalQ = OptionValue@ScalarPertQ,
	vecQ = OptionValue@VectorPertQ,
	tensQ = OptionValue@TensorPertQ,
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
		xSVTUtilities`SetDefInfo[tensout, backQ, scalQ, vecQ, tensQ];
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
				print[expr_] := Superscript[expr, StringJoin@Table["\[Prime]", iter]];
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

	(** Define extra tensors to deal with the Fourier transform **)
	If[MemberQ[DependenciesOfTensor@tensorname, man3],
		derivedtensor = ToExpression[ToString@tensorname<>"kvec1"];
		print[expr_] := Subscript[expr,"p"];
		tex[expr_] := TexPrint[expr]<>"\\left(\\vec{p}\\right)";
		defproperties[tensorname, derivedtensor, print, tex, automaticQ];
		derivedtensor = ToExpression[ToString@tensorname<>"kvec2"];
		print[expr_] := Subscript[expr,"q"];
		tex[expr_] := TexPrint[expr]<>"\\left(\\vec{q}\\right)";
		defproperties[tensorname, derivedtensor, print, tex, automaticQ];
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
	backQ = OptionValue@BackgroundQ,
	scalQ = OptionValue@ScalarPertQ,
	vecQ = OptionValue@VectorPertQ,
	tensQ = OptionValue@TensorPertQ,
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
	xSVTUtilities`SetDefInfo[tensorname, backQ, scalQ, vecQ, tensQ];

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
(*Listify*)


Options[Listify] = {
	ListMethod   -> "All",
	PartLength   -> 1000,
	CollectVars  -> {},
	Verbose      -> False
};

Listify[fun_, expr_, args_, OptionsPattern[]] := Module[
	{
	method      = OptionValue@ListMethod,
	partlength  = OptionValue@PartLength,
	collectvars = OptionValue@CollectVars,
	verbose     = OptionValue@Verbose,
	tmpexpr, x, time, lengths
	},

	(** Check that the input is as expected **)
	Assert[StringQ@method && MemberQ[{"All", "Part", "Collect", "SamePerts"}, method]];
	If[method==="Part", Assert[IntegerQ[partlength] && partlength>0]];
	If[method==="Collect", Assert[Head[collectvars]==List]];

	tmpexpr = xSVTUtilities`ListifyExpr[expr, method, partlength, collectvars];
	lengths = Map[If[Head[#]===Plus,Length[#],1]&,tmpexpr];
	If[verbose,xSVTUtilities`PrintLevel["Listify produced array with lengths: "<>ToString[lengths],1]];
	Table[
		{time, tmpexpr[[x]]} = Timing@fun[tmpexpr[[x]], Sequence@@args];
		If[verbose && Length@tmpexpr>1,
			xSVTUtilities`PrintLevel["Step "<>ToString[x]<>"/"<>ToString[Length@tmpexpr]<>" evaluated in "<>ToString[time]<>" seconds.", 1]
		];, {x,Length@tmpexpr}];
	tmpexpr = xSVTUtilities`DeListifyExpr[tmpexpr];
	
	tmpexpr
]


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
		tmp = tmp // RiemannToChristoffel;
		tmp = Expand[#]&/@tmp;
		If[verbose, xSVTUtilities`PrintLevel["Replacing Christoffel symbols with metric derivatives.", 1]];
		tmp = tmp // ChristoffelToGradMetric;
	];

	If[verbose, xSVTUtilities`PrintLevel["Canonicalizing expression.", 1]];
	tmp = tmp // NoScalar;
	tmp = Expand[#]&/@tmp;
	tmp = ToCanonical[#, UseMetricOnVBundle -> None]&/@tmp;
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
	UseDerivedResults   -> True,
	DecompositionRules  -> "$SVTDecompositionRules"
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
	tmpexpr, time1, time2
	},

	(** Check that the input is as expected **)
	On[Assert];
	Assert[BooleanQ@verbose];
	Assert[BooleanQ@usederived];
	Assert[Head[baserules]==List && Apply[And, Or[Head[#]===Rule,Head[#]===RuleDelayed]&/@baserules]];
	Assert[Head[derivedrules]==List && Apply[And, Or[Head[#]===Rule,Head[#]===RuleDelayed]&/@derivedrules]];
	Off[Assert];
	
	tmpexpr = expr //.Flatten[baserules] // Expand;
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
		tmpexpr = tmpexpr //.Flatten[derivedrules] // Expand // NoScalar;
	];
	tmpexpr = tmpexpr // Expand // ContractMetric;
	tmpexpr = tmpexpr // xSVTUtilities`FirstS;
	tmpexpr = tmpexpr // xSVTUtilities`DivFree;
	(*tmpexpr = tmpexpr // xSVTUtilities`FirstDummies // NoScalar;*)
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->{metric3}];
	tmpexpr = tmpexpr // SeparateMetric[metric3] // Expand;
	tmpexpr = ToCanonical[tmpexpr, UseMetricOnVBundle->{metric3}];
	tmpexpr = tmpexpr // ReplaceDummies;
	tmpexpr // NoScalar
]


(* ::Subsection::Closed:: *)
(*SVTDecomposition*)


Options[SVTDecomposition] = Join[{
	SVTPerturbationQ           -> True,
	GRToBuildingBlocksQ        -> True,
	SplitSpaceTimeQ            -> True,
	SVTExpandQ                 -> True,
	StoreResultQ               -> False,
	StoreName                  -> None
}, Options[GRToBuildingBlocks], Options[SplitSpaceTime], Options[SVTPerturbation], Options[SVTExpand], Options[Listify]];

SVTDecomposition[expr_, orderPT_, freeindsrules_, opts : OptionsPattern[{SVTDecomposition, GlobalOptionsSVT}]] := Module[
	{
	(** Read options **)
	verbose                 = OptionValue@Verbose,
	runSVTPerturbation      = OptionValue@SVTPerturbationQ,
	runGRToBuildingBlocks   = OptionValue@GRToBuildingBlocksQ,
	runSplitSpaceTime       = OptionValue@SplitSpaceTimeQ,
	runSVTExpand            = OptionValue@SVTExpandQ,
	cd                      = CovDOfMetric@OptionValue@Metric4D,
	storeresults            = OptionValue@StoreResultQ,
	tanm1                   = Tangent@OptionValue@Manifold1D,
	tanm3                   = Tangent@OptionValue@Manifold3D,
	tanm4                   = Tangent@OptionValue@Manifold4D,
	decrules                = OptionValue@DecompositionRules,
	storename               = OptionValue@StoreName,
	baserules               = ToExpression[OptionValue@DecompositionRules][[1]],
	(** Additional variables **)
	tmpexpr = expr,
	time1, time2, opts1, opts2, opts3
	},

	(** Check that the input is as expected **)
	On[Assert];
	Validate[tmpexpr];
	Assert[IntegerQ@orderPT && orderPT>=0];
	Assert[BooleanQ@verbose];
	Assert[BooleanQ@runSVTPerturbation];
	Assert[BooleanQ@runGRToBuildingBlocks];
	Assert[BooleanQ@runSplitSpaceTime];
	Assert[BooleanQ@runSVTExpand];
	Assert[BooleanQ@storeresults];
	Assert[VBundleQ@tanm1 && DimOfVBundle@tanm1==1];
	Assert[VBundleQ@tanm3 && DimOfVBundle@tanm3==3];
	Assert[VBundleQ@tanm4 && DimOfVBundle@tanm4==4];

	If[runSVTPerturbation, Assert[IntegerQ[orderPT] && orderPT>=0]];
	If[runSplitSpaceTime,
		Assert[Head[freeindsrules]==List];
		Assert[AllTrue[freeindsrules, Head[#]===Rule || Head[#]===RuleDelayed &]];
		With[{
			indsL = Sort[#[[1]]&/@freeindsrules //.List->IndexList],
			indsR = Sort[#[[2]]&/@freeindsrules //.List->IndexList]
			},
			Assert[AllTrue[indsL, VBundleOfIndex[#]===tanm4 && UpIndexQ[#] &]];
			Assert[AllTrue[indsR, (VBundleOfIndex[#]===tanm3 || VBundleOfIndex[#]===tanm1) && UpIndexQ[#] &]];
			Assert[Length[indsL]==Length[DeleteDuplicates[indsL]]];
			Assert[Length[indsR]==Length[DeleteDuplicates[indsR]]];
			Assert[Evaluate[Sort[Abs[#]&/@IndicesOf[Free][tmpexpr] //.Abs[a_]:>a]]===indsL];
		];
	];
	If[storeresults, Assert[xTensorQ@Head@storename]];
	Assert[Head[OptionValue@ListMethod]===List || Head[OptionValue@ListMethod]===String];
	If[Head[OptionValue@ListMethod]===List, Assert[Length[OptionValue@ListMethod]==4]];
	Off[Assert];
	
	opts2 = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, Listify];

	(* Substitute the stress energy tensor with its definition *)
	tmpexpr = tmpexpr //.$StressEnergyDecomposition // Expand;

	(* Perturbation *)
	If[runSVTPerturbation && orderPT>0,
		If[verbose, xSVTUtilities`PrintLevel["1 - Running SVTPerturbation module", 0]];
		time1 = SessionTime[];
		opts1 = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SVTPerturbation];
		opts3 = opts2 /.Rule[ListMethod,val_]/;Head[val]===List:>Rule[ListMethod,val[[1]]];
		tmpexpr = Listify[SVTPerturbation, tmpexpr, {orderPT, opts1}, opts3];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];,
		If[verbose, xSVTUtilities`PrintLevel["1 - No SVTPerturbation module requested. I am skipping it!", 0]];
	];

	(* GRToBuildingBlocks *)
	If[runGRToBuildingBlocks,
		If[verbose, xSVTUtilities`PrintLevel["2 - Running GRToBuildingBlocks module", 0]];
		time1 = SessionTime[];
		opts1 = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, GRToBuildingBlocks];
		opts3 = opts2 /.Rule[ListMethod,val_]/;Head[val]===List:>Rule[ListMethod,val[[2]]];
		tmpexpr = Listify[GRToBuildingBlocks, tmpexpr, {cd, opts1}, opts3];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];,
		If[verbose, xSVTUtilities`PrintLevel["2 - No GRToBuildingBlocks module requested. I am skipping it!", 0]];
	];

	(* SplitSpaceTime *)
	If[runSplitSpaceTime,
		If[verbose, xSVTUtilities`PrintLevel["3 - Running SplitSpaceTime module", 0]];
		time1 = SessionTime[];
		opts1 = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SplitSpaceTime];
		opts3 = opts2 /.Rule[ListMethod,val_]/;Head[val]===List:>Rule[ListMethod,val[[3]]];
		tmpexpr = Listify[SplitSpaceTime, tmpexpr, {freeindsrules, opts1}, opts3];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];,
		If[verbose, xSVTUtilities`PrintLevel["3 - No SplitSpaceTime module requested. I am skipping it!", 0]];
	];

	(* SVTExpand *)
	If[runSVTExpand,
		If[verbose, xSVTUtilities`PrintLevel["4 - Running SVTExpand module", 0]];
		time1 = SessionTime[];
		opts1 = xSVTUtilities`FindOptions[{opts}, SVTDecomposition, SVTExpand];
		opts3 = opts2 /.Rule[ListMethod,val_]/;Head[val]===List:>Rule[ListMethod,val[[4]]];
		tmpexpr = Listify[SVTExpand, tmpexpr, {opts1}, opts3];
		time2 = SessionTime[];
		If[verbose, xSVTUtilities`PrintLevel["Done! Evaluated module in "<>ToString[time2-time1]<>" seconds.", 1]];,
		If[verbose, xSVTUtilities`PrintLevel["4 - No SVTExpand module requested. I am skipping it!", 0]];
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
			right = timevecs*tmpexpr // ReplaceDummies // ScreenDollarIndices;
			rule = MakeRule[{Evaluate@storename, Evaluate@right}, Evaluate->True];
			If[verbose, xSVTUtilities`PrintLevel[ScreenDollarIndices@rule[[1]], 1]];
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


(* ::Section:: *)
(*PrintWell*)


(* ::Subsection::Closed:: *)
(*PrintWell*)


xTensorFormStop[InertHead]
SetAttributes[interpretbox, HoldFirst];
interpretbox[expr_, box_] := InterpretationBox[StyleBox[box, AutoSpacing -> False, ShowAutoStyles -> False], expr, Editable -> False];
xTensorFormStart[InertHead] := MakeBoxes[ih_Symbol?InertHeadQ[expr_, z___], StandardForm] := interpretbox[ih[expr, z], RowBox[{PrintAs[Unevaluated[ih]], "", MakeBoxes[expr, StandardForm], ""}]];
xTensorFormStop[InertHead] := MakeBoxes[ih_Symbol?InertHeadQ[expr_, z___], StandardForm] =.;
xTensorFormStart[InertHead]
DefInertHead[Lap, ContractThrough -> {delta, g}, PrintAs -> "\!\(\*SuperscriptBox[\(\[Del]\), \(2\)]\)"]
LinearQ[Lap] ^= True;
Lap[PD[i_?TangentM3`pmQ]@expr_] := PD[i]@Lap@expr
Lap[expr1_ + expr2_] := Lap[expr1] + Lap[expr2]
Lap[expr1_ * expr2_] /; !StringMatchQ[ToString[expr1], "*pert*"] := expr1 * Lap[expr2]


ToLaplacian[bigexpr_] := If[ToString[bigexpr] == ToString[0] || Length[IndicesOf[PD][bigexpr]]<2, 
      bigexpr, If[Length[IndicesOf[TangentM3, PD, Dummy][bigexpr]] > 0, 
        Nest[Lap, Level[bigexpr //.PD[i_?TangentM3`pmQ]@PD[j_?TangentM3`pmQ]@expr_ /; (MemberQ[IndicesOf[TangentM3, Dummy][bigexpr], j] && 
        MemberQ[IndicesOf[TangentM3, Free][bigexpr], i]) :> PD[j]@PD[i]@expr, Length[IndicesOf[TangentM3, Dummy][bigexpr]]][[1]], 
        Length[IndicesOf[TangentM3, Dummy][bigexpr]]/2], bigexpr]]
ToLaplacian[Times[x_, y_]] := Times[ToLaplacian[x], ToLaplacian[y]]
ToLaplacian[x_ + y_] := ToLaplacian[x] + ToLaplacian[y]


PrintWell[expr_] := Module[{tmp},
	tmp = xSVTUtilities`FirstT@expr;
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[inds___] /; !StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["prime" <> ToString[tens]][inds];
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[inds___] /; StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["p" <> ToString[tens]][inds];
	tmp = tmp // ContractMetric // ToLaplacian // NoScalar
]


(* ::Subsection::Closed:: *)
(*UnPrintWell*)


UnPrintWell[expr_]:= Module[{tmp}, tmp = expr;
	tmp = tmp //.Lap[tens_]:>Module[{i=DummyIn[TangentM3]},PD[-i]@PD[i]@tens] // ToCanonical // ReplaceDummies;
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"pp*ime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, Scalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"pp*ime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]];
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"prime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, Scalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"prime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]];
	tmp = tmp // SeparateMetric[] // NoScalar
]


(* ::Subsection::Closed:: *)
(*CollectPerts*)


CollectPerts[expr_, options___] := CollectPerts[expr, {}, options]
CollectPerts[expr_, {more___}, options___] := Module[{FindPerts, expr1, expr2, tmp, tens, order},
	tmp = expr // PrintWell // ReplaceDummies;
	FindPerts[expr1_ + expr2_] := FindPerts[expr1] + FindPerts[expr2];
	FindPerts[expr1_ * expr2_] /; !StringMatchQ[ToString[expr1], "*pert*"] := FindPerts[expr2];
	tens = FindPerts[tmp] //.Plus->List;
	tens = tens //.n_ FindPerts[expr1_] :> FindPerts[expr1];
	tens = tens //.FindPerts[expr1_] :> expr1;
	(* Order perturbations *)
	order = List[#]&/@tens;
	order = ReplaceRepeated[order,Times->List];
	order = Flatten[#]&/@order;
	order = Replace[order,pert_^n_:>n,{2}];
	order = Replace[order,pert_/;Not@IntegerQ[pert]:>1,{2}];
	order = ReplaceRepeated[#,List->Plus]&/@order;
	order = Ordering@order;
	tens = Reverse@tens[[order]];
	Collect[tmp, Join[tens, {more}], options]
]


(* ::Section:: *)
(*Useful functions*)


(* ::Subsection::Closed:: *)
(*TimeDer*)


TimeDer[Equal[expr1_,expr2_]] := Equal[TimeDer[expr1], TimeDer[expr2]]
TimeDer[expr_, OptionsPattern[{GlobalOptionsSVT}]] := Module[
	{
	ind = DummyIn@Tangent@OptionValue@Manifold1D,
	tmp
	},
	tmp = timevec[ind] PD[-ind]@expr;
	tmp = tmp // Expand;
	ToCanonical[tmp, UseMetricOnVBundle -> None]
]


(* ::Subsection::Closed:: *)
(*FourierT*)


FourierT[expr1_ + expr2_] := FourierT[expr1] + FourierT[expr2]
FourierT[expr_?xSVTUtilities`HasPlusQ] := FourierT[Expand[expr]];
FourierT[expr_] := Module[{tmp, ispert, back, pert},
	tmp = Flatten[{expr} //.Times->List];
	ispert = Boole[xSVTUtilities`PertQ[# //.PD[__]@tens_:>tens]&/@tmp];
	back = Extract[tmp,Position[ispert,0]] //.List->Times;
	pert = Extract[tmp,Position[ispert,1]] //.List->Times;
	If[Total[ispert]==0,pert=1;];
	If[Total[ispert]==1,pert=xSVTUtilities`FourierTAtom[pert,kvec]];
	If[Total[ispert]==2,
		pert=1/2 (xSVTUtilities`FourierTAtom[pert[[1]],kvec1] xSVTUtilities`FourierTAtom[pert[[2]],kvec2]+xSVTUtilities`FourierTAtom[pert[[1]],kvec2] xSVTUtilities`FourierTAtom[pert[[2]],kvec1])
	];
	If[Total[ispert]>2,Print["Fourier transform, as it has been implemented here, can deal with at most the convolution of 2 functions"]; Return[]];
	back*pert // Expand
]


(* ::Subsection::Closed:: *)
(*Coeff*)


Coeff[Times[expr1_, expr2_]] /;xSVTUtilities`PertQ[expr2] := Coeff[expr1]*expr2
Coeff[Times[expr1_, Power[expr2_,n_]]] /;xSVTUtilities`PertQ[expr2] := Coeff[expr1]*expr2^n
Coeff[expr1_ + expr2_] := Coeff[expr1] + Coeff[expr2]
Coeff[expr_] /;xSVTUtilities`PertQ[expr] := Coeff[1] expr


(* ::Subsection::Closed:: *)
(*NDers*)


NDers[n_,type_:All][expr_] := Module[{tmp,order},
	tmp = expr // Expand;
	tmp = Replace[tmp,Plus->List,{1},Heads->True];
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	If[type===All,
		order = Length[IndicesOf[PD][#]]&/@tmp;,
		order = Length[IndicesOf[PD,type][#]]&/@tmp
	];
	order = Boole[#==n]&/@order;
	tmp = tmp*order //.List->Plus;
	tmp
]


(* ::Subsection::Closed:: *)
(*ToPhysical & ToConformal (TODO)*)


ToPhysical[expr_] := Module[{hubblerules, primerules, match, sub, isolate, tmp},
	isolate[tmp1_+tmp2_] := isolate[tmp1] + isolate[tmp2];
	isolate[tmp1_*tmp2_] := isolate[tmp1] * isolate[tmp2];
	match[tens_, str_] := StringMatchQ[ToString[tens], str];
	sub[tens_, str1_, str2_] := ToExpression[StringReplace[ToString[tens], str1 -> str2]];
	hubblerules = {hubbleC[] :> scale[] hubbleP[],
		primehubbleC[] :> scale[]^2 (hubbleP[]^2 + dothubbleP[]), 
		pprimehubbleC[] :> scale[]^3 (ddothubbleP[] + 4 hubbleP[] dothubbleP[] + 2 hubbleP[]^3),
		ppprimehubbleC[] :> scale[]^4 (dddothubbleP[] + 4 dothubbleP[]^2 + 7 ddothubbleP[] hubbleP[] + 18 hubbleP[]^2 dothubbleP[] + 6 hubbleP[]^4)};
	primerules = {tens_ /; match[tens, "prime*"] :> scale[] sub[tens, "prime", "dot"],
		tens_ /; match[tens, "pprime*"] :> scale[]^2 (sub[tens, "pprime", "ddot"] + hubbleP[] sub[tens, "pprime", "dot"]),
		tens_ /; match[tens, "ppprime*"] :> scale[]^3 (sub[tens, "ppprime", "dddot"] + 3 hubbleP[] sub[tens, "ppprime", "ddot"]
			+ 2 hubbleP[]^2 sub[tens, "ppprime", "dot"] + dothubbleP[] sub[tens, "ppprime", "dot"])};
	tmp = isolate[PrintWell[expr]] //.hubblerules //.primerules // Expand;
	tmp //.isolate[tmp1_]:>tmp1 // Expand
]


(*ToConformal[expr_] := Module[{hubblerules, primerules, match, sub, isolate, tmp},
	isolate[tmp1_+tmp2_] := isolate[tmp1] + isolate[tmp2];
	isolate[tmp1_*tmp2_] := isolate[tmp1] * isolate[tmp2];
	match[tens_, str_] := StringMatchQ[ToString[tens], str];
	sub[tens_, str1_, str2_] := ToExpression[StringReplace[ToString[tens], str1 -> str2]];
	hubblerules = {hubbleP[] :> hubbleC[]/scale[],
		dothubbleP[] :> primehubbleC[]/scale[]^2 - hubbleP[]^2, 
		ddothubbleP[] :> pprimehubbleC[]/scale[]^3 - 4 hubbleP[] dothubbleP[] - 2 hubbleP[]^3,
		dddothubbleP[] :> ppprimehubbleC[]/scale[]^4 - 4 dothubbleP[]^2 - 7 ddothubbleP[] hubbleP[] - 18 hubbleP[]^2 dothubbleP[] - 6 hubbleP[]^4};
	primerules = {tens_ /; match[tens, "dot*"] :> sub[tens, "dot", "prime"]/scale[],
		tens_ /; match[tens, "ddot*"] :> sub[tens, "ddot", "pprime"]/scale[]^2 - hubbleC[]/scale[] sub[tens, "ddot", "dot"],
		tens_ /; match[tens, "dddot*"] :> sub[tens, "dddot", "ppprime"]/scale[]^3 - 3 hubbleC[]/scale[] sub[tens, "dddot", "ddot"]
			- 2 (hubbleC[]/scale[])^2 sub[tens, "dddot", "dot"] - (primehubbleC[]/scale[]^2 - hubbleC[]^2/scale[]^2) sub[tens, "dddot", "dot"]};
	tmp = isolate[PrintWell[expr]] //.hubblerules //.primerules // Expand;
	tmp //.isolate[tmp1_]:>tmp1 // Expand
]*)
