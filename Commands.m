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


(****   TaylorExpand   ****)


TaylorExpand[order_][expr_] := Module[{ispert, eps, tmp},
	ispert[tens1_+tens2_] := ispert[tens1] + ispert[tens2];
	ispert[tens1_*tens2_] := ispert[tens1] * ispert[tens2];
	ispert[tens1_^n_] := ispert[tens1]^n;
	ispert[PD[ind_]@tens1_] := PD[ind]@ispert[tens1];
	ispert[fun_[args__]] /; ScalarFunctionQ[fun] := Map[ispert[#]&,{args}] //.List->fun;
	ispert[Scalar[tens1_]] := Scalar[ispert[tens1]];
	ispert[tens1_] /; Length[IndicesOf[LIndex][tens1]] == 0 := tens1;
	ispert[tens1_] /; Length[IndicesOf[LIndex][tens1]] > 0 := tens1
		eps^ReplaceRepeated[IndicesOf[LIndex][tens1] //.LI[ind_]:>ind,IndexList->Plus];
	tmp = ispert[expr] //. PD[_]@eps:>0;
	tmp = Normal[Series[tmp, {eps, 0, order}]] //.eps:>1;
	tmp //.Derivative[n_][Scalar][0]:>1]


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
