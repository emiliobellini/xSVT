(* ::Package:: *)

(* ::Title:: *)
(*Beyond Horndeski EOMs (second order)*)


(* ::Section::Closed:: *)
(*Setup*)


$HistoryLength = 3


$CodeDirectory = "/local/home/bellini/Codes/xSVT/"
$OutputDirectory = $CodeDirectory<>"Equations/"


$Scalar=1;
$Vector=1;
$Tensor=1;


Get[$CodeDirectory<>"SVT.m"]


(* ::Subsection::Closed:: *)
(*Functions*)


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


Clear[IsSamePert]
IsSamePert[pert1_,pert2_]:=Module[{tmp1,tmp2},
	tmp1 = pert1 //.PD[i_]@pert_:>pert;
	tmp2 = pert2 //.PD[i_]@pert_:>pert;
	tmp1===tmp2]


Clear[NPerts]
NPerts[expr_]:=Module[{perts,ispert},
	perts = expr //.Plus->List;
	If[Head[perts]==List,perts=perts[[1]]];
	perts = perts //.PD[a_]@tens_:>tens //.Times->List;
	perts = Map[# //.Power[x_,n_]:>x &, perts];
	ispert = Map[IsPert[#]&,perts];
	perts = Pick[perts,ispert];
	perts = DeleteDuplicates[perts];
	Length[perts]
]


NoK[expr_] := expr //.Derivative[__][Kfun][__]:>0 //.Kfun[__]:>0
NoG3[expr_] := expr //.Derivative[__][G3fun][__]:>0 //.G3fun[__]:>0
NoG4[expr_] := expr //.Derivative[__][G4fun][__]:>0 //.G4fun[__]:>1/2
NoG5[expr_] := expr //.Derivative[__][G5fun][__]:>0 //.G5fun[__]:>0
NoF4[expr_] := expr //.Derivative[__][F4fun][__]:>0 //.F4fun[__]:>0
NoF5[expr_] := expr //.Derivative[__][F5fun][__]:>0 //.F5fun[__]:>0


(* ::Subsection::Closed:: *)
(*Additional definitions*)


DefTensor[RicciCDP[-\[Mu], -\[Nu]], M4]
DefTensor[RicciScalarCDP[], M4]
DefTensor[RiemannCDP[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]], M4]
DefTensorPerturbation[pertRicciCDP[LI[order], -\[Mu], -\[Nu]], RicciCDP[-\[Mu], -\[Nu]], M4]
DefTensorPerturbation[pertRicciScalarCDP[LI[order]], RicciScalarCDP[], M4]
DefTensorPerturbation[pertRiemannCDP[LI[order], -\[Mu], -\[Nu], -\[Alpha], -\[Beta]], RiemannCDP[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]], M4]


DefTensor[ddpi[-\[Mu], -\[Nu]], M4]
DefTensorPerturbation[pertddpi[LI[order], -\[Mu], -\[Nu]], ddpi[-\[Mu], -\[Nu]], M4]


DefTensor[pi1[], M4]
DefTensor[pi2[], M4]
DefTensor[pi3[], M4]
DefTensor[pi4[], M4]
DefTensor[pi5[], M4]
DefTensor[pi6[], M4]
DefTensor[pi7[], M4]
DefTensor[pi8[], M4]
DefTensor[pi9[], M4]
DefTensor[pi10[], M4]
DefTensor[piX[], M4]


DefTensorPerturbation[pertpi1[LI[order]], pi1[], M4]
DefTensorPerturbation[pertpi2[LI[order]], pi2[], M4]
DefTensorPerturbation[pertpi3[LI[order]], pi3[], M4]
DefTensorPerturbation[pertpi4[LI[order]], pi4[], M4]
DefTensorPerturbation[pertpi5[LI[order]], pi5[], M4]
DefTensorPerturbation[pertpi6[LI[order]], pi6[], M4]
DefTensorPerturbation[pertpi7[LI[order]], pi7[], M4]
DefTensorPerturbation[pertpi8[LI[order]], pi8[], M4]
DefTensorPerturbation[pertpi9[LI[order]], pi9[], M4]
DefTensorPerturbation[pertpi10[LI[order]], pi10[], M4]
DefTensorPerturbation[pertpiX[LI[order]], piX[], M4]


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
Export[$OutputDirectory<>"EQalphaDEG.m", EQalphaDEG];
Export[$OutputDirectory<>"EQdensityS.m", EQdensityS];
Export[$OutputDirectory<>"EQpressureS.m", EQpressureS];


(* ::Subsection::Closed:: *)
(*Introduce Alphas*)


tmpX = -1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];
SubX0 = MakeRule[{X[],Evaluate[Decomposition[0][tmpX]]}];


restoreXinG = {Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


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


EQprimealphaHH = TimeDer[EQalphaHH //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaHH = TimeDer[EQprimealphaHH //.SubX0] //.restoreXinG // ToCanonical;


EQprimealphaDEG = TimeDer[EQalphaDEG //.SubX0] //.restoreXinG // ToCanonical;
EQpprimealphaDEG = TimeDer[EQprimealphaDEG //.SubX0] //.restoreXinG // ToCanonical;


Clear[RemoveKfun]
RemoveKfun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //. Flatten[Solve[TimeDer[EQpprimedensityS //.SubX0] == 0 //.restoreXinG, Derivative[3, 1][Kfun][scalar[], X[]]]];
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
tmp = tmp //. Flatten[Solve[TimeDer[EQpprimemass2 //.SubX0] == 0 //.restoreXinG, Derivative[3, 0][G4fun][scalar[], X[]]]];
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
tmp]


Clear[RemoveF4fun]
RemoveF4fun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //.Flatten[Solve[EQpprimealphaHH == 0, Derivative[2, 1][F4fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQpprimealphaH == 0, Derivative[2, 0][F4fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQprimealphaHH == 0, Derivative[1, 1][F4fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQprimealphaH == 0, Derivative[1, 0][F4fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQalphaHH == 0,Derivative[0, 1][F4fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQalphaH == 0,F4fun[scalar[], X[]]]] // Expand;
tmp]


Clear[RemoveF5fun]
RemoveF5fun[expr_] := Module[{tmp}, tmp=expr;
tmp = tmp //.Flatten[Solve[EQpprimealphaDEG == 0, Derivative[2, 0][F5fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQprimealphaDEG == 0, Derivative[1, 0][F5fun][scalar[], X[]]]] // Expand;
tmp = tmp //.Flatten[Solve[EQalphaDEG == 0,F5fun[scalar[], X[]]]] // Expand;
tmp]


(* ::Subsection::Closed:: *)
(*Beyond Horndeski degeneracy*)


tmp = EQBHdegeneracy;
tmp =tmp // RemoveG4fun // Expand;
tmp =tmp // RemoveG5fun // Expand;
tmp =tmp // RemoveF4fun // Expand;
tmp =tmp // RemoveF5fun // Expand;
EQBHdegeneracy = 8 primescalar[]^5/scale[]^6 hubbleC[]/mass2[]^2 tmp // Expand


Export[$OutputDirectory<>"EQBHdegeneracy.m", EQBHdegeneracy];


(* ::Section::Closed:: *)
(*Import Lagrangian*)


tmpX = -1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];


SubXcov = MakeRule[{Xcov[], Evaluate[tmpX]}];


invSubXcov = Gfun_[scalarcov[],x_]:>Gfun[scalarcov[],Xcov[]];


Import[$CodeDirectory<>"Lagrangian.m"]


L = NoScalar[L] //.SubXcov //.invSubXcov // SeparateMetric[] // ToCanonical // ReplaceDummies;


Export[$OutputDirectory<>"L.m", L];


(* ::Section::Closed:: *)
(*Covariant Equations of motion*)


tmp = L;
tmp = ExpandPerturbation[Perturbation[tmp //.SubXcov,1]] //.invSubXcov // NoScalar // ToCanonical;


EQmetric = -2 VarD[pertmetricg[LI[1],\[Mu],\[Nu]],CD][tmp //.SubXcov]/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] //.delta[-LI[1],LI[1]]:>1 //.invSubXcov // ToCanonical;
EQmetric = EQmetric // ContractMetric // ToCanonical // SortCovDs // ToCanonical;
EQmetric = EQmetric // SeparateMetric[] // ToCanonical // SortCovDs // ToCanonical;
EQmetric // Length


EQscalar = -2 VarD[pertscalarcov[LI[1]],CD][tmp //.SubXcov]/Sqrt[-Detmetricg[]] //.delta[-LI[1],LI[1]]:>1 //.invSubXcov // ToCanonical;
EQscalar = EQscalar // ContractMetric // ToCanonical // SortCovDs // ToCanonical;
EQscalar = EQscalar // SeparateMetric[] // ToCanonical // SortCovDs // ToCanonical;
EQscalar // Length


EQmatter = -CD[-\[Mu]]@stressenergy[\[Mu], -\[Nu]] // SeparateMetric[] // ToCanonical;


Export[$OutputDirectory<>"EQmetric.m", EQmetric];
Export[$OutputDirectory<>"EQscalar.m", EQscalar];
Export[$OutputDirectory<>"EQmatter.m", EQmatter];


(* ::Section::Closed:: *)
(*Simplification*)


EQmetric = Import[$OutputDirectory<>"EQmetric.m"];
EQscalar = Import[$OutputDirectory<>"EQscalar.m"];


tmp = EQmetric // ContractMetric;
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[], -2 piX[]}, MetricOn -> All];
tmp = tmp //.RicciScalarCD[] :> RicciScalarCDP[];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[], pi1[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[], pi2[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[], pi3[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Mu], -\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[], pi4[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RiemannCD[-\[Alpha], -\[Beta], -\[Mu], -\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[], pi5[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[], pi6[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[], pi7[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[], pi8[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[], pi9[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[], pi10[]}, MetricOn -> All];
tmp = tmp //.RicciCD[\[Mu]_, \[Nu]_] :> RicciCDP[\[Mu], \[Nu]];
tmp = tmp //.RiemannCD[\[Mu]_, \[Nu]_, \[Alpha]_, \[Beta]_] :> RiemannCDP[\[Mu], \[Nu], \[Alpha], \[Beta]];
tmp = tmp //.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[] :> ddpi[\[Mu], \[Nu]];
EQmetrictmp = tmp // SeparateMetric[] // ToCanonical;


tmp = EQscalar // ContractMetric;
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[\[Alpha]]@scalarcov[], -2 piX[]}, MetricOn -> All];
tmp = tmp //.RicciScalarCD[] :> RicciScalarCDP[];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[\[Mu]]@scalarcov[], pi1[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[] CD[\[Mu]]@CD[\[Nu]]@scalarcov[], pi2[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Beta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@CD[\[Beta]]@scalarcov[] CD[\[Eta]]@CD[-\[Alpha]]@scalarcov[], pi3[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Mu], -\[Nu]] CD[\[Nu]]@CD[\[Mu]]@scalarcov[], pi4[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RiemannCD[-\[Alpha], -\[Beta], -\[Mu], -\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] CD[\[Nu]]@CD[\[Beta]]@scalarcov[], pi5[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[], pi6[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[\[Beta]]@CD[\[Alpha]]@scalarcov[], pi7[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{RicciCD[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[], pi8[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[\[Eta]]@CD[\[Beta]]@scalarcov[], pi9[]}, MetricOn -> All];
tmp = tmp //.MakeRule[{CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] CD[-\[Eta]]@CD[\[Alpha]]@scalarcov[] CD[-\[Lambda]]@CD[\[Beta]]@scalarcov[] CD[\[Lambda]]@CD[\[Eta]]@scalarcov[], pi10[]}, MetricOn -> All];
tmp = tmp //.RicciCD[\[Mu]_, \[Nu]_] :> RicciCDP[\[Mu], \[Nu]];
tmp = tmp //.RiemannCD[\[Mu]_, \[Nu]_, \[Alpha]_, \[Beta]_] :> RiemannCDP[\[Mu], \[Nu], \[Alpha], \[Beta]];
tmp = tmp //.CD[\[Mu]_]@CD[\[Nu]_]@scalarcov[] :> ddpi[\[Mu], \[Nu]];
EQscalartmp = tmp // SeparateMetric[] // ToCanonical;


Export[$OutputDirectory<>"EQmetrictmp.m", EQmetrictmp];
Export[$OutputDirectory<>"EQscalartmp.m", EQscalartmp];


(* ::Section::Closed:: *)
(*Background*)


order = 0


(* ::Subsection::Closed:: *)
(*Preliminary*)


subrules = {};


tmp = timevec[-a] timevec[-b] timevec[-c] timevec[-d] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> d][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -a, -b, -c, -d], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] timevec[-c] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> i][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -a, -b, -c, -i],Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -a, -b, -i, -c], Evaluate[-tmp]}],
	MakeRule[{RiemannCDP[ -c, -i, -a, -b], Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -i, -c, -a, -b], Evaluate[-tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> b, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -a, -i, -b, -j], Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -a, -i, -j, -b], Evaluate[-tmp]}],
	MakeRule[{RiemannCDP[ -i, -a, -b, -j], Evaluate[-tmp]}],
	MakeRule[{RiemannCDP[ -i, -a, -j, -b], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> i, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -a, -b, -i, -j], Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -i, -j, -a, -b], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> j, \[Beta] -> k][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -a, -i, -j, -k], Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -i, -a, -j, -k], Evaluate[-tmp]}],
	MakeRule[{RiemannCDP[ -j, -k, -a, -i], Evaluate[tmp]}],
	MakeRule[{RiemannCDP[ -j, -k, -i, -a], Evaluate[-tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j, \[Alpha] -> k, \[Beta] -> l][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RiemannCDP[ -i, -j, -k, -l], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RicciCDP[-a, -b], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RicciCDP[-a, -i], Evaluate[tmp]}],
	MakeRule[{RicciCDP[-i, -a], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RicciCDP[-i, -j], Evaluate[tmp]}]];


tmp = Decomposition[order][RicciScalarCD[]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{RicciScalarCDP[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][-1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{piX[], Evaluate[Scalar[tmp]]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{ddpi[-a, -b], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{ddpi[-a, -i], Evaluate[tmp]}],
	MakeRule[{ddpi[-i, -a], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{ddpi[-i, -j], Evaluate[tmp]}]];


tmp = Decomposition[order][ddpi[-\[Mu], \[Mu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi1[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi2[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi3[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi4[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RiemannCDP[-\[Alpha], -\[Beta], -\[Mu], -\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] ddpi[\[Nu], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi5[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi6[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi7[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi8[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi9[], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{pi10[], Evaluate[Scalar[tmp]]}]];


Export[$OutputDirectory<>"subrules.m", subrules];


(* ::Subsection::Closed:: *)
(*Metric*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQmetric = Import[$OutputDirectory<>"EQmetrictmp.m"];


len = Length[EQmetric]


EQback1 = Table[0,len];
EQback2 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] // Decomposition[order, \[Mu]->a, \[Nu]->b];
	EQback1[[count]] = ToCanonical[NoScalar[tmp //.subrules]];
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]


For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] // Decomposition[order, \[Mu]->i, \[Nu]->j];
	tmp = ToCanonical[NoScalar[tmp //.subrules]];
	EQback2[[count]] = metric\[Delta][i,j]/3 tmp // SVTExpand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]


EQback1 = EQback1 //.List->Plus;
EQback1 = -EQback1/scale[]^2 // RemoveKfun // Expand


EQback2 = EQback2 //.List->Plus;
EQback2 = EQback2/scale[]^2 // RemoveKfun // Expand


Export[$OutputDirectory<>"EQback1.m", EQback1];
Export[$OutputDirectory<>"EQback2.m", EQback2];


(* ::Subsection::Closed:: *)
(*Scalar Field*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQscalar = Import[$OutputDirectory<>"EQscalartmp.m"];


len = Length[EQscalar]


EQback3 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = primescalar[]/2 EQscalar[[count]] // Decomposition[order];
	EQback3[[count]] = ToCanonical[NoScalar[tmp //.subrules]];
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]


EQback3 = EQback3 //.List->Plus;
EQback3 = EQback3 // RemoveKfun // Expand


Export[$OutputDirectory<>"EQback3.m", EQback3];


(* ::Subsection::Closed:: *)
(*Matter*)


EQmatter = Import[$OutputDirectory<>"EQmatter.m"];


len = Length[EQmatter]


EQback4 = Table[0,len];


For[count=1,count<=len,count++,
	EQback4[[count]] = EQmatter[[count]] // Decomposition[order,\[Nu]->a];
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]


EQback4 = EQback4 //.List->Plus // Expand


Export[$OutputDirectory<>"EQback4.m", EQback4];


(* ::Section::Closed:: *)
(*First-Order*)


order = 1


EQback1 = Import[$OutputDirectory<>"EQback1.m"];
EQback2 = Import[$OutputDirectory<>"EQback2.m"];
EQback3 = Import[$OutputDirectory<>"EQback3.m"];
EQback4 = Import[$OutputDirectory<>"EQback4.m"];
Clear[SubBack]
SubBack[expr_] := Module[{tmp},
	tmp = expr;
	tmp = tmp //.Flatten[Solve[TimeDer[EQback3]==0,pprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[EQback2]==0,primepressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback4==0,primedensity[]]];
	tmp = tmp //.Flatten[Solve[EQback3==0,primedensityS[]]];
	tmp = tmp //.Flatten[Solve[EQback2==0,pressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback1==0,densityS[]]];
	tmp]


(* ::Subsection::Closed:: *)
(*Preliminary*)


subrules = Import[$OutputDirectory<>"subrules.m"];


tmp = timevec[-a] timevec[-b] timevec[-c] timevec[-d] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> d][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -c, -d]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] timevec[-c] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> i][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -c, -i]],Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -i, -c]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -c, -i, -a, -b]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -c, -a, -b]], Evaluate[-tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> b, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -b, -j]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -j, -b]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -b, -j]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -j, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> i, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -i, -j]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -j, -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> j, \[Beta] -> k][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -j, -k]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -j, -k]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -j, -k, -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -j, -k, -i, -a]], Evaluate[-tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j, \[Alpha] -> k, \[Beta] -> l][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -j, -k, -l]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -i, -a]], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -i, -j]], Evaluate[tmp]}]];


tmp = Decomposition[order][RicciScalarCD[]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciScalarCDP[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][-1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpiX[LI[order]]], Evaluate[Scalar[tmp]]}],
	MakeRule[{Evaluate[pertX[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertddpi[LI[order], -i, -a]], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -i, -j]], Evaluate[tmp]}]];


tmp = Decomposition[order][ddpi[-\[Mu], \[Mu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi1[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi2[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi3[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi4[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RiemannCDP[-\[Alpha], -\[Beta], -\[Mu], -\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] ddpi[\[Nu], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi5[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi6[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi7[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi8[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi9[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi10[LI[order]]], Evaluate[Scalar[tmp]]}]];


Export[$OutputDirectory<>"subrules.m", subrules];


(* ::Subsection::Closed:: *)
(*Metric - Calculation*)


EQmetric = Import[$OutputDirectory<>"EQmetrictmp.m"];


len = Length[EQmetric]


EQfirst1 = Table[0,len];
EQfirst2 = Table[0,len];
EQfirst3 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->a, \[Nu]->b];
	tmp = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	EQfirst1[[count]] = tmp // FieldRedefinition // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst1 = EQfirst1 //.List->Plus // SVTExpand;
EQfirst1 // Length


For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->a, \[Nu]->i];
	tmp = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	EQfirst2[[count]] = tmp // FieldRedefinition // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst2 = EQfirst2 //.List->Plus // SVTExpand;
EQfirst2 // Length


For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->i, \[Nu]->j];
	tmp = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	EQfirst3[[count]] = tmp // FieldRedefinition // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst3 = EQfirst3 //.List->Plus // SVTExpand;
EQfirst3 // Length


Export[$OutputDirectory<>"EQfirst1tmp.m", EQfirst1];
Export[$OutputDirectory<>"EQfirst2tmp.m", EQfirst2];
Export[$OutputDirectory<>"EQfirst3tmp.m", EQfirst3];


(* ::Subsection::Closed:: *)
(*Metric - SVT Decomposition*)


EQfirst1 = Import[$OutputDirectory<>"EQfirst1tmp.m"];
EQfirst2 = Import[$OutputDirectory<>"EQfirst2tmp.m"];
EQfirst3 = Import[$OutputDirectory<>"EQfirst3tmp.m"];


EQfirst5 = EQfirst2;
EQfirst2 = PD[i]@EQfirst2 // SVTExpand // ReplaceDummies;
EQfirst5 = PD[-j]@PD[j]@EQfirst5-PD[-i]@EQfirst2 // SVTExpand // ReplaceDummies;


EQfirst4 = EQfirst3;
EQfirst6 = EQfirst3;
EQfirst7 = EQfirst3;
EQfirst3 = PD[i]@PD[j]@EQfirst3 // SVTExpand // ReplaceDummies;
EQfirst4 = EQfirst3-metric\[Delta][i,j]/3 PD[-k]@PD[k]@EQfirst4 // SVTExpand // ReplaceDummies;


tmp = PD[j]@PD[-k]@PD[k]@EQfirst6 // SVTExpand // ReplaceDummies;
EQfirst6 = tmp - PD[-i]@EQfirst3 // SVTExpand // ReplaceDummies;


tmp = PD[-k]@PD[k]@EQfirst7 // SVTExpand // ReplaceDummies;
tmp = tmp - metric\[Delta][-i,-j] EQfirst3+3/2 metric\[Delta][-i,-j] EQfirst4 // SVTExpand // ReplaceDummies;
EQfirst7 = PD[-k]@PD[k]@tmp - 3/2 PD[-i]@PD[-j]@EQfirst4 - PD[-j]@EQfirst6 - PD[-i]@Evaluate[EQfirst6 //.-i->-j] // SVTExpand // ReplaceDummies;


Export[$OutputDirectory<>"EQfirst1.m", EQfirst1];
Export[$OutputDirectory<>"EQfirst2.m", EQfirst2];
Export[$OutputDirectory<>"EQfirst3.m", EQfirst3];
Export[$OutputDirectory<>"EQfirst4.m", EQfirst4];
Export[$OutputDirectory<>"EQfirst5.m", EQfirst5];
Export[$OutputDirectory<>"EQfirst6.m", EQfirst6];
Export[$OutputDirectory<>"EQfirst7.m", EQfirst7];


(* ::Subsection::Closed:: *)
(*Metric - Alphas*)


EQfirst1 = Import[$OutputDirectory<>"EQfirst1.m"];
EQfirst2 = Import[$OutputDirectory<>"EQfirst2.m"];
EQfirst3 = Import[$OutputDirectory<>"EQfirst3.m"];
EQfirst4 = Import[$OutputDirectory<>"EQfirst4.m"];
EQfirst5 = Import[$OutputDirectory<>"EQfirst5.m"];
EQfirst6 = Import[$OutputDirectory<>"EQfirst6.m"];
EQfirst7 = Import[$OutputDirectory<>"EQfirst7.m"];


tmp = EQfirst1;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst1 = -tmp/mass2[] // SubBack // Expand;
CollectPerts[EQfirst1, Factor]


tmp = EQfirst2;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst2 = -tmp/scale[]/mass2[] // SubBack // Expand;
CollectPerts[EQfirst2, Factor]


tmp = EQfirst3;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst3 = tmp/mass2[]/scale[]^2 // SubBack // Expand;
CollectPerts[EQfirst3, Factor]


tmp = EQfirst4;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst4 = 3/2 tmp/mass2[] // SubBack // Expand;
CollectPerts[EQfirst4, Factor]


tmp = EQfirst5;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst5 = tmp/scale[]/mass2[] // SubBack // Expand;
CollectPerts[EQfirst5, Factor]


tmp = EQfirst6;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst6 = 2 tmp/mass2[] // SubBack // Expand;
CollectPerts[EQfirst6, Factor]


tmp = EQfirst7;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst7 = 2 tmp/mass2[] // SubBack // Expand;
CollectPerts[EQfirst7, Factor]


Export[$OutputDirectory<>"EQfirst1.m", EQfirst1];
Export[$OutputDirectory<>"EQfirst2.m", EQfirst2];
Export[$OutputDirectory<>"EQfirst3.m", EQfirst3];
Export[$OutputDirectory<>"EQfirst4.m", EQfirst4];
Export[$OutputDirectory<>"EQfirst5.m", EQfirst5];
Export[$OutputDirectory<>"EQfirst6.m", EQfirst6];
Export[$OutputDirectory<>"EQfirst7.m", EQfirst7];


(* ::Subsection::Closed:: *)
(*Scalar Field - Calculation*)


EQscalar = Import[$OutputDirectory<>"EQscalartmp.m"];


len = Length[EQscalar]


EQfirst8 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQscalar[[count]] //.SubX0 // Decomposition[order];
	tmp = primescalar[] ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	EQfirst8[[count]] = tmp // FieldRedefinition // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst8 = EQfirst8 //.List->Plus // SVTExpand;
EQfirst8 // Length


Export[$OutputDirectory<>"EQfirst8tmp.m", EQfirst8];


(* ::Subsection::Closed:: *)
(*Scalar Field - Alphas*)


EQfirst8 = Import[$OutputDirectory<>"EQfirst8tmp.m"];


tmp = EQfirst8;
tmp = tmp // RemoveKfun // Expand;
tmp = tmp // RemoveG3fun // Expand;
tmp = tmp // RemoveG4fun // Expand;
tmp = tmp // RemoveG5fun // Expand;
tmp = tmp // RemoveF4fun // Expand;
EQfirst8 = tmp/scale[]/2/mass2[] // SubBack // Expand;
CollectPerts[EQfirst8,Factor]


Export[$OutputDirectory<>"EQfirst8.m", EQfirst8];


(* ::Subsection::Closed:: *)
(*Matter - Calculation*)


EQmatter = Import[$OutputDirectory<>"EQmatter.m"];


len = Length[EQmatter]


EQfirst9 = Table[0,len];
EQfirst10 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQmatter[[count]] //.SubX0 // Decomposition[order,\[Nu]->a];
	EQfirst9[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,2]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst9 = EQfirst9 //.List->Plus // SVTExpand;
EQfirst9 // Length


For[count=1,count<=len,count++,
	tmp = EQmatter[[count]] //.SubX0 // Decomposition[order,\[Nu]->i];
	EQfirst10[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,2]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
EQfirst10 = EQfirst10 //.List->Plus // SVTExpand;
EQfirst10 // Length


Export[$OutputDirectory<>"EQfirst9tmp.m", EQfirst9];
Export[$OutputDirectory<>"EQfirst10tmp.m", EQfirst10];


(* ::Subsection::Closed:: *)
(*Matter - SVT Decomposition*)


EQfirst9 = Import[$OutputDirectory<>"EQfirst9tmp.m"];
EQfirst10 = Import[$OutputDirectory<>"EQfirst10tmp.m"];


EQfirst9 = EQfirst9/density[]/scale[] // SubBack // Expand;
CollectPerts[EQfirst9,Factor]


EQfirst11 = EQfirst10;


EQfirst10 = -PD[i]@EQfirst10 // SubBack // SVTExpand // ReplaceDummies;
EQfirst10 // CollectPerts


EQfirst11 = (PD[-k]@PD[k]@EQfirst11+PD[-i]@EQfirst10)/density[] // SubBack // SVTExpand // ReplaceDummies;
EQfirst11 // CollectPerts


Export[$OutputDirectory<>"EQfirst9.m", EQfirst9];
Export[$OutputDirectory<>"EQfirst10.m", EQfirst10];
Export[$OutputDirectory<>"EQfirst11.m", EQfirst11];


(* ::Section::Closed:: *)
(*Second-Order*)


order = 2


EQback1 = Import[$OutputDirectory<>"EQback1.m"];
EQback2 = Import[$OutputDirectory<>"EQback2.m"];
EQback3 = Import[$OutputDirectory<>"EQback3.m"];
EQback4 = Import[$OutputDirectory<>"EQback4.m"];
Clear[SubBack]
SubBack[expr_] := Module[{tmp},
	tmp = expr;
	tmp = tmp //.Flatten[Solve[TimeDer[TimeDer[EQback3]]==0,ppprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[TimeDer[EQback2]]==0,pprimepressureS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[EQback3]==0,pprimedensityS[]]];
	tmp = tmp //.Flatten[Solve[TimeDer[EQback2]==0,primepressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback4==0,primedensity[]]];
	tmp = tmp //.Flatten[Solve[EQback3==0,primedensityS[]]];
	tmp = tmp //.Flatten[Solve[EQback2==0,pressureS[]]];
	tmp = tmp //.Flatten[Solve[EQback1==0,densityS[]]];
	tmp]


(* ::Subsection::Closed:: *)
(*Preliminary*)


subrules = Import[$OutputDirectory<>"subrules.m"];


tmp = timevec[-a] timevec[-b] timevec[-c] timevec[-d] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> d][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -c, -d]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] timevec[-c] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> c, \[Beta] -> i][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -c, -i]],Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -i, -c]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -c, -i, -a, -b]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -c, -a, -b]], Evaluate[-tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> b, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -b, -j]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -j, -b]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -b, -j]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -j, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b, \[Alpha] -> i, \[Beta] -> j][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -b, -i, -j]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -j, -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i, \[Alpha] -> j, \[Beta] -> k][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -a, -i, -j, -k]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -a, -j, -k]], Evaluate[-tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -j, -k, -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -j, -k, -i, -a]], Evaluate[-tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j, \[Alpha] -> k, \[Beta] -> l][RiemannCD[-\[Mu], -\[Nu], -\[Alpha], -\[Beta]]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRiemannCDP[LI[order], -i, -j, -k, -l]], Evaluate[tmp]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -i, -a]], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][RicciCD[-\[Mu], -\[Nu]]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciCDP[LI[order], -i, -j]], Evaluate[tmp]}]];


tmp = Decomposition[order][RicciScalarCD[]] //.subrules // SVTExpand // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertRicciScalarCDP[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][-1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpiX[LI[order]]], Evaluate[Scalar[tmp]]}],
	MakeRule[{Evaluate[pertX[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = timevec[-a] timevec[-b] Decomposition[order, \[Mu] -> a, \[Nu] -> b][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -a, -b]], Evaluate[tmp]}]];


tmp = timevec[-a] Decomposition[order, \[Mu] -> a, \[Nu] -> i][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -a, -i]], Evaluate[tmp]}],
	MakeRule[{Evaluate[pertddpi[LI[order], -i, -a]], Evaluate[tmp]}]];


tmp = Decomposition[order, \[Mu] -> i, \[Nu] -> j][CD[-\[Mu]]@CD[-\[Nu]]@scalarcov[]] // ReplaceDummies;
subrules = Union[subrules,
	MakeRule[{Evaluate[pertddpi[LI[order], -i, -j]], Evaluate[tmp]}]];


tmp = Decomposition[order][ddpi[-\[Mu], \[Mu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi1[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Mu], -\[Nu]] ddpi[\[Mu], \[Nu]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi2[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][ddpi[-\[Beta], \[Alpha]] ddpi[-\[Eta], \[Beta]] ddpi[\[Eta], -\[Alpha]]] //. subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi3[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Mu], -\[Nu]] ddpi[\[Nu], \[Mu]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi4[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RiemannCDP[-\[Alpha], -\[Beta], -\[Mu], -\[Nu]] CD[\[Alpha]]@scalarcov[] CD[\[Mu]]@scalarcov[] ddpi[\[Nu], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi5[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[\[Beta]]@scalarcov[]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi6[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[\[Beta], \[Alpha]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi7[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][RicciCDP[-\[Alpha], -\[Beta]] CD[\[Alpha]]@scalarcov[] CD[-\[Eta]]@scalarcov[] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi8[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[\[Eta], \[Beta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi9[LI[order]]], Evaluate[Scalar[tmp]]}]];


tmp = Decomposition[order][CD[-\[Alpha]]@scalarcov[] CD[-\[Beta]]@scalarcov[] ddpi[-\[Eta], \[Alpha]] ddpi[-\[Lambda], \[Beta]] ddpi[\[Lambda], \[Eta]]] //.subrules // Decomposition[0];
subrules = Union[subrules,
	MakeRule[{Evaluate[pertpi10[LI[order]]], Evaluate[Scalar[tmp]]}]];


Export[$OutputDirectory<>"subrules.m", subrules];


(* ::Subsection::Closed:: *)
(*Metric 00 - Calculation*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQmetric = Import[$OutputDirectory<>"EQmetrictmp.m"];


len = Length[EQmetric]


EQsec1 = Table[0,len];
For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->a, \[Nu]->b];
	EQsec1[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec1 = EQsec1 //.List->Plus // Expand;
EQsec1 // Length


tmp = EQsec1 // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpand // ReplaceDummies;
tmp // Length


(*** This is to get rid of pertscalarpre[LI[2]] ***)
tmp = metric\[Delta][i,j] PD[-i]@PD[-j]@tmp // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // FieldRedefinition // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


EQsec1 = tmp // FirstS // SVTExpand // ReplaceDummies;
EQsec1 // Length


Export[$OutputDirectory<>"EQsec1tmp.m", EQsec1];


(* ::Subsection::Closed:: *)
(*Metric 00 - Alphas*)


EQsec1 = Import[$OutputDirectory<>"EQsec1tmp.m"];
EQsec1 // Length


tmp = EQsec1;
tmp = tmp // RemoveKfun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // RemoveG3fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveG4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveG5fun // Expand;
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveF4fun // Expand;
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // SubBack // Expand;
tmp // Length


EQsec1 = -tmp/mass2[] // SVTExpand // ReplaceDummies;
EQsec1 // Length


EQsource1 = - source1[LI[2]] - Evaluate[EQsec1 //.pert_[LI[2],___]:>0];
EQsec1 = - source1[LI[2]] + Evaluate[EQsec1 //.pert_[LI[1],___]:>0];
EQsec1 // Length
EQsource1 // Length


Export[$OutputDirectory<>"EQsec1.m", EQsec1];
Export[$OutputDirectory<>"EQsource1.m", EQsource1];


(*Check*)
D[EQsec1, pprimescalar[]]
D[EQsec1, primescalar[]]
D[EQsource1, pprimescalar[]]
D[EQsource1, primescalar[]]


(* ::Subsection::Closed:: *)
(*Metric 0i - Calculation*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQmetric = Import[$OutputDirectory<>"EQmetrictmp.m"];


len = Length[EQmetric]


EQsec2 = Table[0,len];
For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->a, \[Nu]->i];
	EQsec2[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec2 = EQsec2 //.List->Plus // Expand;
EQsec2 // Length


tmp = EQsec2 // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


(*** This is to get rid of pertscalarpre[LI[2]] ***)
tmp = PD[-j]@tmp // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // FieldRedefinition // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


EQsec2 = tmp // FirstS // SVTExpand // ReplaceDummies;
tmp // Length


Export[$OutputDirectory<>"EQsec2tmp.m", EQsec2];


(* ::Subsection::Closed:: *)
(*Metric 0i - Alphas*)


EQsec2 = Import[$OutputDirectory<>"EQsec2tmp.m"];
EQsec2 // Length


tmp = EQsec2;
tmp = tmp // RemoveKfun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // RemoveG3fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[1000];
tmp // Length


tmp = tmp // RemoveG4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveG5fun // Expand;
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveF4fun // Expand;
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // RemoveF5fun // Expand;
tmp // Length


tmp = tmp // SVTExpand;
tmp // Length


tmp = tmp // SubBack // Expand;
tmp // Length


EQsec2 = tmp // SVTExpand // ReplaceDummies;
EQsec2 // Length


Export[$OutputDirectory<>"EQsec2.m", EQsec2];


(*Check*)
D[EQsec2, pprimescalar[]]
D[EQsec2, primescalar[]]


(* ::Subsection::Closed:: *)
(*Metric 0i - SVT Decomposition*)


EQsec2 = Import[$OutputDirectory<>"EQsec2.m"];
EQsec2 // Length


EQsec2 = -EQsec2/mass2[]/scale[] // Expand;
EQsec2 // Length


EQsec5 = PD[-k]@EQsec2 // Expand;
EQsec5 // Length


EQsec2 = metric\[Delta][i,j] EQsec2 // Expand;
EQsec2 // Length


EQsec2 = EQsec2 // SVTExpand // ReplaceDummies;
EQsec2 // Length


EQsec5 = metric\[Delta][j,k] EQsec5 // Expand;
EQsec5 // Length


EQsec5 = EQsec5 // SVTExpand // ReplaceDummies;
EQsec5 // Length


EQsec5 = -EQsec5+PD[-i]@EQsec2 // SVTExpand // ReplaceDummies;
EQsec5 // Length


EQsource2 = - source2[LI[2]] - Evaluate[EQsec2 //.pert_[LI[2],___]:>0];
EQsec2 = - source2[LI[2]] + Evaluate[EQsec2 //.pert_[LI[1],___]:>0];
EQsec2 // Length
EQsource2 // Length


EQsource5 = - source5[LI[2],-i] - Evaluate[EQsec5 //.pert_[LI[2],___]:>0];
EQsec5 = - source5[LI[2],-i] + Evaluate[EQsec5 //.pert_[LI[1],___]:>0];
EQsec5 // Length
EQsource5 // Length


Export[$OutputDirectory<>"EQsec2.m", EQsec2];
Export[$OutputDirectory<>"EQsource2.m", EQsource2];


Export[$OutputDirectory<>"EQsec5.m", EQsec5];
Export[$OutputDirectory<>"EQsource5.m", EQsource5];


(* ::Subsection::Closed:: *)
(*Metric ij - Calculation*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQmetric = Import[$OutputDirectory<>"EQmetrictmp.m"];


len = Length[EQmetric]


EQsec3 = Table[0,len];
For[count=1,count<=len,count++,
	tmp = EQmetric[[count]] //.SubX0 // Decomposition[order, \[Mu]->i, \[Nu]->j];
	EQsec3[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,20]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec3 = EQsec3 //.List->Plus // Expand;
EQsec3 // Length


tmp = EQsec3 // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // SVTExpand // ReplaceDummies;
tmp // Length


(*** This is to get rid of pertscalarpre[LI[2]] ***)
tmp = PD[-k]@PD[-l]@tmp // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // FieldRedefinition // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


EQsec3 = tmp // FirstS // SVTExpandBits[3000];
EQsec3 // Length


Export[$OutputDirectory<>"EQsec3tmp.m", EQsec3];


(* ::Subsection::Closed:: *)
(*Metric ij - Alphas*)


EQsec3 = Import[$OutputDirectory<>"EQsec3tmp.m"];
EQsec3 // Length


tmp = EQsec3;
tmp = tmp // RemoveKfun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // RemoveG3fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // RemoveG4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // RemoveG5fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // RemoveF4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // RemoveF5fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SubBack // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[6000];
tmp // Length


tmp1 = tmp //.pert_[LI[1]]:>0;
tmp1 // Length


tmp2 = tmp - tmp1 // Expand;
tmp2 // Length


tmp1 = tmp1 // SVTExpand;
tmp1 // Length


tmp2 = tmp2 // SVTExpandBits[6000];
tmp2 // Length


EQsec3 = tmp1 + tmp2 // Expand // ReplaceDummies;
EQsec3 // Length


Export[$OutputDirectory<>"EQsec3.m", EQsec3];


(*Check*)
D[EQsec3, pprimescalar[]]
D[EQsec3, primescalar[]]


(* ::Subsection::Closed:: *)
(*Metric ij - SVT Decomposition*)


list = {alphaK[],alphaB[],alphaM[],alphaT[],alphaH[],primealphaK[],primealphaB[],primealphaM[],primealphaT[],primealphaH[],
	alphaKK[],alphaBB[],alphaMM[],alphaTT[],alphaHH[],alphaDEG[],
	primealphaKK[],primealphaBB[],primealphaMM[],primealphaTT[],primealphaHH[],primealphaDEG[],
	density[],pressure[],primepressure[]}


EQsec3 = Import[$OutputDirectory<>"EQsec3.m"];
EQsec3 // Length


tmp2 = EQsec3/mass2[]/scale[]^2 // Expand;
tmp2 // Length


tmp3 = PD[-m]@tmp2 // Expand;
tmp3 // Length


tmp4 = PD[-n]@tmp3 // Expand;
tmp4 // Length


EQsec3 = metric\[Delta][i,k] metric\[Delta][j,l] tmp2 // Expand;
EQsec3 // Length


EQsec3 = EQsec3 // SVTExpandCollect[list];
EQsec3 // Length


EQsec4 = metric\[Delta][i,j] metric\[Delta][k,l] tmp2-3 EQsec3 // Expand;
EQsec4 // Length


EQsec4 = EQsec4 // SVTExpandCollect[list];
EQsec4 // Length


EQsec6 = metric\[Delta][j,k] metric\[Delta][l,m] tmp3-PD[-i]@EQsec3 // Expand;
EQsec6 // Length


EQsec6 = EQsec6 // SVTExpandCollect[list];
EQsec6 // Length


EQsec7 = metric\[Delta][k,l] metric\[Delta][m,n] tmp4 // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec7 = EQsec7-PD[-j]@EQsec6  // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec7 = EQsec7-PD[-i]@Evaluate[EQsec6 //.-i->-j]  // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec7 = EQsec7-metric\[Delta][-i,-j] metric\[Delta][k,l] PD[-k]@PD[-l]@EQsec3  // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec7 = EQsec7-metric\[Delta][-i,-j] metric\[Delta][k,l] PD[-k]@PD[-l]@EQsec4/2  // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec7 = EQsec7+PD[-i]@PD[-j]@EQsec4/2  // Expand;
EQsec7 // Length


EQsec7 = EQsec7 // SVTExpandCollect[list];
EQsec7 // Length


EQsec4 = - scale[]^2/2 EQsec4 // Expand;
EQsec4 // Length


EQsec6 = 2 scale[]^2 EQsec6 // Expand;
EQsec6 // Length


EQsec7 = 2 scale[]^2 EQsec7 // Expand;
EQsec7 // Length


EQsource3 = - source3[LI[2]] - Evaluate[EQsec3 //.pert_[LI[2],___]:>0];
EQsec3 = - source3[LI[2]] + Evaluate[EQsec3 //.pert_[LI[1],___]:>0];
EQsec3 // Length
EQsource3 // Length


EQsource4 = - source4[LI[2]] - Evaluate[EQsec4 //.pert_[LI[2],___]:>0];
EQsec4 = - source4[LI[2]] + Evaluate[EQsec4 //.pert_[LI[1],___]:>0];
EQsec4 // Length
EQsource4 // Length


EQsource6 = - source6[LI[2],-i] - Evaluate[EQsec6 //.pert_[LI[2],___]:>0];
EQsec6 = - source6[LI[2],-i] + Evaluate[EQsec6 //.pert_[LI[1],___]:>0];
EQsec6 // Length
EQsource6 // Length


EQsource7 = - source7[LI[2],-i,-j] - Evaluate[EQsec7 //.pert_[LI[2],___]:>0];
EQsec7 = - source7[LI[2],-i,-j] + Evaluate[EQsec7 //.pert_[LI[1],___]:>0];
EQsec7 // Length
EQsource7 // Length


Export[$OutputDirectory<>"EQsec3.m", EQsec3];
Export[$OutputDirectory<>"EQsource3.m", EQsource3];


Export[$OutputDirectory<>"EQsec4.m", EQsec4];
Export[$OutputDirectory<>"EQsource4.m", EQsource4];


Export[$OutputDirectory<>"EQsec6.m", EQsec6];
Export[$OutputDirectory<>"EQsource6.m", EQsource6];


Export[$OutputDirectory<>"EQsec7.m", EQsec7];
Export[$OutputDirectory<>"EQsource7.m", EQsource7];


(* ::Subsection::Closed:: *)
(*Scalar Field - Calculation*)


subrules = Import[$OutputDirectory<>"subrules.m"];


EQscalar = Import[$OutputDirectory<>"EQscalartmp.m"];


len = Length[EQscalar]


EQsec8 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQscalar[[count]] //.SubX0;
	tmp = primescalar[] Perturbation[tmp,order] // ExpandPerturbation // ToCanonical;
	tmp = Map[Decomposition[0][#]&,tmp];
	EQsec8[[count]] = ToCanonical[NoScalar[tmp //.subrules]] //.restoreXinG // Expand;
	If[Mod[count,1]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec8 = EQsec8 //.List->Plus // Expand;
EQsec8 // Length


tmp = EQsec8 // SVTExpandBits[1000];
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmpK = tmp // NoG3 // NoG4 // NoG5 // NoF4 // NoF5;
tmpK // Length


tmpG3 = tmp // NoK // NoG4 // NoG5 // NoF4 // NoF5;
tmpG3 // Length


tmpG4 = tmp // NoK // NoG3 // NoG5 // NoF4 // NoF5;
tmpG4 // Length


tmpG5 = tmp // NoK // NoG3 // NoG4 // NoF4 // NoF5;
tmpG5 // Length


tmpF4 = tmp // NoK // NoG3 // NoG4 // NoG5 // NoF5;
tmpF4 // Length


tmpF5 = tmp // NoK // NoG3 // NoG4 // NoG5 // NoF4;
tmpF5 // Length


tmpK = tmpK // SVTExpand;
tmpK // Length


tmpG3 = tmpG3 // SVTExpand;
tmpG3 // Length


tmpG4 = tmpG4 // SVTExpand;
tmpG4 // Length


tmpG5 = tmpG5 // SVTExpand;
tmpG5 // Length


tmpF4 = tmpF4 // SVTExpand;
tmpF4 // Length


tmpF5 = tmpF5 // SVTExpand;
tmpF5 // Length


tmp = tmpK+tmpG3+tmpG4+tmpG5+tmpF4+tmpF5 // Expand // ReplaceDummies;
tmp // Length


(*** This is to get rid of pertscalarpre[LI[2]] ***)
tmp = metric\[Delta][i,j] PD[-i]@PD[-j]@tmp // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // FieldRedefinition // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmpK = tmp // NoG3 // NoG4 // NoG5 // NoF4 // NoF5;
tmpK // Length


tmpG3 = tmp // NoK // NoG4 // NoG5 // NoF4 // NoF5;
tmpG3 // Length


tmpG4 = tmp // NoK // NoG3 // NoG5 // NoF4 // NoF5;
tmpG4 // Length


tmpG5 = tmp // NoK // NoG3 // NoG4 // NoF4 // NoF5;
tmpG5 // Length


tmpF4 = tmp // NoK // NoG3 // NoG4 // NoG5 // NoF5;
tmpF4 // Length


tmpF5 = tmp // NoK // NoG3 // NoG4 // NoG5 // NoF4;
tmpF5 // Length


tmpK = tmpK // FirstS // SVTExpandBits[2000];
tmpK // Length


tmpK = tmpK // FirstS // SVTExpand // ReplaceDummies;
tmpK // Length


tmpG3 = tmpG3 // FirstS // SVTExpandBits[2000];
tmpG3 // Length


tmpG3 = tmpG3 // FirstS // SVTExpand // ReplaceDummies;
tmpG3 // Length


tmpG4 = tmpG4 // FirstS // SVTExpandBits[2000];
tmpG4 // Length


tmpG4 = tmpG4 // FirstS // SVTExpand // ReplaceDummies;
tmpG4 // Length


tmpG5 = tmpG5 // FirstS // SVTExpandBits[2000];
tmpG5 // Length


tmpG5 = tmpG5 // FirstS // SVTExpand // ReplaceDummies;
tmpG5 // Length


tmpF4 = tmpF4 // FirstS // SVTExpandBits[2000];
tmpF4 // Length


tmpF4 = tmpF4 // FirstS // SVTExpand // ReplaceDummies;
tmpF4 // Length


tmpF5 = tmpF5 // FirstS // SVTExpandBits[2000];
tmpF5 // Length


tmpF5 = tmpF5 // FirstS // SVTExpand // ReplaceDummies;
tmpF5 // Length


EQsec8 = tmpK+tmpG3+tmpG4+tmpG5+tmpF4+tmpF5 // Expand;
EQsec8 // Length


Export[$OutputDirectory<>"EQsec8tmp.m", EQsec8];


(* ::Subsection::Closed:: *)
(*Scalar Field - Alphas*)


list = {alphaK[],alphaB[],alphaM[],alphaT[],alphaH[],primealphaK[],primealphaB[],primealphaM[],primealphaT[],primealphaH[],
	alphaKK[],alphaBB[],alphaMM[],alphaTT[],alphaHH[],alphaDEG[],
	primealphaKK[],primealphaBB[],primealphaMM[],primealphaTT[],primealphaHH[],primealphaDEG[],
	density[],pressure[],primepressure[]}


EQsec8 = Import[$OutputDirectory<>"EQsec8tmp.m"];
EQsec8 // Length


EQfirst8 = Import[$OutputDirectory<>"EQfirst8.m"];


tmpfirst = metric\[Delta][i,j] PD[-i]@PD[-j]@pertscalar[LI[1]] EQfirst8 + pertscalar[LI[1]] metric\[Delta][i,j] PD[-i]@PD[-j]@EQfirst8 + 2 metric\[Delta][i,j] PD[-i]@pertscalar[LI[1]] PD[-j]@EQfirst8 // SVTExpand // ReplaceDummies;
tmpfirst // Length


tmp = EQsec8 - 4 mass2[] pprimescalar[]/primescalar[] tmpfirst // Expand;
tmp // Length


tmp = tmp;
tmp = tmp // RemoveKfun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // RemoveG3fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // RemoveG4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // RemoveG5fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // RemoveF4fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandBits[3000];
tmp // Length


tmp = tmp // RemoveF5fun // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SubBack // Expand;
tmp // Length


tmp = tmp // SVTExpandBits[2000];
tmp // Length


tmp = tmp // SVTExpandCollect[list];
tmp // Length


EQsec8 = tmp/2/mass2[]/scale[] // Expand // ReplaceDummies;
EQsec8 // Length


EQsource8 = - source8[LI[2]] - Evaluate[EQsec8 //.pert_[LI[2],___]:>0];
EQsec8 = - source8[LI[2]] + Evaluate[EQsec8 //.pert_[LI[1],___]:>0];


Export[$OutputDirectory<>"EQsec8.m", EQsec8];
Export[$OutputDirectory<>"EQsource8.m", EQsource8];


(*Check*)
D[EQsec8, pprimescalar[]]
D[EQsec8, primescalar[]]
D[EQsource8, pprimescalar[]]
D[EQsource8, primescalar[]]


(* ::Subsection::Closed:: *)
(*Matter - Calculation*)


EQmatter = Import[$OutputDirectory<>"EQmatter.m"];


len = Length[EQmatter]


EQsec9 = Table[0,len];
EQsec10 = Table[0,len];


For[count=1,count<=len,count++,
	tmp = EQmatter[[count]] //.SubX0 // Decomposition[order,\[Nu]->a];
	EQsec9[[count]] = ToCanonical[NoScalar[tmp]] //.restoreXinG // Expand;
	If[Mod[count,2]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec9 = EQsec9 //.List->Plus // Expand;
EQsec9 = Map[SVTExpand[#]&,EQsec9] // Expand;
EQsec9 = EQsec9 // SVTExpand;
EQsec9 // Length


For[count=1,count<=len,count++,
	tmp = EQmatter[[count]] //.SubX0 // Decomposition[order,\[Nu]->i];
	EQsec10[[count]] = ToCanonical[NoScalar[tmp]] //.restoreXinG // Expand;
	If[Mod[count,2]==0,Print["Done "<>ToString[count]<>" steps over "<>ToString[len]]];
]
Print["Finishing!"];
EQsec10 = EQsec10 //.List->Plus // Expand;
EQsec10 = Map[SVTExpand[#]&,EQsec10] // Expand;
EQsec10 = EQsec10 // SVTExpand;
EQsec10 // Length


Export[$OutputDirectory<>"EQsec9tmp.m", EQsec9];
Export[$OutputDirectory<>"EQsec10tmp.m", EQsec10];


(* ::Subsection::Closed:: *)
(*Matter - SVT Decomposition*)


EQsec9 = Import[$OutputDirectory<>"EQsec9tmp.m"];
EQsec10 = Import[$OutputDirectory<>"EQsec10tmp.m"];


EQsec9 = EQsec9/density[]/scale[] // SubBack // Expand;
EQsource9 = - source9[LI[2]] - Evaluate[EQsec9 //.pert_[LI[2],___]:>0];
EQsec9 = - source9[LI[2]] + Evaluate[EQsec9 //.pert_[LI[1],___]:>0];


EQsec11 = EQsec10;


EQsec10 = Map[ReplaceDummies[SubBack[SVTExpand[-PD[i]@#]]] &,EQsec10]/density[]/scale[]^2 // SubBack // SVTExpand // ReplaceDummies;


tmp1 = Map[ReplaceDummies[SubBack[SVTExpand[PD[-k]@PD[k]@#]]]&,EQsec11];
tmp2 = Map[ReplaceDummies[SubBack[SVTExpand[PD[-i]@#]]]&,EQsec10];
EQsec11 = -tmp1/density[]/scale[]^2-tmp2 // SubBack // SVTExpand // ReplaceDummies;


EQsource10 = - source10[LI[2]] - Evaluate[EQsec10 //.pert_[LI[2],___]:>0];
EQsec10 = - source10[LI[2]] + Evaluate[EQsec10 //.pert_[LI[1],___]:>0];


EQsource11 = - source11[LI[2],-i] - Evaluate[EQsec11 //.pert_[LI[2],___]:>0];
EQsec11 = - source11[LI[2],-i] + Evaluate[EQsec11 //.pert_[LI[1],___]:>0];


Export[$OutputDirectory<>"EQsec9.m", EQsec9];
Export[$OutputDirectory<>"EQsec10.m", EQsec10];
Export[$OutputDirectory<>"EQsec11.m", EQsec11];


Export[$OutputDirectory<>"EQsource9.m", EQsource9];
Export[$OutputDirectory<>"EQsource10.m", EQsource10];
Export[$OutputDirectory<>"EQsource11.m", EQsource11];


(* ::Section:: *)
(*Delete tmp files*)


DeleteFile[$OutputDirectory<>"EQmetrictmp.m"];
DeleteFile[$OutputDirectory<>"EQscalartmp.m"];


DeleteFile[$OutputDirectory<>"subrules.m"];


DeleteFile[$OutputDirectory<>"EQfirst1tmp.m"];
DeleteFile[$OutputDirectory<>"EQfirst2tmp.m"];
DeleteFile[$OutputDirectory<>"EQfirst3tmp.m"];
DeleteFile[$OutputDirectory<>"EQfirst8tmp.m"];
DeleteFile[$OutputDirectory<>"EQfirst9tmp.m"];
DeleteFile[$OutputDirectory<>"EQfirst10tmp.m"];


DeleteFile[$OutputDirectory<>"EQsec1tmp.m"];
DeleteFile[$OutputDirectory<>"EQsec2tmp.m"];
DeleteFile[$OutputDirectory<>"EQsec3tmp.m"];
DeleteFile[$OutputDirectory<>"EQsec8tmp.m"];
DeleteFile[$OutputDirectory<>"EQsec9tmp.m"];
DeleteFile[$OutputDirectory<>"EQsec10tmp.m"];
