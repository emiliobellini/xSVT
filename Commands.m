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
FourierT[ten_] /; StringMatchQ[ToString[ten], "*pert*"] := ToCanonical[ten //. PD[-i_?TangentM3`Q]@tens_ :> -I kvec[-i] tens, UseMetricOnVBundle -> None]


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


ToPhysical[expr_] := Module[{hubblerules, primerules, match, sub},
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
	expr //.hubblerules //.primerules // Expand
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
	Collect[tmp, Union[tens, more], options]
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


(* It works only for scalars and if all the perturbations are of the same order *)


BuildScalars[order_, ders_][perts_]:=Module[{tmp, done, maxders, tmpinds, tmpmetric},
	(* Separate objects that are already scalars from the ones with free indices *)
	done = Select[perts, IndicesOf[Free][#]===IndexList[]&];
	tmp = Complement[perts, done];
	(* Separate objects that have already the maximum number of derivatives since they can not be combined with anything *)
	maxders = Select[tmp, Length[IndicesOf[PD][#]]==ders&];
	tmp = Complement[tmp, maxders];
	maxders = Select[maxders, Mod[Length[IndicesOf[TangentM3][#]],2]==0&];
	(* Creates a list of all possible combinations at most of order order *)
	tmp = Subsets[Sort[Flatten[{tmp, tmp}]],order];
	tmp = tmp // DeleteDuplicates;
	tmp = DeleteCases[tmp,{}];
	(* Eliminates all the combinations with more derivatives than ders *)
	tmpinds = Map[Length[IndicesOf[PD][#]]&, tmp, {2}];
	tmpinds = ReplaceRepeated[#, List->Plus]&/@tmpinds;
	tmp = Extract[tmp, Position[tmpinds, n_/;n<=ders]];
	(* Eliminates elements with odd number of space indices *)
	tmpinds = Map[Length[IndicesOf[Free,TangentM3][#]]&, tmp, {2}];
	tmpinds = ReplaceRepeated[#, List->Plus]&/@tmpinds;
	tmp = Extract[tmp, Position[tmpinds, _Integer?EvenQ]];
	(* Reintroduces elements with maximum number of derivatives *)
	tmp = Union[tmp, List[#]&/@maxders];
	(* Replace Free and Dummy indices to avoid indices repetitions *)
	tmp = tmp //.PD[ind_?TangentM3`pmQ]@obj_ :> "done"[DummyAs[ind]]@obj;
	tmp = tmp //."done"[ind_]@obj_ :> PD[ind]@obj;
	tmp = tmp //.PD[ind_?TangentM1`pmQ]@obj_ :> "done"[DummyAs[ind]]@obj;
	tmp = tmp //.timevec[_] :> 1;
	tmp = tmp //."done"[ind_]@obj_ :> timevec[-ind] PD[ind]@obj;
	(* First look for the free indices in the expressions, then builds all the possible combinations of the metric with these indices *)
	tmpinds = Map[IndicesOf[Free][#]&, tmp, {2}] //.IndexList -> List;
	tmpinds = -Flatten[#]&/@tmpinds;
	tmpinds = Permutations[#]&/@tmpinds;
	tmpmetric[ind1_,ind2_,inds__] := tmpmetric[ind1, ind2] tmpmetric[inds];
	tmpmetric[{inds__}] := {tmpmetric[inds]};
	tmpinds = Map[tmpmetric, tmpinds, {2}] //.tmpmetric -> metric\[Delta];
	tmpinds = Map[Flatten, tmpinds];
	tmpinds = DeleteDuplicates[ToCanonical[#]]&/@tmpinds;
	(* Generates scalars combining the list of metrics just obtained with the list of perturbations *)
	tmp = Map[ReplaceAll[#, List->Times]&, tmp];
	tmp = MapThread[Times[#2,#1]&, {tmpinds, tmp}];
	(* Delete duplicated elements *)
	tmp = ToCanonical[#]&/@Flatten[tmp] // ReplaceDummies;
	tmp = PutScalar[#]&/@tmp;
	tmp = tmp //.Times[Scalar[expr1_], Scalar[expr2_]]:>Sequence[Scalar[expr1], Scalar[expr2]];
	tmp = ToCanonical[#]&/@tmp // ReplaceDummies // DeleteDuplicates;
	(* Unify with the elements that were already scalars *)
	tmp = Union[tmp, done];
	PutScalar[#]&/@tmp
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
	listfun = expr //.Plus->List;
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
	];
	listten = #[]&/@listten;
	listten = MapThread[Rule,{listfun, listten}];
	$HideFunctions = Union[$HideFunctions, listten];
	expr //.listten
]


(****   RestoreFunctions   ****)


RestoreFunctions[expr_] := Module[{rules, tens, tmp},
	rules = $HideFunctions  /.Rule[left_,right_]:>Rule[right,left];
	tmp = expr //.rules // Expand;
	tens = $HideFunctions //.Rule[left_,right_]:>right;
	tens = ToExpression[StringDrop[ToString[#],-2]]&/@tens;
	UndefTensor[#]&/@tens;
	$HideFunctions={};
	tmp
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
	tmp // DeleteDuplicates
]


SelectPerts[tens__][expr_] := Module[{perts, list, newlist}, newlist = {};
	perts = {tens} //.List->Times;
	list = expr //.Plus->List;
	If[StringMatchQ[ToString[TypeOfPert[#]], "*"<>ToString[perts]<>"*"], AppendTo[newlist, #]]&/@list;
	newlist //.List->Plus
]
