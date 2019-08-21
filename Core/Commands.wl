(* ::Package:: *)

(****   Tools   ****)


WhichTens[tens_] := Module[{tmp},
	tmp = tens //.PD[__]@obj_:>obj;
	Head[tmp]]


IsBack[tens_] := Module[{name, is},
	name = WhichTens[tens];
	is = MemberQ[SelectTensors[$Tensors,"background*"],name];
	is]


IsPert[tens_] := Module[{name, is},
	name = WhichTens[tens];
	is = MemberQ[SelectTensors[$Tensors,"perturbation*"],name];
	is]


IsAlpha[tens_] := Module[{name, is},
	name = WhichTens[tens];
	is = MemberQ[SelectTensors[$Tensors,"building function*"],name];
	is]


IsSource[tens_] := Module[{name, is},
	name = WhichTens[tens];
	is = MemberQ[SelectTensors[$Tensors,"source*"],name];
	is]


(****   Order of Derivatives   ****)


FirstT[expr_] := expr //. PD[a_?TangentM1`pmQ]@PD[i_?TangentM3`pmQ]@object_ :> PD[i]@PD[a]@object


FirstS[expr_] := expr //. PD[i_?TangentM3`pmQ]@PD[a_?TangentM1`pmQ]@object_ :> PD[a]@PD[i]@object


FirstDummies[expr1_+expr2_] := FirstDummies[expr1] + FirstDummies[expr2]
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
	final]


DivFree[expr1_+expr2_]:=DivFree[expr1]+DivFree[expr2]
DivFree[expr1_*expr2_]:=DivFree[expr1]*DivFree[expr2]
DivFree[expr_^n_]:=DivFree[expr]^n
DivFree[expr_]:=Module[{tmp, pert, pdidx, tensidx},
	tmp = expr // NoScalar;
	If[IsPert[tmp],
		pert = WhichTens[tmp];
		pdidx = IndicesOf[PD,TangentM3][tmp]//.IndexList->List;
		tensidx = IndicesOf[pert,TangentM3][tmp]//.IndexList->List;
		If[Length[Intersection[pdidx,-tensidx]]>0,Return[0]]
	];
	tmp
]


(****   SplitDummySpaceTime   ****)


SplitDummySpaceTime[expr_] := Module[{ListAll, subs},
	ListAll = IndicesOf[TangentM4, Dummy][expr];
	ListAll = DeleteCases[ListAll, -_?TangentM4`Q];
	ListAll = DeleteCases[ListAll, _?TangentM3`Q];
	ListAll = DeleteCases[ListAll, _?TangentM1`Q];
	subs = Table[ListAll[[col]] -> IndexList[DummyIn[TangentM3], DummyIn[TangentM1]], {col, Length[ListAll]}];
	TraceDummy[expr, subs]]


(****   SVTExpand   ****)


SVTExpand[expr_] := Module[{tmp, inds},
	tmp = NoScalar[expr] //.expandrules;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp = tmp // ContractMetric // FirstS // DivFree;
	tmp = tmp // FirstDummies // NoScalar;
	tmp = tmp //.$Rules // ToCanonical // NoScalar;
	If[ToString[tmp] == ToString[0], tmp,
		inds = IndicesOf[TangentM3][tmp];
		inds = DeleteCases[inds, -_?TangentM3`Q];
		tmp = SeparateMetric[metric\[Delta]][tmp, inds]];
tmp]


SVTExpandBits[nelem_][expr_] := Module[{len, tmpexpr, nsteps, tmp, count, min, max},
	tmpexpr = expr // Expand;
	len = tmpexpr // Length;
	If[Mod[len,nelem]==0,nsteps = Quotient[len,nelem];,nsteps = Quotient[len,nelem]+1;];
	tmp = 0;
	For[count=0,count<nsteps,count++,
		min = nelem*count+1;
		If[nelem*(count+1)<len,max=nelem*(count+1),max=len];
		tmp += SVTExpand[tmpexpr[[min;;max]]];
		If[Mod[count,1]==0,Print["Done "<>ToString[count+1]<>" steps over "<>ToString[nsteps]]];
	];
	tmp // Expand
]


SVTExpandList[terms_][expr_] := Module[{tmp,tmplist,count,lengths},
	tmp = expr;
	tmplist = Table[0,Length[terms]+1];
	For[count=1,count<=Length[terms],count++,
		tmplist[[count]] = terms[[count]] Coefficient[tmp,terms[[count]]] // Expand;
		tmp = tmp-tmplist[[count]] // Expand;
	];
	tmplist[[Length[terms]+1]] = tmp;
	lengths = Map[Length[#]&,tmplist];
	Print[lengths];
	If[Length[expr]!=Evaluate[lengths //.List->Plus],Print["Lengths not correct!"];];
	For[count=1,count<=Length[tmplist],count++,
		If[Length[tmplist[[count]]]>12000, tmplist[[count]] = tmplist[[count]] // SVTExpandBits[2000];];
		If[Length[tmplist[[count]]]>12000, tmplist[[count]] = tmplist[[count]] // SVTExpandBits[6000];];
		tmplist[[count]] = tmplist[[count]] // SVTExpand // ReplaceDummies;
		Print["Done "<>ToString[count]<>" steps over "<>ToString[Length[tmplist]]];
	];
	lengths = Map[Length[#]&,tmplist];
	Print[lengths];
	Return[tmplist //.List->Plus // Expand];
]


(****   Decomposition   ****)


SVTPerturbation[expr_, n_] := Module[{tmp},
	tmp = Perturbation[expr, n];
	tmp = tmp // ExpandPerturbation;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp // SeparateMetric[] // NoScalar
]


GRToGradMetric[expr_] := Module[{tmp},
	tmp = expr // WeylToRiemann;
	tmp = tmp // EinsteinToRicci;
	tmp = tmp // RiemannToChristoffel;
	tmp = tmp // ChangeCovD;
	tmp = tmp // ChristoffelToGradMetric;
	tmp = tmp // NoScalar // Expand;
	tmp = ToCanonical[tmp, UseMetricOnVBundle -> None];
	tmp = tmp // NoScalar;
	ToCanonical[tmp, UseMetricOnVBundle -> None]
]


Decomposition[order_, inds___][expr_] := Module[{tmp, timevecs,inds1,inds2,inds3,signs},
	inds1 = {inds} //.Rule[a_,b_]:>a // Flatten;
	inds2 = Map[DummyIn[TangentM4]&,inds1] // Flatten;
	signs = Map[Sign[#]&,{inds} //.Rule[a_,b_]:>b] //.Sign[a_]:>1 // Flatten;
	inds3 = Map[Abs[#]&,{inds} //.Rule[a_,b_]:>b] //.Abs[a_]:>a // Flatten;
	tmp = GRToGradMetric[expr //.MapThread[Rule,{inds1,inds2*signs}]];
	tmp = SVTPerturbation[tmp, order];
	tmp = tmp // SeparateMetric[];
	tmp = tmp // SplitDummySpaceTime;
	tmp = tmp //.MapThread[Rule,{inds2,inds3}];
	timevecs = IndicesOf[Free, TangentM1][tmp] /. IndexList -> List;
	timevecs = Cases[timevecs, a_?TangentM1`pmQ :>timevec[-a]];
	timevecs = Evaluate[timevecs /.List -> Times];
	tmp = tmp timevecs // Expand;
	If[NumberQ[tmp],
		tmp,
		tmp // SVTExpand // ReplaceDummies]
]


subfr1 = -primescalar[]/scale[] PD[-i]@pertV[LI[2]]+
	2/primescalar[] timevec[a] PD[-a]@pertscalar[LI[1]] PD[-i]@pertscalar[LI[1]]-
	2 pertpsi[LI[1]] PD[-i]@pertscalar[LI[1]];
subfr2 = PD[-j]@subfr1 // SVTExpand // Symmetrize // SVTExpand;
subfr4 = PD[-j]@PD[-k]@PD[-l]@subfr1 // SVTExpand // Symmetrize // SVTExpand;


Clear[FieldRedefinition]
FieldRedefinition[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@PD[-k]@PD[-l]@pertscalar[LI[2]]], Evaluate[subfr4]}] // Expand;
	tmp = FirstS[tmp] //.MakeRule[{Evaluate[PD[-i]@PD[-j]@pertscalar[LI[2]]], Evaluate[subfr2]}] // Expand;
	tmp = tmp //.pertscalar[LI[1]] :> -primescalar[]/scale[] pertV[LI[1]] // Expand;
	tmp
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


ToLaplacian[bigexpr_] := If[ToString[bigexpr] == ToString[0] || Length[IndicesOf[PD][bigexpr]]<2, 
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


InvPrintWell[expr_]:= Module[{tmp}, tmp = expr;
	tmp = tmp //.Lap[tens_]:>Module[{i=DummyIn[TangentM3]},PD[-i]@PD[i]@tens] // ToCanonical // ReplaceDummies;
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"pp*ime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, Scalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"pp*ime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],1]][LI[order],inds]]];
	tmp = tmp //.tens_[LI[order_],inds___]^n_/; StringMatchQ[ToString[tens],"prime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, Scalar[timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]^n]];
	tmp = tmp //.tens_[LI[order_],inds___]/; StringMatchQ[ToString[tens],"prime*"] :>Scalar[Module[{a=DummyIn[TangentM1]}, timevec[a] PD[-a]@ToExpression[StringDrop[ToString[tens],5]][LI[order],inds]]];
	tmp = tmp // SeparateMetric[] // NoScalar
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


(****   ToPhysical   ****)


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


(****   Utilities   ****)


Coeff[Times[expr1_, expr2_]] /;IsPert[expr2] := Coeff[expr1]*expr2
Coeff[expr1_ + expr2_] := Coeff[expr1] + Coeff[expr2]
Coeff[expr_] /;IsPert[expr] := Coeff[1] expr


IsolatePerts[perts_][expr_] := Module[{list,pertlist,ispert,reperts,pos},
	list = expr //.Plus->List;
	pertlist = Map[# //.PD[a_]@tens_:>tens //.PD[i_]@tens_:>tens &, list];
	pertlist = Map[# //.Times->List &, pertlist];
	pertlist = Map[# //.Power[x_,n_]:>Table[x,n] &, pertlist];
	pertlist = Map[Flatten[#] &, pertlist];
	ispert = Map[IsPert[#]&,pertlist,{2}];
	pertlist = Pick[pertlist,ispert];
	pertlist = Map[Head[#]&,pertlist,{2}];
	pertlist = Map[Sort[#]&, pertlist];
	reperts = Sort[perts];
	pos = Position[pertlist,reperts] // Flatten;
	list[[pos]] //.List->Plus]


NSpaceDer[n_][expr_] := Module[{tmp, idx},
	tmp=Replace[expr,Plus->List,{1},Heads->True];
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	idx = Length[IndicesOf[TangentM3,PD][#]]&/@tmp;
	idx = Map[#==n &,idx];
	Boole[idx] tmp //.List->Plus]


NTimeDer[n_][expr_] := Module[{tmp, idx},
	tmp=Replace[expr,Plus->List,{1},Heads->True];
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	idx = Length[IndicesOf[TangentM1,PD][#]]&/@tmp;
	idx = Map[#==n &,idx];
	Boole[idx] tmp //.List->Plus]


ImportEquations[dir_] := Module[{files, names},
	files = FileNames[dir<>"*.m"];
	names = StringReplace[files, dir->""];
	names = StringDrop[names, -2];
	MapThread[Set, {ToExpression[#] & /@ names, Import[#] & /@ files}];
	names
]
