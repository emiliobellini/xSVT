(* ::Package:: *)

(* ::Title:: *)
(*Calculation Scalar-Tensor*)


(* ::Section::Closed:: *)
(*Settings*)


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
% // PrintWell // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
metric\[Delta][i, j] PD[-j]@% // SVTExpand // FourierT;
EQg1 = -%/kscal[]^2/scale[]^2 // Expand;
% // PrintWell // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
EQg2 = metric\[Delta][i, j] % // SVTExpand // FourierT;
EQg3 = metric\[Delta][i, k] metric\[Delta][j, l] PD[-k]@PD[-l]@%% // SVTExpand // FourierT;


EQg2 = -(EQg2 + EQg3/kscal[]^2)/scale[]^2/4 // Expand;
% // ToPhysical


EQg3 = (-EQg2 + EQg3/2/kscal[]^2/scale[]^2)/kscal[]^2 // Expand;
% // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
EQg4=-%/scale[]^2+PD[-i]@EQg1 // ToCanonical;
% // PrintWell // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale[]^2 metric\[Delta][-i,-j] EQg2-2 scale[]^2 PD[-i]@PD[-j]@EQg3 // SVTExpand;
metric\[Delta][j,k] PD[-k]@% // SVTExpand // FourierT;
EQg5=-%/kscal[]^2/scale[]^2 // Expand;
% // PrintWell // ToPhysical


GaugeTransformation[pertmetricg[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale[]^2 metric\[Delta][-i,-j] EQg2-2 scale[]^2 PD[-i]@PD[-j]@EQg3-scale[]^2 PD[-j]@EQg5 // SVTExpand;
%-Evaluate[scale[]^2 PD[-j]@EQg5 //.-i->-k //.-j->-i //.-k->-j] // SVTExpand;
EQg6=%/scale[]^2 // Expand;
% // PrintWell // ToPhysical


(* ::Subsection::Closed:: *)
(*Matter*)


EQm0 = GaugeTransformation[pertmattercov[LI[1]], pertgauge];
% // ToPhysical


(* ::Subsection::Closed:: *)
(*Scalar Field*)


GaugeTransformation[pertscalarcov[LI[1]], pertgauge];
EQs0=-scale[] %/primescalar[] // Expand;
% // ToPhysical


(* ::Section:: *)
(*Scalar-Tensor*)


pertsgravity={pertmetricg[LI[1],-a,-b],pertmetricg[LI[1],-a,-i],pertmetricg[LI[1],-i,-j],pertscalarcov[LI[1]]}
pertstotal={pertphi[LI[1]],pertpsi[LI[1]],pertB[LI[1]],pertE[LI[1]],pertscalar[LI[1]],pertmatter[LI[1]],pertgaugealpha[LI[1]],pertgaugebeta[LI[1]],pertS[LI[1],-i],pertF[LI[1],-i],perth[LI[1],-i,-j]}
expansionorder=2
numberofderivatives=2


BuildDerivatives[numberofderivatives][pertsgravity]


BuildScalars[expansionorder,numberofderivatives][%];
Lgravity=LG[% //.List->Sequence]


Lmatter=-Sqrt[-Detmetricg[]] (1/2 metricg[\[Mu],\[Nu]] PD[-\[Mu]]@mattercov[] PD[-\[Nu]]@mattercov[]+V[mattercov[]])


TaylorExpand[expansionorder,numberofderivatives][Lgravity];
%+Decomposition[expansionorder][Lmatter] //.pert_[LI[2]]:>0 // Simplify;
%/expansionorder! // SVTExpand;
HideFunctions["L"][%];
Lsec=% // FourierT // NoScalar;
CollectPerts[%,{kscal[]},Factor];


Lsec;
Coeff[%];
% //.Coeff[coeff_] pert1_ PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert2_:>-Coeff[coeff] PD[-a]@pert1 PD[-b]@pert2-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert1 PD[-b]@pert2;
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pert_:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert^2;
Lsec=% //.Coeff[coeff_]:>coeff // SVTExpand // NoScalar;
CollectPerts[%,{kscal[]},Factor];


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
% // SubEQ[EQs0,pertscalarG[LI[1]]];
% // SubEQ[EQm0,pertmatterG[LI[1]]];
Nsec=% // SVTExpand;
CollectPerts[%,{kscal[]},Factor];


EQAsec=VarD[pertgaugealpha[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQBsec=VarD[pertgaugebeta[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQGsec=VarD[pertgaugegamma[LI[1],i],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;


Nsec=NoetherConstraints[pertstotal][EQAsec,EQBsec,EQGsec];


noetherlist={{1,L31[]},{1,L65[]},{1,L78[]},{1,L92[]},{2,L64[]},{1,L58[]},{2,L38[]},{2,L34[]},{2,L45[]},{2,L43[]},{2,L41[]},{2,L91[]},{2,L89[]},{2,L85[]},{2,L56[]},{2,L82[]},{2,L87[]},{2,L77[]},{2,L84[]},{2,L83[]},{2,L86[]},{2,L96[]},{2,L93[]},{2,L40[]},{2,L79[]},{2,L59[]},{2,L69[]},{2,L67[]},{2,L44[]},{2,L88[]},{2,L72[]},{2,L94[]},{2,L68[]},{2,L80[]},{3,L95[]},{3,L81[]},{1,pprimematter[]}};
{Nsec2,Lsec2}={Nsec,Lsec} // SubNoether[noetherlist,True]; // AbsoluteTiming


Lsec2;
Coeff[%];
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pertB[LI[1]]:>-Coeff[coeff] PD[-a]@pert pertB[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert pertB[LI[1]];
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pertpsi[LI[1]]:>-Coeff[coeff] PD[-a]@pert pertpsi[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert pertpsi[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertE[LI[1]];
% //.Coeff[coeff_] pertscalar[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertscalar[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertscalar[LI[1]] pertE[LI[1]];
% //.Coeff[coeff_] pertscalar[LI[1]] PD[-a_?TangentM1`Q]@pertphi[LI[1]]:>-Coeff[coeff] PD[-a]@pertscalar[LI[1]] pertphi[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertscalar[LI[1]] pertphi[LI[1]];
% //.Coeff[coeff_] pertF[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i1] pertF[LI[1],i2];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertS[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertS[LI[1],i2];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF[LI[1],i2_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertF[LI[1],i2]-Coeff[coeff] PD[-a]@pertS[LI[1],i1] pertF[LI[1],i2];
% //.Coeff[coeff_] perth[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth[LI[1],i3_,i4_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth[LI[1],i1,i2] perth[LI[1],i3,i4];
Lsec3=% //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor];


EQmass2=8 Coefficient[PrintWell[Lsec3] //.primeperth[LI[1],-i_,-j_] primeperth[LI[1],i_,j_]:>x,x]/scale[]^2-mass2[] // Expand
EQalphaT=8 Coefficient[PrintWell[Lsec3] //.perth[LI[1],-i_,-j_] perth[LI[1],i_,j_]:>x,x]/kscal[]^2/scale[]^2+mass2[] (1+alphaT[]) // Expand
EQalphaB=Coefficient[PrintWell[Lsec3],pertB[LI[1]] primepertscalar[LI[1]]]/kscal[]^2/scale[]+hubbleC[] mass2[] alphaB[] // Expand
EQalphaK=2 Coefficient[PrintWell[Lsec3],primepertscalar[LI[1]]^2]-hubbleC[]^2 mass2[] alphaK[] // Expand


rules=Flatten[{Solve[EQmass2==0,L23[]],Solve[PrintWell[TimeDer[EQmass2]]==0,primeL23[]],Solve[EQalphaT==0,L37[]],Solve[EQalphaB==0,L11[]],Solve[PrintWell[TimeDer[EQalphaB]]==0,primeL11[]],Solve[EQalphaK==0,L47[]],Solve[PrintWell[TimeDer[EQalphaK]]==0,primeL47[]]}]


Lsec3;
% //.rules // Expand;
Lsec4=% // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor]


(* ::Subsection:: *)
(*Lagrangian*)


Lsec4;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/L2ST.m",Lsec4]


(* ::Subsection:: *)
(*Scalar field to Matter*)


VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
deltaTmatter=2  %/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical


subback=Flatten[{Solve[{Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]==0,SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]==0},{V[matter[]],primematter[]}],Solve[{TimeDer[Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]]==0,TimeDer[SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]]==0},{V'[matter[]],pprimematter[]}]}]


T00=Decomposition[1,\[Mu]->a,\[Nu]->b][deltaTmatter]/scale[]^2/mass2[] // SVTExpand
T0i=metric\[Delta][i,j] PD[-j]@Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/kscal[]^2/mass2[] // SVTExpand // FourierT
Tii=metric\[Delta][i,j] Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/3/scale[]^2/mass2[] // SVTExpand // FourierT
Tij=-metric\[Delta][i,k] metric\[Delta][j,l] PD[-k]@PD[-l]@Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/kscal[]^2/scale[]^2/mass2[] // SVTExpand // FourierT


T0iV=2 scale[]/kscal[]^2 (Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/mass2[]+PD[-i]@T0i) // SVTExpand
Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
TiiV=2 metric\[Delta][j,k] PD[-k]@% scale[]^2/kscal[]^2 // SVTExpand // FourierT


Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
%+PD[-j]@TiiV/2/scale[]^2;
%+Evaluate[PD[-j]@TiiV/2/scale[]^2 //.i:>k //.j:>i //.k:>j];
TijT=-2 scale[]^2 % // SVTExpand // FourierT


(* ::Subsection:: *)
(*Background (with scalar field)*)


EQback1=densityS[]-3 mass2[] hubbleC[]^2/scale[]^2+primematter[]^2/2/scale[]^2+V[matter[]] // Expand
Export[NotebookDirectory[]<>"Equations/EQback1Ss.m",%]


EQback2=pressureS[]+mass2[] (hubbleC[]^2+2 primehubbleC[])/scale[]^2+primematter[]^2/2/scale[]^2-V[matter[]] // Expand
Export[NotebookDirectory[]<>"Equations/EQback2Ss.m",%]


EQback3=pprimematter[]+2 hubbleC[] primematter[]+scale[]^2 V'[matter[]] // Expand
Export[NotebookDirectory[]<>"Equations/EQback3Ss.m",%]


TimeDer[EQback1];
% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
% //.Flatten[Solve[EQback2==0,primehubbleC[]]] // Expand;
EQback4=%+3 hubbleC[] EQback1 // Expand
Export[NotebookDirectory[]<>"Equations/EQback4Ss.m",%]


(* ::Subsection:: *)
(*Equations of motion (with scalar field)*)


VarD[pertpsi[LI[1]],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst1=-%/scale[]^4/mass2[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst1Ss.m",%%]


VarD[pertB[LI[1]],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst2=%/kscal[]^2/scale[]^3/mass2[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst2Ss.m",%%]


VarD[pertE[LI[1]],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst3=-%/kscal[]^2/scale[]^4/mass2[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst3Ss.m",%%]


VarD[pertphi[LI[1]],PD][Lsec4]-3 VarD[pertE[LI[1]],PD][Lsec4]/kscal[]^2 //.delta[-LI[1],LI[1]]:>1;
EQfirst4=%/scale[]^2/2/mass2[]/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst4Ss.m",%%]


VarD[pertscalar[LI[1]],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
%/mass2[]/scale[]^4 // Expand;
EQfirst5=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst5Ss.m",%%]


VarD[pertS[LI[1],i],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst6=2 %/mass2[]/scale[]^2/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst6Ss.m",%%]


VarD[pertF[LI[1],i],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst7=-2 %/mass2[]/scale[]^2/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst7Ss.m",%%]


VarD[perth[LI[1],i,j],PD][Lsec4] //.delta[-LI[1],LI[1]]:>1;
EQfirst8=-4 %/mass2[]/scale[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst8Ss.m",%%]


(* ::Subsection:: *)
(*Background (with matter)*)


EQback1=EQback1 //.subback // Expand
Export[NotebookDirectory[]<>"Equations/EQback1Sm.m",%]


EQback2=EQback2 //.subback // Expand
Export[NotebookDirectory[]<>"Equations/EQback2Sm.m",%]


EQback3=primematter[]/scale[]^2 EQback3 //.subback // Expand
Export[NotebookDirectory[]<>"Equations/EQback3Sm.m",%]


EQback4=EQback4 //.subback // Expand
Export[NotebookDirectory[]<>"Equations/EQback4Sm.m",%]


(* ::Subsection:: *)
(*Equations of motion (with matter)*)


EQfirst1-T00 // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst1Sm.m",%%]


EQfirst2-T0i // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst2Sm.m",%%]


EQfirst3-Tij // Expand;
% //.subback // Expand;
% //.Flatten[Solve[EQback3==0,primedensity[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst3Sm.m",%%]


EQfirst4+3/2 scale[]^2 Tii/kscal[]^2-3/2 scale[]^2 Tij/kscal[]^2 // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst4Sm.m",%%]


EQfirst5;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst5Sm.m",%%]


EQfirst6-T0iV // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst6Sm.m",%%]


EQfirst7-TiiV // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst7Sm.m",%%]


EQfirst8-TijT;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[NotebookDirectory[]<>"Equations/EQfirst8Sm.m",%%]
