(* ::Package:: *)

(****   SplitDummySpaceTime   ****)


SplitDummySpaceTime[expr_] := Module[{ListAll, subs}, ListAll = IndicesOf[TangentM4, Dummy][expr];
	ListAll = DeleteCases[ListAll, -_?TangentM4`Q];
	ListAll = DeleteCases[ListAll, _?TangentM3`Q];
	ListAll = DeleteCases[ListAll, _?TangentM1`Q];
	subs = Table[ListAll[[col]] -> IndexList[DummyIn[TangentM3], DummyIn[TangentM1]], {col, Length[ListAll]}];
	TraceDummy[expr, subs]]


(****   Order of Derivatives   ****)


FirstT[expr_] := expr //. PD[a_?TangentM1`pmQ]@PD[i_?TangentM3`pmQ]@object_ :> PD[i]@PD[a]@object


FirstS[expr_] := expr //. PD[i_?TangentM3`pmQ]@PD[a_?TangentM1`pmQ]@object_ :> PD[a]@PD[i]@object


(****   SVTExpand   ****)


SVTExpand[expr_] := Module[{tmp, inds}, tmp = expr //.expandrules;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp = tmp // ContractMetric // NoScalar;
	If[ToString[tmp] == ToString[0], tmp,
		inds = IndicesOf[TangentM3][tmp];
		inds = DeleteCases[inds, -_?TangentM3`Q];
		tmp = SeparateMetric[metric\[Delta]][tmp, inds]];
tmp]


(****   Decomposition   ****)


SVTPerturbation[expr_, n_] := Module[{tmp}, tmp = Perturbation[expr, n];
	tmp = tmp // ExpandPerturbation;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp // SeparateMetric[] // NoScalar
]


GRToGradMetric[expr_] := Module[{tmp}, tmp = expr // WeylToRiemann;
	tmp = tmp // EinsteinToRicci;
	tmp = tmp // RiemannToChristoffel;
	tmp = tmp // ChangeCovD;
	tmp = tmp // ChristoffelToGradMetric;
	tmp = tmp // NoScalar // Expand;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp = tmp // NoScalar;
	ToCanonical[tmp, UseMetricOnVBundle -> None]
]


Decomposition[order_, inds___][expr_] := Module[{tmp, timevecs},
	tmp = GRToGradMetric[expr];
	tmp = SVTPerturbation[tmp, order];
	tmp = tmp // SeparateMetric[];
	tmp = tmp // SplitDummySpaceTime;
	tmp = tmp /.{inds};
	timevecs = IndicesOf[Free, TangentM1][tmp] /. IndexList -> List;
	timevecs = Cases[timevecs, a_?TangentM1`pmQ :>timevec[-a]];
	timevecs = Evaluate[timevecs /.List -> Times];
	tmp = tmp timevecs;
	tmp  // SVTExpand // ReplaceDummies
]


(****   Fourier Transformations   ****)


FourierT[expr1_ + expr2_] := FourierT[expr1] + FourierT[expr2]
FourierT[ten1_ ten2_] /; ! StringMatchQ[ToString[ten1], "*pert*"] := ten1 FourierT[ten2]
FourierT[ten_] /; ! StringMatchQ[ToString[ten], "*pert*"] := ten
FourierT[Times[ten1_, ten2_]] /; StringMatchQ[ToString[ten1], "*pert*"] && StringMatchQ[ToString[ten2], "*pert*"] :=
	ToCanonical[ten1 //. PD[-i_?TangentM3`Q]@tens_ :> -I kvec[-i] tens, UseMetricOnVBundle -> None] ToCanonical[ten2 //. PD[-i_?TangentM3`Q]@tens_ :> I kvec[-i] tens, UseMetricOnVBundle -> None]
FourierT[ten_] /; StringMatchQ[ToString[ten], "*pert*"] && !StringMatchQ[ToString[ten], "*Times*"] := ToCanonical[ten //. PD[-i_?TangentM3`Q]@tens_ :> -I kvec[-i] tens, UseMetricOnVBundle -> None]


(****   Gauge Transformations   ****)


GaugeTransformation[tens_, gten_, inds___] := Module[{tmp, tmpG, tenN, tenG},
	tenG = SelectTensors[$Tensors,"perturbation gauge*"];
	tenN = ToExpression[StringDrop[ToString[#],-1]]&/@tenG;
	tmp = GaugeChange[tens, gten];
	tmp = tmp // LieDToCovD;
	tmp = Decomposition[0, inds][tmp];
	tmpG = Decomposition[0, inds][tens];
	tmpG = tmpG //.MapThread[Rule,{tenN,tenG}];
	tmp-tmpG // Expand // ReplaceDummies
]


(****   TimeDer   ****)


TimeDer[Equal[expr1_,expr2_]] := Equal[TimeDer[expr1], TimeDer[expr2]]
TimeDer[expr_] := Module[{tmp, ind},ind = DummyIn[TangentM1];
	tmp = timevec[ind] PD[-ind]@expr;
	tmp = tmp // Expand;
	ToCanonical[tmp, UseMetricOnVBundle -> None]
]


(****   ToPhysical   ****)


ToPhysical[expr_] := Module[{hubblerules, primerules, match, sub, isolate, tmp},
	isolate[tmp1_+tmp2_] := isolate[tmp1] + isolate[tmp2];
	isolate[tmp1_*tmp2_] := isolate[tmp1] * isolate[tmp2];
	match[tens_, str_] := StringMatchQ[ToString[tens], str];
	sub[tens_, str1_, str2_] := ToExpression[StringReplace[ToString[tens], str1 -> str2]];
	hubblerules = {hubbleC[] :> scale[] hubbleP[],
		primehubbleC[] :> scale[]^2 (hubbleP[]^2 + dothubbleP[]), 
		pprimehubbleC[] :> scale[]^3 (ddothubbleP[] + 4 hubbleP[] dothubbleP[] + 2 hubbleP[]^3),
		ppprimehubbleC[] :> scale[]^4 (dddothubbleP[] + 4 dothubbleP[]^2 + 7 ddothubbleP[] hubbleP[] + 18 hubbleP[]^2 dothubbleP[] + 6 hubbleP[]^4),
		hubbleC2[] :> scale[] hubbleP2[],
		primehubbleC2[] :> scale[]^2 (hubbleP[] hubbleP2[] + dothubbleP2[]),
		pprimehubbleC2[] :> scale[]^3 (ddothubbleP[] + 3 hubbleP[] dothubbleP2[] + dothubbleP[] hubbleP2[] + 2 hubbleP[]^2 hubbleP2[]),
		ppprimehubbleC2[] :> scale[]^4 (dddothubbleP2[] + 6 hubbleP[] ddothubbleP2[] + (4 dothubbleP[] + 11 hubbleP[]^2) dothubbleP2[] + (ddothubbleP[] + 6 hubbleP[]^3 + 7 hubbleP[] dothubbleP[]) hubbleP2[])};
	primerules = {tens_ /; match[tens, "prime*"] :> scale[] sub[tens, "prime", "dot"],
		tens_ /; match[tens, "pprime*"] :> scale[]^2 (sub[tens, "pprime", "ddot"] + hubbleP[] sub[tens, "pprime", "dot"]),
		tens_ /; match[tens, "ppprime*"] :> scale[]^3 (sub[tens, "ppprime", "dddot"] + 3 hubbleP[] sub[tens, "ppprime", "ddot"]
			+ 2 hubbleP[]^2 sub[tens, "ppprime", "dot"] + dothubbleP[] sub[tens, "ppprime", "dot"])};
	tmp = isolate[PrintWell[expr]] //.hubblerules //.primerules // Expand;
	tmp //.isolate[tmp1_]:>tmp1 // Expand
]


(****   PrintWell   ****)


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


ToLaplacian[bigexpr_] := If[ToString[bigexpr] == ToString[0] || !MatchQ[bigexpr, PD[_]@PD[_]@_], 
      bigexpr, If[Length[IndicesOf[TangentM3, PD, Dummy][bigexpr]] > 0, 
        Nest[Lap, Level[bigexpr //.PD[i_?TangentM3`pmQ]@PD[j_?TangentM3`pmQ]@expr_ /; (MemberQ[IndicesOf[TangentM3, Dummy][bigexpr], j] && 
        MemberQ[IndicesOf[TangentM3, Free][bigexpr], i]) :> PD[j]@PD[i]@expr, Length[IndicesOf[TangentM3, Dummy][bigexpr]]][[1]], 
        Length[IndicesOf[TangentM3, Dummy][bigexpr]]/2], bigexpr]]
ToLaplacian[Times[x_, y_]] := Times[ToLaplacian[x], ToLaplacian[y]]
ToLaplacian[x_ + y_] := ToLaplacian[x] + ToLaplacian[y]


PrintWell[expr_] := Module[{tmp}, tmp = FirstT[expr];
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[inds___] /; !StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["prime" <> ToString[tens]][inds];
	tmp = tmp //.PD[-a_?TangentM1`Q]@tens_?xTensorQ[inds___] /; StringMatchQ[ToString[tens],"*prime*"]:> timevec[-a] ToExpression["p" <> ToString[tens]][inds];
	tmp = tmp // ContractMetric // ToLaplacian // NoScalar
]


(****   CollectPerts   ****)


CollectPerts[expr_, options___] := CollectPerts[expr, {}, options]
CollectPerts[expr_, {more___}, options___] := Module[{FindPerts, expr1, expr2, tmp, tens},
	tmp = expr // PrintWell // ReplaceDummies;
	FindPerts[expr1_ + expr2_] := FindPerts[expr1] + FindPerts[expr2];
	FindPerts[expr1_ * expr2_] /; !StringMatchQ[ToString[expr1], "*pert*"] := FindPerts[expr2];
	tens = FindPerts[tmp] //.Plus->List;
	tens = tens //.n_ FindPerts[expr1_] :> FindPerts[expr1];
	tens = tens //.FindPerts[expr1_] :> expr1;
	Collect[tmp, Join[tens, {more}], options]
]


(****   BuildDerivatives   ****)


BuildDerivatives[ders_][perts_] := Module[{tmp, derM1, derM3, tmpders, tmpfun1, tmpfun2, tmptime},
	derM1 = PD[-DummyIn[TangentM1]];
	derM3 = PD[-DummyIn[TangentM3]];
	tmpders = Table[{derM1,derM3},ders];
	tmpders = Subsets[Flatten[tmpders]];
	tmpders = Sort[#]&/@tmpders;
	tmpders = DeleteDuplicates[tmpders];
	tmpders = Select[tmpders, Length[#]<=ders &];
	tmpders = tmpders //.PD[ind_] :> PD["done", DummyAs[ind]];
	tmpders = tmpders //.PD["done", ind_] :> PD[ind];
	tmpfun1[list_, elem_] := Append[#, elem]&/@list;
	tmp = tmpfun1[tmpders, #]&/@perts;
	tmp = tmp //.List[pds___, PD[ind_], pert_] :> List[pds, PD[ind][pert]];
	tmp = tmp // Flatten;
	tmptime = -IndicesOf[Free,TangentM1][#]&/@tmp //.IndexList -> List;
	SetAttributes[tmpfun2, Listable];
	tmptime = tmpfun2[tmptime] //.tmpfun2 :> timevec;
	tmptime = ReplaceRepeated[#, List->Times]&/@tmptime;
	tmp = MapThread[Times, {tmptime, tmp}];
	ReplaceDummies[#]&/@tmp
]


(****   BuildScalars   ****)


BuildScalars[order_, ders_][perts_] := Module[{tmp, done, tmpinds, tmpfun, tmpmetric},
	(* Separate objects that are already scalars from the ones with free indices *)
	done = Select[perts, IndicesOf[Free][#]===IndexList[]&];
	tmp = Complement[perts, done];
	(* Creates a list of all possible subsets at most with order number of elements *)
	tmp = Subsets[Flatten[Table[tmp,order]], order];
	tmp = tmp // DeleteDuplicates;
	tmp = DeleteCases[tmp,{}];
	(* Reintroduces elements with maximum number of derivatives *)
	tmp = Union[tmp, List[#]&/@done];
	(* Delete combinations with more derivatives than ders *)
	tmpinds = Map[Length[IndicesOf[PD][#]]&, tmp, {2}];
	tmpinds = ReplaceRepeated[#, List->Plus]&/@tmpinds;
	tmp = Extract[tmp, Position[tmpinds, n_/;n<=ders]];
	(* Delete combinations with odd number of free indices *)
	tmpinds = Map[Length[IndicesOf[Free][#]]&, tmp, {2}];
	tmpinds = ReplaceRepeated[#, List->Plus]&/@tmpinds;
	tmp = Extract[tmp, Position[tmpinds, _Integer?EvenQ]];
	(* Delete combinations with perturbation order higher than order *)
	tmpinds = Map[IndicesOf[LIndex][#]&, tmp, {2}];
	tmpinds = tmpinds //.IndexList[LI[li_]]:>li;
	tmpinds = ReplaceRepeated[#,List->Plus]&/@tmpinds;
	tmp = Extract[tmp, Position[tmpinds, n_/;n<=order]];
	(* Replace Free and Dummy indices to avoid indices repetitions *)
	tmp = tmp //.timevec[_] :> 1;
	tmp = Replace[tmp,ind_/;AIndexQ[ind] :> DummyAs[ind], {1,Infinity}];
	tmp = tmp //.PD[ind_]@obj_ :> "done"[DummyAs[ind]]@obj;
	tmp = tmp //."done"[ind_]@obj_ :> PD[ind]@obj;
	tmpinds = -Map[IndicesOf[Free,TangentM1][#]&, tmp, {2}] //.IndexList -> List;
	SetAttributes[tmpfun, Listable];
	tmpinds = tmpfun[tmpinds] //.tmpfun :> timevec;
	tmpinds = ReplaceRepeated[#, List->Times]&/@tmpinds;
	tmp = ReplaceRepeated[#, List->Times]&/@tmp;
	tmp = MapThread[Times,{tmp, tmpinds}];
	(* Builds all the possible combinations of the metric with free indices *)
	tmpinds = -Map[IndicesOf[Free][#]&, tmp] //.IndexList -> List;
	tmpinds = Permutations[#]&/@tmpinds;
	tmpmetric[ind1_,ind2_,inds__] := tmpmetric[ind1, ind2] tmpmetric[inds];
	tmpmetric[{inds__}] := {tmpmetric[inds]};
	tmpinds = Map[tmpmetric, tmpinds, {2}];
	tmpinds = tmpinds //.tmpmetric[{}]:>1 //.tmpmetric -> metric\[Delta];
	tmpinds = Map[Flatten, tmpinds];
	tmpinds = DeleteDuplicates[ToCanonical[#]]&/@tmpinds;
	(* Generates scalars combining the list of metrics with the list of perturbations *)
	tmp = MapThread[Times[#2,#1]&, {tmpinds, tmp}];
	(* Delete duplicated elements *)
	tmp = ToCanonical[#]&/@Flatten[tmp] // ReplaceDummies;
	tmp = PutScalar[#]&/@tmp;
	tmp = tmp //.Times[Scalar[expr1_], Scalar[expr2_]]:>Sequence[Scalar[expr1], Scalar[expr2]];
	ToCanonical[#]&/@tmp // ReplaceDummies // DeleteDuplicates
]


(****   TaylorExpand   ****)


TaylorExpand[order_, ders_][expr_] := Module[{eps, tmp},
	tmp = expr //.ten_[LI[li_],inds___] :> eps^li ten["done",LI[li],inds];
	tmp = tmp //.ten_["done",LI[li_],inds___] :> ten[LI[li],inds];
	tmp = tmp  //. PD[_]@eps :> 0;
	tmp = tmp //.Scalar[eps obj_] :> eps Scalar[obj];
	tmp = order! SeriesCoefficient[tmp, {eps, 0, order}];
	tmp = tmp //.Plus -> List;
	tmp = NoScalar[#]&/@tmp;
	tmp = Select[tmp, Length[IndicesOf[PD][#]]<=ders&];
	tmp = tmp //.List -> Plus;
	tmp // ToCanonical // NoScalar
]


(****   HideFunctions   ****)


$HideFunctions = {}


HideFunctions[name_][expr_] := Module[{zero, count, listfun, listten, newten},
	zero = Length[$HideFunctions];
	listfun = expr //.$HideFunctions;
	listfun = listfun //.Plus->List;
	listfun = listfun //.Times->List;
	listfun = listfun // Flatten;
	listfun = Union[Cases[listfun, fun_[___]/;MemberQ[$ScalarFunctions,fun]], Cases[listfun, Derivative[___][fun_][___]/;MemberQ[$ScalarFunctions,fun]]];
	listfun = Sort[DeleteDuplicates[listfun]];
	listten = {};
	For[count=1, count<=Length[listfun], count++,
		newten=ToExpression[name<>ToString[zero+count]];
		xTensorQ[newten] ^= True;
		DefInfo[newten] ^= {"tensor", "hide function"};
		SlotsOfTensor[newten] ^= {};
		DependenciesOfTensor[newten] ^= {M4};
		HostsOf[newten] ^= {M4};
		PrintAs[Evaluate[newten]] ^= Evaluate[ToString[Subscript[name, ToString[zero+count]], StandardForm]];
		listten = Append[listten,newten];
		AppendTo[$Tensors, newten];
	];
	DerivedTensors[#, "prime"]&/@listten;
	DerivedTensors[#, "pprime"]&/@listten;
	DerivedTensors[#, "ppprime"]&/@listten;
	DerivedTensors[#, "dot"]&/@listten;
	DerivedTensors[#, "ddot"]&/@listten;
	DerivedTensors[#, "dddot"]&/@listten;
	AutomaticRules[#, {PD[i_?TangentM3`pmQ]@#[] :> 0}]&/@SelectTensors[$Tensors, "hide function*"];
	listten = #[]&/@listten;
	listten = MapThread[Rule,{listfun, listten}];
	$HideFunctions = Union[$HideFunctions, listten];
	expr //.$HideFunctions
]


(****   RestoreFunctions   ****)


RestoreFunctions[expr_] := Module[{rules, tens, tmp,dertens},
	rules = $HideFunctions  /.Rule[left_,right_]:>Rule[right,left];
	tmp = expr //.rules // Expand;
	tens = $HideFunctions //.Rule[left_,right_]:>right;
	tens = ToExpression[StringDrop[ToString[#],-2]]&/@tens;
	dertens = ToExpression[StringInsert[ToString[#], "prime", 1]]&/@tens;
	dertens = Union[ToExpression[StringInsert[ToString[#], "pprime", 1]]&/@tens, dertens];
	dertens = Union[ToExpression[StringInsert[ToString[#], "ppprime", 1]]&/@tens, dertens];
	dertens = Union[ToExpression[StringInsert[ToString[#], "dot", 1]]&/@tens, dertens];
	dertens = Union[ToExpression[StringInsert[ToString[#], "ddot", 1]]&/@tens, dertens];
	dertens = Union[ToExpression[StringInsert[ToString[#], "dddot", 1]]&/@tens, dertens];
	UndefTensor[#]&/@Union[tens,dertens];
	$HideFunctions={};
	tmp
]


(****   NoetherConstraints   ****)


NoetherConstraints[vars_][eqs__] := Module[{tmpeqs, tmpvars, tmplist, tmpk, tmpfun, tmparray},
	tmpeqs = Flatten[{eqs}];
	tmpvars = Union[vars, timevec[a] PD[-a]@#&/@vars];
	tmpvars = Union[tmpvars, timevec[a] timevec[b] PD[-a]@PD[-b]@#&/@vars];
	tmpvars = Union[tmpvars, timevec[a] timevec[b] timevec[c] PD[-a]@PD[-b]@PD[-c]@#&/@vars];
	tmpvars = PrintWell[#]&/@tmpvars;
	tmplist = Coefficient[tmpeqs, #]&/@tmpvars;
	tmplist = tmplist // Flatten;
	tmpk = Table[kscal[]^(2 x),{x, Max[Exponent[tmplist, kscal[]]]/2}];
	tmplist = Join[tmplist //.kscal[]:>0, Coefficient[tmplist, #]&/@tmpk];
	tmplist = tmplist // Flatten;
	tmplist = DeleteCases[tmplist, 0];
	tmplist = Sort[tmplist, Length[#1] < Length[#2]&];
	tmplist = #==0 &/@tmplist // Simplify;
	tmplist
]


(****   SubNoether   ****)


SubNoether[numvar_][{noe_,expr_}] := Module[{tmpnoe, tmpexpr, count, der, tmpeq, tmpvar, tmprules, tmpflag},
	{tmpnoe, tmpexpr} = {noe, expr};
	der[smt_] := PrintWell[TimeDer[smt]];
	For[count=1, count<=Length[numvar], count++,
		tmpeq = tmpnoe[[numvar[[count,1]]]];
		tmpvar = numvar[[count,2]];
		tmprules = Solve[tmpeq,tmpvar];
		If[StringMatchQ[ToString[tmpeq],"*ppprime*"],tmpflag=0,If[StringMatchQ[ToString[tmpeq],"*pprime*"],tmpflag=1,If[StringMatchQ[ToString[tmpeq],"*prime*"],tmpflag=2,tmpflag=3]]];
		If[tmpflag>0,tmprules=Union[tmprules,Solve[der[tmpeq],der[tmpvar]]]];
		If[tmpflag>1,tmprules=Union[tmprules,Solve[der[der[tmpeq]],der[der[tmpvar]]]]];
		If[tmpflag>2,tmprules=Union[tmprules,Solve[der[der[der[tmpeq]]],der[der[der[tmpvar]]]]]];
		tmprules=tmprules // Flatten;
		tmpnoe=tmpnoe //.tmprules // Simplify // Expand;
		tmpnoe=DeleteCases[tmpnoe,True];
		tmpnoe = Sort[tmpnoe //.Equal[a_,b_]:>a-b, Length[#1] < Length[#2]&];
		tmpnoe = #==0&/@tmpnoe // Simplify;
		tmpexpr=tmpexpr //.tmprules;
	];
	If[Length[tmpnoe]>0,
		Print[CollectPerts[tmpexpr,{kscal[]},Factor]];
	Print[MatrixForm[tmpnoe]];
	];
	{tmpnoe,tmpexpr}
]


(****   Integration by parts   ****)


Coeff[Times[expr1_, expr2_]] /;StringMatchQ[ToString[expr2], "*pert*"] && ToString[Head[expr2]] != "Times" := Coeff[expr1]*expr2
Coeff[expr1_ + expr2_] := Coeff[expr1] + Coeff[expr2]
Coeff[expr_] /;StringMatchQ[ToString[expr], "*pert*"] && ToString[Head[expr]] != "Times" := Coeff[1] expr


TypeOfPert[expr_] := Module[{tmp, tens},
	tmp = expr // Coeff;
	tmp = tmp //.Plus->List;
	tmp = tmp //.Coeff[tens_] :> 1;
	tmp = tmp //.PD[\[Mu]_]@tens_ :> tens;
	tmp // Flatten // DeleteDuplicates
]


SelectPerts[tens__][expr_] := Module[{perts, list, newlist}, newlist = {};
	perts = {tens} //.List->Times;
	list = expr //.Plus->List;
	If[StringMatchQ[ToString[TypeOfPert[#]], "*"<>ToString[perts]<>"*"], AppendTo[newlist, #]]&/@list;
	newlist //.List->Plus
]


(****   Utilities   ****)


ToG[expr_]:= expr //.pert_[LI[li_],inds___]/;!StringMatchQ[ToString[pert],"pert*G"]:>ToExpression[ToString[pert]<>"G"][LI[li],inds]


SubEQ[eq_,var_][expr_]:=expr //.MakeRule[{var,Evaluate[PutScalar[var //.Flatten[Solve[eq==0,var]]]]}] // ToCanonical // NoScalar
