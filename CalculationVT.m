(* ::Package:: *)

(* ::Title:: *)
(*Calculation Vector-Tensor*)


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
(*Vector Field*)


GaugeTransformation[pertvectorcov[LI[1],\[Mu]], pertgauge, \[Mu]->a];
EQv0 = - scale[] (%+vector0[] EQg0)/(primevector0[] + hubbleC[] vector0[]) // Simplification // Expand;
% // PrintWell // ToPhysical


GaugeTransformation[pertvectorcov[LI[1],-\[Mu]], pertgauge, \[Mu]->i];
metric\[Delta][i,j]/scale[]^2 PD[-j]@% // ToCanonical // FourierT;
EQv1 = scale[] (-%/kscal[]^2/vector0[] + EQg1) // SVTExpand;
% // PrintWell // ToPhysical


GaugeTransformation[pertvectorcov[LI[1],-\[Mu]], pertgauge, \[Mu]->i];
EQv2 = ((%/scale[]^2 - vector0[] PD[-i]@(EQv1/scale[] - EQg1))/vector0[] - EQg4) scale[] // SVTExpand;
% // PrintWell // ToPhysical


(* ::Section:: *)
(*Vector-Tensor*)


(* Use RestoreFunctions[expr] to rewrite expr in terms of the original scalar functions *)


(* ::Subsection:: *)
(*Calculation Lagrangian*)


pertsgravity={pertmetricg[LI[1],-a,-b],pertmetricg[LI[1],-a,-i],pertmetricg[LI[1],-i,-j],pertvectorcov[LI[1],a],pertvectorcov[LI[1],i]}
pertstotal={pertphi[LI[1]],pertpsi[LI[1]],pertB[LI[1]],pertE[LI[1]],pertvector0[LI[1]],pertvector1[LI[1]],pertvector2[LI[1],-i],
	pertmatter[LI[1]],pertgaugealpha[LI[1]],pertgaugebeta[LI[1]],pertS[LI[1],-i],pertF[LI[1],-i],perth[LI[1],-i,-j]}
expansionorder=2
numberofderivatives=2


BuildDerivatives[numberofderivatives][pertsgravity]


BuildScalars[expansionorder,numberofderivatives][%];
Lgravity=LG[% //.List->Sequence]


Lmatter=-Sqrt[-Detmetricg[]] (1/2 metricg[\[Mu],\[Nu]] PD[-\[Mu]]@mattercov[] PD[-\[Nu]]@mattercov[]+V[mattercov[]])


TaylorExpand[expansionorder,numberofderivatives][Lgravity];
%+Simplify[Decomposition[expansionorder][Lmatter]] //.pert_[LI[2]]:>0;
%/expansionorder! // SVTExpand;
HideFunctions["L"][%];
Lsec=% // FourierT // NoScalar;
CollectPerts[%,{kscal[]},Factor];


Lsec;
Coeff[%];
% //.Coeff[coeff_] pert1_ PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert2_:>-Coeff[coeff] PD[-a]@pert1 PD[-b]@pert2-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert1 PD[-b]@pert2;
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pert_:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert^2;
Lsec=% //.Coeff[coeff_]:>coeff // SVTExpand // Simplify // ToCanonical // NoScalar;
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
% // SubEQ[EQv0,pertvector0G[LI[1]]];
% // SubEQ[EQv1,pertvector1G[LI[1]]];
% // SubEQ[EQv2,pertvector2G[LI[1],-i]];
% // SubEQ[EQm0,pertmatterG[LI[1]]];
Nsec=% // SVTExpand;
CollectPerts[%,{kscal[]},Factor];


EQAsec=VarD[pertgaugealpha[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQBsec=VarD[pertgaugebeta[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQGsec=VarD[pertgaugegamma[LI[1],i],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;


Nsec=NoetherConstraints[pertstotal][EQAsec,EQBsec,EQGsec];


noetherlist={ L82[],  L63[],  L58[],  L71[],  L64[], L138[], L128[], L127[],  L81[], L122[],
              L66[],  L78[],  L75[],  L76[], L137[], L117[], L116[], L121[], L113[], L135[],
             L126[], L129[], L132[], L131[], L111[],  L73[],  L74[],  L67[], L110[], L130[],
              L96[], L133[], L115[], L114[], L139[], L118[],  L70[],  L49[],  L79[], L134[],
             L142[], L125[], L124[], L141[], L140[]};
{Nsec2,Lsec2}={Nsec,Lsec} // SubNoether[noetherlist,True]; // AbsoluteTiming


Lsec2;
Coeff[%];
% //.Coeff[coeff_] perth[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth[LI[1],i3_,i4_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth[LI[1],i1,i2] perth[LI[1],i3,i4];
% //.Coeff[coeff_] pertF[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i1] pertF[LI[1],i2];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertS[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertS[LI[1],i2];
% //.Coeff[coeff_] pertvector2[LI[1],i1_] PD[-a_?TangentM1`Q]@pertvector2[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertvector2[LI[1],i1] pertvector2[LI[1],i2];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertS[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertS[LI[1],i1];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertvector2[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertvector2[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertvector2[LI[1],i1];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertvector2[LI[1],i2_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertvector2[LI[1],i2]-Coeff[coeff] PD[-a]@pertS[LI[1],i1] pertvector2[LI[1],i2];
% //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
Coeff[%];
% //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertB[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertB[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertB[LI[1]];
% //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertpsi[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertpsi[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertpsi[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertE[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertvector0[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertvector0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertvector0[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertvector1[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertvector1[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertvector1[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertvector0[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertvector0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertvector0[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertvector1[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertvector1[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertvector1[LI[1]];
% //.Coeff[coeff_] pertvector1[LI[1]] PD[-a_?TangentM1`Q]@pertvector0[LI[1]]:>-Coeff[coeff] PD[-a]@pertvector1[LI[1]] pertvector0[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertvector1[LI[1]] pertvector0[LI[1]];
% //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertmatter[LI[1]];
% //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertmatter[LI[1]];
Lsec3=% //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor];


Nsec3 = Nsec2 // Simplify // DeleteDuplicates // Expand;


rules={primevector0[]:>L82[]-vector0[] hubbleC[],pprimevector0[]:>Evaluate[PrintWell[TimeDer[L82[]-vector0[] hubbleC[]]]],
	ppprimevector0[]:>Evaluate[PrintWell[TimeDer[TimeDer[L82[]-vector0[] hubbleC[]]]]]}


{Nsec4,Lsec4}={Nsec3,Lsec3} //.rules // ToCanonical // NoScalar;


noetherlist={L100[], L109[], pprimematter[]};
{Nsec5,Lsec5}={Nsec4,Lsec4} // SubNoether[noetherlist,True]; // AbsoluteTiming


Lsec6=Lsec5 //.rules // ToCanonical // NoScalar;


EQmass2 = - mass2V[] + 8 Coefficient[PrintWell[Lsec6] //.primeperth[LI[1],-i_,-j_] primeperth[LI[1],i_,j_]:>x,x]/scale[]^2 // Expand
EQalphaT = - (alphaTV[] + 1) mass2V[] - 8/scale[]^2 Coefficient[PrintWell[Lsec6] //.perth[LI[1],-i_,-j_] perth[LI[1],i_,j_]:>x,x]/kscal[]^2 // Expand
EQalphaK0 = - alphaKV0[] mass2V[] + 2 Coefficient[PrintWell[Lsec6], primepertvector0[LI[1]]^2]/hubbleC[]^2 // Expand
EQalphaB0 = - alphaBV0[] mass2V[] + Coefficient[PrintWell[Lsec6],primepertphi[LI[1]] primepertvector0[LI[1]]]/3/scale[]/hubbleC[] // Expand
EQalphaK1 = - alphaKV1[] mass2V[] + 2 Coefficient[PrintWell[Lsec6], primepertvector1[LI[1]]^2]/kscal[]^2 // Expand
EQalpha0 = - alpha0[] mass2V[] + 6 Coefficient[PrintWell[Lsec6], pertB[LI[1]]^2]/kscal[]^4/scale[]^2 // Expand
EQalpha1 = - alpha1[] mass2V[] + 2 Coefficient[PrintWell[Lsec6], pertvector0[LI[1]] primepertvector1[LI[1]]]/kscal[]^2/hubbleC[] // Expand
EQalpha2 = - alpha2[] mass2V[] - mass2V[]/2 + scale[]^2 (L14[]-L36[]) - vector0[]^2/scale[]^2 (L2[]-L51[]) // Expand
EQalpha3 = - (alpha3[] + 2 alpha0[] - 2 alpha0[] primehubbleC[]/hubbleC[]^2) mass2V[] + (L82[] (L82[] - 2 hubbleC[] vector0[]) (L101[] - L19[] + L60[] - L83[]) + L82[] vector0[] (L99[] - L54[] + primeL60[] - primeL83[]))/scale[]^2/hubbleC[]^2 // Expand
EQalphaV = - (-alpha2[]^2 + 2*alphaKV1[] + 2*alphaKV1[]*alphaVV[])/2 mass2V[] - vector0[]^2 (L2[]-L51[])/scale[]^2


Lsec6;
% //.Flatten[Solve[EQalphaT==0,L95[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalpha0]]==0,primeL80[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalphaB0]]==0,primeL106[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalpha1]]==0,primeL101[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQmass2]]==0,primeL34[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalpha2]]==0,primeL14[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQalphaK1]]==0,primeL46[]]] // Expand;
% //.Flatten[Solve[EQalpha3==0,L99[]]] // Expand;
% //.Flatten[Solve[EQalpha0==0,L80[]]] // Expand;
% //.Flatten[Solve[EQalphaB0==0,L106[]]] // Expand;
% //.Flatten[Solve[EQalpha1==0,L101[]]] // Expand;
% //.Flatten[Solve[EQmass2==0,L34[]]] // Expand;
% //.Flatten[Solve[EQalpha2==0,L14[]]] // Expand;
% //.Flatten[Solve[EQalphaV==0,L51[]]] // Expand;
% //.Flatten[Solve[EQalphaK1==0,L46[]]] // Expand;
% //.Flatten[Solve[EQalphaK0==0,L85[]]] // Expand;
% //.rules // Expand;
Lsec7=% // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor] // ScreenDollarIndices


Lsec7 // Length


(* ::Subsection::Closed:: *)
(*Lagrangian*)


Lsec7;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"L2VT.m",Lsec7]


(* ::Subsection::Closed:: *)
(*Scalar field to Matter*)


VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
deltaTmatter=2  %/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical


subback=Flatten[{Solve[{Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]==0,SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]==0},{V[matter[]],primematter[]}],Solve[{TimeDer[Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]]==0,TimeDer[SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]]==0},{V'[matter[]],pprimematter[]}]}]


T00=Decomposition[1,\[Mu]->a,\[Nu]->b][deltaTmatter]/scale[]^2/mass2V[] // SVTExpand
T0i=metric\[Delta][i,j] PD[-j]@Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/kscal[]^2/mass2V[] // SVTExpand // FourierT
Tii=metric\[Delta][i,j] Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/3/scale[]^2/mass2V[] // SVTExpand // FourierT
Tij=-metric\[Delta][i,k] metric\[Delta][j,l] PD[-k]@PD[-l]@Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/kscal[]^2/scale[]^2/mass2V[] // SVTExpand // FourierT


T0iV=2 scale[]/kscal[]^2 (Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/mass2V[]+PD[-i]@T0i) // SVTExpand
Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2V[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
TiiV=2 metric\[Delta][j,k] PD[-k]@% scale[]^2/kscal[]^2 // SVTExpand // FourierT


Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2V[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
%+PD[-j]@TiiV/2/scale[]^2;
%+Evaluate[PD[-j]@TiiV/2/scale[]^2 //.i:>k //.j:>i //.k:>j];
TijT=-2 scale[]^2 % // SVTExpand // FourierT


(* ::Subsection::Closed:: *)
(*Background (with scalar field)*)


EQback1=densityV[]-3 mass2V[] hubbleC[]^2/scale[]^2+primematter[]^2/2/scale[]^2+V[matter[]] // Expand
Export[$OutputDirectory<>"EQback1Vs.m",%]


EQback2=pressureV[]+mass2V[] (hubbleC[]^2+2 primehubbleC[])/scale[]^2+primematter[]^2/2/scale[]^2-V[matter[]] // Expand
Export[$OutputDirectory<>"EQback2Vs.m",%]


EQback3=pprimematter[]+2 hubbleC[] primematter[]+scale[]^2 V'[matter[]] // Expand
Export[$OutputDirectory<>"EQback3Vs.m",%]


TimeDer[EQback1];
% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
% //.Flatten[Solve[EQback2==0,primehubbleC[]]] // Expand;
EQback4=%+3 hubbleC[] EQback1 // Expand
Export[$OutputDirectory<>"EQback4Vs.m",%]


(* ::Subsection::Closed:: *)
(*Equations of motion (with scalar field)*)


VarD[pertpsi[LI[1]],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst1=-%/scale[]^4/mass2V[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1Vs.m",%%]


VarD[pertB[LI[1]],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst2=%/kscal[]^2/scale[]^3/mass2V[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2Vs.m",%%]


VarD[pertE[LI[1]],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst3=-%/kscal[]^2/scale[]^4/mass2V[] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3Vs.m",%%]


VarD[pertphi[LI[1]],PD][Lsec7]-3 VarD[pertE[LI[1]],PD][Lsec7]/kscal[]^2 //.delta[-LI[1],LI[1]]:>1;
EQfirst4=%/scale[]^2/2/mass2V[]/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4Vs.m",%%]


VarD[pertS[LI[1],i],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst5=2 %/mass2V[]/scale[]^2/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5Vs.m",%%]


VarD[pertF[LI[1],i],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst6=-2 %/mass2V[]/scale[]^2/kscal[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6Vs.m",%%]


VarD[perth[LI[1],i,j],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
EQfirst7=-4 %/mass2V[]/scale[]^2 // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7Vs.m",%%]


VarD[pertvector0[LI[1]],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
%/mass2V[]/scale[]^4 // Expand;
EQfirst8=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8Vs.m",%%]


VarD[pertvector1[LI[1]],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
%/mass2V[]/scale[]^4 // Expand;
EQfirst9=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9Vs.m",%%]


VarD[pertvector2[LI[1],i],PD][Lsec7] //.delta[-LI[1],LI[1]]:>1;
%/mass2V[]/scale[]^4 // Expand;
EQfirst10=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst10Vs.m",%%]


(* ::Subsection::Closed:: *)
(*Background (with matter)*)


EQback1=EQback1 //.subback // Expand
Export[$OutputDirectory<>"EQback1Vm.m",%]


EQback2=EQback2 //.subback // Expand
Export[$OutputDirectory<>"EQback2Vm.m",%]


EQback3=primematter[]/scale[]^2 EQback3 //.subback // Expand
Export[$OutputDirectory<>"EQback3Vm.m",%]


EQback4=EQback4 //.subback // Expand
Export[$OutputDirectory<>"EQback4Vm.m",%]


(* ::Subsection::Closed:: *)
(*Equations of motion (with matter)*)


EQfirst1-T00 // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1Vm.m",%%]


EQfirst2-T0i // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2Vm.m",%%]


EQfirst3-Tij // Expand;
% //.subback // Expand;
% //.Flatten[Solve[EQback3==0,primedensity[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3Vm.m",%%]


EQfirst4+3/2 scale[]^2 Tii/kscal[]^2-3/2 scale[]^2 Tij/kscal[]^2 // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4Vm.m",%%]


EQfirst5-T0iV // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5Vm.m",%%]


EQfirst6-TiiV // Expand;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6Vm.m",%%]


EQfirst7-TijT;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7Vm.m",%%]


EQfirst8;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8Vm.m",%%]


EQfirst9;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9Vm.m",%%]


EQfirst10;
% //.subback // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst10Vm.m",%%]















