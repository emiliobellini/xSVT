(* ::Package:: *)

(* ::Title:: *)
(*Theory ST - Luminal Horndeski*)


(* ::Section:: *)
(*To alphas*)


(* ::Subsection::Closed:: *)
(*Definitions*)


(* ::Subsubsection::Closed:: *)
(*Background*)


EQdensityS = -densityS[] -
	G2fun[scalar[], X[]] +
	(3*Mpl^2*hubbleC[]^2)/scale[]^2 -
	(6*G4fun[scalar[]]*hubbleC[]^2)/scale[]^2 +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]*primescalar[]*Derivative[1][G4fun][scalar[]])/scale[]^2 // ToCanonical;


EQpressureS = - pressureS[] +
	G2fun[scalar[], X[]] -
	Mpl^2*hubbleC[]^2/scale[]^2 +
	(2*G4fun[scalar[]]*hubbleC[]^2)/scale[]^2 -
	(2*Mpl^2*primehubbleC[])/scale[]^2 +
	(4*G4fun[scalar[]]*primehubbleC[])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 +
	(2*pprimescalar[]*Derivative[1][G4fun][scalar[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]*Derivative[1][G4fun][scalar[]])/scale[]^2 +
	(2*primescalar[]^2*Derivative[2][G4fun][scalar[]])/scale[]^2 // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*First order*)


EQmass2 = - mass2[] + 
	2 G4fun[scalar[]] // ToCanonical;


EQalphaK = - hubbleC[]^2/scale[]^2 alphaK[] mass2[] +
	(6*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(3*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/scale[]^4 -
	(2*primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 // ToCanonical;


EQalphaB = - alphaB[] hubbleC[]/scale[] mass2[] +
	(primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^3 -
	(2*primescalar[]*Derivative[1][G4fun][scalar[]])/scale[] // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*Second order*)


EQalphaK2 =  - alphaK2[]*hubbleC[]^2*mass2[]/scale[]^2 -
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) -
	(15*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(2*scale[]^6) -
	(primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(2*scale[]^6) -
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) +
	(2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(2*scale[]^6) // ToCanonical;


EQalphaB2 = - alphaB2[]*hubbleC[]*mass2[]/scale[] -
	(primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(3*scale[]^5) -
	(4*primescalar[]*Derivative[1][G4fun][scalar[]])/(3*scale[]) // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*Third order*)


EQalphaK3 = - alphaK3[]*hubbleC[]^2*mass2[]/scale[]^2 +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/(2*scale[]^4) +
	(3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) +
	(51*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(4*scale[]^6) +
	(7*primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(4*scale[]^6) +
	(15*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) +
	(primescalar[]^8*Derivative[0, 4][G2fun][scalar[], X[]])/(4*scale[]^8) +
	(3*hubbleC[]*primescalar[]^9*Derivative[0, 4][G3fun][scalar[], X[]])/(4*scale[]^10) -
	(2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(2*primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/scale[]^6 -
	(primescalar[]^8*Derivative[1, 3][G3fun][scalar[], X[]])/(4*scale[]^8) // ToCanonical;


EQalphaB3 = - alphaB3[]*hubbleC[]*mass2[]/scale[] +
	(primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(15*scale[]^7) -
	(16*primescalar[]*Derivative[1][G4fun][scalar[]])/(15*scale[]) // ToCanonical;
