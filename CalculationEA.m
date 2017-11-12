(* ::Package:: *)

(* ::Title:: *)
(*Calculation Einstein Aether*)


(* ::Section::Closed:: *)
(*Settings*)


$OutputDirectory=NotebookDirectory[]<>"../Equations/"


$Scalar=1;
$Vector=1;
$Tensor=1;


<< "~/Dropbox/SVT/xSVT/SVT.m"


(* ::Section:: *)
(*Gauge Transformations*)


(* ::Subsection::Closed:: *)
(*Metric*)


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->b];
EQg0 = -%/2/scale[]^2 // SVTExpand;
% // CollectPerts


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
metric\[Delta][i, j] PD[-j]@% // SVTExpand // FourierT;
EQg1 = -%/kscal[]^2/scale[]^2 // Expand;
% // CollectPerts


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
EQg2 = metric\[Delta][i, j] % // SVTExpand // FourierT;
EQg3 = metric\[Delta][i, k] metric\[Delta][j, l] PD[-k]@PD[-l]@%% // SVTExpand // FourierT;


EQg2 = -(EQg2 + EQg3/kscal[]^2)/scale[]^2/4 // Expand;
% // ToPhysical


EQg3 = (-EQg2 + EQg3/2/kscal[]^2/scale[]^2)/kscal[]^2 // Expand;
% // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
EQg4=-%/scale[]^2+PD[-i]@EQg1 // ToCanonical;
% // CollectPerts


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale[]^2 metric\[Delta][-i,-j] EQg2-2 scale[]^2 PD[-i]@PD[-j]@EQg3 // SVTExpand;
metric\[Delta][j,k] PD[-k]@% // SVTExpand // FourierT;
EQg5=-%/kscal[]^2/scale[]^2 // Expand;
% // CollectPerts


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale[]^2 metric\[Delta][-i,-j] EQg2-2 scale[]^2 PD[-i]@PD[-j]@EQg3-scale[]^2 PD[-j]@EQg5 // SVTExpand;
%-Evaluate[scale[]^2 PD[-j]@EQg5 //.-i->-k //.-j->-i //.-k->-j] // SVTExpand;
EQg6=%/scale[]^2 // Expand;
% // CollectPerts


(* ::Subsection::Closed:: *)
(*Matter*)


EQm0 = GaugeTransformation[pertmattercov[LI[1]], pertgauge];
% // CollectPerts


(* ::Subsection::Closed:: *)
(*Scalar Field*)


EQs0 = -GaugeTransformation[pertscalarcov[LI[1]], pertgauge] scale[]/primescalar[] // Expand;
% // CollectPerts


(* ::Subsection::Closed:: *)
(*Einstein Aether*)


EQv0 = -scale[] GaugeTransformation[perteacov[LI[1],\[Mu]], pertgauge, \[Mu]->a] // Expand;
% // CollectPerts


GaugeTransformation[perteacov[LI[1],-\[Mu]], pertgauge, \[Mu]->i];
metric\[Delta][i,j]/scale[]^2 PD[-j]@% // ToCanonical // FourierT;
EQv1 = scale[]^2 (-%/kscal[]^2 + ea0[]/scale[] EQg1)/ea0[] // SVTExpand;
% // CollectPerts


GaugeTransformation[perteacov[LI[1],-\[Mu]], pertgauge, \[Mu]->i]/scale[] // Expand;
EQv2 = scale[] (%/ea0[] - PD[-i]@EQv1/scale[] + PD[-i]@EQg1 - EQg4) // SVTExpand;
% // CollectPerts


(* ::Section:: *)
(*Einstein Aether*)


(* Use RestoreFunctions[expr] to rewrite expr in terms of the original scalar functions *)


(* ::Subsection::Closed:: *)
(*Calculation Lagrangian*)


Lmatter=-Sqrt[-Detmetricg[]] (1/2 metricg[\[Mu],\[Nu]] PD[-\[Mu]]@mattercov[] PD[-\[Nu]]@mattercov[]+V[mattercov[]])


LEA = Sqrt[-Detmetricg[]] scalarcov[] (metricg[-\[Mu],-\[Nu]] eacov[\[Mu]] eacov[\[Nu]] + 1)


Simplify[Decomposition[1][LEA]] // ToCanonical;
VarD[pertscalar[LI[1]], PD][%]/scale[]^5/primescalar[] //.delta[-LI[1], LI[1]]:>1 // Expand;
solback = Flatten[Solve[%==0,ea0[]]][[2]];
solback = {solback, TimeDer[solback[[1]]]->TimeDer[solback[[2]]], TimeDer[TimeDer[solback[[1]]]]->TimeDer[TimeDer[solback[[2]]]], TimeDer[TimeDer[TimeDer[solback[[1]]]]]->TimeDer[TimeDer[TimeDer[solback[[2]]]]]}


Simplify[Decomposition[2][LEA]] //.pert_[LI[2],___]:>0 // ToCanonical;
VarD[pertscalar[LI[1]], PD][%] //.delta[-LI[1], LI[1]]:>1 // Expand;
%/primescalar[]/scale[]^3/4 //.solback // FourierT // Expand;
solpert=Flatten[Solve[%==0,pertea0[LI[1]]]]


pertsgravity={pertmetricg[LI[1],-a,-b],pertmetricg[LI[1],-a,-i],pertmetricg[LI[1],-i,-j],perteacov[LI[1],a],perteacov[LI[1],i]}
pertstotal={pertphi[LI[1]],pertpsi[LI[1]],pertB[LI[1]],pertE[LI[1]],pertea0[LI[1]],pertea1[LI[1]],pertea2[LI[1],-i],
	pertmatter[LI[1]],pertgaugealpha[LI[1]],pertgaugebeta[LI[1]],pertgaugegamma[LI[1],-i],pertS[LI[1],-i],pertF[LI[1],-i],perth[LI[1],-i,-j],pertscalar[LI[1]]}
expansionorder=2
numberofderivatives=2


BuildDerivatives[numberofderivatives][pertsgravity]


BuildScalars[expansionorder,numberofderivatives][%];
Lgravity=LG[% //.List->Sequence]


TaylorExpand[expansionorder,numberofderivatives][Lgravity];
%+Simplify[Decomposition[expansionorder][Lmatter + LEA]] //.pert_[LI[2]]:>0;
%/expansionorder! // SVTExpand;
HideFunctions["L"][%];
Lsec=% // FourierT // NoScalar;
% // Length


Lsec;
Coeff[%];
% //.Coeff[coeff_] pert1_ PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert2_:>-Coeff[coeff] PD[-a]@pert1 PD[-b]@pert2-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert1 PD[-b]@pert2;
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pert_:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert^2;
% //.Coeff[coeff_]:>coeff // SVTExpand // Simplify // ToCanonical // NoScalar;
Lsec=% //.solback // SVTExpand;
% // Length


Lsec;
% // ToG;
%-Lsec // ToCanonical;
% // SubEQ[EQg0,pertpsiG[LI[1]]];
% // SubEQ[EQg1,pertBG[LI[1]]];
% // SubEQ[EQg2,pertphiG[LI[1]]];
% // SubEQ[EQg3,pertEG[LI[1]]];
% // SubEQ[EQg4,pertSG[LI[1],-i]];
% // SubEQ[EQg5,pertFG[LI[1],-i]];
% // SubEQ[EQg6,perthG[LI[1],-i,-j]];
% // SubEQ[EQv0,pertea0G[LI[1]]];
% // SubEQ[EQs0,pertscalarG[LI[1]]];
% // SubEQ[EQv1,pertea1G[LI[1]]];
% // SubEQ[EQv2,pertea2G[LI[1],-i]];
% // SubEQ[EQm0,pertmatterG[LI[1]]];
Nsec=% //.solback // SVTExpand;


EQAsec=VarD[pertgaugealpha[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQBsec=VarD[pertgaugebeta[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQGsec=VarD[pertgaugegamma[LI[1],i],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;


Nsec=NoetherConstraints[pertstotal][EQAsec,EQBsec,EQGsec];


noetherlist={ L52[], L117[], L122[],  L75[],  L70[],  L80[], L128[],  L76[], L129[], L138[],
			  L81[], L137[], L127[], L126[], L130[], L118[], L121[], L113[],  L74[],  L67[],
			  L63[],  L55[], L110[],  L65[], L135[], L131[], L116[], L112[], L133[], L132[],
			  L61[],  L51[], L106[],  L79[],  L78[], L114[],  L49[], L115[], L134[], L139[],
			 L124[], L142[], L125[], L141[], L140[], pprimematter[]};
{Nsec2,Lsec2}={Nsec,Lsec} // SubNoether[noetherlist,False]; // AbsoluteTiming
Lsec2 = Lsec2 // ToCanonical // NoScalar;
% // Length


noetherlist
Coefficient[Nsec2,#]&/@% // Flatten // DeleteDuplicates
Coefficient[Nsec2,#]&/@PrintWell[TimeDer[%%]] // Flatten // DeleteDuplicates
Coefficient[Nsec2,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // Flatten // DeleteDuplicates
Coefficient[Nsec2,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // Flatten // DeleteDuplicates


noetherlist
Coefficient[Lsec2,#]&/@% // DeleteDuplicates
Coefficient[Lsec2,#]&/@PrintWell[TimeDer[%%]] // DeleteDuplicates
Coefficient[Lsec2,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // DeleteDuplicates
Coefficient[Lsec2,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // DeleteDuplicates


{Nsec3,Lsec3}={Nsec2,Lsec2} //.solpert // ToCanonical // NoScalar // SubNoether[{L100[]},False]; // AbsoluteTiming
Lsec3 = Lsec3 // ToCanonical // NoScalar;
% // Length


Lsec3;
Coeff[%];
% //.Coeff[coeff_] perth[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth[LI[1],i3_,i4_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth[LI[1],i1,i2] perth[LI[1],i3,i4];
% //.Coeff[coeff_] pertF[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i1] pertF[LI[1],i2];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertS[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertS[LI[1],i2];
% //.Coeff[coeff_] pertea2[LI[1],i1_] PD[-a_?TangentM1`Q]@pertea2[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertea2[LI[1],i1] pertea2[LI[1],i2];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertS[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertS[LI[1],i1];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertea2[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertea2[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertea2[LI[1],i1];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertea2[LI[1],i2_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertea2[LI[1],i2]-Coeff[coeff] PD[-a]@pertS[LI[1],i1] pertea2[LI[1],i2];
% //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
Coeff[%];
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pert_:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert^2;
% //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertB[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertB[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertB[LI[1]];
% //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertpsi[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertpsi[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertpsi[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertE[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertea0[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertea0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertea0[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertea1[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertea1[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertea1[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertea0[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertea0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertea0[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertea1[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertea1[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertea1[LI[1]];
% //.Coeff[coeff_] pertea1[LI[1]] PD[-a_?TangentM1`Q]@pertea0[LI[1]]:>-Coeff[coeff] PD[-a]@pertea1[LI[1]] pertea0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertea1[LI[1]] pertea0[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertmatter[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertmatter[LI[1]];
% //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
Lsec4=% //.Flatten[Solve[Nsec[[1]],pprimematter[]]] // Expand;
% // Length


LsecPW = PrintWell[Lsec4];
EQmass2 = -(- mass2A[] + 8 Coefficient[LsecPW //.primeperth[LI[1],-i_,-j_] primeperth[LI[1],i_,j_]:>x,x]/scale[]^2)/scale[]^2/4 // Expand;
EQalphaC = (- (1 + alphaCA[]) mass2A[] + 4 scale[]^2 EQmass2 - Coefficient[LsecPW,kscal[]^2 pertphi[LI[1]] pertpsi[LI[1]]]/scale[]^2/2)/scale[]^2 // Expand;
EQalphaK = -(- alphaKA[] mass2A[] + 2 Coefficient[LsecPW, primepertea1[LI[1]]^2]/kscal[]^2)/scale[]^2 // Expand;
EQalphaS = -(- (-alphaCA[]^2 + 2*alphaKA[]*alphaSA[])/2 mass2A[] - 2 Coefficient[LsecPW //.pertea2[LI[1],-i_] pertea2[LI[1],i_]:>x,kscal[]^2 x])/scale[]^2 // Expand;
EQalphaD = (- alphaDA[] mass2A[] + 6 Coefficient[LsecPW, pertB[LI[1]]^2]/kscal[]^4/scale[]^2) 2 scale[]^4/3 // Expand;


EQalphaC;
% //.Flatten[Solve[EQmass2==0, L58[]]] // Expand;
EQalphaC = %;


EQalphaS;
% //.Flatten[Solve[EQmass2==0, L58[]]] // Expand;
% //.Flatten[Solve[EQalphaC==0, L60[]]] // Expand;
EQalphaS = %;


EQalphaD;
% //.Flatten[Solve[EQmass2==0, L58[]]] // Expand;
% //.Flatten[Solve[EQalphaC==0, L60[]]] // Expand;
% //.Flatten[Solve[EQalphaS==0, L7[]]] // Expand;
EQalphaD = %;


{EQmass2, EQalphaC, EQalphaK, EQalphaS, EQalphaD};
{L58[], L60[], L46[], L7[], L82[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


-(- (alphaTA[] + 1) mass2A[] - 8/scale[]^2 Coefficient[LsecPW //.perth[LI[1],-i_,-j_] perth[LI[1],i_,j_]:>x,x]/kscal[]^2)/mass2A[] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalphaC]]==0, primeL60[]]] // Expand;
EQalphaT = % //.Flatten[Solve[EQalphaC==0, L60[]]] // Expand;


Nsec3 //.Flatten[Solve[PrintWell[TimeDer[Nsec3[[1]]]],primeL7[]]] //.Flatten[Solve[Nsec3[[1]],L7[]]] //.Flatten[Solve[Nsec[[1]],pprimematter[]]] // Simplify


Nsec3[[1]];
% //.Flatten[Solve[EQmass2==0, L58[]]] // Expand;
% //.Flatten[Solve[EQalphaC==0, L60[]]] // Expand;
% //.Flatten[Solve[EQalphaK==0, L46[]]] // Expand;
% //.Flatten[Solve[EQalphaS==0, L7[]]] // Expand;
% //.Flatten[Solve[EQalphaD==0, L82[]]] // Expand;
% // Simplify;
{alphaTA[] == Evaluate[alphaTA[] //.Flatten[Solve[EQalphaT==0, alphaTA[]]]], alphaDA[] == Evaluate[alphaDA[] //.Flatten[Solve[%, alphaDA[]]]]};
EQalphas = Collect[%,{primematter[],primealphaCA[]},Factor]


Lsec4;
% //.Flatten[Solve[PrintWell[TimeDer[EQalphaC]]==0, primeL60[]]] // Expand;
% //.Flatten[Solve[EQmass2==0, L58[]]] // Expand;
% //.Flatten[Solve[EQalphaC==0, L60[]]] // Expand;
% //.Flatten[Solve[EQalphaK==0, L46[]]] // Expand;
% //.Flatten[Solve[EQalphaS==0, L7[]]] // Expand;
% //.Flatten[Solve[EQalphaD==0, L82[]]] // Expand;
% //.Flatten[Solve[EQalphaT==0, primealphaCA[]]] // Expand;
% //.primematter[]^2:>x //.Flatten[Solve[EQalphas[[2]] //.primematter[]^2:>x, x]] // SVTExpand;
Lsec5 = % // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
%% // Length


(* ::Subsection::Closed:: *)
(*Lagrangian (plus alphas)*)


Lsec5;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"L2AT.m",Lsec5]


EQalphas[[1]]
Export[$OutputDirectory<>"EQalphaTA.m",%]


EQalphas[[2]]
Export[$OutputDirectory<>"EQalphaDA.m",%]


(* ::Subsection::Closed:: *)
(*Scalar field to Matter*)


VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
deltaTmatter=2  %/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical


subback=Flatten[{Solve[{Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]==0,SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]==0},{V[matter[]],primematter[]}],Solve[{TimeDer[Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]]==0,TimeDer[SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]]==0},{V'[matter[]],pprimematter[]}]}]


T00=Decomposition[1,\[Mu]->a,\[Nu]->b][deltaTmatter]/scale[]^2/mass2A[] // SVTExpand
T0i=metric\[Delta][i,j] PD[-j]@Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/kscal[]^2/mass2A[] // SVTExpand // FourierT
Tii=metric\[Delta][i,j] Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/3/scale[]^2/mass2A[] // SVTExpand // FourierT
Tij=-metric\[Delta][i,k] metric\[Delta][j,l] PD[-k]@PD[-l]@Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/kscal[]^2/scale[]^2/mass2A[] // SVTExpand // FourierT


T0iV=2 scale[]/kscal[]^2 (Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/mass2A[]+PD[-i]@T0i) // SVTExpand
Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2A[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
TiiV=2 metric\[Delta][j,k] PD[-k]@% scale[]^2/kscal[]^2 // SVTExpand // FourierT


Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2A[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
%+PD[-j]@TiiV/2/scale[]^2;
%+Evaluate[PD[-j]@TiiV/2/scale[]^2 //.i:>k //.j:>i //.k:>j];
TijT=-2 scale[]^2 % // SVTExpand // FourierT


(* ::Subsection::Closed:: *)
(*Background (with scalar field)*)


EQback1=densityA[]-3 mass2A[] hubbleC[]^2/scale[]^2+primematter[]^2/2/scale[]^2+V[matter[]] // Expand
Export[$OutputDirectory<>"EQback1As.m",%]


EQback2=pressureA[]+mass2A[] (hubbleC[]^2+2 primehubbleC[])/scale[]^2+primematter[]^2/2/scale[]^2-V[matter[]] // Expand
Export[$OutputDirectory<>"EQback2As.m",%]


EQback3=pprimematter[]+2 hubbleC[] primematter[]+scale[]^2 V'[matter[]] // Expand
Export[$OutputDirectory<>"EQback3As.m",%]


TimeDer[EQback1];
% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
% //.Flatten[Solve[EQback2==0,primehubbleC[]]] // Expand;
EQback4=%+3 hubbleC[] EQback1 // Expand
Export[$OutputDirectory<>"EQback4As.m",%]


(* ::Subsection::Closed:: *)
(*Equations of motion (with scalar field)*)


VarD[pertpsi[LI[1]],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
-%/scale[]^4/mass2A[] // Expand;
EQfirst1=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1As.m",%%]


VarD[pertB[LI[1]],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
%/kscal[]^2/scale[]^3/mass2A[] // Expand;
EQfirst2=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2As.m",%%]


VarD[pertE[LI[1]],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
-%/kscal[]^2/scale[]^4/mass2A[] // Expand;
EQfirst3=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3As.m",%%]


VarD[pertphi[LI[1]],PD][Lsec5]-3 VarD[pertE[LI[1]],PD][Lsec5]/kscal[]^2 //.delta[-LI[1],LI[1]]:>1;
%/scale[]^2/2/mass2A[]/kscal[]^2 // Expand;
EQfirst4=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4As.m",%%]


VarD[pertS[LI[1],i],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
2 %/mass2A[]/scale[]^2/kscal[]^2 // Expand;
EQfirst5=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5As.m",%%]


VarD[pertF[LI[1],i],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
-2 %/mass2A[]/scale[]^2/kscal[]^2 // Expand;
EQfirst6=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6As.m",%%]


VarD[perth[LI[1],i,j],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
-4 %/mass2A[]/scale[]^2 // Expand;
EQfirst7=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7As.m",%%]


VarD[pertea1[LI[1]],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
%/mass2A[]/scale[]^4 // Expand;
EQfirst8=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8As.m",%%]


VarD[pertea2[LI[1],i],PD][Lsec5] //.delta[-LI[1],LI[1]]:>1;
%/mass2A[]/scale[]^2 // Expand;
EQfirst9=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9As.m",%%]


(* ::Subsection::Closed:: *)
(*Background (with matter)*)


EQback1=EQback1 //.subback // Expand
Export[$OutputDirectory<>"EQback1Am.m",%]


EQback2=EQback2 //.subback // Expand
Export[$OutputDirectory<>"EQback2Am.m",%]


EQback3=primematter[]/scale[]^2 EQback3 //.subback // Expand
Export[$OutputDirectory<>"EQback3Am.m",%]


EQback4=EQback4 //.subback // Expand
Export[$OutputDirectory<>"EQback4Am.m",%]


(* ::Subsection::Closed:: *)
(*Equations of motion (with matter)*)


EQfirst1-T00 // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1Am.m",%%]


EQfirst2-T0i // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2Am.m",%%]


EQfirst3-Tij // Expand;
% //.subback // SVTExpand;
% //.Flatten[Solve[EQback3==0,primedensity[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3Am.m",%%]


EQfirst4+3/2 scale[]^2 Tii/kscal[]^2-3/2 scale[]^2 Tij/kscal[]^2 // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4Am.m",%%]


EQfirst5-T0iV // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5Am.m",%%]


EQfirst6-TiiV // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6Am.m",%%]


EQfirst7-TijT;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7Am.m",%%]


EQfirst8;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8Am.m",%%]


EQfirst9;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9Am.m",%%]






