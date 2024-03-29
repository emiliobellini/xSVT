(* ::Package:: *)

(* ::Title:: *)
(*Equations Scalar-Tensor fourth order (Horndeski)*)


(* ::Section:: *)
(*Setup*)


(* ::Subsection::Closed:: *)
(*Global Variables*)


(* These are the necessary global variables to set before running the code *)

(** Paths **)
If[$FrontEnd===Null,
	(* Switch off annoying warnings when there is no FrontEnd *)
	Off[FrontEndObject::notavail];
	$CodeDirectory = DirectoryName@$InputFileName;,
	$CodeDirectory = NotebookDirectory[];
];
$EquationsDirectory = FileNameJoin[{$CodeDirectory,"Equations"}]<>$PathnameSeparator;

(**
Theories implemented (all of them include a metric and matter):
 - GR: General Relativity;
  - ST: scalar-tensor (beyond Horndeski);
  - ALL: import all the theories implemented.
**)
$Theory = "STfast";

(**
Type of metric. For now only FRW Flat is implemented.
**)
$Metric = "FRW Flat";

(** Import scalar/vector/tensor perturbations **)
$ScalarPertsQ = True;
$VectorPertsQ = True;
$TensorPertsQ = True;

(**
 Import decomposition rules from external file.
Leave an empty string to use default rules.
**)
$ImportDecompositionRules = "$SVTDecompositionRules";

(** Import module with Class definitions and conversions **)
$ToClass = False;


(* ::Subsection::Closed:: *)
(*Run*)


$HistoryLength=1;

Get[FileNameJoin[{$CodeDirectory,"xSVT.wl"}]]

ImportEquations[$EquationsDirectory]


(* ::Subsection::Closed:: *)
(*Additional definitions*)


GetIndicesOfVBundle[TangentM4,14]

RiemannRules=Flatten[{
MakeRule[{CD[\[Alpha]]@RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]],-CD[-\[Lambda]]@RicciCD[-\[Beta],-\[Eta]]+CD[-\[Eta]]@RicciCD[-\[Beta],-\[Lambda]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[\[Beta]]@CD[-\[Eta]]@RicciCD[-\[Alpha],-\[Beta]],1/2 CD[-\[Eta]]@CD[-\[Alpha]]@RicciScalarCD[]+RicciCD[-\[Lambda],-\[Alpha]] RicciCD[-\[Eta],\[Lambda]]-RicciCD[-\[Lambda],-\[Mu]] RiemannCD[-\[Alpha],\[Mu],-\[Eta],\[Lambda]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[\[Mu]]@CD[-\[Mu]]@RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]],CD[-\[Beta]]@CD[-\[Lambda]]@RicciCD[-\[Alpha],-\[Eta]]-CD[-\[Beta]]@CD[-\[Eta]]@RicciCD[-\[Alpha],-\[Lambda]]-CD[-\[Alpha]]@CD[-\[Lambda]]@RicciCD[-\[Beta],-\[Eta]]+CD[-\[Alpha]]@CD[-\[Eta]]@RicciCD[-\[Beta],-\[Lambda]]+RicciCD[-\[Nu],-\[Beta]] RiemannCD[-\[Alpha],\[Nu],-\[Eta],-\[Lambda]]-RicciCD[-\[Nu],-\[Alpha]] RiemannCD[-\[Beta],\[Nu],-\[Eta],-\[Lambda]]-RiemannCD[-\[Nu],-\[Sigma],-\[Eta],-\[Lambda]] RiemannCD[-\[Alpha],\[Nu],-\[Beta],\[Sigma]]-RiemannCD[-\[Nu],-\[Beta],-\[Sigma],-\[Lambda]] RiemannCD[-\[Alpha],\[Nu],-\[Eta],\[Sigma]]+RiemannCD[-\[Nu],-\[Beta],-\[Sigma],-\[Eta]] RiemannCD[-\[Alpha],\[Nu],-\[Lambda],\[Sigma]]+RiemannCD[-\[Nu],-\[Alpha],-\[Sigma],-\[Lambda]] RiemannCD[-\[Beta],\[Nu],-\[Eta],\[Sigma]]-RiemannCD[-\[Nu],-\[Alpha],-\[Sigma],-\[Eta]] RiemannCD[-\[Beta],\[Nu],-\[Lambda],\[Sigma]]-RiemannCD[-\[Nu],-\[Alpha],-\[Sigma],-\[Beta]] RiemannCD[-\[Eta],-\[Lambda],\[Nu],\[Sigma]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[\[Alpha]]@CD[-\[Mu]]@RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]],-CD[-\[Mu]]@CD[-\[Lambda]]@RicciCD[-\[Beta],-\[Eta]]+CD[-\[Mu]]@CD[-\[Eta]]@RicciCD[-\[Beta],-\[Lambda]]-RicciCD[-\[Nu],-\[Mu]] RiemannCD[-\[Beta],\[Nu],-\[Eta],-\[Lambda]]+RiemannCD[-\[Nu],-\[Sigma],-\[Eta],-\[Lambda]] RiemannCD[-\[Beta],\[Nu],-\[Mu],\[Sigma]]-RiemannCD[-\[Nu],-\[Beta],-\[Sigma],-\[Lambda]] RiemannCD[-\[Eta],\[Sigma],-\[Mu],\[Nu]]+RiemannCD[-\[Nu],-\[Beta],-\[Sigma],-\[Eta]] RiemannCD[-\[Lambda],\[Sigma],-\[Mu],\[Nu]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[\[Beta]]@CD[\[Alpha]]@CD[-\[Beta]]@CD[-\[Alpha]]@RicciScalarCD[],1/2 CD[-\[Nu]]@RicciScalarCD[] CD[\[Nu]]@RicciScalarCD[]+CD[\[Sigma]]@CD[-\[Sigma]]@CD[\[Nu]]@CD[-\[Nu]]@RicciScalarCD[]+CD[-\[Sigma]]@CD[-\[Nu]]@RicciScalarCD[] RicciCD[\[Nu],\[Sigma]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[\[Beta]]@CD[\[Alpha]]@CD[\[Eta]]@CD[-\[Eta]]@RicciCD[-\[Alpha],-\[Beta]],1/2 CD[-\[Nu]]@RicciScalarCD[] CD[\[Nu]]@RicciScalarCD[]-3 CD[-\[Tau]]@RicciCD[-\[Nu],-\[Sigma]] CD[\[Tau]]@RicciCD[\[Nu],\[Sigma]]+4 CD[-\[Tau]]@RicciCD[-\[Nu],-\[Sigma]] CD[\[Sigma]]@RicciCD[\[Nu],\[Tau]]+1/2 CD[\[Sigma]]@CD[-\[Sigma]]@CD[\[Nu]]@CD[-\[Nu]]@RicciScalarCD[]+2 CD[-\[Sigma]]@CD[-\[Nu]]@RicciScalarCD[] RicciCD[\[Nu],\[Sigma]]-CD[\[Tau]]@CD[-\[Tau]]@RicciCD[-\[Nu],-\[Sigma]] RicciCD[\[Nu],\[Sigma]]+2 RicciCD[-\[Nu],-\[Sigma]] RicciCD[-\[Tau],\[Nu]] RicciCD[\[Sigma],\[Tau]]-2 CD[-\[Gamma]]@CD[-\[Tau]]@RicciCD[-\[Nu],-\[Sigma]] RiemannCD[\[Nu],\[Tau],\[Sigma],\[Gamma]]-2 RicciCD[-\[Nu],-\[Sigma]] RicciCD[-\[Tau],-\[Gamma]] RiemannCD[\[Nu],\[Tau],\[Sigma],\[Gamma]]},UseSymmetries->True,MetricOn->All],
MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],\[Alpha],\[Beta],\[Eta]],-1/2 RiemannCD[-\[Nu],-\[Lambda],-\[Sigma],-\[Tau]] RiemannCD[-\[Mu],\[Nu],\[Sigma],\[Tau]]},UseSymmetries->True,MetricOn->All],
MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],\[Alpha],-\[Sigma],\[Beta]],1/2 RiemannCD[-\[Nu],-\[Tau],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],-\[Sigma],\[Nu],\[Tau]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[-\[Mu]]@RiemannCD[\[Alpha],\[Gamma],\[Beta],\[Eta]] RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]],-1/2 CD[-\[Mu]]@RiemannCD[\[Nu],\[Gamma],\[Sigma],\[Tau]] RiemannCD[-\[Nu],-\[Lambda],-\[Sigma],-\[Tau]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[-\[Mu]]@RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] CD[-\[Gamma]]@RiemannCD[\[Alpha],\[Gamma]1,\[Beta],\[Eta]],-1/2 CD[-\[Mu]]@RiemannCD[-\[Nu],-\[Lambda],-\[Sigma],-\[Tau]] CD[-\[Gamma]]@RiemannCD[\[Nu],\[Gamma]1,\[Sigma],\[Tau]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[-\[Lambda]]@CD[-\[Eta]]@RicciCD[-\[Alpha],-\[Beta]] RiemannCD[\[Alpha],\[Lambda],\[Beta],\[Eta]],CD[-\[Gamma]]@CD[-\[Tau]]@RicciCD[-\[Nu],-\[Sigma]] RiemannCD[\[Nu],\[Tau],\[Sigma],\[Gamma]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[-\[Mu]]@RiemannCD[\[Alpha],\[Lambda],\[Beta],\[Eta]] CD[-\[Lambda]]@CD[-\[Eta]]@RicciCD[-\[Alpha],-\[Beta]],CD[-\[Mu]]@RiemannCD[\[Nu],\[Sigma],\[Tau],\[Gamma]] CD[-\[Gamma]]@CD[-\[Sigma]]@RicciCD[-\[Nu],-\[Tau]]},UseSymmetries->True,MetricOn->All],
MakeRule[{CD[-\[Gamma]]@RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] CD[\[Gamma]]@RiemannCD[\[Eta],\[Mu],\[Lambda],\[Gamma]1],1/2 CD[-\[Tau]]@RiemannCD[-\[Nu],-\[Sigma],-\[Alpha],-\[Beta]] CD[\[Tau]]@RiemannCD[\[Nu],\[Sigma],\[Gamma]1,\[Mu]]},UseSymmetries->True,MetricOn->All]
}];
(*MakeRule[{RicciCD[-\[Alpha],-\[Beta]] RiemannCD[-\[Eta],-\[Lambda],-\[Mu],\[Alpha]] RiemannCD[\[Beta],\[Eta],\[Lambda],\[Mu]],-1/2 RicciCD[-\[Nu],-\[Sigma]] RiemannCD[-\[Tau],-\[Gamma],-\[Gamma]1,\[Nu]] RiemannCD[\[Sigma],\[Gamma]1,\[Tau],\[Gamma]]},UseSymmetries\[Rule]True,MetricOn\[Rule]All],
MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],-\[Gamma]1,\[Alpha],\[Beta]] RiemannCD[\[Eta],\[Mu],\[Lambda],\[Gamma]1],1/2 RiemannCD[-\[Nu],-\[Sigma],-\[Tau],-\[Gamma]] RiemannCD[-\[Gamma]2,-\[Gamma]3,\[Nu],\[Sigma]] RiemannCD[\[Tau],\[Gamma],\[Gamma]2,\[Gamma]3]},UseSymmetries\[Rule]True,MetricOn\[Rule]All],
MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],\[Alpha],-\[Gamma]1,\[Beta]] RiemannCD[\[Eta],\[Mu],\[Lambda],\[Gamma]1],1/4 RiemannCD[-\[Nu],-\[Sigma],-\[Tau],-\[Gamma]] RiemannCD[-\[Gamma]2,-\[Gamma]3,\[Tau],\[Gamma]] RiemannCD[\[Nu],\[Sigma],\[Gamma]2,\[Gamma]3]},UseSymmetries\[Rule]True,MetricOn\[Rule]All],
MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Eta],-\[Lambda]] RiemannCD[-\[Mu],\[Alpha],-\[Gamma]1,\[Eta]] RiemannCD[\[Beta],\[Gamma]1,\[Lambda],\[Mu]],RiemannCD[-\[Nu],-\[Sigma],-\[Tau],-\[Gamma]] RiemannCD[-\[Gamma]2,\[Nu],-\[Gamma]3,\[Tau]] RiemannCD[\[Sigma],\[Gamma]2,\[Gamma],\[Gamma]3]-1/4 RiemannCD[-\[Nu],-\[Sigma],-\[Tau],-\[Gamma]] RiemannCD[-\[Gamma]2,-\[Gamma]3,\[Nu],\[Sigma]] RiemannCD[\[Tau],\[Gamma],\[Gamma]2,\[Gamma]3]},UseSymmetries\[Rule]True,MetricOn\[Rule]All]*)


DefTensor[ChristoffelCDP[\[Alpha],-\[Mu],-\[Nu]],{M1,M3,M4}]
DefTensorPerturbation[pertChristoffelCDP[LI[order],\[Alpha],-\[Mu],-\[Nu]],ChristoffelCDP[\[Alpha],-\[Mu],-\[Nu]],{M1,M3,M4}]

DefTensor[RicciCDP[-\[Mu],-\[Nu]],{M1,M3,M4}]
DefTensor[RicciScalarCDP[],{M1,M3,M4}]
DefTensor[RiemannCDP[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],{M1,M3,M4}]
DefTensorPerturbation[pertRicciCDP[LI[order],-\[Mu],-\[Nu]],RicciCDP[-\[Mu],-\[Nu]],{M1,M3,M4}]
DefTensorPerturbation[pertRicciScalarCDP[LI[order]],RicciScalarCDP[],{M1,M3,M4}]
DefTensorPerturbation[pertRiemannCDP[LI[order],-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],RiemannCDP[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],{M1,M3,M4}]

DefTensor[ddpi[-\[Mu],-\[Nu]],{M1,M3,M4}]
DefTensorPerturbation[pertddpi[LI[order],-\[Mu],-\[Nu]],ddpi[-\[Mu],-\[Nu]],{M1,M3,M4}]

DefTensor[pi1[],{M1,M3,M4}]
DefTensor[pi2[],{M1,M3,M4}]
DefTensor[pi3[],{M1,M3,M4}]
DefTensor[pi4[],{M1,M3,M4}]
DefTensor[pi5[],{M1,M3,M4}]
DefTensor[pi6[],{M1,M3,M4}]
DefTensor[pi7[],{M1,M3,M4}]
DefTensor[pi8[],{M1,M3,M4}]
DefTensor[pi9[],{M1,M3,M4}]
DefTensor[pi10[],{M1,M3,M4}]
DefTensor[piX[],{M1,M3,M4}]

DefTensorPerturbation[pertpi1[LI[order]],pi1[],{M1,M3,M4}]
DefTensorPerturbation[pertpi2[LI[order]],pi2[],{M1,M3,M4}]
DefTensorPerturbation[pertpi3[LI[order]],pi3[],{M1,M3,M4}]
DefTensorPerturbation[pertpi4[LI[order]],pi4[],{M1,M3,M4}]
DefTensorPerturbation[pertpi5[LI[order]],pi5[],{M1,M3,M4}]
DefTensorPerturbation[pertpi6[LI[order]],pi6[],{M1,M3,M4}]
DefTensorPerturbation[pertpi7[LI[order]],pi7[],{M1,M3,M4}]
DefTensorPerturbation[pertpi8[LI[order]],pi8[],{M1,M3,M4}]
DefTensorPerturbation[pertpi9[LI[order]],pi9[],{M1,M3,M4}]
DefTensorPerturbation[pertpi10[LI[order]],pi10[],{M1,M3,M4}]
DefTensorPerturbation[pertpiX[LI[order]],piX[],{M1,M3,M4}]


IsScal[pert_]:=Module[{tmp},
	tmp = pert //.PD[_]@tens_:>tens;
	tmp = Head@tmp;
	tmp = xSVTUtilities`PertQ@pert && xSVTUtilities`ScalQ@tmp;
	tmp
]

IsVec[pert_]:=Module[{tmp},
	tmp = pert //.PD[_]@tens_:>tens;
	tmp = Head@tmp;
	tmp = xSVTUtilities`PertQ@pert && xSVTUtilities`VecQ@tmp;
	tmp
]

IsTens[pert_]:=Module[{tmp},
	tmp =pert //.PD[_]@tens_:>tens;
	tmp =Head@tmp;
	tmp = xSVTUtilities`PertQ@pert && xSVTUtilities`TensQ@tmp;
	tmp
]

SelectTerms[types__][expr1_+expr2_]:=SelectTerms[types][expr1]+SelectTerms[types][expr2]
SelectTerms[types__][expr_]:=Module[{tmp,nscal,nvec,ntens,isok},
	tmp = expr //.Times->List //.Power[t_,n_]:>Table[t,n] // Flatten;
	nscal = Total[Boole@IsScal@#&/@tmp];
	nvec = Total[Boole@IsVec@#&/@tmp];
	ntens = Total[Boole@IsTens@#&/@tmp];
	isok = nscal==Length@Position[{types},"S"] && nvec==Length@Position[{types},"V"] && ntens==Length@Position[{types},"T"];
	If[Not@isok,0, expr]
]

OrderPert[pert_]:=Module[{tmp},
	tmp = pert //.PD[_]@tens_:>tens;
	tmp = tmp //._[LI[n_],___]:>n;
	tmp
]

HoP[pert_]:=Module[{tmp},
	tmp = pert //.PD[_]@tens_:>tens;
	tmp = Head@tmp;
	tmp
]

(* Here the source terms (eg source1[LI[2]]) are returned as "0_0_0_2" *)
TypePerts[expr_]:=Module[{tmp, checkN, checkD,type,idx,prefix},
	tmp = expr //.PD[_]@tens_:>tens // Expand;
	tmp = tmp //.CD[_]@tens_:>tens // Expand;
	checkN = Length@MonomialList@Numerator@Together@tmp;
	checkD = Length@MonomialList@Denominator@Together@tmp;
	If[Or[checkN>1,checkD>1],Print["This function works with monomials"];Abort[];];
	tmp = tmp/.Power[a_,b_]/;b>0:>(Inactive[Times]@@ConstantArray[a,b]);
	tmp = tmp //.Times->List // Activate // Flatten;
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	tmp = tmp*Boole[xSVTUtilities`PertQ[#]&/@tmp];
	tmp = DeleteCases[tmp,0];
	idx = IndicesOf[LIndex][#]&/@tmp //.IndexList@LI[n_]:>n;
	prefix = If[StringContainsQ[ToString@Head@#,"source"],Tex[Head@#],""]&/@tmp;
	type = ToString@Head@#& /@tmp;
	tmp = MapThread[{#1,#2,#3}&,{type,idx,prefix}] // Tally;
	tmp = tmp //.List[List[{nb_?IntegerQ,ns_?IntegerQ,nv_?IntegerQ,nt_?IntegerQ},order_?IntegerQ,pre_?StringQ],n_?IntegerQ]:>List[pre,{ns,nv,nt}*n,order];
	tmp // Sort
]

Stringify[list_?ListQ]:=Module[{tmp},
	tmp = list // Flatten;
	tmp = DeleteCases[tmp,""];
	Assert[AllTrue[tmp,IntegerQ]];
	Assert[AllTrue[tmp,NonNegative]];
	tmp = tmp //.x_?IntegerQ:>ToString[x];
	tmp = StringJoin@Riffle[tmp,"_"];
	tmp
]

MaxOrderCov[expr_]:=MaxOrderCov[expr,0]
MaxOrderCov[expr_,DeltaLeading_]:=Module[{tmp,tmppert,nPders,nCders,order,typeperts,pos,ismax},
	tmp = expr // Expand;
	tmp = tmp // SeparateMetric[metricg] // ToCanonical;
	tmp = Replace[tmp,Plus->List,{1},Heads->True];
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	tmppert = tmp //.PD[idx_]@nopert_/;Not@xSVTUtilities`PertQ[nopert]:>nopert;
	tmppert = tmppert //.CD[idx_]@nopert_/;Length@IndicesOf[LIndex][nopert]==0:>nopert;
	nPders = Length[IndicesOf[PD,TangentM4][#]]&/@tmppert;
	nCders = Length[IndicesOf[CD,TangentM4][#]]&/@tmppert;
	order = (nPders+nCders)/2 // Expand;
	typeperts = Stringify@TypePerts[#]&/@tmp;
	pos = Position[typeperts,#]&/@DeleteDuplicates@typeperts;
	tmp = Extract[tmp,#]&/@pos;
	order = Extract[order,#]&/@pos;
	ismax[list_] := Map[#>=(Max[list]-DeltaLeading) &, list];
	tmp = tmp*Boole[ismax[#]&/@order];
	tmp = Flatten@tmp //.List->Plus;
	tmp = tmp  // SeparateMetric[];
	tmp
]

PerturbAndMaxOrderCov[expr_,order_]:=Module[{tmp},
	tmp = expr // XcovToScalarcov;
	tmp = Perturbation[tmp,order];
	tmp = tmp // ExpandPerturbation;
	tmp = tmp // Expand;
	tmp = tmp // ScalarcovToXcov // NoScalar // Expand;
	tmp = tmp // MaxOrderCov;
	tmp
]

MaxOrder[expr_]:=MaxOrder[expr,0]
MaxOrder[expr_,DeltaLeading_]:=Module[{tmp,nTders,nSders,tmppert,nPders,nCders,order,typeperts,pos,ismax},
	tmp = expr // Expand;
	tmp = tmp // SeparateMetric[metric\[Delta]] // ToCanonical;
	tmp = Replace[tmp,Plus->List,{1},Heads->True];
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	nTders = Length[IndicesOf[PD,TangentM1][#]]&/@tmp;
	nSders = Length[IndicesOf[PD,TangentM3][#]]&/@tmp;
	order=(nSders+nTders)/2 // Expand;
	typeperts = Stringify@TypePerts[#]&/@tmp;
	pos = Position[typeperts,#]&/@DeleteDuplicates@typeperts;

	tmp = Extract[tmp,#]&/@pos;
	order = Extract[order,#]&/@pos;
	ismax[list_] := Map[#>=(Max[list]-DeltaLeading) &, list];
	tmp = tmp*Boole[ismax[#]&/@order];
	tmp = Flatten@tmp //.List->Plus;
	tmp = tmp  // SeparateMetric[];
	tmp
]


(* ::Subsection::Closed:: *)
(*ToAlphas*)


EQdensityS = EQdensityS // NoF5 // NoF4;
EQpressureS = EQpressureS // NoF5 // NoF4;
EQmass2 = EQmass2 // NoF5 // NoF4;
EQalphaK = EQalphaK // NoF5 // NoF4;
EQalphaB = EQalphaB // NoF5 // NoF4;
EQalphaT = EQalphaT // NoF5 // NoF4;
EQalphaKK = EQalphaKK // NoF5 // NoF4;
EQalphaBB = EQalphaBB // NoF5 // NoF4;
EQalphaTT = EQalphaTT // NoF5 // NoF4;
EQalphaMM = EQalphaMM // NoF5 // NoF4;


SubX0=MakeRule[{X[],primescalar[]^2/2/scale[]^2}];
invSubX0={primescalar[]^n_/;EvenQ[n]:>(2 scale[]^2 X[])^(n/2),primescalar[]^n_/;OddQ[n]:>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};
restoreXinG={Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


EQprimedensityS=TimeDer[EQdensityS//.SubX0]//.restoreXinG//ToCanonical;
EQprimepressureS=TimeDer[EQpressureS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimedensityS=TimeDer[EQprimedensityS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimepressureS=TimeDer[EQprimepressureS//.SubX0]//.restoreXinG//ToCanonical;
EQppprimedensityS=TimeDer[EQpprimedensityS//.SubX0]//.restoreXinG//ToCanonical;


EQprimemass2=TimeDer[EQmass2//.SubX0]//.restoreXinG//ToCanonical;
EQpprimemass2=TimeDer[EQprimemass2//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaK=TimeDer[EQalphaK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaK=TimeDer[EQprimealphaK//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaB=TimeDer[EQalphaB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaB=TimeDer[EQprimealphaB//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaT=TimeDer[EQalphaT//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaT=TimeDer[EQprimealphaT//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaKK=TimeDer[EQalphaKK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaKK=TimeDer[EQprimealphaKK//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaBB=TimeDer[EQalphaBB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaBB=TimeDer[EQprimealphaBB//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaTT=TimeDer[EQalphaTT//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaTT=TimeDer[EQprimealphaTT//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaMM=TimeDer[EQalphaMM//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaMM=TimeDer[EQprimealphaMM//.SubX0]//.restoreXinG//ToCanonical;


RemoveG2fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[TimeDer[EQpprimedensityS//.SubX0]==0//.restoreXinG,Derivative[3,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaKK==0,Derivative[2,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaK==0,Derivative[2,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimedensityS==0,Derivative[2,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimepressureS==0,Derivative[2,0][G2fun][scalar[],X[]]]]//Expand;
tmp=tmp//.Flatten[Solve[EQprimealphaKK==0,Derivative[1,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaK==0,Derivative[1,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimedensityS==0,Derivative[1,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimepressureS==0,Derivative[1,0][G2fun][scalar[],X[]]]]//Expand;
tmp=tmp//.Flatten[Solve[EQalphaKK==0,Derivative[0,3][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaK==0,Derivative[0,2][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQdensityS==0,Derivative[0,1][G2fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpressureS==0,G2fun[scalar[],X[]]]]//Expand;
tmp]


RemoveG3fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[EQpprimealphaBB==0,Derivative[2,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaB==0,Derivative[2,1][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaBB==0,Derivative[1,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaB==0,Derivative[1,1][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaBB==0,Derivative[0,2][G3fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaB==0,Derivative[0,1][G3fun][scalar[],X[]]]]//Expand;
tmp]


RemoveG4fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[TimeDer[EQpprimemass2//.SubX0]==0//.restoreXinG,Derivative[3,0][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimemass2==0,Derivative[2,0][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimemass2==0,Derivative[1,0][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQmass2==0,G4fun[scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaMM==0,Derivative[2,2][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQpprimealphaT==0,Derivative[2,1][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaMM==0,Derivative[1,2][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaT==0,Derivative[1,1][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaMM==0,Derivative[0,2][G4fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaT==0,Derivative[0,1][G4fun][scalar[],X[]]]];
tmp]


RemoveG5fun[expr_]:=Module[{tmp},tmp=expr;
tmp=tmp//.Flatten[Solve[EQpprimealphaTT==0,Derivative[2,1][G5fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQprimealphaTT==0,Derivative[1,1][G5fun][scalar[],X[]]]];
tmp=tmp//.Flatten[Solve[EQalphaTT==0,Derivative[0,1][G5fun][scalar[],X[]]]];
tmp]


(* ::Section::Closed:: *)
(*Covariant Equations of Motion*)


If[Or[Not@ValueQ@EQmetric, Not@ValueQ@EQscalar],
	pertL = Lgravity+Lmatter // NoF5 // NoF4 // SeparateMetric[] // ToCanonical // ReplaceDummies;
	pertL = ExpandPerturbation[Perturbation[pertL // XcovToScalarcov,1]] // ScalarcovToXcov // NoScalar // ToCanonical;
]


If[Not@ValueQ@EQmetric,
	tmp = pertL // XcovToScalarcov;
	tmp = -2 VarD[pertmetricg[LI[1],\[Mu],\[Nu]],CD][tmp]/Sqrt[-Detmetricg[]] //.delta[-LI[1],LI[1]]:>1;
	tmp = tmp // ScalarcovToXcov // Expand;
	tmp = tmp + EQmattertoscalar // SeparateMetric[] // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // ContractMetric // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // RicciToEinstein // ContractMetric // ToCanonical;
	tmp = tmp // SeparateMetric[] // EinsteinToRicci // ToCanonical;
	tmp = tmp // ContractMetric;
	tmp = tmp //.RiemannRules // ToCanonical;
	tmp = tmp // SeparateMetric[] // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // ContractMetric // ToCanonical;
	EQmetric = tmp // SortCovDs // ToCanonical;
	EQmetric // SVTExport;
	Print["Succesfully computed EQmetric. It has ", Length@EQmetric, " elements!"];,
	Print["Skipping calculation of EQmetric, imported from external file!"];
]


If[Not@ValueQ@EQscalar,
	tmp = pertL // XcovToScalarcov;
	tmp = -2 VarD[pertscalarcov[LI[1]],CD][tmp]/Sqrt[-Detmetricg[]] //.delta[-LI[1],LI[1]]:>1;
	tmp = tmp // ScalarcovToXcov // Expand;
	tmp = tmp // SeparateMetric[] // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // ContractMetric // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // RicciToEinstein // ContractMetric // ToCanonical;
	tmp = tmp // SeparateMetric[] // EinsteinToRicci // ToCanonical;
	tmp = tmp // ContractMetric;
	tmp = tmp //.RiemannRules // ToCanonical;
	tmp = tmp // SeparateMetric[] // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp // ContractMetric // ToCanonical;
	tmp = tmp // SortCovDs // ToCanonical;
	tmp = tmp //.CD[-\[Alpha]_]@CD[\[Alpha]_]@CD[\[Beta]_]@scalarcov[]:>CD[\[Beta]]@CD[-\[Alpha]]@CD[\[Alpha]]@scalarcov[]+RicciCD[-\[Alpha],\[Beta]] CD[\[Alpha]]@scalarcov[];
	tmp = tmp // ToCanonical;
	tmp = tmp //.RiemannCD[-\[Alpha]_,-\[Gamma]_,-\[Beta]_,-\[Mu]_] CD[\[Mu]_]@CD[\[Gamma]_]@CD[\[Beta]_]@scalarcov[]:>Module[{\[Nu]},-RiemannCD[-\[Alpha],-\[Gamma],-\[Beta],-\[Mu]]/2 (RiemannCD[\[Beta],\[Nu],\[Gamma],\[Mu]]+RiemannCD[\[Beta],\[Gamma],\[Mu],\[Nu]]) CD[-\[Nu]]@scalarcov[]];
	EQscalar = tmp // ToCanonical;
	EQscalar // SVTExport;
	Print["Succesfully computed EQscalar. It has ", Length@EQscalar, " elements!"];,
	Print["Skipping calculation of EQscalar, imported from external file!"];
]


If[Not@ValueQ@EQmatter,
	EQmatter = CD[-\[Nu]]@stressenergy[-\[Mu], \[Nu]] // ToCanonical // SeparateMetric[];
	EQmatter // SVTExport;
	Print["Succesfully computed EQmatter. It has ", Length@EQmatter, " elements!"];,
	Print["Skipping calculation of EQmatter, imported from external file!"];
]


tmp = EQscalar //.CD[_]@CD[_]@CD[_]@scalarcov[]:>0 //.CD[_]@RicciScalarCD[___]:>0 //.CD[_]@RicciCD[___]:>0 //.CD[_]@RiemannCD[___]:>0;
tmp = EQscalar - tmp // ToCanonical;
If[tmp!=0, Print["WARNING: Third derivatives appearing in the Scalar field equation of motion!"]];


tmp = EQmetric //.CD[_]@CD[_]@CD[_]@scalarcov[]:>0 //.CD[_]@RicciScalarCD[___]:>0 //.CD[_]@RicciCD[___]:>0 //.CD[_]@RiemannCD[___]:>0;
tmp = EQmetric - tmp // ToCanonical;
If[tmp!=0, Print["WARNING: Third derivatives appearing in the Scalar field equation of motion!"]];


(* ::Section::Closed:: *)
(*SVTDecomposition Rules*)


(* ::Subsection::Closed:: *)
(*Background*)


If[Not@ValueQ@$SVTDecompositionRules,
	order=0;
	SetOptions[SVTDecomposition,Verbose->True,StoreResultQ->True,ListMethod->"SamePerts"];
	
	(* Christoffel *)
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->a,\[Mu]->b,\[Nu]->c},StoreName->ChristoffelCDP[a,-b,-c]];
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->a,\[Mu]->b,\[Nu]->i},StoreName->ChristoffelCDP[a,-b,-i]];
	tmp=ChristoffelCDP[a,-b,-i] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]], MakeRule[{ChristoffelCDP[a,-i,-b],Evaluate[tmp]}]];
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->a,\[Mu]->i,\[Nu]->j},StoreName->ChristoffelCDP[a,-i,-j]];
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->i,\[Mu]->a,\[Nu]->b},StoreName->ChristoffelCDP[i,-a,-b]];
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->i,\[Mu]->a,\[Nu]->j},StoreName->ChristoffelCDP[i,-a,-j]];
	tmp=ChristoffelCDP[i,-a,-j] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]], MakeRule[{ChristoffelCDP[i,-j,-a],Evaluate[tmp]}]];
	SVTDecomposition[ChristoffelCD[\[Alpha],-\[Mu],-\[Nu]],order,{\[Alpha]->i,\[Mu]->j,\[Nu]->k},StoreName->ChristoffelCDP[i,-j,-k]];
	
	(* Riemann *)
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->a,\[Nu]->b,\[Alpha]->c,\[Beta]->d},StoreName->RiemannCDP[-a,-b,-c,-d]];
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->a,\[Nu]->b,\[Alpha]->c,\[Beta]->i},StoreName->RiemannCDP[-a,-b,-c,-i]];
	tmp=RiemannCDP[-a,-b,-c,-i] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{RiemannCDP[-a,-b,-i,-c],Evaluate[-tmp]}],
		MakeRule[{RiemannCDP[-c,-i,-a,-b],Evaluate[tmp]}],
		MakeRule[{RiemannCDP[-i,-c,-a,-b],Evaluate[-tmp]}]];
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->a,\[Nu]->i,\[Alpha]->b,\[Beta]->j},StoreName->RiemannCDP[-a,-i,-b,-j]];
	tmp=RiemannCDP[-a,-i,-b,-j] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{RiemannCDP[-a,-i,-j,-b],Evaluate[-tmp]}],
		MakeRule[{RiemannCDP[-i,-a,-b,-j],Evaluate[-tmp]}],
		MakeRule[{RiemannCDP[-i,-a,-j,-b],Evaluate[tmp]}]];
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->a,\[Nu]->b,\[Alpha]->i,\[Beta]->j},StoreName->RiemannCDP[-a,-b,-i,-j]];
	tmp=RiemannCDP[-a,-b,-i,-j] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{RiemannCDP[-i,-j,-a,-b],Evaluate[tmp]}]];
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->a,\[Nu]->i,\[Alpha]->j,\[Beta]->k},StoreName->RiemannCDP[-a,-i,-j,-k]];
	tmp=RiemannCDP[-a,-i,-j,-k] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{RiemannCDP[-i,-a,-j,-k],Evaluate[-tmp]}],
		MakeRule[{RiemannCDP[-j,-k,-a,-i],Evaluate[tmp]}],
		MakeRule[{RiemannCDP[-j,-k,-i,-a],Evaluate[-tmp]}]];
	SVTDecomposition[RiemannCD[-\[Mu],-\[Nu],-\[Alpha],-\[Beta]],order,{\[Mu]->i,\[Nu]->j,\[Alpha]->k,\[Beta]->l},StoreName->RiemannCDP[-i,-j,-k,-l]];
	
	(* Ricci *)
	SVTDecomposition[metricg[\[Alpha],\[Beta]] RiemannCDP[-\[Alpha],-\[Mu],-\[Beta],-\[Nu]],order,{\[Mu]->a,\[Nu]->b},StoreName->RicciCDP[-a,-b]];
	SVTDecomposition[metricg[\[Alpha],\[Beta]] RiemannCDP[-\[Alpha],-\[Mu],-\[Beta],-\[Nu]],order,{\[Mu]->a,\[Nu]->i},StoreName->RicciCDP[-a,-i]];
	tmp=RicciCDP[-a,-i] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{RicciCDP[-i,-a],Evaluate[tmp]}]];
	SVTDecomposition[metricg[\[Alpha],\[Beta]] RiemannCDP[-\[Alpha],-\[Mu],-\[Beta],-\[Nu]],order,{\[Mu]->i,\[Nu]->j},StoreName->RicciCDP[-i,-j]];
	
	(* Ricci Scalar *)
	SVTDecomposition[metricg[\[Mu],\[Nu]] RicciCDP[-\[Mu],-\[Nu]],order,{},StoreName->RicciScalarCDP[]];
	
	(* X *)
	SVTDecomposition[Xcov[] // XcovToScalarcov,order,{},StoreName->piX[]];
	
	(* DDscalar *)
	SVTDecomposition[CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[],order,{\[Mu]->a,\[Nu]->b},StoreName->ddpi[-a,-b]];
	SVTDecomposition[CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[],order,{\[Mu]->a,\[Nu]->i},StoreName->ddpi[-a,-i]];
	tmp=ddpi[-a,-i] //.$SVTDecompositionRules[[2]];
	$SVTDecompositionRules[[2]]=Union[$SVTDecompositionRules[[2]],
		MakeRule[{ddpi[-i,-a],Evaluate[tmp]}]];
	SVTDecomposition[CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[],order,{\[Mu]->i,\[Nu]->j},StoreName->ddpi[-i,-j]];
	
	(* Scalar field functions *)
	SVTDecomposition[ddpi[-\[Mu],\[Mu]],order,{},StoreName->pi1[]];
	SVTDecomposition[ddpi[-\[Mu],-\[Nu]] ddpi[\[Mu],\[Nu]],order,{},StoreName->pi2[]];
	SVTDecomposition[ddpi[-\[Beta],\[Alpha]] ddpi[-\[Eta],\[Beta]] ddpi[\[Eta],-\[Alpha]],order,{},StoreName->pi3[]];
	SVTDecomposition[RicciCDP[-\[Mu],-\[Nu]] ddpi[\[Nu],\[Mu]],order,{},StoreName->pi4[]];
	SVTDecomposition[RiemannCDP[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] ddpi[\[Nu],\[Beta]],order,{},StoreName->pi5[]];
	SVTDecomposition[RicciCDP[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[],order,{},StoreName->pi6[]];
	SVTDecomposition[CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta],\[Alpha]],order,{},StoreName->pi7[]];
	SVTDecomposition[RicciCDP[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] ddpi[\[Eta],\[Beta]],order,{},StoreName->pi8[]];
	SVTDecomposition[CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta],\[Alpha]] ddpi[\[Eta],\[Beta]],order,{},StoreName->pi9[]];
	SVTDecomposition[CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta],\[Alpha]] ddpi[-\[Lambda],\[Beta]] ddpi[\[Lambda],\[Eta]],order,{},StoreName->pi10[]];
	
	(* Export *)
	SetOptions[SVTDecomposition,Verbose->False,StoreResultQ->False,ListMethod->"All"]
	$SVTDecompositionRules // SVTExport
]


(* ::Section::Closed:: *)
(*Background*)


order = 0


(* ::Subsection::Closed:: *)
(*Simplification*)


If[Or[Not@ValueQ@EQback1, Not@ValueQ@EQback2],
	tmp = EQmetric// ContractMetric;
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[],-2 piX[]},MetricOn->All];
	tmp = tmp//.RicciScalarCD[]:>RicciScalarCDP[];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[],pi1[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[],pi2[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[],pi3[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Mu],-\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[],pi4[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[],pi5[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[],pi6[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[],pi7[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi8[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi9[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[],pi10[]},MetricOn->All];
	tmp = tmp//.RicciCD[\[Mu]_,\[Nu]_]:>RicciCDP[\[Mu],\[Nu]];
	tmp = tmp//.RiemannCD[\[Mu]_,\[Nu]_,\[Alpha]_,\[Beta]_]:>RiemannCDP[\[Mu],\[Nu],\[Alpha],\[Beta]];
	tmp = tmp//.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[]:>ddpi[\[Mu],\[Nu]];
	EQmetrictmp = tmp // ToCanonical // SeparateMetric[];
]


If[Not@ValueQ@EQback4,
	tmp = EQscalar // ContractMetric;
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[],-2 piX[]},MetricOn->All];
	tmp = tmp//.RicciScalarCD[]:>RicciScalarCDP[];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[],pi1[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[],pi2[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[],pi3[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Mu],-\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[],pi4[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[],pi5[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[],pi6[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[],pi7[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi8[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi9[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[],pi10[]},MetricOn->All];
	tmp = tmp//.RicciCD[\[Mu]_,\[Nu]_]:>RicciCDP[\[Mu],\[Nu]];
	tmp = tmp//.RiemannCD[\[Mu]_,\[Nu]_,\[Alpha]_,\[Beta]_]:>RiemannCDP[\[Mu],\[Nu],\[Alpha],\[Beta]];
	tmp = tmp//.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[]:>ddpi[\[Mu],\[Nu]];
	EQscalartmp = tmp//ToCanonical//SeparateMetric[];
]


(* ::Subsection::Closed:: *)
(*Metric*)


If[Not@ValueQ@EQback1,
	tmp = SVTDecomposition[EQmetrictmp,order,{\[Mu]->a,\[Nu]->b},Verbose->True,ListMethod->"SamePerts"];
	tmp = -tmp/scale[]^2;
	EQback1 = tmp // RemoveG2fun //Expand;
	EQback1 // SVTExport;
	Print["Succesfully computed EQback1. It has ", Length@EQback1, " elements!"];,
	Print["Skipping calculation of EQback1, imported from external file!"];
]


If[Not@ValueQ@EQback2,
	tmp = SVTDecomposition[EQmetrictmp,order,{\[Mu]->i,\[Nu]->j},Verbose->True,ListMethod->"SamePerts"];
	tmp = metric\[Delta][i,j] tmp/scale[]^2/3;
	tmp = tmp // SVTExpand // ReplaceDummies;
	EQback2 = tmp //RemoveG2fun//Expand;
	EQback2 // SVTExport;
	Print["Succesfully computed EQback2. It has ", Length@EQback2, " elements!"];,
	Print["Skipping calculation of EQback2, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Matter*)


If[Not@ValueQ@EQback3,
	tmp = SVTDecomposition[EQmatter,order,{\[Mu]->a},Verbose->True];
	EQback3 = -tmp //Expand // SVTExpand // ReplaceDummies;
	EQback3 // SVTExport;
	Print["Succesfully computed EQback3. It has ", Length@EQback3, " elements!"];,
	Print["Skipping calculation of EQback3, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Scalar Field*)


If[Not@ValueQ@EQback4,
	tmp = SVTDecomposition[EQscalartmp,order,{},Verbose->True,ListMethod->"SamePerts"];
	tmp = primescalar[] tmp/2;
	EQback4 = tmp // RemoveG2fun // Expand;
	EQback4 // SVTExport;
	Print["Succesfully computed EQback4. It has ", Length@EQback4, " elements!"];,
	Print["Skipping calculation of EQback4, imported from external file!"];
]


(* ::Section:: *)
(*Perturbed leading order equations*)


(* ::Subsection::Closed:: *)
(*First-order metric*)


If[Not@ValueQ@EQpertmetric1,
	order = 1;
	tmp = EQmetric;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->60,Verbose->True];
	EQpertmetric1 = tmp // MaxOrderCov;
	EQpertmetric1 // SVTExport;
	Print["Succesfully computed EQpertmetric1. It has ", Length@EQpertmetric1, " elements!"];,
	Print["Skipping calculation of EQpertmetric1, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*First-order scalar*)


If[Not@ValueQ@EQpertscalar1,
	order = 1;
	tmp = EQscalar;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->60,Verbose->True];
	EQpertscalar1 = tmp // MaxOrderCov;
	EQpertscalar1 // SVTExport;
	Print["Succesfully computed EQpertscalar1. It has ", Length@EQpertscalar1, " elements!"];,
	Print["Skipping calculation of EQpertscalar1, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Second-order metric*)


If[Not@ValueQ@EQpertmetric2,
	order = 2;
	tmp = EQmetric;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->40,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertmetric2 = tmp // MaxOrderCov;
	EQpertmetric2 // SVTExport;
	Print["Succesfully computed EQpertmetric2. It has ", Length@EQpertmetric2, " elements!"];,
	Print["Skipping calculation of EQpertmetric2, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Second-order scalar*)


If[Not@ValueQ@EQpertscalar2,
	order = 2;
	tmp = EQscalar;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->40,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertscalar2 = tmp // MaxOrderCov;
	EQpertscalar2 // SVTExport;
	Print["Succesfully computed EQpertscalar2. It has ", Length@EQpertscalar2, " elements!"];,
	Print["Skipping calculation of EQpertscalar2, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Third-order metric*)


If[Not@ValueQ@EQpertmetric3,
	order = 3;
	tmp = EQmetric;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->10,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertmetric3 = tmp // MaxOrderCov;
	EQpertmetric3 // SVTExport;
	Print["Succesfully computed EQpertmetric3. It has ", Length@EQpertmetric3, " elements!"];,
	Print["Skipping calculation of EQpertmetric3, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Third-order scalar*)


If[Not@ValueQ@EQpertscalar3,
	order = 3;
	tmp = EQscalar;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->10,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertscalar3 = tmp // MaxOrderCov;
	EQpertscalar3 // SVTExport;
	Print["Succesfully computed EQpertscalar3. It has ", Length@EQpertscalar3, " elements!"];,
	Print["Skipping calculation of EQpertscalar3, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Fourth-order metric*)


If[Not@ValueQ@EQpertmetric4,
	order = 4;
	tmp = EQmetric;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->4,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertmetric4 = tmp // MaxOrderCov;
	EQpertmetric4 // SVTExport;
	Print["Succesfully computed EQpertmetric4. It has ", Length@EQpertmetric4, " elements!"];,
	Print["Skipping calculation of EQpertmetric4, imported from external file!"];
]


(* ::Subsection::Closed:: *)
(*Fourth-order scalar*)


If[Not@ValueQ@EQpertscalar4,
	order = 4;
	tmp = EQscalar;
	tmp = tmp // XcovToScalarcov;
	tmp = tmp //.$StressEnergyDecomposition // Expand;
	tmp = Listify[PerturbAndMaxOrderCov, tmp, {order}, ListMethod->"Part",PartLength->4,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->20000,Verbose->True];
	tmp = Listify[MaxOrderCov, tmp, {}, ListMethod->"Part",PartLength->40000,Verbose->True];
	EQpertscalar4 = tmp // MaxOrderCov;
	EQpertscalar4 // SVTExport;
	Print["Succesfully computed EQpertscalar4. It has ", Length@EQpertscalar4, " elements!"];,
	Print["Skipping calculation of EQpertscalar4, imported from external file!"];
]


(* ::Section:: *)
(*Decompose First-Order*)


SubBack[expr_] := Module[{tmp},
	tmp = expr //.Flatten[Solve[TimeDer[TimeDer[EQback4]]==0,ppprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[TimeDer[EQback2]]==0,pprimepressureS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[EQback4]==0,pprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[EQback2]==0,primepressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback4==0,primedensityS[]]];
	tmp = tmp //.Flatten[Solve[EQback3==0,primedensity[]]];
	tmp = tmp //.Flatten[Solve[EQback2==0,pressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback1==0,densityS[]]];
	tmp]


(* ::Subsection:: *)
(*First-order metric*)


(*tmp = EQmetric// ContractMetric;
tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[],-2 piX[]},MetricOn->All];
tmp = tmp//.RicciScalarCD[]:>RicciScalarCDP[];
tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[],pi1[]},MetricOn->All];
tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[],pi2[]},MetricOn->All];
tmp = tmp//.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[],pi3[]},MetricOn->All];
tmp = tmp//.MakeRule[{RicciCD[-\[Mu],-\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[],pi4[]},MetricOn->All];
tmp = tmp//.MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[],pi5[]},MetricOn->All];
tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[],pi6[]},MetricOn->All];
tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[],pi7[]},MetricOn->All];
tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi8[]},MetricOn->All];
tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi9[]},MetricOn->All];
tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[],pi10[]},MetricOn->All];
tmp = tmp//.RicciCD[\[Mu]_,\[Nu]_]:>RicciCDP[\[Mu],\[Nu]];
tmp = tmp//.RiemannCD[\[Mu]_,\[Nu]_,\[Alpha]_,\[Beta]_]:>RiemannCDP[\[Mu],\[Nu],\[Alpha],\[Beta]];
tmp = tmp//.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[]:>ddpi[\[Mu],\[Nu]];
EQmetrictmp = tmp // ToCanonical // SeparateMetric[];*)


(* ::Subsection:: *)
(*First-order scalar*)


If[Not@ValueQ@EQfirst11,
	tmp = EQpertscalar1 // ContractMetric;
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[],-2 piX[]},MetricOn->All];
	tmp = tmp//.RicciScalarCD[]:>RicciScalarCDP[];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[],pi1[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[],pi2[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[],pi3[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Mu],-\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[],pi4[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RiemannCD[-\[Alpha],-\[Beta],-\[Mu],-\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[],pi5[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[],pi6[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[],pi7[]},MetricOn->All];
	tmp = tmp//.MakeRule[{RicciCD[-\[Alpha],-\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi8[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[],pi9[]},MetricOn->All];
	tmp = tmp//.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[],pi10[]},MetricOn->All];
	tmp = tmp//.RicciCD[\[Mu]_,\[Nu]_]:>RicciCDP[\[Mu],\[Nu]];
	tmp = tmp//.RiemannCD[\[Mu]_,\[Nu]_,\[Alpha]_,\[Beta]_]:>RiemannCDP[\[Mu],\[Nu],\[Alpha],\[Beta]];
	tmp = tmp//.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[]:>ddpi[\[Mu],\[Nu]];
	EQscalartmp = tmp//ToCanonical//SeparateMetric[];
]


If[Not@ValueQ@EQfirst11,
	tmp = EQscalartmp;
	tmp = tmp //.CD[idx_]@tens_:>PD[idx]@tens;
	tmp = tmp // WeylToRiemann;
	tmp = tmp // EinsteinToRicci;
	tmp = tmp // RiemannToChristoffel;
	tmp = tmp // ChristoffelToGradMetric;
	tmp = Expand[#]&/@tmp;
	tmp = xSVTUtilities`ListifyExpr[tmp, "Part", 1, {}];
	tmp = ToCanonical[#, UseMetricOnVBundle -> None]&/@tmp;
	tmp = xSVTUtilities`DeListifyExpr[tmp];
	tmp = Listify[SplitSpaceTime, tmp, {{}}, ListMethod->"Part",PartLength->100,Verbose->True];
	tmp = Listify[SVTExpand, tmp, {}, ListMethod->"Part",PartLength->400,Verbose->True];
	tmp = tmp // PertScalarToPertP // SVTExpand;
	tmp = tmp // RemoveG2fun // Expand;
	tmp = tmp // RemoveG3fun // Expand;
	tmp = tmp // RemoveG4fun // Expand;
	tmp = tmp // RemoveG5fun // Expand;
	tmp = tmp scale[]^2 primescalar[]/mass2[]/2 // SubBack // SVTExpand;
	EQfirst11 = tmp // MaxOrder;
	EQfirst11 // SVTExport;
	Print["Succesfully computed EQfirst11. It has ", Length@EQfirst11, " elements!"];,
	Print["Skipping calculation of EQfirst11, imported from external file!"];
]
