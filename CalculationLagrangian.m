(* ::Package:: *)

(* ::Title:: *)
(*Beyond Horndeski Lagrangian (third order)*)


(* ::Section::Closed:: *)
(*Setup*)


$HistoryLength = 0;


$CodeDirectory = "/home/emilio/Codes/xSVT/"
$OutputDirectory = $CodeDirectory<>"Equations/"


$Scalar=1;
$Vector=1;
$Tensor=1;


Get[$CodeDirectory<>"SVT.m"]


(* ::Subsection:: *)
(*Functions*)


Clear[IsPert]
IsPert[expr_]:=Module[{is,hd},
	is = False;
	hd = Head[expr];
	If[MemberQ[$Tensors,hd],If[DefInfo[Head[expr]][[2]] == "perturbation", is = True];];
	is]


Clear[IsolatePerts]
IsolatePerts[perts_][expr_] := Module[{list,pertlist,ispert,reperts,pos},
	list = expr //.Plus->List;
	pertlist = Map[# //.PD[a_]@tens_:>tens &, list];
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


Clear[NSpaceDer]
NSpaceDer[n_][expr_] := Module[{tmp, idx},
	tmp=expr //.Plus->List;
	If[ToString[Head[tmp]]!="List",tmp = {tmp}];
	idx = Length[IndicesOf[TangentM3,PD][#]]&/@tmp;
	idx = Map[#==n &,idx];
	Boole[idx] tmp //.List->Plus]


(* ::Section::Closed:: *)
(*Import Lagrangian*)


Import[$CodeDirectory<>"Lagrangian.m"]


L = L // NoScalar // ToCanonical // ReplaceDummies


Export[$OutputDirectory<>"L.m", L];


(* ::Section::Closed:: *)
(*Scalar Field to matter*)


tmp = VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Sqrt[-Detmetricg[]] Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
deltaTmatter=2 tmp/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical


subback=Flatten[{Solve[{Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]==0,SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]==0},{V[matter[]],primematter[]}],Solve[{TimeDer[Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]]==0,TimeDer[SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]]==0},{V'[matter[]],pprimematter[]}]}] // Simplify


T00=Decomposition[1,\[Mu]->a,\[Nu]->b][deltaTmatter]/scale[]^2/mass2[] // SVTExpand // Simplify // Expand
T0i=metric\[Delta][i,j] PD[-j]@Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/kscal[]^2/mass2[] // SVTExpand // FourierT // Simplify // Expand
Tii=metric\[Delta][i,j] Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/3/scale[]^2/mass2[] // SVTExpand // FourierT // Simplify // Expand
Tij=-metric\[Delta][i,k] metric\[Delta][j,l] PD[-k]@PD[-l]@Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/kscal[]^2/scale[]^2/mass2[] // SVTExpand // FourierT // Simplify // Expand


T0iV = 2 scale[]/kscal[]^2 (Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/mass2[]+PD[-i]@T0i) // SVTExpand // Simplify // Expand
tmp = Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2[];
tmp = tmp - 3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
TiiV = 2 metric\[Delta][j,k] PD[-k]@tmp scale[]^2/kscal[]^2 // SVTExpand // FourierT // Simplify // Expand


tmp = Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2[];
tmp = tmp-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
tmp = tmp+PD[-j]@TiiV/2/scale[]^2;
tmp = tmp+Evaluate[PD[-j]@TiiV/2/scale[]^2 //.i:>k //.j:>i //.k:>j];
TijT = -2 scale[]^2 tmp // SVTExpand // FourierT // Simplify // Expand


(* ::Section::Closed:: *)
(*Additional Definitions*)


DefTensor[RicciCDP[-\[Mu], -\[Nu]], M4]
DefTensor[RicciScalarCDP[], M4]
DefTensorPerturbation[pertRicciCDP[LI[order], -\[Mu], -\[Nu]], RicciCDP[-\[Mu], -\[Nu]], M4]
DefTensorPerturbation[pertRicciScalarCDP[LI[order]], RicciScalarCDP[], M4]


DefTensor[ddpi[-\[Mu], -\[Nu]], M4]
DefTensorPerturbation[pertddpi[LI[order], -\[Mu], -\[Nu]], ddpi[-\[Mu], -\[Nu]], M4]


DefTensor[pi1[], M4]
DefTensor[pi2[], M4]
DefTensor[pi3[], M4]
DefTensor[pi4[], M4]
DefTensor[pi5[], M4]
DefTensor[pi6[], M4]
DefTensor[pi7[], M4]


DefTensorPerturbation[pertpi1[LI[order]], pi1[], M4]
DefTensorPerturbation[pertpi2[LI[order]], pi2[], M4]
DefTensorPerturbation[pertpi3[LI[order]], pi3[], M4]
DefTensorPerturbation[pertpi4[LI[order]], pi4[], M4]
DefTensorPerturbation[pertpi5[LI[order]], pi5[], M4]
DefTensorPerturbation[pertpi6[LI[order]], pi6[], M4]
DefTensorPerturbation[pertpi7[LI[order]], pi7[], M4]


(* ::Section:: *)
(*Expansion of partial bits*)


(* ::Subsection::Closed:: *)
(*X*)


tmpX = -1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];
tmp = Decomposition[0][tmpX] // ReplaceDummies;
EQX0 = tmp - X[];
tmp = Decomposition[1][tmpX] // ReplaceDummies;
EQX1 = tmp - pertX[LI[1]];
tmp = Decomposition[2][tmpX] // ReplaceDummies;
EQX2 = tmp - pertX[LI[2]];
tmp = Decomposition[3][tmpX] // ReplaceDummies;
EQX3 = tmp - pertX[LI[3]];


Export[$OutputDirectory<>"EQX0.m", EQX0];
Export[$OutputDirectory<>"EQX1.m", EQX1];
Export[$OutputDirectory<>"EQX2.m", EQX2];
Export[$OutputDirectory<>"EQX3.m", EQX3];


SubX0 = MakeRule[{X[], Evaluate[X[] //.Flatten[Solve[EQX0==0,X[]]]]}];
SubX1 = MakeRule[{pertX[LI[1]], Evaluate[Scalar[pertX[LI[1]] //.Flatten[Solve[EQX1==0,pertX[LI[1]]]]]]}];
SubX2 = MakeRule[{pertX[LI[2]], Evaluate[Scalar[pertX[LI[2]] //.Flatten[Solve[EQX2==0,pertX[LI[2]]]]]]}];
SubX3 = MakeRule[{pertX[LI[3]], Evaluate[Scalar[pertX[LI[3]] //.Flatten[Solve[EQX3==0,pertX[LI[3]]]]]]}];


allrules = Union[SubX0, SubX1, SubX2, SubX3];


Export[$OutputDirectory<>"SubX0.m", SubX0];
Export[$OutputDirectory<>"SubX1.m", SubX1];
Export[$OutputDirectory<>"SubX2.m", SubX2];
Export[$OutputDirectory<>"SubX3.m", SubX3];


(* ::Subsection::Closed:: *)
(*Background*)


Print["Started Background Simplifications"]


tmp = Decomposition[0, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu],-\[Nu]]] // SVTExpand // ReplaceDummies;
SubRicci0 = MakeRule[{RicciCDP[-a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[0, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu],-\[Nu]]] // SVTExpand // ReplaceDummies;
SubRicci0 = Union[SubRicci0, MakeRule[{RicciCDP[-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{RicciCDP[-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[0, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu],-\[Nu]]] // SVTExpand // ReplaceDummies;
SubRicci0 = Union[SubRicci0, MakeRule[{RicciCDP[-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, SubRicci0];


AutomaticRules[RicciCDP, SubRicci0[[{2,3}]]]


tmp = Decomposition[0][metricg[\[Mu], \[Nu]] RicciCDP[-\[Mu], -\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci0 = Union[SubRicci0, MakeRule[{RicciScalarCDP[], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, SubRicci0];


tmp = Decomposition[0, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi0 = MakeRule[{ddpi[-a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[0, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi0 = Union[Subddpi0, MakeRule[{ddpi[-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{ddpi[-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[0, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi0 = Union[Subddpi0, MakeRule[{ddpi[-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, Subddpi0];


AutomaticRules[ddpi, Subddpi0[[{2,3}]]]


tmp = Decomposition[0][ddpi[-\[Mu], \[Mu]]] //.allrules // Decomposition[0];
Subpi0 = MakeRule[{pi1[], Evaluate[Scalar[tmp]]}];
tmp = Decomposition[0][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi2[], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[0][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi3[], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[0][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.SubRicci0 //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi4[], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[0][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi5[], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[0][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi6[], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[0][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.allrules // Decomposition[0];
Subpi0 = Union[Subpi0, MakeRule[{pi7[], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, Subpi0];


Export[$OutputDirectory<>"SubRicci0.m", SubRicci0];
Export[$OutputDirectory<>"Subpi0.m", Subpi0];


Print["Finished Background Simplifications"]


(* ::Subsection::Closed:: *)
(*First Order*)


Print["Started First-Order Simplifications"]


tmp = Decomposition[1, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci1 = MakeRule[{pertRicciCDP[LI[1], -a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[1, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci1 = Union[SubRicci1, MakeRule[{pertRicciCDP[LI[1],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertRicciCDP[LI[1],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[1, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci1 = Union[SubRicci1, MakeRule[{pertRicciCDP[LI[1],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, SubRicci1];


tmp = Decomposition[1][metricg[\[Mu], \[Nu]] RicciCDP[-\[Mu], -\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci1 = Union[SubRicci1, MakeRule[{pertRicciScalarCDP[LI[1]], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, SubRicci1];


tmp = Decomposition[1, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi1 = MakeRule[{pertddpi[LI[1],-a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[1, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi1 = Union[Subddpi1, MakeRule[{pertddpi[LI[1],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertddpi[LI[1],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[1, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi1 = Union[Subddpi1, MakeRule[{pertddpi[LI[1],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, Subddpi1];


tmp = Decomposition[1][ddpi[-\[Mu], \[Mu]]] //.allrules // Decomposition[0];
Subpi1 = MakeRule[{pertpi1[LI[1]], Evaluate[Scalar[tmp]]}];
tmp = Decomposition[1][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi2[LI[1]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[1][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi3[LI[1]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[1][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi4[LI[1]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[1][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi5[LI[1]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[1][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi6[LI[1]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[1][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.allrules // Decomposition[0];
Subpi1 = Union[Subpi1, MakeRule[{pertpi7[LI[1]], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, Subpi1];


Export[$OutputDirectory<>"SubRicci1.m", SubRicci1];
Export[$OutputDirectory<>"Subpi1.m", Subpi1];


Print["Finished First-Order Simplifications"]


(* ::Subsection::Closed:: *)
(*Second Order*)


Print["Started Second-Order Simplifications"]


tmp = Decomposition[2, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci2 = MakeRule[{pertRicciCDP[LI[2], -a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[2, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci2 = Union[SubRicci2, MakeRule[{pertRicciCDP[LI[2],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertRicciCDP[LI[2],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[2, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci2 = Union[SubRicci2, MakeRule[{pertRicciCDP[LI[2],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, SubRicci2];


tmp = Decomposition[2][metricg[\[Mu], \[Nu]] RicciCDP[-\[Mu], -\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci2 = Union[SubRicci2, MakeRule[{pertRicciScalarCDP[LI[2]], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, SubRicci2];


tmp = Decomposition[2, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi2 = MakeRule[{pertddpi[LI[2],-a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[2, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi2 = Union[Subddpi2, MakeRule[{pertddpi[LI[2],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertddpi[LI[2],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[2, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi2 = Union[Subddpi2, MakeRule[{pertddpi[LI[2],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, Subddpi2];


tmp = Decomposition[2][ddpi[-\[Mu], \[Mu]]] //.allrules // Decomposition[0];
Subpi2 = MakeRule[{pertpi1[LI[2]], Evaluate[Scalar[tmp]]}];
tmp = Decomposition[2][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi2[LI[2]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[2][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi3[LI[2]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[2][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi4[LI[2]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[2][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi5[LI[2]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[2][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi6[LI[2]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[2][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.allrules // Decomposition[0];
Subpi2 = Union[Subpi2, MakeRule[{pertpi7[LI[2]], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, Subpi2];


Export[$OutputDirectory<>"SubRicci2.m", SubRicci2];
Export[$OutputDirectory<>"Subpi2.m", Subpi2];


Print["Finished Second-Order Simplifications"]


(* ::Subsection::Closed:: *)
(*Third Order*)


Print["Started Third-Order Simplifications"]


tmp = Decomposition[3, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci3 = MakeRule[{pertRicciCDP[LI[3], -a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[3, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci3 = Union[SubRicci3, MakeRule[{pertRicciCDP[LI[3],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertRicciCDP[LI[3],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[3, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu],-\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci3 = Union[SubRicci3, MakeRule[{pertRicciCDP[LI[3],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, SubRicci3];


tmp = Decomposition[3][metricg[\[Mu], \[Nu]] RicciCDP[-\[Mu], -\[Nu]]] //.allrules // SVTExpand // ReplaceDummies;
SubRicci3 = Union[SubRicci3, MakeRule[{pertRicciScalarCDP[LI[3]], Evaluate[Scalar[tmp]]}]];


allrules = Union[allrules, SubRicci3];


tmp = Decomposition[3, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi3 = MakeRule[{pertddpi[LI[3],-a, -b], Evaluate[timevec[-a] timevec[-b] Scalar[tmp]]}];
tmp = Decomposition[3, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi3 = Union[Subddpi3, MakeRule[{pertddpi[LI[3],-a, -i], Evaluate[timevec[-a] tmp]}], MakeRule[{pertddpi[LI[3],-i, -a], Evaluate[timevec[-a] tmp]}]];
tmp = Decomposition[3, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] //.allrules // ReplaceDummies;
Subddpi3 = Union[Subddpi3, MakeRule[{pertddpi[LI[3],-i, -j], Evaluate[tmp]}]];


allrules = Union[allrules, Subddpi3];


tmp = Decomposition[3][ddpi[-\[Mu], \[Mu]]] //.allrules // Decomposition[0];
Subpi3 = MakeRule[{pertpi1[LI[3]], Evaluate[Scalar[tmp]]}];
tmp = Decomposition[3][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi2[LI[3]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[3][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi3[LI[3]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[3][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi4[LI[3]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[3][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi5[LI[3]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[3][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi6[LI[3]], Evaluate[Scalar[tmp]]}]];
tmp = Decomposition[3][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.allrules // Decomposition[0];
Subpi3 = Union[Subpi3, MakeRule[{pertpi7[LI[3]], Evaluate[Scalar[tmp]]}]];


Clear[allrules]


Export[$OutputDirectory<>"SubRicci3.m", SubRicci3];
Export[$OutputDirectory<>"Subpi3.m", Subpi3];


Print["Finished Third-Order Simplifications"]


(* ::Section:: *)
(*Lagrangian Simplification*)


(* ::Subsection::Closed:: *)
(*Import rules*)


Subdetg0 = Detmetricg[]:>-scale[]^8


SubRicci0 = Import[$OutputDirectory<>"SubRicci0.m"];
Subpi0 = Import[$OutputDirectory<>"Subpi0.m"];


SubRicci1 = Import[$OutputDirectory<>"SubRicci1.m"];
Subpi1 = Import[$OutputDirectory<>"Subpi1.m"];


SubRicci2 = Import[$OutputDirectory<>"SubRicci2.m"];
Subpi2 = Import[$OutputDirectory<>"Subpi2.m"];


SubRicci3 = Import[$OutputDirectory<>"SubRicci3.m"];
Subpi3 = Import[$OutputDirectory<>"Subpi3.m"];


SubX0 = Import[$OutputDirectory<>"SubX0.m"];
SubX1 = Import[$OutputDirectory<>"SubX1.m"];
SubX2 = Import[$OutputDirectory<>"SubX2.m"];
SubX3 = Import[$OutputDirectory<>"SubX3.m"];


invSubX0 = {primescalar[]^n_/;Mod[n,2]==0:>(2 scale[]^2 X[])^(n/2), primescalar[]^n_/;Mod[n,2]==1:>primescalar[] (2 scale[]^2 X[])^((n-1)/2)}


restoreXinG = {Gfun_[scalar[], primescalar[]^2/2/scale[]^2]:>Gfun[scalar[],X[]],
	Derivative[n_,m_][Gfun_][scalar[], primescalar[]^2/2/scale[]^2]:>Derivative[n,m][Gfun][scalar[],X[]]}


(* ::Subsection::Closed:: *)
(*Simplify Lagrangian*)


tmp = L // ContractMetric;
tmp = tmp //.RicciScalarCD[] :> RicciScalarCDP[];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[], pi1[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[], pi2[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[], pi3[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Mu], -\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[], pi4[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[], pi5[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[], pi6[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[], pi7[]}, MetricOn -> All];
EQL = tmp // SeparateMetric[] // ToCanonical


(* ::Section::Closed:: *)
(*Import Alphas*)


Import[$CodeDirectory<>"AlphaDefinitions.m"]


Export[$OutputDirectory<>"EQmass2.m", EQmass2];
Export[$OutputDirectory<>"EQalphaK.m", EQalphaK];
Export[$OutputDirectory<>"EQalphaB.m", EQalphaB];
Export[$OutputDirectory<>"EQalphaT.m", EQalphaT];
Export[$OutputDirectory<>"EQalphaKK.m", EQalphaKK];
Export[$OutputDirectory<>"EQalphaBB.m", EQalphaBB];
Export[$OutputDirectory<>"EQalphaTT.m", EQalphaTT];
Export[$OutputDirectory<>"EQalphaMM.m", EQalphaMM];
Export[$OutputDirectory<>"EQalphaH.m", EQalphaH];
Export[$OutputDirectory<>"EQalphaHH.m", EQalphaHH];
Export[$OutputDirectory<>"EQdensityS.m", EQdensityS];
Export[$OutputDirectory<>"EQpressureS.m", EQpressureS];


(* ::Subsection::Closed:: *)
(*Introduce Alphas*)


EQprimedensityS = TimeDer[EQdensityS //.SubX0] //.restoreXinG // ToCanonical;
EQprimepressureS = TimeDer[EQpressureS //.SubX0] //.restoreXinG // ToCanonical;
EQpprimedensityS = TimeDer[EQprimedensityS //.SubX0] //.restoreXinG // ToCanonical;
EQpprimepressureS = TimeDer[EQprimepressureS //.SubX0] //.restoreXinG // ToCanonical;
EQppprimedensityS = TimeDer[EQpprimedensityS //.SubX0] //.restoreXinG // ToCanonical;


EQprimemass2 = TimeDer[EQmass2 //.SubX0] //.restoreXinG // ToCanonical;
EQpprimemass2 = TimeDer[EQprimemass2 //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaK = TimeDer[EQalphaK //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaK = TimeDer[EQprimealphaK //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaB = TimeDer[EQalphaB //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaB = TimeDer[EQprimealphaB //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaT = TimeDer[EQalphaT //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaT = TimeDer[EQprimealphaT //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaH = TimeDer[EQalphaH //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaH = TimeDer[EQprimealphaH //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaKK = TimeDer[EQalphaKK //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaKK = TimeDer[EQprimealphaKK //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaBB = TimeDer[EQalphaBB //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaBB = TimeDer[EQprimealphaBB //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaTT = TimeDer[EQalphaTT //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaTT = TimeDer[EQprimealphaTT //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaMM = TimeDer[EQalphaMM //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaMM = TimeDer[EQprimealphaMM //.SubX0] //.restoreXinG // ToCanonical;


Clear[RemoveKfun]
RemoveKfun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //. Flatten[Solve[TimeDer[EQpprimedensityS] == 0, Derivative[3, 1][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimealphaKK == 0, Derivative[2, 3][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimealphaK == 0, Derivative[2, 2][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimedensityS == 0, Derivative[2, 1][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimepressureS == 0, Derivative[2, 0][Kfun][scalar[], X[]]]] // Expand;
tmp = tmp //. Flatten[Solve[EQprimealphaKK == 0, Derivative[1, 3][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaK == 0, Derivative[1, 2][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimedensityS == 0, Derivative[1, 1][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimepressureS == 0, Derivative[1, 0][Kfun][scalar[], X[]]]] // Expand;
tmp = tmp //. Flatten[Solve[EQalphaKK == 0, Derivative[0, 3][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaK == 0, Derivative[0, 2][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQdensityS == 0, Derivative[0, 1][Kfun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpressureS == 0, Kfun[scalar[], X[]]]] // Expand;
tmp]


Clear[RemoveG3fun]
RemoveG3fun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //. Flatten[Solve[EQpprimealphaBB == 0, Derivative[2, 2][G3fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimealphaB == 0, Derivative[2, 1][G3fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaBB == 0, Derivative[1, 2][G3fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaB == 0, Derivative[1, 1][G3fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaBB == 0, Derivative[0, 2][G3fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaB == 0, Derivative[0, 1][G3fun][scalar[], X[]]]] // Expand;
tmp]


Clear[RemoveG4fun]
RemoveG4fun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //. Flatten[Solve[TimeDer[EQpprimemass2] == 0, Derivative[3, 0][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimemass2 == 0, Derivative[2, 0][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimemass2 == 0, Derivative[1, 0][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQmass2 == 0, G4fun[scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimealphaMM == 0, Derivative[2, 2][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQpprimealphaT == 0, Derivative[2, 1][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaMM == 0, Derivative[1, 2][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaT == 0, Derivative[1, 1][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaMM == 0, Derivative[0, 2][G4fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaT == 0, Derivative[0, 1][G4fun][scalar[], X[]]]];
tmp]


Clear[RemoveG5fun]
RemoveG5fun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //. Flatten[Solve[EQpprimealphaTT == 0, Derivative[2, 1][G5fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQprimealphaTT == 0, Derivative[1, 1][G5fun][scalar[], X[]]]];
tmp = tmp //. Flatten[Solve[EQalphaTT == 0, Derivative[0, 1][G5fun][scalar[], X[]]]];
tmp = tmp //.Flatten[Solve[EQpprimealphaH == 0, Derivative[2, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQprimealphaH == 0, Derivative[1, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQalphaH == 0,Derivative[0, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp]


Clear[RemoveG4tildefun]
RemoveG4tildefun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //.Flatten[Solve[EQpprimealphaH == 0, Derivative[2, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQprimealphaH == 0, Derivative[1, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQalphaH == 0,Derivative[0, 2][G4funtilde][scalar[], X[]]]] // Expand;
tmp]


(* ::Section::Closed:: *)
(*First-Order Lagrangian*)


tmp = EQL // Decomposition[1] // Simplify // Expand;
tmp = tmp //.SubRicci1 //.Subpi1 //.SubX1 // NoScalar // ToCanonical;
tmp = Expand[tmp //.SubRicci0 //.Subpi0 //.SubX0] //.restoreXinG // Expand;
EQL1 = tmp // SeparateMetric[metric\[Delta]] // ToCanonical;


tmp = Coeff[EQL1] //.SubX0;
tmp = FirstT[tmp] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert_ :> 0 // Expand;
tmp = FirstS[tmp] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert_ :> - Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert // Expand;
EQL1 = tmp //.Coeff[coeff_]:>coeff //.restoreXinG // SVTExpand // NoScalar;


tmp = EQL1;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveG4tildefun // Expand;
EQL1 = tmp // ToCanonical;
CollectPerts[EQL1 //.subback, Factor]


EQback1 = -VarD[pertpsi[LI[1]], PD][EQL1]/scale[]^4 //.delta[-LI[1],LI[1]]:>1 // Expand


EQback2 = VarD[pertphi[LI[1]], PD][EQL1]/3/scale[]^4 //.delta[-LI[1],LI[1]]:>1 // Expand


EQback3 = VarD[pertscalar[LI[1]], PD][EQL1]/scale[]^3 //.delta[-LI[1],LI[1]]:>1 // Expand


EQback4 = -VarD[pertmatter[LI[1]], PD][EQL1]/scale[]^2 //.delta[-LI[1],LI[1]]:>1 // Expand


Export[$OutputDirectory<>"EQL1.m", EQL1];
Export[$OutputDirectory<>"EQback1.m", EQback1];
Export[$OutputDirectory<>"EQback2.m", EQback2];
Export[$OutputDirectory<>"EQback3.m", EQback3];
Export[$OutputDirectory<>"EQback4.m", EQback4];


Clear[SubBack]
SubBack[expr_] := Module[{tmp},
	tmp = expr;
	tmp = tmp //.Flatten[Solve[TimeDer[EQback3]==0,pprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[EQback4==0,pprimematter[]]];
	tmp = tmp //.Flatten[Solve[EQback3==0,primedensityS[]]];
	tmp = tmp //.Flatten[Solve[EQback2==0,pressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback1==0,densityS[]]];
	tmp]


(* ::Section::Closed:: *)
(*Second-Order Lagrangian*)


(* ::Subsection::Closed:: *)
(*Calculation*)


tmp = EQL;
tmp = tmp // Decomposition[2];
tmp = tmp //.SubX0 //.restoreXinG // Expand;
tmp = tmp //.Sqrt[scale[]^n_]:>scale[]^(n/2) // Expand;
tmp = tmp  // ReplaceDummies // ToCanonical // NoScalar;
tmp // Length


tmp = Expand[tmp //.SubRicci0 //.Subpi0 //.SubX0] //.restoreXinG // Expand;
tmp = tmp //.SubRicci1 //.Subpi1 //.SubX1 // NoScalar // ToCanonical;
tmp = tmp //.SubRicci2 //.Subpi2 //.SubX2 // NoScalar // ToCanonical;
tmp = tmp //.pert_[LI[2],inds___]:>0;
EQL2 = tmp  // ReplaceDummies // ToCanonical // NoScalar;
EQL2 // Length


Export[$OutputDirectory<>"EQL2.m", EQL2];


(* ::Subsection:: *)
(*Integration by parts*)


(* ::Subsubsection::Closed:: *)
(*Preliminary*)


EQL2 = Import[$OutputDirectory<>"EQL2.m"];


EQL2 // Length


EQLSS = Table[0,21];
EQLSV = Table[0,12];
EQLST = Table[0,6];
EQLVV = Table[0,3];
EQLVT = Table[0,2];
EQLTT = Table[0,1];


EQLSS[[1]] = IsolatePerts[{pertphi,pertphi}][EQL2];
EQLSS[[2]] = IsolatePerts[{pertphi,pertpsi}][EQL2];
EQLSS[[3]] = IsolatePerts[{pertphi,pertB}][EQL2];
EQLSS[[4]] = IsolatePerts[{pertphi,pertE}][EQL2];
EQLSS[[5]] = IsolatePerts[{pertphi,pertscalar}][EQL2];
EQLSS[[6]] = IsolatePerts[{pertphi,pertmatter}][EQL2];
EQLSS[[7]] = IsolatePerts[{pertpsi,pertpsi}][EQL2];
EQLSS[[8]] = IsolatePerts[{pertpsi,pertB}][EQL2];
EQLSS[[9]] = IsolatePerts[{pertpsi,pertE}][EQL2];
EQLSS[[10]] = IsolatePerts[{pertpsi,pertscalar}][EQL2];
EQLSS[[11]] = IsolatePerts[{pertpsi,pertmatter}][EQL2];
EQLSS[[12]] = IsolatePerts[{pertB,pertB}][EQL2];
EQLSS[[13]] = IsolatePerts[{pertB,pertE}][EQL2];
EQLSS[[14]] = IsolatePerts[{pertB,pertscalar}][EQL2];
EQLSS[[15]] = IsolatePerts[{pertB,pertmatter}][EQL2];
EQLSS[[16]] = IsolatePerts[{pertE,pertE}][EQL2];
EQLSS[[17]] = IsolatePerts[{pertE,pertscalar}][EQL2];
EQLSS[[18]] = IsolatePerts[{pertE,pertmatter}][EQL2];
EQLSS[[19]] = IsolatePerts[{pertscalar,pertscalar}][EQL2];
EQLSS[[20]] = IsolatePerts[{pertscalar,pertmatter}][EQL2];
EQLSS[[21]] = IsolatePerts[{pertmatter,pertmatter}][EQL2];


EQLSV[[1]] = IsolatePerts[{pertS,pertphi}][EQL2];
EQLSV[[2]] = IsolatePerts[{pertS,pertpsi}][EQL2];
EQLSV[[3]] = IsolatePerts[{pertS,pertB}][EQL2];
EQLSV[[4]] = IsolatePerts[{pertS,pertE}][EQL2];
EQLSV[[5]] = IsolatePerts[{pertS,pertscalar}][EQL2];
EQLSV[[6]] = IsolatePerts[{pertS,pertmatter}][EQL2];
EQLSV[[7]] = IsolatePerts[{pertF,pertphi}][EQL2];
EQLSV[[8]] = IsolatePerts[{pertF,pertpsi}][EQL2];
EQLSV[[9]] = IsolatePerts[{pertF,pertB}][EQL2];
EQLSV[[10]] = IsolatePerts[{pertF,pertE}][EQL2];
EQLSV[[11]] = IsolatePerts[{pertF,pertscalar}][EQL2];
EQLSV[[12]] = IsolatePerts[{pertF,pertmatter}][EQL2];


EQLST[[1]] = IsolatePerts[{perth,pertphi}][EQL2];
EQLST[[2]] = IsolatePerts[{perth,pertpsi}][EQL2];
EQLST[[3]] = IsolatePerts[{perth,pertB}][EQL2];
EQLST[[4]] = IsolatePerts[{perth,pertE}][EQL2];
EQLST[[5]] = IsolatePerts[{perth,pertscalar}][EQL2];
EQLST[[6]] = IsolatePerts[{perth,pertmatter}][EQL2];


EQLVV[[1]] = IsolatePerts[{pertS,pertS}][EQL2];
EQLVV[[2]] = IsolatePerts[{pertS,pertF}][EQL2];
EQLVV[[3]] = IsolatePerts[{pertF,pertF}][EQL2];


EQLVT[[1]] = IsolatePerts[{perth,pertS}][EQL2];
EQLVT[[2]] = IsolatePerts[{perth,pertF}][EQL2];


EQLTT[[1]] = IsolatePerts[{perth,perth}][EQL2];


Evaluate[EQLSS //.List->Plus]+Evaluate[EQLSV //.List->Plus]+Evaluate[EQLST //.List->Plus]+Evaluate[EQLVV //.List->Plus]+Evaluate[EQLVT //.List->Plus]+Evaluate[EQLTT //.List->Plus]-EQL2


(* ::Subsubsection::Closed:: *)
(*Scalar-Scalar*)


EQLSS // Length


Clear[SSrules]
SSrules[expr_] := Module[{tmp, tmp6, tmp4, tmp2, tmp0}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp6 = tmp // NSpaceDer[6];
	tmp4 = tmp // NSpaceDer[4];
	tmp2 = tmp // NSpaceDer[2];
	tmp0 = tmp // NSpaceDer[0];
	If[tmp=!=tmp6+tmp4+tmp2+tmp0,Abort[]];
	
	Print["Doing 6 derivatives"];
	tmp6 = Coeff[tmp6] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_ PD[-l_?TangentM3`Q]@PD[-m_?TangentM3`Q]@PD[-n_?TangentM3`Q]@pert2_:> -Coeff[coeff] pert1 PD[-i]@PD[-j]@PD[-k]@PD[-l]@PD[-m]@PD[-n]@pert2;
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // Expand;

	Print["Doing 4 derivatives"];
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_ PD[-l_?TangentM3`Q]@pert2_:> -Coeff[coeff] PD[-i]@PD[-j]@pert1 PD[-k]@PD[-l]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // Expand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pert_:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@PD[-b]@pert PD[-k]@PD[-l]@PD[-c]@pert;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // Expand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@PD[-b]@pert1 PD[-k]@PD[-l]@pert2 -Coeff[coeff] PD[-i]@PD[-j]@PD[-b]@pert1 PD[-k]@PD[-l]@PD[-a]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // Expand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@pert_:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@pert PD[-k]@PD[-l]@pert;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // Expand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert2_:> Coeff[coeff] pert1 PD[-i]@PD[-j]@PD[-k]@PD[-l]@PD[-a]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@pert2_:> Coeff[coeff] pert1 PD[-i]@PD[-j]@PD[-k]@PD[-l]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] pert1_ PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@pert2_:> Coeff[coeff] PD[-i]@PD[-j]@pert1 PD[-k]@PD[-l]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;

	Print["Doing 2 derivatives"];
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_ pert2_:> -Coeff[coeff] PD[-i]@pert1 PD[-j]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert_ PD[-j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pertE[LI[1]]:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-b]@pert PD[-j]@PD[-c]@pertE[LI[1]] -Coeff[coeff] PD[-i]@PD[-b]@pert PD[-j]@PD[-a]@PD[-c]@pertE[LI[1]];
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ PD[-j_?TangentM3`Q]@pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-b]@pert1 PD[-j]@pert2 -Coeff[coeff] PD[-i]@PD[-b]@pert1 PD[-j]@PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[-j_?TangentM3`Q]@pert_:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert PD[-j]@pert;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[-j_?TangentM3`Q]@pertE[LI[1]]:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert PD[-j]@pertE[LI[1]] -Coeff[coeff] PD[-i]@pert PD[-j]@PD[-a]@pertE[LI[1]];
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[-j_?TangentM3`Q]@pertphi[LI[1]]:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert PD[-j]@pertphi[LI[1]] -Coeff[coeff] PD[-i]@pert PD[-j]@PD[-a]@pertphi[LI[1]];
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pertpsi[LI[1]] PD[-j_?TangentM3`Q]@pert_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pertpsi[LI[1]] PD[-j]@pert -Coeff[coeff] PD[-i]@pertpsi[LI[1]] PD[-j]@PD[-a]@pert;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // Expand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pertB[LI[1]] PD[-j_?TangentM3`Q]@pert_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pertB[LI[1]] PD[-j]@pert -Coeff[coeff] PD[-i]@pertB[LI[1]] PD[-j]@PD[-a]@pert;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;

	Print["Doing 0 derivatives"];
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert_ PD[-c_?TangentM1`Q]@pert_:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pert PD[-c]@pert;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pertscalar[LI[1]] PD[-c_?TangentM1`Q]@pertphi[LI[1]]:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pertscalar[LI[1]] PD[-c]@pertphi[LI[1]] -Coeff[coeff] PD[-b]@pertscalar[LI[1]] PD[-a]@PD[-c]@pertphi[LI[1]];
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pert1 pert2 -Coeff[coeff] PD[-b]@pert1 PD[-a]@pert2;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert_ pert_:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] pert pert;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pertpsi[LI[1]] pert_:> -Coeff[timevec[-a] TimeDer[coeff]] pertpsi[LI[1]] pert -Coeff[coeff] pertpsi[LI[1]] PD[-a]@pert;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pertB[LI[1]] pert_:> -Coeff[timevec[-a] TimeDer[coeff]] pertB[LI[1]] pert -Coeff[coeff] pertB[LI[1]] PD[-a]@pert;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pertscalar[LI[1]] pertphi[LI[1]]:> -Coeff[timevec[-a] TimeDer[coeff]] pertscalar[LI[1]] pertphi[LI[1]] -Coeff[coeff] pertscalar[LI[1]] PD[-a]@pertphi[LI[1]];
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // SVTExpand;
	
	tmp0+tmp2+tmp4+tmp6 //.restoreXinG // SVTExpand]


EQLSS[[1]] = EQLSS[[1]] // SSrules;


EQLSS[[2]] = EQLSS[[2]] // SSrules;


EQLSS[[3]] = EQLSS[[3]] // SSrules;


EQLSS[[4]] = EQLSS[[4]] // SSrules;


EQLSS[[5]] = EQLSS[[5]] // SSrules;


EQLSS[[6]] = EQLSS[[6]] // SSrules;


EQLSS[[7]] = EQLSS[[7]] // SSrules;


EQLSS[[8]] = EQLSS[[8]] // SSrules;


EQLSS[[9]] = EQLSS[[9]] // SSrules;


EQLSS[[10]] = EQLSS[[10]] // SSrules;


EQLSS[[11]] = EQLSS[[11]] // SSrules;


EQLSS[[12]] = EQLSS[[12]] // SSrules;


EQLSS[[13]] = EQLSS[[13]] // SSrules;


EQLSS[[14]] = EQLSS[[14]] // SSrules;


EQLSS[[15]] = EQLSS[[15]] // SSrules;


EQLSS[[16]] = EQLSS[[16]] // SSrules;


EQLSS[[17]] = EQLSS[[17]] // SSrules;


EQLSS[[18]] = EQLSS[[18]] // SSrules;


EQLSS[[19]] = EQLSS[[19]] // SSrules;


EQLSS[[20]] = EQLSS[[20]] // SSrules;


EQLSS[[21]] = EQLSS[[21]] // SSrules;


(* ::Subsubsection::Closed:: *)
(*Scalar-Vector*)


EQLSV // Length


Clear[SVrules]
SVrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-j]@PD[-k]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLSV[[1]] = EQLSV[[1]] // SVrules;
EQLSV[[2]] = EQLSV[[2]] // SVrules;
EQLSV[[3]] = EQLSV[[3]] // SVrules;
EQLSV[[4]] = EQLSV[[4]] // SVrules;
EQLSV[[5]] = EQLSV[[5]] // SVrules;
EQLSV[[6]] = EQLSV[[6]] // SVrules;
EQLSV[[7]] = EQLSV[[7]] // SVrules;
EQLSV[[8]] = EQLSV[[8]] // SVrules;
EQLSV[[9]] = EQLSV[[9]] // SVrules;
EQLSV[[10]] = EQLSV[[10]] // SVrules;
EQLSV[[11]] = EQLSV[[11]] // SVrules;
EQLSV[[12]] = EQLSV[[12]] // SVrules;


EQLSV


(* ::Subsubsection::Closed:: *)
(*Scalar-Tensor*)


EQLST // Length


Clear[STrules]
STrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-j]@PD[-k]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:>-Coeff[coeff] pert1[LI[1]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLST[[1]] = EQLST[[1]] // STrules;
EQLST[[2]] = EQLST[[2]] // STrules;
EQLST[[3]] = EQLST[[3]] // STrules;
EQLST[[4]] = EQLST[[4]] // STrules;
EQLST[[5]] = EQLST[[5]] // STrules;
EQLST[[6]] = EQLST[[6]] // STrules;


EQLST


(* ::Subsubsection::Closed:: *)
(*Vector-Vector*)


EQLVV // Length


Clear[VVrules]
VVrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_ PD[-k_?TangentM3`Q]@PD[-l_?TangentM3`Q]@pert2_:> Coeff[coeff] pert1 PD[-i]@PD[-j]@PD[-k]@PD[-l]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // Expand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ PD[-j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pert2_:> -Coeff[coeff] PD[-a]@PD[-b]@pert1 PD[-i]@PD[-j]@PD[-c]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pert2_:> -Coeff[coeff] PD[-i]@PD[-a]@PD[-b]@pert1 PD[-j]@PD[-c]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert_[LI[1],k_] PD[-j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pert_[LI[1],l_]:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-b]@pert[LI[1],k] PD[-j]@PD[-c]@pert[LI[1],l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_ PD[-j_?TangentM3`Q]@pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-b]@pert1 PD[-j]@pert2 -Coeff[coeff] PD[-i]@PD[-b]@pert1 PD[-j]@PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_ PD[-j_?TangentM3`Q]@PD[-b_?TangentM1`Q]@pert2_:> -Coeff[coeff] PD[-a]@pert1 PD[-i]@PD[-j]@PD[-b]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert1_ PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-b_?TangentM1`Q]@pert2_:> -Coeff[coeff] PD[-i]@PD[-a]@pert1 PD[-j]@PD[-b]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_ PD[-j_?TangentM3`Q]@pert2_:> -Coeff[coeff] PD[-a]@pert1 PD[-i]@PD[-j]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert1_ PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert2_:> -Coeff[coeff] PD[-i]@PD[-a]@pert1 PD[-j]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_ pert2_:> -Coeff[coeff] PD[-i]@PD[-a]@pert1 PD[-j]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_[LI[1],k_] PD[-j_?TangentM3`Q]@pert_[LI[1],l_]:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert[LI[1],k] PD[-j]@pert[LI[1],l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_ PD[-j_?TangentM3`Q]@pert2_:> -Coeff[coeff] pert1 PD[-i]@PD[-j]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] pert1_ PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert2_:> -Coeff[coeff] PD[-i]@pert1 PD[-j]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert_[LI[1],k_] pert_[LI[1],l_]:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] pert[LI[1],k] pert[LI[1],l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp //.restoreXinG // SVTExpand]


EQLVV[[1]] = EQLVV[[1]] // VVrules;


EQLVV[[2]] = EQLVV[[2]] // VVrules;


EQLVV[[3]] = EQLVV[[3]] // VVrules;


(* ::Subsubsection::Closed:: *)
(*Vector-Tensor*)


EQLVT // Length


Clear[VTrules]
VTrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1],j_] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[1],j] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[1],j_] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[1],j] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1],k_] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[1],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1],j_] pert2_:>-Coeff[coeff] pert1[LI[1],j] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLVT[[1]] = EQLVT[[1]] // VTrules;
EQLVT[[2]] = EQLVT[[2]] // VTrules;


EQLVT


(* ::Subsubsection::Closed:: *)
(*Tensor-Tensor*)


EQLTT // Length


Clear[TTrules]
TTrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@perth[LI[1],i_,j_] PD[-m_?TangentM3`Q]@PD[-n_?TangentM3`Q]@perth[LI[1],k_,l_]:> 1/2 Coeff[timevec[-a] TimeDer[coeff]] PD[-n]@perth[LI[1],i,j] PD[-m]@perth[LI[1],k,l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] perth[LI[1],i_,j_] PD[-m_?TangentM3`Q]@PD[-n_?TangentM3`Q]@perth[LI[1],k_,l_]:> - Coeff[coeff] PD[-n]@perth[LI[1],i,j] PD[-m]@perth[LI[1],k,l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@perth[LI[1],i_,j_] PD[-b_?TangentM1`Q]@PD[-c_?TangentM1`Q]@perth[LI[1],k_,l_]:> - 1/2 Coeff[timevec[-c] TimeDer[coeff]] PD[-a]@perth[LI[1],i,j] PD[-b]@perth[LI[1],k,l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] perth[LI[1],i_,j_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@perth[LI[1],k_,l_]:> - Coeff[timevec[-b] TimeDer[coeff perth[LI[1],i,j]]] PD[-a]@perth[LI[1],k,l];
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] perth[LI[1],i_,j_] PD[-a_?TangentM1`Q]@perth[LI[1],k_,l_]:> -1/2 Coeff[timevec[-a] TimeDer[coeff]] perth[LI[1],i,j] perth[LI[1],k,l];
	tmp = Coeff[tmp] //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[ContractMetric[tmp]] //.Coeff[coeff_] ten1_ ten2_/;(Intersection[-IndicesOf[PD][ten1 ten2] //.IndexList->List,IndicesOf[perth][ten1 ten2] //.IndexList->List]!={}):>0;
	tmp = Coeff[tmp] //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp //.restoreXinG // Expand]


EQLTT[[1]] = EQLTT[[1]] // TTrules;


(* ::Subsection:: *)
(*Introduce Alphas*)


EQL2 = Evaluate[EQLSS //.List->Plus]+Evaluate[EQLSV //.List->Plus]+Evaluate[EQLST //.List->Plus]+Evaluate[EQLVV //.List->Plus]+Evaluate[EQLVT //.List->Plus]+Evaluate[EQLTT //.List->Plus];


tmp = EQL2;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveG4tildefun // Expand;
EQL2 = tmp // SubBack // SVTExpand;
CollectPerts[EQL2,{mass2[]},Factor]


Export[$OutputDirectory<>"EQL2.m", EQL2];


(* ::Subsection:: *)
(*Equations of motion*)


EQL2 = Import[$OutputDirectory<>"EQL2.m"];


EQfirst1 = -VarD[pertpsi[LI[1]], PD][EQL2]/scale[]^2/2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
CollectPerts[EQfirst1,{mass2[]},Factor]


EQfirst2 = -VarD[pertB[LI[1]], PD][EQL2]/scale[]^3/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst2 = EQfirst2/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst2,{mass2[]},Factor]


EQfirst3 = -VarD[pertE[LI[1]], PD][EQL2]/scale[]^4/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst3 = EQfirst3/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst3,{mass2[]},Factor]


EQfirst4 = -VarD[pertphi[LI[1]], PD][EQL2]/scale[]^4/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst4 = metric\[Delta][i,j] PD[-i]@PD[-j]@EQfirst4/kscal[]^2 // FourierT // SVTExpand // ReplaceDummies;
EQfirst4 = scale[]^2 (EQfirst4+3 EQfirst3)/kscal[]^2 // SVTExpand // ReplaceDummies;
CollectPerts[EQfirst4,{mass2[]},Factor]


EQfirst5 = -VarD[pertS[LI[1],i], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst5 = EQfirst5/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst5,{mass2[]},Factor]


EQfirst6 = -VarD[pertF[LI[1],i], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst6 = EQfirst6/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst6,{mass2[]},Factor]


EQfirst7 = -2 VarD[perth[LI[1],i,j], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
CollectPerts[EQfirst7,{mass2[]},Factor]


Export[$OutputDirectory<>"EQfirst1.m", EQfirst1];
Export[$OutputDirectory<>"EQfirst2.m", EQfirst2];
Export[$OutputDirectory<>"EQfirst3.m", EQfirst3];
Export[$OutputDirectory<>"EQfirst4.m", EQfirst4];
Export[$OutputDirectory<>"EQfirst5.m", EQfirst5];
Export[$OutputDirectory<>"EQfirst6.m", EQfirst6];
Export[$OutputDirectory<>"EQfirst7.m", EQfirst7];


(* ::Section:: *)
(*Third-Order Lagrangian*)


(* ::Subsection::Closed:: *)
(*Calculation*)


tmp = EQL;
tmp = tmp //.Plus->List;
For[count=1, count<=Length[tmp], count++,
	tmp[[count]] = tmp[[count]] // Decomposition[3];
	tmp[[count]] = tmp[[count]] //.SubX0 //.restoreXinG // Expand;
	tmp[[count]] = tmp[[count]] //.Sqrt[scale[]^n_]:>scale[]^(n/2) // Expand;
	tmp[[count]] = tmp[[count]]  // ReplaceDummies // ToCanonical // NoScalar;
	Print[count];
]
EQL3 = tmp //.List->Plus;
EQL3 // Length


Export[$OutputDirectory<>"EQL3.m", EQL3];


tmp = EQL3 //.Plus->List;
For[count=1, count<=Length[tmp], count++,
	tmp[[count]] = Expand[tmp[[count]] //.SubRicci0 //.Subpi0 //.SubX0] //.restoreXinG // Expand;
	tmp[[count]] = tmp[[count]] //.SubRicci1 //.Subpi1 //.SubX1 // NoScalar // Expand;
	tmp[[count]] = tmp[[count]] //.SubRicci2 //.Subpi2 //.SubX2 // NoScalar // Expand;
	tmp[[count]] = tmp[[count]] //.SubRicci3 //.Subpi3 //.SubX3 // NoScalar;
	tmp[[count]] = tmp[[count]] //.pert_[LI[3],inds___]:>0 // ToCanonical;
	tmp[[count]] = tmp[[count]]  // ReplaceDummies // ToCanonical // NoScalar;
	If[Mod[count,10]==0,Print[count];];
]
Print["Done!"];
tmp = tmp //.List->Plus;
tmp = tmp // Expand;
Print[Length[tmp]];
EQL3 = tmp  // ReplaceDummies // ToCanonical // NoScalar;
Length[EQL3]


Export[$OutputDirectory<>"EQL3.m", EQL3];


(* ::Subsection:: *)
(*Integration by parts*)


(* ::Subsubsection::Closed:: *)
(*Preliminary*)


EQL3 = Import[$OutputDirectory<>"EQL3.m"];


EQL3 // Length


EQL31 = EQL3 //.pert_[LI[2],inds___]:>0;
EQL32 = EQL3 - EQL31 // ToCanonical;
EQL31 // Length
EQL32 // Length


EQLSS = Table[0,21];
EQLSV = Table[0,12];
EQLST = Table[0,6];
EQLVV = Table[0,3];
EQLVT = Table[0,2];
EQLTT = Table[0,1];


EQLSS[[1]] = IsolatePerts[{pertphi,pertphi}][EQL32];
EQLSS[[2]] = IsolatePerts[{pertphi,pertpsi}][EQL32];
EQLSS[[3]] = IsolatePerts[{pertphi,pertB}][EQL32];
EQLSS[[4]] = IsolatePerts[{pertphi,pertE}][EQL32];
EQLSS[[5]] = IsolatePerts[{pertphi,pertscalar}][EQL32];
EQLSS[[6]] = IsolatePerts[{pertphi,pertmatter}][EQL32];
EQLSS[[7]] = IsolatePerts[{pertpsi,pertpsi}][EQL32];
EQLSS[[8]] = IsolatePerts[{pertpsi,pertB}][EQL32];
EQLSS[[9]] = IsolatePerts[{pertpsi,pertE}][EQL32];
EQLSS[[10]] = IsolatePerts[{pertpsi,pertscalar}][EQL32];
EQLSS[[11]] = IsolatePerts[{pertpsi,pertmatter}][EQL32];
EQLSS[[12]] = IsolatePerts[{pertB,pertB}][EQL32];
EQLSS[[13]] = IsolatePerts[{pertB,pertE}][EQL32];
EQLSS[[14]] = IsolatePerts[{pertB,pertscalar}][EQL32];
EQLSS[[15]] = IsolatePerts[{pertB,pertmatter}][EQL32];
EQLSS[[16]] = IsolatePerts[{pertE,pertE}][EQL32];
EQLSS[[17]] = IsolatePerts[{pertE,pertscalar}][EQL32];
EQLSS[[18]] = IsolatePerts[{pertE,pertmatter}][EQL32];
EQLSS[[19]] = IsolatePerts[{pertscalar,pertscalar}][EQL32];
EQLSS[[20]] = IsolatePerts[{pertscalar,pertmatter}][EQL32];
EQLSS[[21]] = IsolatePerts[{pertmatter,pertmatter}][EQL32];


EQLSV[[1]] = IsolatePerts[{pertS,pertphi}][EQL32];
EQLSV[[2]] = IsolatePerts[{pertS,pertpsi}][EQL32];
EQLSV[[3]] = IsolatePerts[{pertS,pertB}][EQL32];
EQLSV[[4]] = IsolatePerts[{pertS,pertE}][EQL32];
EQLSV[[5]] = IsolatePerts[{pertS,pertscalar}][EQL32];
EQLSV[[6]] = IsolatePerts[{pertS,pertmatter}][EQL32];
EQLSV[[7]] = IsolatePerts[{pertF,pertphi}][EQL32];
EQLSV[[8]] = IsolatePerts[{pertF,pertpsi}][EQL32];
EQLSV[[9]] = IsolatePerts[{pertF,pertB}][EQL32];
EQLSV[[10]] = IsolatePerts[{pertF,pertE}][EQL32];
EQLSV[[11]] = IsolatePerts[{pertF,pertscalar}][EQL32];
EQLSV[[12]] = IsolatePerts[{pertF,pertmatter}][EQL32];


EQLST[[1]] = IsolatePerts[{perth,pertphi}][EQL32];
EQLST[[2]] = IsolatePerts[{perth,pertpsi}][EQL32];
EQLST[[3]] = IsolatePerts[{perth,pertB}][EQL32];
EQLST[[4]] = IsolatePerts[{perth,pertE}][EQL32];
EQLST[[5]] = IsolatePerts[{perth,pertscalar}][EQL32];
EQLST[[6]] = IsolatePerts[{perth,pertmatter}][EQL32];


EQLVV[[1]] = IsolatePerts[{pertS,pertS}][EQL32];
EQLVV[[2]] = IsolatePerts[{pertS,pertF}][EQL32];
EQLVV[[3]] = IsolatePerts[{pertF,pertF}][EQL32];


EQLVT[[1]] = IsolatePerts[{perth,pertS}][EQL32];
EQLVT[[2]] = IsolatePerts[{perth,pertF}][EQL32];


EQLTT[[1]] = IsolatePerts[{perth,perth}][EQL32];


EQLSSS = Table[0,56];
EQLSSV = Table[0,42];
EQLSST = Table[0,21];
EQLSVV = Table[0,18];
EQLSVT = Table[0,12];
EQLSTT = Table[0,6];
EQLVVV = Table[0,4];
EQLVVT = Table[0,3];
EQLVTT = Table[0,2];
EQLTTT = Table[0,1];


(*** SSS ***)


EQLSSS[[1]] = IsolatePerts[{pertphi,pertphi,pertphi}][EQL31];
EQLSSS[[2]] = IsolatePerts[{pertphi,pertphi,pertpsi}][EQL31];
EQLSSS[[3]] = IsolatePerts[{pertphi,pertphi,pertB}][EQL31];
EQLSSS[[4]] = IsolatePerts[{pertphi,pertphi,pertE}][EQL31];
EQLSSS[[5]] = IsolatePerts[{pertphi,pertphi,pertscalar}][EQL31];
EQLSSS[[6]] = IsolatePerts[{pertphi,pertphi,pertmatter}][EQL31];
EQLSSS[[7]] = IsolatePerts[{pertphi,pertpsi,pertpsi}][EQL31];
EQLSSS[[8]] = IsolatePerts[{pertphi,pertpsi,pertB}][EQL31];
EQLSSS[[9]] = IsolatePerts[{pertphi,pertpsi,pertE}][EQL31];
EQLSSS[[10]] = IsolatePerts[{pertphi,pertpsi,pertscalar}][EQL31];
EQLSSS[[11]] = IsolatePerts[{pertphi,pertpsi,pertmatter}][EQL31];
EQLSSS[[12]] = IsolatePerts[{pertphi,pertB,pertB}][EQL31];
EQLSSS[[13]] = IsolatePerts[{pertphi,pertB,pertE}][EQL31];
EQLSSS[[14]] = IsolatePerts[{pertphi,pertB,pertscalar}][EQL31];
EQLSSS[[15]] = IsolatePerts[{pertphi,pertB,pertmatter}][EQL31];
EQLSSS[[16]] = IsolatePerts[{pertphi,pertE,pertE}][EQL31];
EQLSSS[[17]] = IsolatePerts[{pertphi,pertE,pertscalar}][EQL31];
EQLSSS[[18]] = IsolatePerts[{pertphi,pertE,pertmatter}][EQL31];
EQLSSS[[19]] = IsolatePerts[{pertphi,pertscalar,pertscalar}][EQL31];
EQLSSS[[20]] = IsolatePerts[{pertphi,pertscalar,pertmatter}][EQL31];
EQLSSS[[21]] = IsolatePerts[{pertphi,pertmatter,pertmatter}][EQL31];


EQLSSS[[22]] = IsolatePerts[{pertpsi,pertpsi,pertpsi}][EQL31];
EQLSSS[[23]] = IsolatePerts[{pertpsi,pertpsi,pertB}][EQL31];
EQLSSS[[24]] = IsolatePerts[{pertpsi,pertpsi,pertE}][EQL31];
EQLSSS[[25]] = IsolatePerts[{pertpsi,pertpsi,pertscalar}][EQL31];
EQLSSS[[26]] = IsolatePerts[{pertpsi,pertpsi,pertmatter}][EQL31];
EQLSSS[[27]] = IsolatePerts[{pertpsi,pertB,pertB}][EQL31];
EQLSSS[[28]] = IsolatePerts[{pertpsi,pertB,pertE}][EQL31];
EQLSSS[[29]] = IsolatePerts[{pertpsi,pertB,pertscalar}][EQL31];
EQLSSS[[30]] = IsolatePerts[{pertpsi,pertB,pertmatter}][EQL31];
EQLSSS[[31]] = IsolatePerts[{pertpsi,pertE,pertE}][EQL31];
EQLSSS[[32]] = IsolatePerts[{pertpsi,pertE,pertscalar}][EQL31];
EQLSSS[[33]] = IsolatePerts[{pertpsi,pertE,pertmatter}][EQL31];
EQLSSS[[34]] = IsolatePerts[{pertpsi,pertscalar,pertscalar}][EQL31];
EQLSSS[[35]] = IsolatePerts[{pertpsi,pertscalar,pertmatter}][EQL31];
EQLSSS[[36]] = IsolatePerts[{pertpsi,pertmatter,pertmatter}][EQL31];


EQLSSS[[37]] = IsolatePerts[{pertB,pertB,pertB}][EQL31];
EQLSSS[[38]] = IsolatePerts[{pertB,pertB,pertE}][EQL31];
EQLSSS[[39]] = IsolatePerts[{pertB,pertB,pertscalar}][EQL31];
EQLSSS[[40]] = IsolatePerts[{pertB,pertB,pertmatter}][EQL31];
EQLSSS[[41]] = IsolatePerts[{pertB,pertE,pertE}][EQL31];
EQLSSS[[42]] = IsolatePerts[{pertB,pertE,pertscalar}][EQL31];
EQLSSS[[43]] = IsolatePerts[{pertB,pertE,pertmatter}][EQL31];
EQLSSS[[44]] = IsolatePerts[{pertB,pertscalar,pertscalar}][EQL31];
EQLSSS[[45]] = IsolatePerts[{pertB,pertscalar,pertmatter}][EQL31];
EQLSSS[[46]] = IsolatePerts[{pertB,pertmatter,pertmatter}][EQL31];


EQLSSS[[47]] = IsolatePerts[{pertE,pertE,pertE}][EQL31];
EQLSSS[[48]] = IsolatePerts[{pertE,pertE,pertscalar}][EQL31];
EQLSSS[[49]] = IsolatePerts[{pertE,pertE,pertmatter}][EQL31];
EQLSSS[[50]] = IsolatePerts[{pertE,pertscalar,pertscalar}][EQL31];
EQLSSS[[51]] = IsolatePerts[{pertE,pertscalar,pertmatter}][EQL31];
EQLSSS[[52]] = IsolatePerts[{pertE,pertmatter,pertmatter}][EQL31];


EQLSSS[[53]] = IsolatePerts[{pertscalar,pertscalar,pertscalar}][EQL31];
EQLSSS[[54]] = IsolatePerts[{pertscalar,pertscalar,pertmatter}][EQL31];
EQLSSS[[55]] = IsolatePerts[{pertscalar,pertmatter,pertmatter}][EQL31];


EQLSSS[[56]] = IsolatePerts[{pertmatter,pertmatter,pertmatter}][EQL31];


(*** SSV ***)


EQLSSV[[1]] = IsolatePerts[{pertphi,pertphi,pertS}][EQL31];
EQLSSV[[2]] = IsolatePerts[{pertphi,pertphi,pertF}][EQL31];
EQLSSV[[3]] = IsolatePerts[{pertphi,pertpsi,pertS}][EQL31];
EQLSSV[[4]] = IsolatePerts[{pertphi,pertpsi,pertF}][EQL31];
EQLSSV[[5]] = IsolatePerts[{pertphi,pertB,pertS}][EQL31];
EQLSSV[[6]] = IsolatePerts[{pertphi,pertB,pertF}][EQL31];
EQLSSV[[7]] = IsolatePerts[{pertphi,pertE,pertS}][EQL31];
EQLSSV[[8]] = IsolatePerts[{pertphi,pertE,pertF}][EQL31];
EQLSSV[[9]] = IsolatePerts[{pertphi,pertscalar,pertS}][EQL31];
EQLSSV[[10]] = IsolatePerts[{pertphi,pertscalar,pertF}][EQL31];
EQLSSV[[11]] = IsolatePerts[{pertphi,pertmatter,pertS}][EQL31];
EQLSSV[[12]] = IsolatePerts[{pertphi,pertmatter,pertF}][EQL31];


EQLSSV[[13]] = IsolatePerts[{pertpsi,pertpsi,pertS}][EQL31];
EQLSSV[[14]] = IsolatePerts[{pertpsi,pertpsi,pertF}][EQL31];
EQLSSV[[15]] = IsolatePerts[{pertpsi,pertB,pertS}][EQL31];
EQLSSV[[16]] = IsolatePerts[{pertpsi,pertB,pertF}][EQL31];
EQLSSV[[17]] = IsolatePerts[{pertpsi,pertE,pertS}][EQL31];
EQLSSV[[18]] = IsolatePerts[{pertpsi,pertE,pertF}][EQL31];
EQLSSV[[19]] = IsolatePerts[{pertpsi,pertscalar,pertS}][EQL31];
EQLSSV[[20]] = IsolatePerts[{pertpsi,pertscalar,pertF}][EQL31];
EQLSSV[[21]] = IsolatePerts[{pertpsi,pertmatter,pertS}][EQL31];
EQLSSV[[22]] = IsolatePerts[{pertpsi,pertmatter,pertF}][EQL31];


EQLSSV[[23]] = IsolatePerts[{pertB,pertB,pertS}][EQL31];
EQLSSV[[24]] = IsolatePerts[{pertB,pertB,pertF}][EQL31];
EQLSSV[[25]] = IsolatePerts[{pertB,pertE,pertS}][EQL31];
EQLSSV[[26]] = IsolatePerts[{pertB,pertE,pertF}][EQL31];
EQLSSV[[27]] = IsolatePerts[{pertB,pertscalar,pertS}][EQL31];
EQLSSV[[28]] = IsolatePerts[{pertB,pertscalar,pertF}][EQL31];
EQLSSV[[29]] = IsolatePerts[{pertB,pertmatter,pertS}][EQL31];
EQLSSV[[30]] = IsolatePerts[{pertB,pertmatter,pertF}][EQL31];


EQLSSV[[31]] = IsolatePerts[{pertE,pertE,pertS}][EQL31];
EQLSSV[[32]] = IsolatePerts[{pertE,pertE,pertF}][EQL31];
EQLSSV[[33]] = IsolatePerts[{pertE,pertscalar,pertS}][EQL31];
EQLSSV[[34]] = IsolatePerts[{pertE,pertscalar,pertF}][EQL31];
EQLSSV[[35]] = IsolatePerts[{pertE,pertmatter,pertS}][EQL31];
EQLSSV[[36]] = IsolatePerts[{pertE,pertmatter,pertF}][EQL31];


EQLSSV[[37]] = IsolatePerts[{pertscalar,pertscalar,pertS}][EQL31];
EQLSSV[[38]] = IsolatePerts[{pertscalar,pertscalar,pertF}][EQL31];
EQLSSV[[39]] = IsolatePerts[{pertscalar,pertmatter,pertS}][EQL31];
EQLSSV[[40]] = IsolatePerts[{pertscalar,pertmatter,pertF}][EQL31];


EQLSSV[[41]] = IsolatePerts[{pertmatter,pertmatter,pertS}][EQL31];
EQLSSV[[42]] = IsolatePerts[{pertmatter,pertmatter,pertF}][EQL31];


(*** SST ***)


EQLSST[[1]] = IsolatePerts[{pertphi,pertphi,perth}][EQL31];
EQLSST[[2]] = IsolatePerts[{pertphi,pertpsi,perth}][EQL31];
EQLSST[[3]] = IsolatePerts[{pertphi,pertB,perth}][EQL31];
EQLSST[[4]] = IsolatePerts[{pertphi,pertE,perth}][EQL31];
EQLSST[[5]] = IsolatePerts[{pertphi,pertscalar,perth}][EQL31];
EQLSST[[6]] = IsolatePerts[{pertphi,pertmatter,perth}][EQL31];
EQLSST[[7]] = IsolatePerts[{pertpsi,pertpsi,perth}][EQL31];
EQLSST[[8]] = IsolatePerts[{pertpsi,pertB,perth}][EQL31];
EQLSST[[9]] = IsolatePerts[{pertpsi,pertE,perth}][EQL31];
EQLSST[[10]] = IsolatePerts[{pertpsi,pertscalar,perth}][EQL31];
EQLSST[[11]] = IsolatePerts[{pertpsi,pertmatter,perth}][EQL31];
EQLSST[[12]] = IsolatePerts[{pertB,pertB,perth}][EQL31];
EQLSST[[13]] = IsolatePerts[{pertB,pertE,perth}][EQL31];
EQLSST[[14]] = IsolatePerts[{pertB,pertscalar,perth}][EQL31];
EQLSST[[15]] = IsolatePerts[{pertB,pertmatter,perth}][EQL31];
EQLSST[[16]] = IsolatePerts[{pertE,pertE,perth}][EQL31];
EQLSST[[17]] = IsolatePerts[{pertE,pertscalar,perth}][EQL31];
EQLSST[[18]] = IsolatePerts[{pertE,pertmatter,perth}][EQL31];
EQLSST[[19]] = IsolatePerts[{pertscalar,pertscalar,perth}][EQL31];
EQLSST[[20]] = IsolatePerts[{pertscalar,pertmatter,perth}][EQL31];
EQLSST[[21]] = IsolatePerts[{pertmatter,pertmatter,perth}][EQL31];


(*** SVV ***)


EQLSVV[[1]] = IsolatePerts[{pertphi,pertS,pertS}][EQL31];
EQLSVV[[2]] = IsolatePerts[{pertphi,pertS,pertF}][EQL31];
EQLSVV[[3]] = IsolatePerts[{pertphi,pertF,pertF}][EQL31];
EQLSVV[[4]] = IsolatePerts[{pertpsi,pertS,pertS}][EQL31];
EQLSVV[[5]] = IsolatePerts[{pertpsi,pertS,pertF}][EQL31];
EQLSVV[[6]] = IsolatePerts[{pertpsi,pertF,pertF}][EQL31];
EQLSVV[[7]] = IsolatePerts[{pertB,pertS,pertS}][EQL31];
EQLSVV[[8]] = IsolatePerts[{pertB,pertS,pertF}][EQL31];
EQLSVV[[9]] = IsolatePerts[{pertB,pertF,pertF}][EQL31];
EQLSVV[[10]] = IsolatePerts[{pertE,pertS,pertS}][EQL31];
EQLSVV[[11]] = IsolatePerts[{pertE,pertS,pertF}][EQL31];
EQLSVV[[12]] = IsolatePerts[{pertE,pertF,pertF}][EQL31];
EQLSVV[[13]] = IsolatePerts[{pertscalar,pertS,pertS}][EQL31];
EQLSVV[[14]] = IsolatePerts[{pertscalar,pertS,pertF}][EQL31];
EQLSVV[[15]] = IsolatePerts[{pertscalar,pertF,pertF}][EQL31];
EQLSVV[[16]] = IsolatePerts[{pertmatter,pertS,pertS}][EQL31];
EQLSVV[[17]] = IsolatePerts[{pertmatter,pertS,pertF}][EQL31];
EQLSVV[[18]] = IsolatePerts[{pertmatter,pertF,pertF}][EQL31];


(*** SVT ***)


EQLSVT[[1]] = IsolatePerts[{pertphi,pertS,perth}][EQL31];
EQLSVT[[2]] = IsolatePerts[{pertphi,pertF,perth}][EQL31];
EQLSVT[[3]] = IsolatePerts[{pertpsi,pertS,perth}][EQL31];
EQLSVT[[4]] = IsolatePerts[{pertpsi,pertF,perth}][EQL31];
EQLSVT[[5]] = IsolatePerts[{pertB,pertS,perth}][EQL31];
EQLSVT[[6]] = IsolatePerts[{pertB,pertF,perth}][EQL31];
EQLSVT[[7]] = IsolatePerts[{pertE,pertS,perth}][EQL31];
EQLSVT[[8]] = IsolatePerts[{pertE,pertF,perth}][EQL31];
EQLSVT[[9]] = IsolatePerts[{pertscalar,pertS,perth}][EQL31];
EQLSVT[[10]] = IsolatePerts[{pertscalar,pertF,perth}][EQL31];
EQLSVT[[11]] = IsolatePerts[{pertmatter,pertS,perth}][EQL31];
EQLSVT[[12]] = IsolatePerts[{pertmatter,pertF,perth}][EQL31];


(*** STT ***)


EQLSTT[[1]] = IsolatePerts[{pertphi,perth,perth}][EQL31];
EQLSTT[[2]] = IsolatePerts[{pertpsi,perth,perth}][EQL31];
EQLSTT[[3]] = IsolatePerts[{pertB,perth,perth}][EQL31];
EQLSTT[[4]] = IsolatePerts[{pertE,perth,perth}][EQL31];
EQLSTT[[5]] = IsolatePerts[{pertscalar,perth,perth}][EQL31];
EQLSTT[[6]] = IsolatePerts[{pertmatter,perth,perth}][EQL31];


(*** VVV ***)


EQLVVV[[1]] = IsolatePerts[{pertS,pertS,pertS}][EQL31];
EQLVVV[[2]] = IsolatePerts[{pertS,pertS,pertF}][EQL31];
EQLVVV[[3]] = IsolatePerts[{pertS,pertF,pertF}][EQL31];
EQLVVV[[4]] = IsolatePerts[{pertF,pertF,pertF}][EQL31];


(*** VVT ***)


EQLVVT[[1]] = IsolatePerts[{pertS,pertS,perth}][EQL31];
EQLVVT[[2]] = IsolatePerts[{pertS,pertF,perth}][EQL31];
EQLVVT[[3]] = IsolatePerts[{pertF,pertF,perth}][EQL31];


(*** VTT ***)


EQLVTT[[1]] = IsolatePerts[{pertS,perth,perth}][EQL31];
EQLVTT[[2]] = IsolatePerts[{pertF,perth,perth}][EQL31];


(*** TTT ***)


EQLTTT[[1]] = IsolatePerts[{perth,perth,perth}][EQL31];


(*** Check ***)


Evaluate[EQLSS //.List->Plus]+Evaluate[EQLSV //.List->Plus]+Evaluate[EQLST //.List->Plus]+Evaluate[EQLVV //.List->Plus]+Evaluate[EQLVT //.List->Plus]+Evaluate[EQLTT //.List->Plus]-EQL32


Evaluate[EQLSSS //.List->Plus]+Evaluate[EQLSSV //.List->Plus]+Evaluate[EQLSST //.List->Plus]+Evaluate[EQLSVV //.List->Plus]+Evaluate[EQLSVT //.List->Plus]+Evaluate[EQLSTT //.List->Plus]+Evaluate[EQLVVV //.List->Plus]+Evaluate[EQLVVT //.List->Plus]+Evaluate[EQLVTT //.List->Plus]+Evaluate[EQLTTT //.List->Plus]-EQL31


Export[$OutputDirectory<>"EQLSS.m", EQLSS];
Export[$OutputDirectory<>"EQLSV.m", EQLSV];
Export[$OutputDirectory<>"EQLST.m", EQLST];
Export[$OutputDirectory<>"EQLVV.m", EQLVV];
Export[$OutputDirectory<>"EQLVT.m", EQLVT];
Export[$OutputDirectory<>"EQLTT.m", EQLTT];


Export[$OutputDirectory<>"EQLSSS.m", EQLSSS];
Export[$OutputDirectory<>"EQLSSV.m", EQLSSV];
Export[$OutputDirectory<>"EQLSST.m", EQLSST];
Export[$OutputDirectory<>"EQLSVV.m", EQLSVV];
Export[$OutputDirectory<>"EQLSVT.m", EQLSVT];
Export[$OutputDirectory<>"EQLSTT.m", EQLSTT];
Export[$OutputDirectory<>"EQLVVV.m", EQLVVV];
Export[$OutputDirectory<>"EQLVVT.m", EQLVVT];
Export[$OutputDirectory<>"EQLVTT.m", EQLVTT];
Export[$OutputDirectory<>"EQLTTT.m", EQLTTT];


(* ::Subsubsection::Closed:: *)
(*Scalar-Scalar*)


EQLSS // Length


Clear[SSrules]
SSrules[expr_] := Module[{tmp, tmp6, tmp4, tmp2, tmp0}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp6 = tmp // NSpaceDer[6];
	tmp4 = tmp // NSpaceDer[4];
	tmp2 = tmp // NSpaceDer[2];
	tmp0 = tmp // NSpaceDer[0];
	If[tmp=!=tmp6+tmp4+tmp2+tmp0,Abort[]];
	
	Print["Doing 6 derivatives"];
	tmp6 = Coeff[tmp6] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] pert1[LI[1]] PD[-i]@PD[-j]@PD[-k]@pert2;
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // Expand;

	Print["Doing 4 derivatives"];
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1]] PD[-a]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@PD[-j]@pert1[LI[1]] PD[-a]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@pert1[LI[1]] PD[-a]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] PD[-i]@PD[-j]@pert1[LI[1]] PD[-k]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] PD[-i]@pert1[LI[1]] PD[-j]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp4 = FirstT[Coeff[tmp4]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] pert1[LI[1]] PD[-i]@pert2;
	tmp4 = tmp4 //.Coeff[coeff_]:>coeff // SVTExpand;

	Print["Doing 2 derivatives"];
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1]] PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-b]@pert1[LI[1]] PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@PD[-j]@pert1[LI[1]] PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-i]@pert1[LI[1]] PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] pert1[LI[1]] pert2 -Coeff[coeff] pert1[LI[1]] PD[-a]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] PD[-i]@pert1[LI[1]] PD[-j]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp2 = FirstT[Coeff[tmp2]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1]] pert2_:> -Coeff[coeff] pert1[LI[1]] PD[-i]@pert2;
	tmp2 = tmp2 //.Coeff[coeff_]:>coeff // SVTExpand;

	Print["Doing 0 derivatives"];
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pert1[LI[1]] pert2 -Coeff[coeff] PD[-b]@pert1[LI[1]] PD[-a]@pert2;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	tmp0 = FirstT[Coeff[tmp0]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert1_[LI[1]] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] pert1[LI[1]] pert2 -Coeff[coeff] pert1[LI[1]] PD[-a]@pert2;
	tmp0 = tmp0 //.Coeff[coeff_]:>coeff // Expand;
	
	tmp0+tmp2+tmp4+tmp6 //.restoreXinG // SVTExpand]


EQLSS[[1]] = EQLSS[[1]] // SSrules;


EQLSS[[2]] = EQLSS[[2]] // SSrules;


EQLSS[[3]] = EQLSS[[3]] // SSrules;


EQLSS[[4]] = EQLSS[[4]] // SSrules;


EQLSS[[5]] = EQLSS[[5]] // SSrules;


EQLSS[[6]] = EQLSS[[6]] // SSrules;


EQLSS[[7]] = EQLSS[[7]] // SSrules;


EQLSS[[8]] = EQLSS[[8]] // SSrules;


EQLSS[[9]] = EQLSS[[9]] // SSrules;


EQLSS[[10]] = EQLSS[[10]] // SSrules;


EQLSS[[11]] = EQLSS[[11]] // SSrules;


EQLSS[[12]] = EQLSS[[12]] // SSrules;


EQLSS[[13]] = EQLSS[[13]] // SSrules;


EQLSS[[14]] = EQLSS[[14]] // SSrules;


EQLSS[[15]] = EQLSS[[15]] // SSrules;


EQLSS[[16]] = EQLSS[[16]] // SSrules;


EQLSS[[17]] = EQLSS[[17]] // SSrules;


EQLSS[[18]] = EQLSS[[18]] // SSrules;


EQLSS[[19]] = EQLSS[[19]] // SSrules;


EQLSS[[20]] = EQLSS[[20]] // SSrules;


EQLSS[[21]] = EQLSS[[21]] // SSrules;


(* ::Subsubsection::Closed:: *)
(*Scalar-Vector*)


EQLSV // Length


Clear[SVrules]
SVrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-j]@PD[-k]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLSV[[1]] = EQLSV[[1]] // SVrules;
EQLSV[[2]] = EQLSV[[2]] // SVrules;
EQLSV[[3]] = EQLSV[[3]] // SVrules;
EQLSV[[4]] = EQLSV[[4]] // SVrules;
EQLSV[[5]] = EQLSV[[5]] // SVrules;
EQLSV[[6]] = EQLSV[[6]] // SVrules;
EQLSV[[7]] = EQLSV[[7]] // SVrules;
EQLSV[[8]] = EQLSV[[8]] // SVrules;
EQLSV[[9]] = EQLSV[[9]] // SVrules;
EQLSV[[10]] = EQLSV[[10]] // SVrules;
EQLSV[[11]] = EQLSV[[11]] // SVrules;
EQLSV[[12]] = EQLSV[[12]] // SVrules;


EQLSV


(* ::Subsubsection::Closed:: *)
(*Scalar-Tensor*)


EQLST // Length


Clear[STrules]
STrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-k_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-j]@PD[-k]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstS[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[ord_]] pert2_:>-Coeff[coeff] pert1[LI[ord]] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLST[[1]] = EQLST[[1]] // STrules;
EQLST[[2]] = EQLST[[2]] // STrules;
EQLST[[3]] = EQLST[[3]] // STrules;
EQLST[[4]] = EQLST[[4]] // STrules;
EQLST[[5]] = EQLST[[5]] // STrules;
EQLST[[6]] = EQLST[[6]] // STrules;


EQLST


(* ::Subsubsection::Closed:: *)
(*Vector-Vector*)


EQLVV // Length


Clear[VVrules]
VVrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1],k] pert2 -Coeff[coeff] PD[-i]@PD[-j]@PD[-b]@pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-b]@pert1[LI[1],k] pert2 -Coeff[coeff] PD[-i]@PD[-b]@pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@pert1[LI[1],k] pert2 -Coeff[coeff] PD[-b]@pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[-j]@pert1[LI[1],k] pert2 -Coeff[coeff] PD[-i]@PD[-j]@pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@pert1[LI[1],k] pert2 -Coeff[coeff] PD[-i]@pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[timevec[-a] TimeDer[coeff]] pert1[LI[1],k] pert2 -Coeff[coeff] pert1[LI[1],k] PD[-a]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[coeff] PD[-j]@pert1[LI[1],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[1],k_] pert2_:> -Coeff[coeff] pert1[LI[1],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp //.restoreXinG // SVTExpand]


EQLVV[[1]] = EQLVV[[1]] // VVrules;


EQLVV[[2]] = EQLVV[[2]] // VVrules;


EQLVV[[3]] = EQLVV[[3]] // VVrules;


(* ::Subsubsection::Closed:: *)
(*Vector-Tensor*)


EQLVT // Length


Clear[VTrules]
VTrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] PD[-j]@PD[-a]@PD[-b]@pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] PD[-j]@PD[-a]@pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] PD[-j]@pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] PD[-a]@PD[-b]@pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] PD[-a]@pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = FirstT[Coeff[tmp]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@pert1_[LI[ord_],k_] pert2_:>-Coeff[coeff] pert1[LI[ord],k] PD[-i]@pert2;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp]


EQLVT[[1]] = EQLVT[[1]] // VTrules;
EQLVT[[2]] = EQLVT[[2]] // VTrules;


EQLVT


(* ::Subsubsection::Closed:: *)
(*Tensor-Tensor*)


EQLTT // Length


Clear[TTrules]
TTrules[expr_] := Module[{tmp}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@perth[LI[1],k_,l_] pert_:> -Coeff[timevec[-a] TimeDer[coeff]] PD[-b]@perth[LI[1],k,l] pert -Coeff[coeff] PD[-b]@perth[LI[1],k,l] PD[-a]@pert;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-a_?TangentM1`Q]@perth[LI[1],k_,l_] pert_:> -Coeff[timevec[-a] TimeDer[coeff]] perth[LI[1],k,l] pert -Coeff[coeff] perth[LI[1],k,l] PD[-a]@pert;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@perth[LI[1],k_,l_] pert_:> -Coeff[coeff] PD[-j]@perth[LI[1],k,l] PD[-i]@pert;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp = Coeff[tmp] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@perth[LI[1],k_,l_] pert_:> -Coeff[coeff] perth[LI[1],k,l] PD[-i]@pert;
	tmp = tmp //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp //.restoreXinG // Expand]


EQLTT[[1]] = EQLTT[[1]] // TTrules;


(* ::Subsubsection:: *)
(*Scalar-Scalar-Scalar (TODO)*)


EQLSSS = Import[$OutputDirectory<>"EQLSSS.m"];


EQLSSS // Length


Clear[SSSrules]
SSSrules[expr_] := Module[{tmp, tmp8, tmp6, tmp4, tmp2, tmp0}, tmp = expr;
	tmp = tmp //.SubX0;
	tmp8 = tmp // NSpaceDer[8];
	tmp6 = tmp // NSpaceDer[6];
	tmp4 = tmp // NSpaceDer[4];
	tmp2 = tmp // NSpaceDer[2];
	tmp0 = tmp // NSpaceDer[0];
	If[tmp=!=tmp8+tmp6+tmp4+tmp2+tmp0,Abort[]];

(*	Print["Doing 8 derivatives"];
	tmp8 = Coeff[tmp8] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pertB[LI[1]] pert2_ pert3_:> -Coeff[coeff] PD[-j]@pertB[LI[1]] PD[-i]@pert2 pert3 -Coeff[coeff] PD[-j]@pertB[LI[1]] pert2 PD[-i]@pert3;
	tmp8 = tmp8 //.Coeff[coeff_]:>coeff // Expand;
	tmp8 = Coeff[tmp8] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@pertscalar[LI[1]] pert2_ pert3_:> -Coeff[coeff] PD[-j]@pertscalar[LI[1]] PD[-i]@pert2 pert3 -Coeff[coeff] PD[-j]@pertscalar[LI[1]] pert2 PD[-i]@pert3;
	tmp8 = tmp8 //.Coeff[coeff_]:>coeff // Expand;
	tmp8 = Coeff[tmp8] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pertE[LI[1]] pert2_ pert3_:> -Coeff[coeff] PD[-j]@PD[-a]@pertE[LI[1]] PD[-i]@pert2 pert3 -Coeff[coeff] PD[-j]@PD[-a]@pertE[LI[1]] pert2 PD[-i]@pert3;
	tmp8 = tmp8 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp8 = Coeff[FirstDummies[ContractMetric[tmp8]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[-l_?TangentM3`Q]@PD[k_?TangentM3`Q]@PD[-i_?TangentM3`Q]@pertE[LI[1]] PD[l_?TangentM3`Q]@PD[-k_?TangentM3`Q]@PD[j_?TangentM3`Q]@pertE[LI[1]] \[RuleDelayed]+1/2 Coeff[coeff] (PD[-j]@PD[i]@PD[k]@pertE[LI[1]] PD[l]@PD[-l]@PD[-i]@pertE[LI[1]] PD[-k]@PD[j]@pertE[LI[1]] +PD[-j]@PD[i]@pertE[LI[1]] PD[l]@PD[-l]@PD[-i]@pertE[LI[1]] PD[k]@PD[-k]@PD[j]@pertE[LI[1]]);
	tmp8 = tmp8 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp8 = Coeff[FirstDummies[ContractMetric[tmp8]]] //.Coeff[coeff_] PD[-l_?TangentM3`Q]@PD[l_?TangentM3`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[k_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-i_?TangentM3`Q]@pertE[LI[1]] \[RuleDelayed] Coeff[coeff] (PD[k]@PD[-l]@PD[l]@pertE[LI[1]] PD[-k]@PD[i]@pertE[LI[1]] PD[-i]@PD[j]@PD[-j]@pertE[LI[1]]+PD[-l]@PD[l]@pertE[LI[1]] PD[k]@PD[-k]@PD[i]@pertE[LI[1]] PD[-i]@PD[j]@PD[-j]@pertE[LI[1]]-PD[j]@PD[-l]@PD[l]@pertE[LI[1]] PD[-k]@PD[i]@pertE[LI[1]] PD[k]@PD[-j]@PD[-i]@pertE[LI[1]]);;
	tmp8 = tmp8 //.Coeff[coeff_]:>coeff // SVTExpand;*)

	Print["Doing 6 derivatives"];
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[-i_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pertE[LI[1]] PD[k_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[-b_?TangentM1`Q]@PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-1/2 (Coeff[coeff] PD[-j]@PD[i]@PD[-a]@pertE[LI[1]] PD[-k]@PD[-i]@PD[-c]@pertE[LI[1]] PD[k]@PD[j]@PD[-b]@pertE[LI[1]]+Coeff[timevec[-a] TimeDer[coeff]] PD[-j]@PD[i]@pertE[LI[1]] PD[-k]@PD[-i]@PD[-c]@pertE[LI[1]] PD[k]@PD[j]@PD[-b]@pertE[LI[1]]);
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[-j_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[k_?TangentM3`Q]@PD[-b_?TangentM1`Q]@PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-1/2 (Coeff[coeff] PD[-i]@PD[i]@PD[-a]@pertE[LI[1]] PD[-j]@PD[j]@PD[-c]@pertE[LI[1]] PD[-k]@PD[k]@PD[-b]@pertE[LI[1]]+Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[i]@pertE[LI[1]] PD[-j]@PD[j]@PD[-c]@pertE[LI[1]] PD[-k]@PD[k]@PD[-b]@pertE[LI[1]]);
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-i_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pertE[LI[1]] PD[k_?TangentM3`Q]@PD[-j_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pertE[LI[1]]:>-1/2 (Coeff[coeff] PD[-i]@PD[i]@PD[-a]@pertE[LI[1]] PD[-k]@PD[j]@PD[-c]@pertE[LI[1]] PD[k]@PD[-j]@PD[-b]@pertE[LI[1]]+Coeff[timevec[-a] TimeDer[coeff]] PD[-i]@PD[i]@pertE[LI[1]] PD[-k]@PD[j]@PD[-c]@pertE[LI[1]] PD[k]@PD[-j]@PD[-b]@pertE[LI[1]]);
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[j_?TangentM3`Q]@PD[-i_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[k_?TangentM3`Q]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-j]@PD[i]@pertE[LI[1]] PD[j]@PD[-i]@PD[-a]@PD[-c]@pertE[LI[1]] PD[-k]@PD[k]@PD[-b]@pertE[LI[1]]-Coeff[coeff] PD[-j]@PD[i]@PD[-a]@pertE[LI[1]] PD[j]@PD[-i]@PD[-c]@pertE[LI[1]] PD[-k]@PD[k]@PD[-b]@pertE[LI[1]]-Coeff[timevec[-a] TimeDer[coeff]] PD[-j]@PD[i]@pertE[LI[1]] PD[j]@PD[-i]@PD[-c]@pertE[LI[1]] PD[-k]@PD[k]@PD[-b]@pertE[LI[1]];
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[i_?TangentM3`pmQ]@PD[j_?TangentM3`pmQ]@PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert_ PD[k_?TangentM3`pmQ]@PD[l_?TangentM3`pmQ]@pert_ PD[m_?TangentM3`pmQ]@PD[n_?TangentM3`pmQ]@pert_:>-Coeff[timevec[-a] TimeDer[coeff]] PD[i]@PD[j]@PD[-b]@pert PD[k]@PD[l]@pert PD[m]@PD[n]@pert-Coeff[coeff] PD[i]@PD[j]@PD[-b]@pert PD[k]@PD[l]@PD[-a]@pert PD[m]@PD[n]@pert-Coeff[coeff] PD[i]@PD[j]@PD[-b]@pert PD[k]@PD[l]@pert PD[m]@PD[n]@PD[-a]@pert;
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[-k_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[-b_?TangentM1`Q]@pert_ PD[k_?TangentM3`Q]@PD[-i_?TangentM3`Q]@PD[-c_?TangentM1`Q]@pert_ :>Coeff[coeff] (+1/2 PD[j]@PD[-k]@PD[-a]@pert PD[-j]@PD[k]@PD[-b]@pert PD[-i]@PD[i]@PD[-c]@pert+PD[-i]@PD[j]@PD[-a]@pert PD[-k]@PD[k]@PD[-b]@pert PD[-j]@PD[i]@PD[-c]@pert-1/2 PD[-j]@PD[j]@PD[-a]@pert PD[-k]@PD[k]@PD[-b]@pert PD[-i]@PD[i]@PD[-c]@pert);
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;
(*	tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pert_ PD[-k_?TangentM3`Q]@PD[-i_?TangentM3`Q]@pert_ PD[k_?TangentM3`Q]@PD[j_?TangentM3`Q]@pert_ \[RuleDelayed] Coeff[coeff] (-1/2 PD[-j]@PD[j]@pert PD[-k]@PD[k]@pert PD[-i]@PD[i]@pert+3/2 PD[j]@PD[-k]@pert PD[-j]@PD[k]@pert PD[-i]@PD[i]@pert);
	tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SVTExpand;*)

	tmp0+tmp2+tmp4+tmp6+tmp8 //.restoreXinG // SVTExpand]


	Print[FirstDummies[ContractMetric[tmp6]] // ScreenDollarIndices];


tmp = EQLSSS[[47]] // NSpaceDer[6] // SSSrules // CollectPerts;
tmp // Length


PD[-i]@PD[i]@pertE[LI[1]] PD[-j]@PD[k]@primepertE[LI[1]] PD[j]@PD[-k]@primepertE[LI[1]]


-PD[-k]@PD[-i]@PD[i]@pertE[LI[1]] PD[-j]@PD[k]@primepertE[LI[1]] PD[j]@primepertE[LI[1]]

+PD[-j]@PD[-i]@PD[i]@pertE[LI[1]] PD[-k]@PD[k]@primepertE[LI[1]] PD[j]@primepertE[LI[1]]
+PD[-i]@PD[i]@pertE[LI[1]] PD[-k]@PD[k]@primepertE[LI[1]] PD[-j]@PD[j]@primepertE[LI[1]]


tmp6 = tmp[[{4,5,6,7}]];
tmp6 = tmp6 // InvPrintWell;

tmp6 = Coeff[FirstDummies[ContractMetric[tmp6]]] //.Coeff[coeff_] PD[-j_?TangentM3`Q]@PD[i_?TangentM3`Q]@pertE[LI[1]] PD[-k_?TangentM3`Q]@PD[-i_?TangentM3`Q]@PD[-a_?TangentM1`Q]@pert_ PD[k_?TangentM3`Q]@PD[j_?TangentM3`Q]@PD[-b_?TangentM1`Q]@pert_:>Coeff[coeff] (+1/2 PD[-i]@PD[i]@pertE[LI[1]] PD[-j]@PD[-k]@PD[-a]@pert PD[k]@PD[j]@PD[-b]@pert+PD[k]@PD[i]@pertE[LI[1]] PD[-k]@PD[-i]@PD[-a]@pert PD[-j]@PD[j]@PD[-b]@pert-1/2 PD[-i]@PD[i]@pertE[LI[1]] PD[-k]@PD[k]@PD[-a]@pert PD[-j]@PD[j]@PD[-b]@pert);
tmp6 = tmp6 //.Coeff[coeff_]:>coeff // SeparateMetric[] // SVTExpand;


tmp6 // CollectPerts


13,16,17,28,31,32,38,39,41,42,44,48,50


(* ::Subsubsection:: *)
(*Scalar-Scalar-Vector (TODO)*)


EQLSSV // Length


(* ::Subsubsection:: *)
(*Scalar-Scalar-Tensor (TODO)*)


EQLSST // Length


(* ::Subsubsection:: *)
(*Scalar-Vector-Vector (TODO)*)


EQLSVV // Length


(* ::Subsubsection:: *)
(*Scalar-Vector-Tensor (TODO)*)


EQLSVT // Length


(* ::Subsubsection:: *)
(*Scalar-Tensor-Tensor (TODO)*)


EQLSTT // Length


(* ::Subsubsection:: *)
(*Vector-Vector-Vector (TODO)*)


EQLVVV // Length


(* ::Subsubsection:: *)
(*Vector-Vector-Tensor (TODO)*)


EQLVVT // Length


(* ::Subsubsection:: *)
(*Vector-Tensor-Tensor (TODO)*)


EQLVTT // Length


(* ::Subsubsection:: *)
(*Tensor-Tensor-Tensor (TODO)*)


EQLTTT // Length


(* ::Subsection:: *)
(*Introduce Alphas (TODO)*)


EQL3 = Evaluate[EQLSS //.List->Plus]+Evaluate[EQLSV //.List->Plus]+Evaluate[EQLST //.List->Plus]+Evaluate[EQLVV //.List->Plus]+Evaluate[EQLVT //.List->Plus]+Evaluate[EQLTT //.List->Plus];


tmp = EQL3;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveG4tildefun // Expand;
EQL3 = tmp // SubBack // SVTExpand;
CollectPerts[EQL3,{mass2[]},Factor]


Export[$OutputDirectory<>"EQL3.m", EQL3];


(* ::Subsection::Closed:: *)
(*Equations of motion (TODO)*)


EQL2 = Import[$OutputDirectory<>"EQL2.m"];


EQfirst1 = -VarD[pertpsi[LI[1]], PD][EQL2]/scale[]^2/2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
CollectPerts[EQfirst1,{mass2[]},Factor]


EQfirst2 = -VarD[pertB[LI[1]], PD][EQL2]/scale[]^3/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst2 = EQfirst2/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst2,{mass2[]},Factor]


EQfirst3 = -VarD[pertE[LI[1]], PD][EQL2]/scale[]^4/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst3 = EQfirst3/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst3,{mass2[]},Factor]


EQfirst4 = -VarD[pertphi[LI[1]], PD][EQL2]/scale[]^4/4/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst4 = metric\[Delta][i,j] PD[-i]@PD[-j]@EQfirst4/kscal[]^2 // FourierT // SVTExpand // ReplaceDummies;
EQfirst4 = scale[]^2 (EQfirst4+3 EQfirst3)/kscal[]^2 // SVTExpand // ReplaceDummies;
CollectPerts[EQfirst4,{mass2[]},Factor]


EQfirst5 = -VarD[pertS[LI[1],i], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst5 = EQfirst5/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst5,{mass2[]},Factor]


EQfirst6 = -VarD[pertF[LI[1],i], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
EQfirst6 = EQfirst6/kscal[]^2 // FourierT // SVTExpand;
CollectPerts[EQfirst6,{mass2[]},Factor]


EQfirst7 = -2 VarD[perth[LI[1],i,j], PD][EQL2]/scale[]^2/mass2[] //.delta[-LI[1],LI[1]]:>1 // Expand // SubBack;
CollectPerts[EQfirst7,{mass2[]},Factor]


Export[$OutputDirectory<>"EQfirst1.m", EQfirst1];
Export[$OutputDirectory<>"EQfirst2.m", EQfirst2];
Export[$OutputDirectory<>"EQfirst3.m", EQfirst3];
Export[$OutputDirectory<>"EQfirst4.m", EQfirst4];
Export[$OutputDirectory<>"EQfirst5.m", EQfirst5];
Export[$OutputDirectory<>"EQfirst6.m", EQfirst6];
Export[$OutputDirectory<>"EQfirst7.m", EQfirst7];


(* ::Section:: *)
(*Delete tmp files*)


DeleteFile[$OutputDirectory<>"SubRicci0.m"];
DeleteFile[$OutputDirectory<>"Subpi0.m"];


DeleteFile[$OutputDirectory<>"SubRicci1.m"];
DeleteFile[$OutputDirectory<>"Subpi1.m"];


DeleteFile[$OutputDirectory<>"SubRicci2.m"];
DeleteFile[$OutputDirectory<>"Subpi2.m"];


DeleteFile[$OutputDirectory<>"SubRicci3.m"];
DeleteFile[$OutputDirectory<>"Subpi3.m"];


DeleteFile[$OutputDirectory<>"SubX0.m"];
DeleteFile[$OutputDirectory<>"SubX1.m"];
DeleteFile[$OutputDirectory<>"SubX2.m"];
DeleteFile[$OutputDirectory<>"SubX3.m"];


DeleteFile[$OutputDirectory<>"EQLSS.m"];
DeleteFile[$OutputDirectory<>"EQLSV.m"];
DeleteFile[$OutputDirectory<>"EQLST.m"];
DeleteFile[$OutputDirectory<>"EQLVV.m"];
DeleteFile[$OutputDirectory<>"EQLVT.m"];
DeleteFile[$OutputDirectory<>"EQLTT.m"];


DeleteFile[$OutputDirectory<>"EQLSSS.m"];
DeleteFile[$OutputDirectory<>"EQLSSV.m"];
DeleteFile[$OutputDirectory<>"EQLSST.m"];
DeleteFile[$OutputDirectory<>"EQLSVV.m"];
DeleteFile[$OutputDirectory<>"EQLSVT.m"];
DeleteFile[$OutputDirectory<>"EQLSTT.m"];
DeleteFile[$OutputDirectory<>"EQLVVV.m"];
DeleteFile[$OutputDirectory<>"EQLVVT.m"];
DeleteFile[$OutputDirectory<>"EQLVTT.m"];
DeleteFile[$OutputDirectory<>"EQLTTT.m"];
