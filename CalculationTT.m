(* ::Package:: *)

(* ::Title:: *)
(*Calculation Tensor-Tensor*)


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
(*Tensor Field*)


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->b];
-%/scale2[]^2/lapse2[]^2/2;
EQt0 = % // SVTExpand // Simplify // Expand;
% // ToPhysical // CollectPerts


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
metric\[Delta][i, j] PD[-j]@%/kscal[]^2 // ToCanonical // FourierT;
-%/scale2[]^2;
EQt1 = % // SVTExpand // Simplify // Expand;
% // CollectPerts


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
EQt2 = metric\[Delta][i, j] % // ToCanonical // FourierT // SVTExpand;
EQt3 = metric\[Delta][i, k] metric\[Delta][j, l] PD[-k]@PD[-l]@%% // ToCanonical // FourierT // SVTExpand;


(EQt2 + EQt3/kscal[]^2)/4;
EQt2 = -%/scale2[]^2 // Simplify // Expand;
% // // CollectPerts


EQt3/kscal[]^2/scale2[]^2/2-EQt2;
EQt3 = %/kscal[]^2 // Expand;
% // CollectPerts


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->a, \[Nu]->i];
-%/scale2[]^2 + PD[-i]@EQt1;
EQt4 = % // SVTExpand // Simplify // Expand;
% // CollectPerts


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale2[]^2 (metric\[Delta][-i,-j] EQt2 - PD[-i]@PD[-j]@EQt3) // SVTExpand;
metric\[Delta][j,k] PD[-k]@% // SVTExpand // FourierT;
EQt5 = -%/kscal[]^2/scale2[]^2 // Simplify // Expand;
% // CollectPerts


GaugeTransformation[perttensorcov[LI[1],-\[Mu], -\[Nu]], pertgauge, \[Mu]->i, \[Nu]->j];
%+2 scale2[]^2 (metric\[Delta][-i,-j] EQt2 - PD[-i]@PD[-j]@EQt3) // SVTExpand;
%-scale2[]^2 PD[-j]@EQt5 // SVTExpand;
%-Evaluate[scale2[]^2 PD[-j]@EQt5 //.-i->-k //.-j->-i //.-k->-j] // SVTExpand;
EQt6 = %/scale2[]^2 // Simplify // Expand;
CollectPerts[%,{},Factor]


(* ::Section:: *)
(*Tensor-Tensor*)


(* Use RestoreFunctions[expr] to rewrite expr in terms of the original scalar functions *)


(* ::Subsection:: *)
(*Calculation Lagrangian*)


(* ::Subsubsection::Closed:: *)
(*Preliminary calculation*)


pertsgravity={pertmetricg[LI[1],-a,-b],pertmetricg[LI[1],-a,-i],pertmetricg[LI[1],-i,-j],perttensorcov[LI[1],-a,-b],perttensorcov[LI[1],-a,-i],perttensorcov[LI[1],-i,-j]}
pertstotal={pertphi[LI[1]],pertpsi[LI[1]],pertB[LI[1]],pertE[LI[1]],pertphi2[LI[1]],pertpsi2[LI[1]],pertB2[LI[1]],pertE2[LI[1]],
	pertmatter[LI[1]],pertgaugealpha[LI[1]],pertgaugebeta[LI[1]],pertS[LI[1],-i],pertF[LI[1],-i],perth[LI[1],-i,-j],pertS2[LI[1],-i],pertF2[LI[1],-i],perth2[LI[1],-i,-j]}
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


Lsec;
Coeff[%];
% //.Coeff[coeff_] pert1_ PD[-a_?TangentM1`Q]@PD[-b_?TangentM1`Q]@pert2_:>-Coeff[coeff] PD[-a]@pert1 PD[-b]@pert2-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert1 PD[-b]@pert2;
% //.Coeff[coeff_] pert_ PD[-a_?TangentM1`Q]@pert_:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert^2;
Lsec=% //.Coeff[coeff_]:>coeff // SVTExpand // Simplify // ToCanonical // NoScalar;


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
% // SubEQ[EQt0,pertpsi2G[LI[1]]];
% // SubEQ[EQt1,pertB2G[LI[1]]];
% // SubEQ[EQt2,pertphi2G[LI[1]]];
% // SubEQ[EQt3,pertE2G[LI[1]]];
% // SubEQ[EQt4,pertS2G[LI[1],-i]];
% // SubEQ[EQt5,pertF2G[LI[1],-i]];
% // SubEQ[EQt6,perth2G[LI[1],-i,-j]];
% // SubEQ[EQm0,pertmatterG[LI[1]]];
Nsec=% // SVTExpand;
CollectPerts[%,{kscal[]},Factor];


EQAsec=VarD[pertgaugealpha[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQBsec=VarD[pertgaugebeta[LI[1]],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;
EQGsec=VarD[pertgaugegamma[LI[1],i],PD][Nsec] //.delta[-LI[1],LI[1]]:>1 // PrintWell;


Nsec=NoetherConstraints[pertstotal][EQAsec,EQBsec,EQGsec];


noetherlist={L109[], L114[], L218[], L223[], L110[], L117[], L243[], L264[], L168[], L169[],
			 L217[], L222[], L212[], L209[], L250[], L164[], L263[], L253[], L259[], L155[],
			 L161[], L118[], L258[], L157[], L159[], L256[], L151[], L219[], L252[], L251[]};
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


noetherlist={L260[], L266[], L162[], L158[], L261[], L249[], L248[], L242[], L207[], L210[],
			 L233[], L195[], L160[], L165[], L265[], L255[], L244[], L213[], L257[], L214[],
			 L225[], L254[], L134[], L154[], L226[], L246[], L268[], L166[], L247[], L267[]};
{Nsec3,Lsec3}={Nsec2,Lsec2} // SubNoether[noetherlist,False]; // AbsoluteTiming
Lsec3 = Lsec3 // ToCanonical // NoScalar;
% // Length


noetherlist
Coefficient[Nsec3,#]&/@% // Flatten // DeleteDuplicates
Coefficient[Nsec3,#]&/@PrintWell[TimeDer[%%]] // Flatten // DeleteDuplicates
Coefficient[Nsec3,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // Flatten // DeleteDuplicates
Coefficient[Nsec3,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // Flatten // DeleteDuplicates


noetherlist
Coefficient[Lsec3,#]&/@% // DeleteDuplicates
Coefficient[Lsec3,#]&/@PrintWell[TimeDer[%%]] // DeleteDuplicates
Coefficient[Lsec3,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // DeleteDuplicates
Coefficient[Lsec3,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // DeleteDuplicates


rules = {hubbleC2[]:>hubbleC[]-L267[], primehubbleC2[]:>primehubbleC[]-primeL267[], pprimehubbleC2[]:>pprimehubbleC[]-pprimeL267[], ppprimehubbleC2[]:>ppprimehubbleC[]-ppprimeL267[]}


{Nsec3,Lsec3} = {Nsec3,Lsec3} //.rules // Expand;
Lsec3 // Length


noetherlist={L245[], L234[], L228[]};
{Nsec4,Lsec4}={Nsec3,Lsec3} // SubNoether[noetherlist,False]; // AbsoluteTiming
Lsec4 = Lsec4 //.rules // ToCanonical // NoScalar;
% // Length


noetherlist
Coefficient[Nsec4,#]&/@% // Flatten // DeleteDuplicates
Coefficient[Nsec4,#]&/@PrintWell[TimeDer[%%]] // Flatten // DeleteDuplicates
Coefficient[Nsec4,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // Flatten // DeleteDuplicates
Coefficient[Nsec4,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // Flatten // DeleteDuplicates


noetherlist
Coefficient[Lsec4,#]&/@% // DeleteDuplicates
Coefficient[Lsec4,#]&/@PrintWell[TimeDer[%%]] // DeleteDuplicates
Coefficient[Lsec4,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // DeleteDuplicates
Coefficient[Lsec4,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // DeleteDuplicates


{Lsec5, Nsec5} = {Lsec4, Nsec4} //.Flatten[Solve[Nsec4[[4]],L269[]]] //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] //.rules // Expand;
Lsec5 // Length


{L269[], pprimematter[]}
Coefficient[Lsec5,#]&/@% // DeleteDuplicates
Coefficient[Lsec5,#]&/@PrintWell[TimeDer[%%]] // DeleteDuplicates
Coefficient[Lsec5,#]&/@PrintWell[TimeDer[TimeDer[%%%]]] // DeleteDuplicates
Coefficient[Lsec5,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%%%%]]]] // DeleteDuplicates


LsecS = Lsec5 //.pert_[LI[1],_]:>0 //.pert_[LI[1],_,_]:>0;
LsecV = Lsec5 //.pert_[LI[1]]:>0 //.pert_[LI[1],_,_]:>0;
LsecT = Lsec5 //.pert_[LI[1]]:>0 //.pert_[LI[1],_]:>0;


LsecS // Length
LsecV // Length
LsecT // Length


(* ::Subsubsection::Closed:: *)
(*Tensor Lagrangian*)


LsecT;
Coeff[%];
% //.Coeff[coeff_] perth[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth[LI[1],i3_,i4_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth[LI[1],i1,i2] perth[LI[1],i3,i4];
% //.Coeff[coeff_] perth2[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth2[LI[1],i3_,i4_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth2[LI[1],i1,i2] perth2[LI[1],i3,i4];
% //.Coeff[coeff_] perth[LI[1],i1_,i2_] PD[-a_?TangentM1`Q]@perth2[LI[1],i3_,i4_]:>- Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] perth[LI[1],i1,i2] perth2[LI[1],i3,i4] - Coeff[coeff] PD[-a]@perth[LI[1],i1,i2] perth2[LI[1],i3,i4];
LsecT1 = % //.rules //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
% // Length


EQa0 = (- alpha0[] + Coefficient[PrintWell[LsecT1] //.primeperth[LI[1],-i_,-j_] primeperth[LI[1],i_,j_]:>x,x]) 4/scale[]^4 // Expand;
EQa1 = (- alpha1[] + Coefficient[PrintWell[LsecT1] //.perth[LI[1],-i_,-j_] perth[LI[1],i_,j_]:>x,x]) 2/scale2[]^4 //.kscal[]:>0 // Expand;
EQa2 = -(- alpha2[] + Coefficient[PrintWell[LsecT1] //.perth[LI[1],-i_,-j_] perth[LI[1],i_,j_]:>x, kscal[]^2 x]) 4 hubbleC[]/3/L267[]/scale[]^2/scale2[]^2 // Expand;
EQa3 = -(- alpha3[] + Coefficient[PrintWell[LsecT1] //.primeperth2[LI[1],-i_,-j_] primeperth2[LI[1],i_,j_]:>x,x]) 2/scale2[]^4 // Expand;
EQa4 = -(- alpha4[] + Coefficient[PrintWell[LsecT1] //.perth2[LI[1],-i_,-j_] perth2[LI[1],i_,j_]:>x, kscal[]^2 x]) 2/scale2[]^4 // Expand;
EQa5 = (- alpha5[] + Coefficient[PrintWell[LsecT1] //.primeperth[LI[1],-i_,-j_] primeperth2[LI[1],i_,j_]:>x,x]) 4/scale[]^2/scale2[]^2 // Expand;
EQa6 = (- alpha6[] + Coefficient[PrintWell[LsecT1] //.primeperth[LI[1],i_,j_] perth2[LI[1],-i_,-j_]:>x,x]) 2/3/scale2[]^4/L267[] // Expand;
EQa7 = (- alpha7[] + Coefficient[PrintWell[LsecT1] //.perth[LI[1],-i_,-j_] perth2[LI[1],i_,j_]:>x, kscal[]^2 x]) 4/scale[]^2/scale2[]^2 // Expand;


EQa0;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
EQa0 = % //.rules // Expand;


EQa5;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
EQa5 = % //.rules // Expand;


EQa7;
% //.Flatten[Solve[EQa4==0,L123[]]] // Expand;
EQa7 = % //.rules // Expand;


EQa6;
% //.Flatten[Solve[PrintWell[TimeDer[EQa5]]==0,primeL145[]]] // Expand;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
EQa6 = % //.rules // Expand;


EQa2;
% //.Flatten[Solve[PrintWell[TimeDer[EQa0]]==0,primeL37[]]] // Expand;
% //.Flatten[Solve[EQa0==0,L37[]]] // Expand;
% //.Flatten[Solve[EQa4==0,L123[]]] // Expand;
% //.Flatten[Solve[EQa6==0,L119[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
EQa2 = % //.rules // Expand;


EQa1;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa3]]]==0,pprimeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa5]]]==0,pprimeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa3]]==0,primeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa5]]==0,primeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa6]]==0,primeL119[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa7]]==0,primeL149[]]] // Expand;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa6==0,L119[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
EQa1 = % //.rules // Expand;


{EQa0, EQa1, EQa2, EQa3, EQa4, EQa5, EQa6, EQa7};
{L37[], L146[], L148[], L136[], L123[], L145[], L119[], L149[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecT1;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa3]]]==0,pprimeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa5]]]==0,pprimeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa0]]==0,primeL37[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa3]]==0,primeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa5]]==0,primeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa6]]==0,primeL119[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa7]]==0,primeL149[]]] // Expand;
% //.Flatten[Solve[EQa0==0,L37[]]] // Expand;
% //.Flatten[Solve[EQa1==0,L146[]]] // Expand;
% //.Flatten[Solve[EQa2==0,L148[]]] // Expand;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
% //.Flatten[Solve[EQa4==0,L123[]]] // Expand;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa6==0,L119[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
LsecT2 = % //.rules // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor]
%% // Length


(* ::Subsubsection::Closed:: *)
(*Vector Lagrangian*)


LsecV;
Coeff[%];
% //.Coeff[coeff_] pertF[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i1] pertF[LI[1],i2];
% //.Coeff[coeff_] pertS[LI[1],i1_] PD[-a_?TangentM1`Q]@pertS[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i1] pertS[LI[1],i2];
% //.Coeff[coeff_] pertF2[LI[1],i1_] PD[-a_?TangentM1`Q]@pertF2[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF2[LI[1],i1] pertF2[LI[1],i2];
% //.Coeff[coeff_] pertS2[LI[1],i1_] PD[-a_?TangentM1`Q]@pertS2[LI[1],i2_]:>-1/2 Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS2[LI[1],i1] pertS2[LI[1],i2];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertS[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertS[LI[1],i1];
% //.Coeff[coeff_] pertF2[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS2[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF2[LI[1],i2] pertS2[LI[1],i1]-Coeff[coeff] PD[-a]@pertF2[LI[1],i2] pertS2[LI[1],i1];
% //.Coeff[coeff_] pertF2[LI[1],i2_] PD[-a_?TangentM1`Q]@pertF[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF2[LI[1],i2] pertF[LI[1],i1]-Coeff[coeff] PD[-a]@pertF2[LI[1],i2] pertF[LI[1],i1];
% //.Coeff[coeff_] pertS[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS2[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertS[LI[1],i2] pertS2[LI[1],i1]-Coeff[coeff] PD[-a]@pertS[LI[1],i2] pertS2[LI[1],i1];
% //.Coeff[coeff_] pertF[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS2[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF[LI[1],i2] pertS2[LI[1],i1]-Coeff[coeff] PD[-a]@pertF[LI[1],i2] pertS2[LI[1],i1];
% //.Coeff[coeff_] pertF2[LI[1],i2_] PD[-a_?TangentM1`Q]@pertS[LI[1],i1_]:>-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertF2[LI[1],i2] pertS[LI[1],i1]-Coeff[coeff] PD[-a]@pertF2[LI[1],i2] pertS[LI[1],i1];
LsecV1 = % //.rules //.Coeff[coeff_]:>coeff // ToCanonical // NoScalar;
% // Length


LsecV1;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa3]]]==0,pprimeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa5]]]==0,pprimeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa3]]==0,primeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa5]]==0,primeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa6]]==0,primeL119[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa7]]==0,primeL149[]]] // Expand;
% //.Flatten[Solve[EQa0==0,L37[]]] // Expand;
% //.Flatten[Solve[EQa1==0,L146[]]] // Expand;
% //.Flatten[Solve[EQa2==0,L148[]]] // Expand;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
% //.Flatten[Solve[EQa4==0,L123[]]] // Expand;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa6==0,L119[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
LsecV2 = % // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor];
%% // Length


LsecV2;
{L37[], L146[], L148[], L136[], L123[], L145[], L119[], L149[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


EQa8 = -(- alpha8[] + Coefficient[PrintWell[LsecV2] //.primepertS2[LI[1],-i_] primepertS2[LI[1],i_]:>x, x]) 2/scale2[]^4 // Expand;
EQa9 = -(- alpha9[] + Coefficient[PrintWell[LsecV2] //.pertF[LI[1],-i_] pertF[LI[1],i_]:>x, kscal[]^4 x]) 2/scale2[]^4 // Expand;
EQa10 = -(- alpha10[] + Coefficient[PrintWell[LsecV2] //.pertF2[LI[1],-i_] pertS2[LI[1],i_]:>x, kscal[]^2 x]) 2/scale2[]^4 // Expand;
EQa11 = -(- alpha11[] + Coefficient[PrintWell[LsecV2] //.pertS2[LI[1],-i_] pertS2[LI[1],i_]:>x, kscal[]^2 x]) 2/scale2[]^4 // Expand;
EQa12 = (- alpha12[] + Coefficient[PrintWell[LsecV2] //.pertS2[LI[1],-i_] pertS2[LI[1],i_]:>x, x]) 2/scale2[]^4 //.kscal[]:>0 // Expand;
EQa13 = -(- alpha13[] + Coefficient[PrintWell[LsecV2] //.pertS[LI[1],-i_] pertS2[LI[1],i_]:>x, kscal[]^2 x]) 2/scale[]^2/scale2[]^2 // Expand;
EQa14 = (- alpha14[] + Coefficient[PrintWell[LsecV2] //.pertS2[LI[1],-i_] primepertF2[LI[1],i_]:>x, kscal[]^2 x]) 2/scale2[]^4 // Expand;


EQa10;
% //.Flatten[Solve[PrintWell[TimeDer[EQa14]]==0,primeL141[]]] // Expand;
% //.Flatten[Solve[EQa14==0,L141[]]] // Expand;
EQa10 = % //.rules // Expand;


EQa12;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa8]]]==0,pprimeL86[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa8]]==0,primeL86[]]] // Expand;
% //.Flatten[Solve[EQa8==0,L86[]]] // Expand;
EQa12 = % //.rules // Expand;


{EQa8, EQa9, EQa10, EQa11, EQa12, EQa13, EQa14};
{L86[], L124[], L133[], L73[], L94[], L75[], L141[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecV2;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa8]]]==0,pprimeL86[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa8]]==0,primeL86[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa14]]==0,primeL141[]]] // Expand;
% //.Flatten[Solve[EQa8==0,L86[]]] // Expand;
% //.Flatten[Solve[EQa9==0,L124[]]] // Expand;
% //.Flatten[Solve[EQa10==0,L133[]]] // Expand;
% //.Flatten[Solve[EQa11==0,L73[]]] // Expand;
% //.Flatten[Solve[EQa12==0,L94[]]] // Expand;
% //.Flatten[Solve[EQa13==0,L75[]]] // Expand;
% //.Flatten[Solve[EQa14==0,L141[]]] // Expand;
LsecV3 = % //.rules // ToCanonical // NoScalar;
CollectPerts[%,{kscal[]},Factor]
%% // Length


(* ::Subsubsection::Closed:: *)
(*Scalar Lagrangian*)


LsecS;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa0]]]==0,pprimeL37[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa3]]]==0,pprimeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa5]]]==0,pprimeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa0]]==0,primeL37[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa3]]==0,primeL136[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa5]]==0,primeL145[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa6]]==0,primeL119[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa7]]==0,primeL149[]]] // Expand;
% //.Flatten[Solve[EQa0==0,L37[]]] // Expand;
% //.Flatten[Solve[EQa1==0,L146[]]] // Expand;
% //.Flatten[Solve[EQa2==0,L148[]]] // Expand;
% //.Flatten[Solve[EQa3==0,L136[]]] // Expand;
% //.Flatten[Solve[EQa4==0,L123[]]] // Expand;
% //.Flatten[Solve[EQa5==0,L145[]]] // Expand;
% //.Flatten[Solve[EQa6==0,L119[]]] // Expand;
% //.Flatten[Solve[EQa7==0,L149[]]] // Expand;
LsecS1 = %;
% // Length


LsecS1;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa8]]]==0,pprimeL86[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa11]]]==0,pprimeL73[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa8]]==0,primeL86[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa10]]==0,primeL133[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa11]]==0,primeL73[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa13]]==0,primeL75[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa14]]==0,primeL141[]]] // Expand;
% //.Flatten[Solve[EQa8==0,L86[]]] // Expand;
% //.Flatten[Solve[EQa9==0,L124[]]] // Expand;
% //.Flatten[Solve[EQa10==0,L133[]]] // Expand;
% //.Flatten[Solve[EQa11==0,L73[]]] // Expand;
% //.Flatten[Solve[EQa12==0,L94[]]] // Expand;
% //.Flatten[Solve[EQa13==0,L75[]]] // Expand;
% //.Flatten[Solve[EQa14==0,L141[]]] // Expand;
LsecS2 = % // ToCanonical // NoScalar;
% // Length


LsecS2;
{L37[], L146[], L148[], L136[], L123[], L145[], L119[], L149[], L86[], L124[], L133[], L73[], L94[], L75[], L141[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


IntByParts[expr_]:= Module[{tmp}, tmp = Coeff[expr];
tmp = tmp //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertB[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertB[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertB[LI[1]];
tmp = tmp //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertB2[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertB2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertB2[LI[1]];
tmp = tmp //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertpsi[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertpsi[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertpsi[LI[1]];
tmp = tmp //.Coeff[coeff_] pert_[LI[1]] PD[-a_?TangentM1`Q]@pertpsi2[LI[1]]:>-Coeff[coeff] PD[-a]@pert[LI[1]] pertpsi2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pert[LI[1]] pertpsi2[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertmatter[LI[1]];
tmp = tmp //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertmatter[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertmatter[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertmatter[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertE[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertE2[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertE2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertE2[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi2[LI[1]] PD[-a_?TangentM1`Q]@pertE[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi2[LI[1]] pertE[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi2[LI[1]] pertE[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi2[LI[1]] PD[-a_?TangentM1`Q]@pertE2[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi2[LI[1]] pertE2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi2[LI[1]] pertE2[LI[1]];
tmp = tmp //.Coeff[coeff_] pertphi[LI[1]] PD[-a_?TangentM1`Q]@pertphi2[LI[1]]:>-Coeff[coeff] PD[-a]@pertphi[LI[1]] pertphi2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertphi[LI[1]] pertphi2[LI[1]];
tmp = tmp //.Coeff[coeff_] pertE[LI[1]] PD[-a_?TangentM1`Q]@pertE2[LI[1]]:>-Coeff[coeff] PD[-a]@pertE[LI[1]] pertE2[LI[1]]-Coeff[timevec[-a] PrintWell[TimeDer[coeff]]] pertE[LI[1]] pertE2[LI[1]];
tmp = tmp //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] //.rules //.Coeff[coeff_]:>coeff // Expand // NoScalar;
tmp]


LsecS2[[1;;4000]];
tmp1 = % // IntByParts;
tmp1pw = % // PrintWell;


LsecS2[[4001;;8000]];
tmp2 = % // IntByParts;
tmp2pw = % // PrintWell;


LsecS2[[8001;;12000]];
tmp3 = % // IntByParts;
tmp3pw = % // PrintWell;


LsecS2[[12001;;16000]];
tmp4 = % // IntByParts;
tmp4pw = % // PrintWell;


LsecS2[[16001;;20000]];
tmp5 = % // IntByParts;
tmp5pw = % // PrintWell;


LsecS2[[20001;;-1]];
tmp6 = % // IntByParts;
tmp6pw = % // PrintWell;


LsecS3 = tmp1 + tmp2 + tmp3 + tmp4 + tmp5 + tmp6 // Expand;
% // Length


LsecPW = tmp1pw + tmp2pw + tmp3pw + tmp4pw + tmp5pw + tmp6pw // Expand;
% // Length


(*EQa15 = (-alpha15[] + Coefficient[LsecPW, primepertphi[LI[1]]^2]) 1/18/scale[]^2/scale2[]^2 // Expand;*)
EQa15 = - alpha15[] + 2 L12[] + L167[] - 2 L72[];
EQa16 = -(-alpha16[] + Coefficient[LsecPW, primepertphi2[LI[1]]^2])/18/scale2[]^4 // Expand;
EQa17 = -(-alpha17[] + Coefficient[LsecPW, primepertpsi2[LI[1]]^2])/scale2[]^4/lapse2[]^4/2 // Expand;
EQa18 = -(-alpha18[] + Coefficient[LsecPW, primepertphi2[LI[1]] primepertpsi2[LI[1]]])/6/scale2[]^4/lapse2[]^2 // Expand;
EQa19 = (-alpha19[] + Coefficient[LsecPW, primepertphi[LI[1]] primepertpsi2[LI[1]]])/3/scale[]^2/scale2[]^2/lapse2[]^2 // Expand;
EQa20 = -(-alpha20[] + Coefficient[LsecPW, primepertphi[LI[1]] primepertphi2[LI[1]]])/18/scale[]^2/scale2[]^2 // Expand;


EQa19;
% //.Flatten[Solve[EQa18==0,L238[]]] // Expand;
EQa19 = %;


EQa20;
% //.Flatten[Solve[EQa16==0,L235[]]] // Expand;
EQa20 = %;


{EQa15, EQa16, EQa17, EQa18, EQa19, EQa20};
{L167[], L235[], L199[], L238[], L203[], L232[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS3;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa17]]]==0,pprimeL199[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa18]]]==0,pprimeL238[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[TimeDer[EQa19]]]==0,pprimeL203[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa15]]==0,primeL167[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa16]]==0,primeL235[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa17]]==0,primeL199[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa18]]==0,primeL238[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa19]]==0,primeL203[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa20]]==0,primeL232[]]] // Expand;
% //.Flatten[Solve[EQa15==0,L167[]]] // Expand;
% //.Flatten[Solve[EQa16==0,L235[]]] // Expand;
% //.Flatten[Solve[EQa17==0,L199[]]] // Expand;
% //.Flatten[Solve[EQa18==0,L238[]]] // Expand;
% //.Flatten[Solve[EQa19==0,L203[]]] // Expand;
% //.Flatten[Solve[EQa20==0,L232[]]] // Expand;
LsecS4 = % //.rules // Expand;
% // Length


LsecS4;
{L167[], L235[], L199[], L238[], L203[], L232[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS4[[1;;3000]];
tmp1pw = % // PrintWell;


LsecS4[[3001;;6000]];
tmp2pw = % // PrintWell;


LsecS4[[6001;;9000]];
tmp3pw = % // PrintWell;


LsecS4[[9001;;-1]];
tmp4pw = % // PrintWell;


LsecPW = tmp1pw + tmp2pw + tmp3pw + tmp4pw // Expand;
% // Length


EQa21 = -(-alpha21[] + Coefficient[LsecPW, pertpsi2[LI[1]] primepertphi2[LI[1]]])/6/lapse2[]^2/scale2[]^4 // Expand;
EQa22 = -(-alpha22[] + Coefficient[LsecPW, kscal[]^2 pertB2[LI[1]] primepertphi2[LI[1]]])/3/scale2[]^4 // Expand;
EQa23 = (-alpha23[] + Coefficient[LsecPW, kscal[]^2 pertpsi2[LI[1]] primepertB2[LI[1]]])/lapse2[]^2/scale2[]^4 // Expand;
EQa24 = -(-alpha24[] + Coefficient[LsecPW, kscal[]^2 pertE[LI[1]] primepertphi2[LI[1]]])/3/scale[] // Expand;


EQa24;
% //.Flatten[Solve[EQa23==0,L198[]]] // Expand;
% //.primematter[]:>0 //.alpha23[]:>0 //.alpha15[]:>0 //.primealpha18[]:>0 //.primealpha19[]:>0 //.alpha24[]:>0 //.alpha16[]:>0 //.alpha20[]:>0 //.alpha18[]:>0 //.alpha19[]:>0 //.alpha0[]:>0 //.alpha11[]:>0 //.alpha3[]:>0 //.alpha5[]:>0;
3 L267[] scale[]/lapse2[]/scale2[]^2/(primelapse2[]-L267[] lapse2[]) % // Factor;
EQa24 = -(-alpha24[] + %)/6/L267[]/scale2[]^2 // Expand;


{EQa21, EQa22, EQa23, EQa24};
{L239[], L237[], L198[], L229[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS4;
% //.Flatten[Solve[PrintWell[TimeDer[EQa21]]==0,primeL239[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa22]]==0,primeL237[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa23]]==0,primeL198[]]] // Expand;
% //.Flatten[Solve[PrintWell[TimeDer[EQa24]]==0,primeL229[]]] // Expand;
% //.Flatten[Solve[EQa21==0,L239[]]] // Expand;
% //.Flatten[Solve[EQa22==0,L237[]]] // Expand;
% //.Flatten[Solve[EQa23==0,L198[]]] // Expand;
% //.Flatten[Solve[EQa24==0,L229[]]] // Expand;
LsecS5 = % //.rules // Expand // NoScalar;
% // Length


LsecS5;
{L239[], L237[], L198[], L229[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS5[[1;;3000]];
tmp1pw = % // PrintWell;


LsecS5[[3001;;-1]];
tmp2pw = % // PrintWell;


LsecPW = tmp1pw + tmp2pw // Expand;
% // Length


EQa25 = -(-alpha25[] + Coefficient[LsecPW, kscal[]^2 pertpsi2[LI[1]]^2])/2/lapse2[]^4/scale2[]^4 // Expand;
EQa26 = (-alpha26[] + Coefficient[LsecPW, pertpsi2[LI[1]]^2])/lapse2[]^4/scale2[]^4 //.kscal[]:>0 // Expand;
EQa27 = (-alpha27[] + Coefficient[LsecPW, kscal[]^2 pertB2[LI[1]]  pertpsi2[LI[1]]])/lapse2[]^2/scale2[]^4 // Expand;
EQa28 = -(-alpha28[] + Coefficient[LsecPW, kscal[]^2 pertphi[LI[1]] pertphi2[LI[1]]])/12 // Expand;
EQa29 = (-alpha29[] + Coefficient[LsecPW, kscal[]^4 pertE2[LI[1]] pertpsi2[LI[1]]]) 3/4/scale[]^2 // Expand;


EQa28;
% //.Flatten[Solve[EQa29==0,L194[]]] // Expand;
% //.alpha29[]:>0 //.alpha24[]:>0 //.primematter[]:>0 //.primealpha8[]:>0 //.primealpha5[]:>0 //.primealpha3[]:>0 //.primealpha23[]:>0 //.primealpha22[]:>0 //.primealpha20[]:>0 //.primealpha19[]:>0 //.primealpha18[]:>0 //.primealpha16[]:>0 //.primealpha13[]:>0 //.primealpha11[]:>0 //.primealpha0[]:>0 //.alpha24[]:>0 //.alpha5[]:>0 //.alpha3[]:>0 //.alpha23[]:>0 //.alpha22[]:>0 //.alpha20[]:>0 //.alpha18[]:>0 //.alpha19[]:>0 //.alpha16[]:>0 //.alpha13[]:>0 //.alpha11[]:>0 //.alpha0[]:>0 //.alpha8[]:>0 //.alpha7[]:>0 //.alpha4[]:>0 //.alpha2[]:>0 //.alpha12[]:>0 //.alpha28[]:>0;
% 12 hubbleC[] L267[]^2/scale2[]^4/lapse2[]/(L267[] lapse2[] - primelapse2[]) // Factor // Expand;
EQa28 = -(- alpha28[] + %) scale2[]^2/4/hubbleC[]/scale[]^2/L267[];


EQa29;
% //.Flatten[Solve[EQa28==0,L152[]]] // Expand;
%/(2 hubbleC[]-L267[]) //.alpha29[]:>0 //.alpha24[]:>0 //.alpha28[]:>0;
Collect[%,{L126[],L14[],L15[],L188[],L194[],L79[],L17[],L190[]},Factor] // Expand;
EQa29 = (-alpha29[] + %) L267[] scale[]^2/lapse2[]^2/scale2[]^4 // Expand;


EQa28;
% //.Flatten[Solve[EQa29==0,L126[]]] // Expand;
% //.Flatten[Solve[EQa25==0,L190[]]] // Expand;
% //.Flatten[Solve[EQa27==0,L194[]]] // Expand;
EQa28 = %;


EQa29;
% //.Flatten[Solve[EQa25==0,L190[]]] // Expand;
% //.Flatten[Solve[EQa27==0,L194[]]] // Expand;
EQa29 = %;


{EQa25, EQa26, EQa27, EQa28, EQa29};
{L190[], L206[], L194[], L152[], L126[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS5;
% //.Flatten[Solve[EQa25==0,L190[]]] // Expand;
% //.Flatten[Solve[EQa26==0,L206[]]] // Expand;
% //.Flatten[Solve[EQa27==0,L194[]]] // Expand;
% //.Flatten[Solve[EQa28==0,L152[]]] // Expand;
% //.Flatten[Solve[EQa29==0,L126[]]] // Expand;
% //.Flatten[Solve[Nsec3[[1]],pprimematter[]]] // Expand;
LsecS6 = % //.rules // Expand // NoScalar;
% // Length


LsecS6;
{L190[], L206[], L194[], L152[], L126[]};
{MatrixForm[Coefficient[%%,#]&/@%], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[%]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[%]]]], MatrixForm[Coefficient[%%,#]&/@PrintWell[TimeDer[TimeDer[TimeDer[%]]]]]}


LsecS6;
LsecS7 = CollectPerts[%,{kscal[]},Factor] // Expand // InvPrintWell;
% // Length


(* ::Subsection:: *)
(*No Derivative coupling*)


(* ::Subsubsection::Closed:: *)
(*No Derivative coupling*)


LsecPW = LsecS7 // PrintWell;


eqs = {
Coefficient[LsecPW,primepertphi[LI[1]] primepertphi2[LI[1]]] == 0,
Coefficient[LsecPW,primepertphi[LI[1]] primepertpsi2[LI[1]]] == 0,
Coefficient[LsecPW,primepertpsi[LI[1]] primepertphi2[LI[1]]] == 0,
Coefficient[LsecPW,primepertpsi[LI[1]] primepertpsi2[LI[1]]] == 0,
Coefficient[LsecPW,kscal[]^4 primepertE[LI[1]] primepertE2[LI[1]]] == 0,
Coefficient[LsecPW,kscal[]^2 primepertB[LI[1]] primepertB2[LI[1]]] == 0,
Coefficient[LsecPW, pertpsi[LI[1]] primepertphi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertpsi[LI[1]] primepertB2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertB[LI[1]] primepertphi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 pertB[LI[1]] primepertE2[LI[1]]] == 0,
Coefficient[LsecPW, primepertphi[LI[1]] pertpsi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 primepertphi[LI[1]] pertB2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 primepertE[LI[1]] pertB2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 primepertE[LI[1]] pertE2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertE[LI[1]] primepertphi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertpsi[LI[1]] pertB2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 pertpsi[LI[1]] pertE2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertpsi[LI[1]] pertpsi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 pertE[LI[1]] pertB2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 pertE[LI[1]] pertpsi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertB[LI[1]] pertphi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertphi[LI[1]] pertpsi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^2 pertphi[LI[1]] pertphi2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^4 pertphi[LI[1]] pertE2[LI[1]]] == 0,
Coefficient[LsecPW, kscal[]^6 pertE[LI[1]] pertE2[LI[1]]] == 0,
Coefficient[PrintWell[LsecT2] //.perth[LI[1],-i_,-j_] perth2[LI[1],i_,j_]:>x, kscal[]^2 x] == 0,
Coefficient[PrintWell[LsecV3] //.pertS[LI[1],-i_] pertS2[LI[1],i_]:>x, kscal[]^2 x] == 0
};


vars = {alpha0[],alpha2[],alpha4[],alpha5[],alpha6[],alpha7[],alpha8[],alpha9[],alpha10[],alpha11[],alpha12[],alpha13[],alpha14[],alpha15[],alpha16[],alpha17[],alpha18[],alpha19[],alpha20[],alpha21[],alpha22[],alpha23[],alpha24[],alpha25[],alpha27[],alpha28[],alpha29[]}
% // Length


sol = Flatten[{Solve[eqs,vars], Solve[PrintWell[TimeDer[#]]&/@eqs, PrintWell[TimeDer[#]]&/@vars],
	Solve[PrintWell[TimeDer[TimeDer[#]]]&/@eqs, PrintWell[TimeDer[TimeDer[#]]]&/@vars]}];
% // Length


changealphas = {alpha26[]:>alpha8[], primealpha26[]:>primealpha8[], pprimealpha26[]:>pprimealpha8[], ppprimealpha26[]:>ppprimealpha8[],
				alpha3[]:>alpha2[], primealpha3[]:>primealpha2[], pprimealpha3[]:>pprimealpha2[], ppprimealpha3[]:>ppprimealpha2[]}


LsecS7;
% //.sol //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] //.rules // Expand;
% //.Flatten[Solve[rules //.RuleDelayed->Equal, {L267[],primeL267[],pprimeL267[],ppprimeL267[]}]] // Expand;
CollectPerts[%,{kscal[]},Factor] // InvPrintWell // Expand;
LsecS8 = % //.changealphas // Expand;
% // Length


LsecV3;
% //.sol //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] //.rules // Expand;
% //.Flatten[Solve[rules //.RuleDelayed->Equal, {L267[],primeL267[],pprimeL267[],ppprimeL267[]}]] // Expand;
CollectPerts[%,{kscal[]},Factor] // InvPrintWell // Expand;
LsecV4 = % //.changealphas // Expand;
% // Length


LsecT2;
% //.sol //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] //.rules // Expand;
% //.Flatten[Solve[rules //.RuleDelayed->Equal, {L267[],primeL267[],pprimeL267[],ppprimeL267[]}]] // Expand;
CollectPerts[%,{kscal[]},Factor] // InvPrintWell // Expand;
LsecT3 = % //.changealphas // Expand;
% // Length


(* ::Subsubsection::Closed:: *)
(*Compact Lagrangians*)


EQ3=Coefficient[PrintWell[LsecT3] //.perth2[LI[1],i_,j_] perth2[LI[1],-i_,-j_]:>x,kscal[]^2 x] - alpha3[] // Expand;
EQ4=Coefficient[PrintWell[LsecT3] //.primeperth[LI[1],i_,j_] primeperth[LI[1],-i_,-j_]:>x,x] - alpha4[] // Expand;
EQ5=Coefficient[PrintWell[LsecS8], kscal[]^2 pertE[LI[1]] pertpsi2[LI[1]]] 3/4 - alpha5[] // Expand;
EQ6=Coefficient[PrintWell[LsecS8], kscal[]^2 pertE[LI[1]] pertphi[LI[1]]]/8 - alpha6[] // Expand;
EQ7=Coefficient[PrintWell[LsecV4] //.pertS2[LI[1],i_] pertS[LI[1],-i_]:>x,x]/16 - alpha7[] // Expand;


LsecT3;
% - kscal[]^2 EQ3 perth2[LI[1], -i, -j] perth2[LI[1], i, j] // Expand;
% - EQ4 timevec[a] timevec[b] PD[-a]@perth[LI[1], -i, -j] PD[-b]@perth[LI[1], i, j] // Expand;
% - kscal[]^2 (EQ4 - TimeDer[EQ4]/hubbleC[]) perth[LI[1], -i, -j] perth[LI[1], i, j] // Expand;
% //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] // SVTExpand;
LsecT = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


LsecV4;
% - 16 EQ7 pertS[LI[1], -i] pertS2[LI[1], i] // Expand;
% + 8 EQ7 pertS2[LI[1], -i] pertS2[LI[1], i] // Expand;
% - 2 EQ4 kscal[]^2 timevec[a] timevec[b] PD[-a]@pertF[LI[1], -i] PD[-b]@pertF[LI[1], i] // Expand;
% - 4 EQ4 kscal[]^2 timevec[a] pertS[LI[1], -i] PD[-a]@pertF[LI[1], i] // Expand;
% + 2 (4 EQ7 - EQ4 kscal[]^2) pertS[LI[1], -i] pertS[LI[1], i] // Expand;
% // SVTExpand;
LsecV = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


LsecS8;
% - 4/3 EQ5 kscal[]^2 pertE[LI[1]] pertpsi2[LI[1]] // Expand;
% + 4/3 EQ5 kscal[]^2 pertE2[LI[1]] pertpsi2[LI[1]] // Expand;
% - 4 EQ5 pertphi[LI[1]] pertpsi2[LI[1]] // Expand;
% + 8 EQ7 kscal[]^2 pertB[LI[1]]^2 // Expand;
% + 8 EQ7 kscal[]^2 pertB2[LI[1]]^2 // Expand;
% - 16 EQ7 kscal[]^2 pertB[LI[1]] pertB2[LI[1]] // Expand;
% - 8 (EQ5/3 - 2 (hubbleC[]^2-primehubbleC[]) EQ4) kscal[]^2 pertE[LI[1]] pertpsi[LI[1]] // Expand;
% + 8 (EQ5/3 - 2 (hubbleC[]^2-primehubbleC[]) EQ4) kscal[]^2 pertE2[LI[1]] pertpsi[LI[1]] // Expand;
% + 8 (EQ5 - 6 (hubbleC[]^2-primehubbleC[]) EQ4) pertphi2[LI[1]] pertpsi[LI[1]] // Expand;
% - 8 EQ6 kscal[]^2 pertE[LI[1]] pertphi[LI[1]] // Expand;
% + 8 EQ6 kscal[]^2 pertE2[LI[1]] pertphi[LI[1]] // Expand;
% + 8 EQ6 kscal[]^2 pertE[LI[1]] pertphi2[LI[1]] // Expand;
% - 8 EQ6 kscal[]^2 pertE2[LI[1]] pertphi2[LI[1]] // Expand;
% + 24 EQ6 pertphi[LI[1]] pertphi2[LI[1]] // Expand;
% - 4/3 EQ6 kscal[]^4 pertE[LI[1]]^2 // Expand;
% + 8/3 EQ6 kscal[]^4 pertE[LI[1]] pertE2[LI[1]] // Expand;
% - 4/3 EQ6 kscal[]^4 pertE2[LI[1]]^2 // Expand;
% + 4 EQ5 pertphi2[LI[1]] pertpsi2[LI[1]] // Expand;
% + 4 (2 kscal[]^2 EQ3 - 3 EQ6) pertphi2[LI[1]]^2 // Expand;
% - 16 EQ4 hubbleC[] kscal[]^2 pertB[LI[1]] pertpsi[LI[1]] // Expand;
% + 16 EQ4 hubbleC[] kscal[]^2 timevec[a] pertpsi[LI[1]] PD[-a]@pertE[LI[1]] // Expand;
% - 16 EQ4 kscal[]^2 timevec[a] pertB[LI[1]] PD[-a]@pertphi[LI[1]] // Expand;
% + 48 EQ4 hubbleC[] timevec[a] pertpsi[LI[1]] PD[-a]@pertphi[LI[1]] // Expand;
% + 16 EQ4 kscal[]^2 timevec[a] timevec[b] PD[-a]@pertE[LI[1]] PD[-b]@pertphi[LI[1]] // Expand;
% + 24 EQ4 timevec[a] timevec[b] PD[-a]@pertphi[LI[1]] PD[-b]@pertphi[LI[1]] // Expand;
% + 24 hubbleC[]^2 EQ4 pertpsi[LI[1]]^2 // Expand;
% + 8 (2 EQ4 kscal[]^2 - EQ5 + 6 (hubbleC[]^2-primehubbleC[]) EQ4) pertphi[LI[1]] pertpsi[LI[1]] // Expand;
% + 4 (2 (EQ4 - TimeDer[EQ4]/hubbleC[]) kscal[]^2 - 3 EQ6) pertphi[LI[1]]^2 // Expand;
% //.Flatten[Solve[Nsec4[[1]],pprimematter[]]] // SVTExpand;
LsecS = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


(* ::Subsubsection::Closed:: *)
(*Single degree of freedom*)


VarD[pertpsi2[LI[1]],PD][LsecS] //.delta[-LI[1],LI[1]]:>1;
EQpsi2 = CollectPerts[%,{kscal[]},Factor]


VarD[pertB2[LI[1]],PD][LsecS] //.delta[-LI[1],LI[1]]:>1;
EQB2 = CollectPerts[%,{kscal[]},Factor]


LsecS // PrintWell;
% //.Flatten[Solve[{EQpsi2==0,EQB2==0},{pertpsi2[LI[1]],pertB2[LI[1]]}]];
Coefficient[%,primepertphi2[LI[1]]^2] // Factor;
% (alpha7[] alpha8[]+8 alpha2[]^2 hubbleC2[]^2 kscal[]^2)/8/alpha2[]/(-3 alpha7[]+alpha2[] kscal[]^2) // Factor;
singledofrule = Flatten[{Solve[%==0,alpha8[]],Solve[TimeDer[%]==0,primealpha8[]]}]


LsecT;
LsecT = % //.singledofrule // Expand;
CollectPerts[%,{kscal[]},Factor]


LsecV;
LsecV = % //.singledofrule // Expand;
CollectPerts[%,{kscal[]},Factor]


LsecS;
LsecS = % //.singledofrule // Expand;
CollectPerts[%,{kscal[]},Factor]


EQ3;
EQ3 = % //.singledofrule // Expand;
Collect[%,alpha3[],Simplify]


EQ4;
EQ4 = % //.singledofrule // Expand;
Collect[%,alpha4[],Simplify]


EQ5;
EQ5 = % //.singledofrule // Expand;
Collect[%,alpha5[],Simplify]


EQ6;
% //.singledofrule // Expand;
%-TimeDer[EQ5/hubbleC2[]/6] // Expand;
%+EQ5 (hubbleC[]^2 lapse2[]-hubbleC2[]^2 lapse2[]-lapse2[] primehubbleC[]+lapse2[] primehubbleC2[]-hubbleC2[] primelapse2[])/6/hubbleC2[]/lapse2[]/(hubbleC[]-hubbleC2[]) // Expand;
EQ6 = Collect[%,{alpha6[],primealpha5[],alpha5[]},Factor] // Expand;
Collect[%,{alpha6[],primealpha5[],alpha5[]},Factor]


EQ7;
EQ7 = % //.singledofrule // Expand;
Collect[%,alpha7[],Simplify]


LsecS;
% + 12 EQ5 pertphi[LI[1]] pertpsi[LI[1]] // Expand;
% - 12 EQ5 pertphi2[LI[1]] pertpsi[LI[1]] // Expand;
% + 4 EQ5 kscal[]^2 pertE[LI[1]] pertpsi[LI[1]] // Expand;
% - 4 EQ5 kscal[]^2 pertE2[LI[1]] pertpsi[LI[1]] // Expand;
LsecS = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


EQ5 //.Flatten[Solve[EQ7==0,alpha2[]]] // Expand;
EQ5 = Collect[%,{alpha5[]},Simplify]


EQ6;
% //.Flatten[Solve[TimeDer[EQ5]==0,primealpha5[]]] // Expand;
% //.Flatten[Solve[EQ5==0,alpha5[]]] // Expand;
EQ6 = Collect[%,{alpha6[],primealpha7[],primelapse2[]},Simplify]


EQ7;
% //.Flatten[Solve[EQ4==0,primelapse2[]]] // Expand;
EQ7 = Collect[%, alpha7[], Simplify]


LsecS;
% //.Flatten[Solve[EQ5==0,alpha5[]]] // Expand;
% //.Flatten[Solve[EQ3==0,alpha3[]]] // Expand;
% - 16 (1-lapse2[]^2) EQ7 (3 pertphi[LI[1]] pertpsi[LI[1]] - 3 pertphi2[LI[1]] pertpsi[LI[1]] + kscal[]^2 pertE[LI[1]] pertpsi[LI[1]] - kscal[]^2 pertE2[LI[1]] pertpsi[LI[1]]) // Expand;
LsecS = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


LsecT;
% //.Flatten[Solve[EQ3==0,alpha3[]]] // Expand;
LsecT = CollectPerts[%,{kscal[]},Factor] // InvPrintWell;
CollectPerts[%,{kscal[]},Factor]


(* ::Subsection::Closed:: *)
(*Alphas definition*)


EQmass2 = 8 Coefficient[PrintWell[LsecT] //.primeperth[LI[1],-i_,-j_] primeperth[LI[1],i_,j_]:>x,x]/scale[]^2-mass2T[] // Expand;
EQnuM = 8 Coefficient[PrintWell[LsecT] //.primeperth2[LI[1],-i_,-j_] primeperth2[LI[1],i_,j_]:>x,x]/scale[]^2-nuMT[] mass2T[] // Expand;
EQalphaS = Coefficient[PrintWell[LsecS], kscal[]^4 pertE[LI[1]]^2]/scale[]^2/hubbleC[]^2 - alphaST[] mass2T[] // Expand;
EQalphaZt = Coefficient[PrintWell[LsecS], pertphi[LI[1]]^2]/3/hubbleC[]^2/scale[]^2 - alphaZtT[] mass2T[] //.kscal[]:>0 // Expand;
EQalphaZ = Coefficient[PrintWell[LsecS], kscal[]^2 pertB2[LI[1]]^2]/3/hubbleC[]^2/scale[]^2 - alphaZT[]/6/(1+alphaNT[]) mass2T[] // Expand;
EQalphaN = lapse2[] - alphaNT[] // Expand;
EQalphab = hubbleC2[]/hubbleC[] - alphabT[] // Expand;


alpharules = Flatten[{Solve[EQalphaS==0,alpha1[]], Solve[EQnuM==0,alpha2[]], Solve[EQmass2==0,alpha4[]], Solve[EQalphaZt==0,alpha6[]], Solve[EQalphaZ==0,alpha7[]],
							Solve[EQalphaN==0,lapse2[]], Solve[EQalphab==0,hubbleC2[]], Solve[TimeDer[EQmass2]==0,primealpha4[]], Solve[TimeDer[EQnuM]==0,primealpha2[]],
							Solve[TimeDer[EQalphaZ]==0,primealpha7[]], Solve[TimeDer[EQalphaN]==0,primelapse2[]], Solve[TimeDer[EQalphab]==0,primehubbleC2[]]}] // PrintWell


LsecT/mass2T[]/scale[]^4;
% //.alpharules // Expand;
CollectPerts[%,{kscal[]},Factor]


LsecV/mass2T[]/scale[]^4;
% //.alpharules // Expand;
CollectPerts[%,{kscal[]},Factor]


LsecS/mass2T[]/scale[]^4;
% //.alpharules // Expand;
CollectPerts[%, {kscal[],alphaZT[]},Factor]


LsecS + LsecV + LsecT;
% //.alpharules // Expand;
Lsec = CollectPerts[%, {kscal[],alphaZT[]},Factor] // Expand // InvPrintWell;
CollectPerts[%, {kscal[],alphaZT[]},Factor]


8 EQ4/scale[]^2/mass2T[] //.alpharules // Expand;
EQred1 = Collect[%,{primematter[],nuMT[]},Factor]


8 (1-alphabT[])/scale[]^2/mass2T[]/hubbleC[] EQ6 //.alpharules // Expand;
EQred2 = Collect[%,{alphaZtT[],primealphaZT[],alphaZT[],primealphaNT[]},Factor]


16 (1+alphaNT[])/scale[]^2 EQ7 //.alpharules // Expand;
EQred3 = Collect[%,{alphaZT[]},Factor]


(* ::Subsection::Closed:: *)
(*Lagrangian (plus alphas)*)


Lsec;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"L2TT.m",Lsec]


EQred1
Export[$OutputDirectory<>"EQnuMT.m",%]


EQred2
Export[$OutputDirectory<>"EQalphaZtT.m",%]


EQred3
Export[$OutputDirectory<>"EQalphaZT.m",%]


(* ::Subsection::Closed:: *)
(*Scalar field to Matter*)


VarD[pertmetricg[LI[1],\[Mu],\[Nu]]][ExpandPerturbation[Perturbation[Lmatter]]] //.delta[-LI[1],LI[1]]:>1;
deltaTmatter=2  %/Sqrt[-Detmetricg[]]-stressenergy[-\[Mu],-\[Nu]] // Simplification // ToCanonical


subback=Flatten[{Solve[{Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]==0,SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]==0},{V[matter[]],primematter[]}],Solve[{TimeDer[Decomposition[0,\[Mu]->a,\[Nu]->b][deltaTmatter]]==0,TimeDer[SVTExpand[metric\[Delta][i,j] Decomposition[0,\[Mu]->i,\[Nu]->j][deltaTmatter]/3]]==0},{V'[matter[]],pprimematter[]}]}]


T00=Decomposition[1,\[Mu]->a,\[Nu]->b][deltaTmatter]/scale[]^2/mass2T[] // SVTExpand
T0i=metric\[Delta][i,j] PD[-j]@Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/kscal[]^2/mass2T[] // SVTExpand // FourierT
Tii=metric\[Delta][i,j] Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/3/scale[]^2/mass2T[] // SVTExpand // FourierT
Tij=-metric\[Delta][i,k] metric\[Delta][j,l] PD[-k]@PD[-l]@Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/kscal[]^2/scale[]^2/mass2T[] // SVTExpand // FourierT


T0iV=2 scale[]/kscal[]^2 (Decomposition[1,\[Mu]->a,\[Nu]->i][deltaTmatter]/scale[]/mass2T[]+PD[-i]@T0i) // SVTExpand
Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2T[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
TiiV=2 metric\[Delta][j,k] PD[-k]@% scale[]^2/kscal[]^2 // SVTExpand // FourierT


Decomposition[1,\[Mu]->i,\[Nu]->j][deltaTmatter]/scale[]^2/mass2T[];
%-3/2 PD[-i]@PD[-j]@(Tii-Tij)/kscal[]^2-metric\[Delta][-i,-j] (3 Tii-Tij)/2;
%+PD[-j]@TiiV/2/scale[]^2;
%+Evaluate[PD[-j]@TiiV/2/scale[]^2 //.i:>k //.j:>i //.k:>j];
TijT=-2 scale[]^2 % // SVTExpand // FourierT


(* ::Subsection::Closed:: *)
(*Background (with scalar field)*)


EQback1=densityT[]-3 mass2T[] hubbleC[]^2/scale[]^2+primematter[]^2/2/scale[]^2+V[matter[]] // Expand
Export[$OutputDirectory<>"EQback1Ts.m",%]


EQback2=pressureT[]+mass2T[] (hubbleC[]^2+2 primehubbleC[])/scale[]^2+primematter[]^2/2/scale[]^2-V[matter[]] // Expand
Export[$OutputDirectory<>"EQback2Ts.m",%]


EQback3=pprimematter[]+2 hubbleC[] primematter[]+scale[]^2 V'[matter[]] // Expand
Export[$OutputDirectory<>"EQback3Ts.m",%]


TimeDer[EQback1];
% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
% //.Flatten[Solve[EQback2==0,primehubbleC[]]] // Expand;
EQback4=%+3 hubbleC[] EQback1 // Expand
Export[$OutputDirectory<>"EQback4Ts.m",%]


(* ::Subsection::Closed:: *)
(*Equations of motion (with scalar field)*)


VarD[pertpsi[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-%/scale[]^4/mass2T[] // Expand;
EQfirst1=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1Ts.m",%%]


VarD[pertB[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
%/kscal[]^2/scale[]^3/mass2T[] // Expand;
EQfirst2=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2Ts.m",%%]


VarD[pertE[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-%/kscal[]^2/scale[]^4/mass2T[] // Expand;
EQfirst3=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3Ts.m",%%]


VarD[pertphi[LI[1]],PD][Lsec]-3 VarD[pertE[LI[1]],PD][Lsec]/kscal[]^2 //.delta[-LI[1],LI[1]]:>1;
%/scale[]^2/2/mass2T[]/kscal[]^2 // Expand;
EQfirst4=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4Ts.m",%%]


VarD[pertS[LI[1],i],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
2 %/mass2T[]/scale[]^2/kscal[]^2 // Expand;
EQfirst5=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5Ts.m",%%]


VarD[pertF[LI[1],i],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-2 %/mass2T[]/scale[]^2/kscal[]^2 // Expand;
EQfirst6=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6Ts.m",%%]


VarD[perth[LI[1],i,j],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-4 %/mass2T[]/scale[]^2 // Expand;
EQfirst7=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7Ts.m",%%]


VarD[pertpsi2[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-%/scale[]^4/mass2T[] // Expand;
EQfirst8=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8Ts.m",%%]


VarD[pertB2[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
%/kscal[]^2/scale[]^3/mass2T[] // Expand;
EQfirst9=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9Ts.m",%%]


VarD[pertE2[LI[1]],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-%/kscal[]^2/scale[]^4/mass2T[] // Expand;
EQfirst10=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst10Ts.m",%%]


VarD[pertphi2[LI[1]],PD][Lsec]-3 VarD[pertE2[LI[1]],PD][Lsec]/kscal[]^2 //.delta[-LI[1],LI[1]]:>1;
%/scale[]^2/2/mass2T[]/kscal[]^2 // Expand;
EQfirst11=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst11Ts.m",%%]


VarD[pertS2[LI[1],i],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
2 %/mass2T[]/scale[]^2/kscal[]^2 // Expand;
EQfirst12=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst12Ts.m",%%]


VarD[pertF2[LI[1],i],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-2 %/mass2T[]/scale[]^2/kscal[]^2 // Expand;
EQfirst13=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst13Ts.m",%%]


VarD[perth2[LI[1],i,j],PD][Lsec] //.delta[-LI[1],LI[1]]:>1;
-4 %/mass2T[]/scale[]^2 // Expand;
EQfirst14=% //.Flatten[Solve[EQback3==0,pprimematter[]]] // Expand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst14Ts.m",%%]


(* ::Subsection::Closed:: *)
(*Background (with matter)*)


EQback1=EQback1 //.subback // Expand
Export[$OutputDirectory<>"EQback1Tm.m",%]


EQback2=EQback2 //.subback // Expand
Export[$OutputDirectory<>"EQback2Tm.m",%]


EQback3=primematter[]/scale[]^2 EQback3 //.subback // Expand
Export[$OutputDirectory<>"EQback3Tm.m",%]


EQback4=EQback4 //.subback // Expand
Export[$OutputDirectory<>"EQback4Tm.m",%]


(* ::Subsection:: *)
(*Equations of motion (with matter)*)


EQfirst1-T00 // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst1Tm.m",%%]


EQfirst2-T0i // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst2Tm.m",%%]


EQfirst3-Tij // Expand;
% //.subback // Expand;
% //.Flatten[Solve[EQback3==0,primedensity[]]] // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst3Tm.m",%%]


EQfirst4+3/2 scale[]^2 Tii/kscal[]^2-3/2 scale[]^2 Tij/kscal[]^2 // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst4Tm.m",%%]


EQfirst5-T0iV // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst5Tm.m",%%]


EQfirst6-TiiV // Expand;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst6Tm.m",%%]


EQfirst7-TijT;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst7Tm.m",%%]


EQfirst8;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst8Tm.m",%%]


EQfirst9;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst9Tm.m",%%]


EQfirst10;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst10Tm.m",%%]


EQfirst11;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst11Tm.m",%%]


EQfirst12;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst12Tm.m",%%]


EQfirst13;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst13Tm.m",%%]


EQfirst14;
% //.subback // SVTExpand;
CollectPerts[%,{kscal[]},Factor]
Export[$OutputDirectory<>"EQfirst14Tm.m",%%]



