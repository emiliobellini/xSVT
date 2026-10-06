(* ::Package:: *)

(* ::Title:: *)
(*Theory ST - Beyond Horndeski*)


(* ::Section:: *)
(*Definitions*)


(* ::Subsection::Closed:: *)
(*Alphas*)


DefTensorSVT[alphaT[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\)]\)", BackgroundQ->True]


DefTensorSVT[alphaM2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaT2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH2[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H2\)]\)", BackgroundQ->True]
DefTensorSVT[alphaDEG[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(DEG\)]\)", BackgroundQ->True]


DefTensorSVT[alphaM3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaT3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH3[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H3\)]\)", BackgroundQ->True]
DefTensorSVT[alphaH4[], M1, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H4\)]\)", BackgroundQ->True]


(* ::Subsection::Closed:: *)
(*Scalar functions*)


DefScalarFunction[F4fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(4\)]\)"]
DefScalarFunction[F5fun, PrintAs -> "\!\(\*SubscriptBox[\(F\), \(5\)]\)"]


(* ::Section:: *)
(*To alphas*)


(* ::Subsection::Closed:: *)
(*Definitions*)


(* ::Subsubsection::Closed:: *)
(*Background*)


EQdensityS = -densityS[] -
	G2fun[scalar[], X[]] +
	(3*Mpl^2*hubbleC[]^2)/scale[]^2 -
	(6*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(12*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(5*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(6*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(30*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(42*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(6 hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 -
	(9*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 // ToCanonical;


EQpressureS = - pressureS[] +
	G2fun[scalar[], X[]] -
	Mpl^2*hubbleC[]^2/scale[]^2 +
	(2*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 -
	(2*Mpl^2*primehubbleC[])/scale[]^2 +
	(4*G4fun[scalar[], X[]]*primehubbleC[])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(4*primehubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(2*hubbleC[]*primehubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]^3*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(4*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(16*hubbleC[]*pprimescalar[]*primescalar[]^3*F4fun[scalar[], X[]])/scale[]^6 +
	(14*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 -
	(4*primehubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 -
	(hubbleC[]^2*pprimescalar[]*primescalar[]^4*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(30*hubbleC[]^2*pprimescalar[]*primescalar[]^4*F5fun[scalar[], X[]])/(scale[]^8) -
	(30*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) +
	(12*hubbleC[]*primehubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 -
	(4*hubbleC[]*pprimescalar[]*primescalar[]^5*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(4*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(6*hubbleC[]^2*pprimescalar[]*primescalar[]^6*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(6*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 +
	(2*pprimescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(4*hubbleC[]*pprimescalar[]*primescalar[]*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 +
	(2*primehubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 +
	(2*pprimescalar[]*primescalar[]^2*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]*pprimescalar[]*primescalar[]^3*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(4*hubbleC[]*primescalar[]^5*Derivative[1, 0][F4fun][scalar[], X[]])/scale[]^6 +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[1, 0][F5fun][scalar[], X[]])/(scale[]^8) +
	(2*primescalar[]^2*Derivative[2, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]^3*Derivative[2, 0][G5fun][scalar[], X[]])/scale[]^4 // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*First order*)


EQmass2 = - mass2[] + 
	2 (G4fun[scalar[], X[]] -
	2 primescalar[]^2/(2 scale[]^2) Derivative[0, 1][G4fun][scalar[], X[]] -
	primescalar[]^2/(2 scale[]^2) (hubbleC[] primescalar[]/scale[]^2 Derivative[0, 1][G5fun][scalar[], X[]] -
	Derivative[1, 0][G5fun][scalar[], X[]]) -
	primescalar[]^4 F4fun[scalar[], X[]]/scale[]^4 +
	3 hubbleC[] primescalar[]^5 F5fun[scalar[], X[]]/scale[]^6) // ToCanonical;


EQalphaK = - hubbleC[]^2/scale[]^2 alphaK[] mass2[] +
	(6*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(3*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^6 +
	(24*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(72*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(7*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(120*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 +
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 +
	(54*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^10 -
	(66*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) +
	(6*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 -
	(6*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(scale[]^12) -
	(2*primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(18*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(15*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(6*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(3*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^8 // ToCanonical;


EQalphaB = - alphaB[] hubbleC[]/scale[] mass2[] +
	(primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^3 +
	(4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^3 +
	(3*hubbleC[]^2*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^5 +
	(4*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^5 +
	(16*hubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^5 +
	(hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^7 -
	(30*hubbleC[]^2*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^7) +
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^7 -
	(6*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^9) -
	(2*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[] -
	(4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^3 -
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^3 -
	(2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 // ToCanonical;


EQalphaT = - alphaT[] mass2[] +
	(2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 +
	(2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) -
	(2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2 // ToCanonical;


EQalphaH = - mass2[] alphaH[] +
	(2*primescalar[]^4*F4fun[scalar[], X[]])/(scale[]^4) -
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) // ToCanonical;


EQalphaDEG = -alphaDEG[] mass2[] + 12 primescalar[]^5 hubbleC[]/scale[]^6 F5fun[scalar[],X[]];


EQBHdegeneracy = primescalar[]^2/2/scale[]^2 Derivative[0,1][G5fun][scalar[],X[]] F4fun[scalar[],X[]]-
	3 F5fun[scalar[],X[]] (G4fun[scalar[],X[]]-
		2 primescalar[]^2/2/scale[]^2 Derivative[0,1][G4fun][scalar[],X[]]+
		primescalar[]^2/2/scale[]^2 Derivative[1,0][G5fun][scalar[],X[]]) // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*Second order*)


EQalphaK2 =  - alphaK2[]*hubbleC[]^2*mass2[]/scale[]^2 +
	(180*F5fun[scalar[], X[]]*hubbleC[]^3*primescalar[]^5)/scale[]^8 -
	(72*F4fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^4)/scale[]^6 -
	(144*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(225*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^10 -
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(45*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 +
	(54*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/scale[]^12 -
	(3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) -
	(15*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(2*scale[]^6) -
	(27*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(27*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^8) -
	(3*hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/scale[]^12 +
	(3*hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/scale[]^14 -
	(primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(2*scale[]^6) -
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) -
	(24*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 -
	(6*hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^10 -
	(3*hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/scale[]^10 -
	(hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(2*scale[]^12) +
	(2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(9*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(18*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(2*scale[]^6) +
	(18*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(27*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(2*scale[]^8) +
	(3*hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/scale[]^8 +
	(3*hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/(2*scale[]^10) // ToCanonical;


EQalphaB2 = - alphaB2[]*hubbleC[]*mass2[]/scale[] +
	(20*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 -
	(16*F4fun[scalar[], X[]]*hubbleC[]*primescalar[]^4)/(3*scale[]^5)  -
	(28*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(3*scale[]^7) +
	(18*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^9 +
	(4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/(3*scale[]^3) -
	(4*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(3*scale[]^9) +
	(2*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/scale[]^11 -
	(primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(3*scale[]^5) -
	(8*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(3*scale[]^5) -
	(5*hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(3*scale[]^7) -
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(3*scale[]^7) -
	(hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(3*scale[]^9) -
	(4*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/(3*scale[]) -
	(4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/(3*scale[]^3) +
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/(3*scale[]^3) +
	(2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 +
	(2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(3*scale[]^5) +
	(2*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(3*scale[]^7) // ToCanonical;


EQalphaT2 = - alphaT2[]*mass2[] +
	(9*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/scale[]^6 -
	(2*F4fun[scalar[], X[]]*primescalar[]^4)/scale[]^4 -
	(primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^6 +
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^8 -
	(primescalar[]^2*(3*pprimescalar[] + 4*hubbleC[]*primescalar[])*Derivative[0, 1][G5fun][scalar[], X[]])/(6*scale[]^4) -
	(primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^4 -
	(hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^6) +
	(primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(2*scale[]^4) // ToCanonical;


EQalphaM2 = - alphaM2[]*hubbleC[]*mass2[]/scale[] +
	(-6*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 +
	(hubbleC[]^2*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^5 // ToCanonical;


EQalphaH2 = - alphaH2[]*mass2[] +
	(3*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(2*scale[]^6) -
	(primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(2*scale[]^6) +
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^8) // ToCanonical;


(* ::Subsubsection::Closed:: *)
(*Third order*)


EQalphaK3 = - alphaK3[]*hubbleC[]^2*mass2[]/scale[]^2 +
	(-270*F5fun[scalar[], X[]]*hubbleC[]^3*primescalar[]^5)/scale[]^8 +
	(72*F4fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^4)/scale[]^6 +
	(324*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(1305*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^10) +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/(2*scale[]^4) +
	(3*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/(2*scale[]^6) +
	(207*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 -
	(603*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(2*scale[]^12) +
	(3*primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(2*scale[]^4) +
	(51*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/(4*scale[]^6) +
	(27*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(87*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(4*scale[]^8) +
	(69*hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/(2*scale[]^12) -
	(81*hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/(2*scale[]^14) +
	(7*primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(4*scale[]^6) +
	(15*hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(2*scale[]^8) +
	(123*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(2*scale[]^8) +
	(87*hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(4*scale[]^10) +
	(3*hubbleC[]^2*primescalar[]^12*Derivative[0, 4][F4fun][scalar[], X[]])/(2*scale[]^14) -
	(3*hubbleC[]^3*primescalar[]^13*Derivative[0, 4][F5fun][scalar[], X[]])/(2*scale[]^16) +
	(primescalar[]^8*Derivative[0, 4][G2fun][scalar[], X[]])/(4*scale[]^8) +
	(3*hubbleC[]*primescalar[]^9*Derivative[0, 4][G3fun][scalar[], X[]])/(4*scale[]^10) +
	(21*hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/scale[]^10 +
	(19*hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(4*scale[]^12) +
	(3*hubbleC[]^2*primescalar[]^10*Derivative[0, 5][G4fun][scalar[], X[]])/(2*scale[]^12) +
	(hubbleC[]^3*primescalar[]^11*Derivative[0, 5][G5fun][scalar[], X[]])/(4*scale[]^14) -
	(2*primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/scale[]^4 -
	(9*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/(2*scale[]^4) -
	(18*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 -
	(2*primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/scale[]^6 -
	(63*hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(2*scale[]^6) -
	(36*hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(primescalar[]^8*Derivative[1, 3][G3fun][scalar[], X[]])/(4*scale[]^8) -
	(33*hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(2*scale[]^8) -
	(45*hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/(4*scale[]^10) -
	(3*hubbleC[]*primescalar[]^9*Derivative[1, 4][G4fun][scalar[], X[]])/(2*scale[]^10) -
	(3*hubbleC[]^2*primescalar[]^10*Derivative[1, 4][G5fun][scalar[], X[]])/(4*scale[]^12) // ToCanonical;


EQalphaB3 = - alphaB3[]*hubbleC[]*mass2[]/scale[] +
	(-16*F4fun[scalar[], X[]]*hubbleC[]*primescalar[]^4)/(15*scale[]^5) +
	(44*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(15*scale[]^7) -
	(56*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(5*scale[]^9) +
	(4*hubbleC[]*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/(5*scale[]^3) +
	(8*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(3*scale[]^9) -
	(26*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(5*scale[]^11) -
	(4*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(5*scale[]^5) +
	(4*hubbleC[]*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/(15*scale[]^11) -
	(2*hubbleC[]^2*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/(5*scale[]^13) +
	(primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(15*scale[]^7) +
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(5*scale[]^7) +
	(7*hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(15*scale[]^9) +
	(4*hubbleC[]*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/(15*scale[]^9) +
	(hubbleC[]^2*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(15*scale[]^11) -
	(16*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/(15*scale[]) -
	(4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/(5*scale[]^3) +
	(8*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/(15*scale[]^3) +
	(2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(3*scale[]^5) -
	(2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(15*scale[]^5) -
	(8*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(15*scale[]^7) -
	(2*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(15*scale[]^7) -
	(2*hubbleC[]*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/(15*scale[]^9) // ToCanonical;


EQalphaT3 = - alphaT3[]*mass2[] -
	(9*F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(4*scale[]^6) +
	(primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^6 -
	(9*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^8) -
	(3*pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/(8*scale[]^4) -
	(hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/(6*scale[]^4) +
	(primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(4*scale[]^8) -
	(3*hubbleC[]*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(4*scale[]^10) +
	(5*hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(12*scale[]^6) +
	(primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/(4*scale[]^6) +
	(hubbleC[]*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(8*scale[]^8) -
	(primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(8*scale[]^4) -
	(primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(8*scale[]^6) // ToCanonical;


EQalphaM3 = - alphaM3[]*hubbleC[]*mass2[]/scale[] +
	(4*F5fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^5)/scale[]^7 +
	(2*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^9 -
	(hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(3*scale[]^7) // ToCanonical;


EQalphaH3 = - alphaH3[]*mass2[] +
	(F5fun[scalar[], X[]]*hubbleC[]*primescalar[]^5)/(4*scale[]^6) -
	(hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(2*scale[]^8) +
	(primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(12*scale[]^8) -
	(hubbleC[]*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(4*scale[]^10) // ToCanonical;


EQalphaH4 = - alphaH4[]*mass2[] +
	primescalar[]^7*hubbleC[]*Derivative[0, 1][F5fun][scalar[], X[]]/scale[]^8;


(* ::Subsection::Closed:: *)
(*Functions*)


(****   NoG's   ****)
NoG5[expr_]:=expr//.Derivative[__][G5fun][__]:>0//.G5fun[__]:>0
NoF4[expr_]:=expr//.Derivative[__][F4fun][__]:>0//.F4fun[__]:>0
NoF5[expr_]:=expr//.Derivative[__][F5fun][__]:>0//.F5fun[__]:>0


ToHorndeski[expr_] := Module[{tmp},
	tmp = expr;
	(* G's *)
	tmp = tmp // NoF5;
	tmp = tmp // NoF4;
	(* Alphas *)
	tmp = tmp //.alphaDEG[] :> 0;
	tmp = tmp //.alphaH[] :> 0;
	tmp = tmp //.alphaH2[] :> 0;
	tmp = tmp //.alphaH3[] :> 0;
	tmp = tmp //.alphaH4[] :> 0;
	(* Time derivatives - Conformal time *)
	tmp = tmp //.{primealphaDEG[] :> 0, primealphaH[] :> 0, primealphaH2[] :> 0, primealphaH3[] :> 0, primealphaH4[] :> 0};
	tmp = tmp //.{pprimealphaDEG[] :> 0, pprimealphaH[] :> 0, pprimealphaH2[] :> 0, pprimealphaH3[] :> 0, pprimealphaH4[] :> 0};
	tmp = tmp //.{ppprimealphaDEG[] :> 0, ppprimealphaH[] :> 0, ppprimealphaH2[] :> 0, ppprimealphaH3[] :> 0, ppprimealphaH4[] :> 0};
	tmp = tmp //.{pppprimealphaDEG[] :> 0, pppprimealphaH[] :> 0, pppprimealphaH2[] :> 0, pppprimealphaH3[] :> 0, pppprimealphaH4[] :> 0};
	tmp = tmp //.{ppppprimealphaDEG[] :> 0, ppppprimealphaH[] :> 0, ppppprimealphaH2[] :> 0, ppppprimealphaH3[] :> 0, ppppprimealphaH4[] :> 0};
	tmp = tmp //.{pppppprimealphaDEG[] :> 0, pppppprimealphaH[] :> 0, pppppprimealphaH2[] :> 0, pppppprimealphaH3[] :> 0, pppppprimealphaH4[] :> 0};
	(* Time derivatives - Phisical time *)
	tmp = tmp //.{dotalphaDEG[] :> 0, dotalphaH[] :> 0, dotalphaH2[] :> 0, dotalphaH3[] :> 0, dotalphaH4[] :> 0};
	tmp = tmp //.{ddotalphaDEG[] :> 0, ddotalphaH[] :> 0, ddotalphaH2[] :> 0, ddotalphaH3[] :> 0, ddotalphaH4[] :> 0};
	tmp = tmp //.{dddotalphaDEG[] :> 0, dddotalphaH[] :> 0, dddotalphaH2[] :> 0, dddotalphaH3[] :> 0, dddotalphaH4[] :> 0};
	tmp = tmp //.{ddddotalphaDEG[] :> 0, ddddotalphaH[] :> 0, ddddotalphaH2[] :> 0, ddddotalphaH3[] :> 0, ddddotalphaH4[] :> 0};
	tmp = tmp //.{dddddotalphaDEG[] :> 0, dddddotalphaH[] :> 0, dddddotalphaH2[] :> 0, dddddotalphaH3[] :> 0, dddddotalphaH4[] :> 0};
	tmp = tmp //.{ddddddotalphaDEG[] :> 0, ddddddotalphaH[] :> 0, ddddddotalphaH2[] :> 0, ddddddotalphaH3[] :> 0, ddddddotalphaH4[] :> 0};
	tmp
]


ToLuminalHorndeski[expr_] := Module[{tmp},
	tmp = expr;
	tmp = tmp // ToHorndeski;
	(* G's *)
	tmp = tmp // NoG5;
	tmp = tmp //.G4fun[s_,x_] :> G4fun[s] //.Derivative[n_,m_][G4fun][s_,x_] :> D[G4fun[s],{s,n},{x,m}];
	(* Alphas *)
	tmp = tmp //.alphaT[] :> 0;
	tmp = tmp //.alphaT2[] :> 0;
	tmp = tmp //.alphaT3[] :> 0;
	tmp = tmp //.alphaM2[] :> 0;
	tmp = tmp //.alphaM3[] :> 0;
	(* Time derivatives - Conformal time *)
	tmp = tmp //.{primealphaT[] :> 0, primealphaT2[] :> 0, primealphaT3[] :> 0, primealphaM2[] :> 0, primealphaM3[] :> 0};
	tmp = tmp //.{pprimealphaT[] :> 0, pprimealphaT2[] :> 0, pprimealphaT3[] :> 0, pprimealphaM2[] :> 0, pprimealphaM3[] :> 0};
	tmp = tmp //.{ppprimealphaT[] :> 0, ppprimealphaT2[] :> 0, ppprimealphaT3[] :> 0, ppprimealphaM2[] :> 0, ppprimealphaM3[] :> 0};
	tmp = tmp //.{pppprimealphaT[] :> 0, pppprimealphaT2[] :> 0, pppprimealphaT3[] :> 0, pppprimealphaM2[] :> 0, pppprimealphaM3[] :> 0};
	tmp = tmp //.{ppppprimealphaT[] :> 0, ppppprimealphaT2[] :> 0, ppppprimealphaT3[] :> 0, ppppprimealphaM2[] :> 0, ppppprimealphaM3[] :> 0};
	tmp = tmp //.{pppppprimealphaT[] :> 0, pppppprimealphaT2[] :> 0, pppppprimealphaT3[] :> 0, pppppprimealphaM2[] :> 0, pppppprimealphaM3[] :> 0};
	(* Time derivatives - Phisical time *)
	tmp = tmp //.{dotalphaT[] :> 0, dotalphaT2[] :> 0, dotalphaT3[] :> 0, dotalphaM2[] :> 0, dotalphaM3[] :> 0};
	tmp = tmp //.{ddotalphaT[] :> 0, ddotalphaT2[] :> 0, ddotalphaT3[] :> 0, ddotalphaM2[] :> 0, ddotalphaM3[] :> 0};
	tmp = tmp //.{dddotalphaT[] :> 0, dddotalphaT2[] :> 0, dddotalphaT3[] :> 0, dddotalphaM2[] :> 0, dddotalphaM3[] :> 0};
	tmp = tmp //.{ddddotalphaT[] :> 0, ddddotalphaT2[] :> 0, ddddotalphaT3[] :> 0, ddddotalphaM2[] :> 0, ddddotalphaM3[] :> 0};
	tmp = tmp //.{dddddotalphaT[] :> 0, dddddotalphaT2[] :> 0, dddddotalphaT3[] :> 0, dddddotalphaM2[] :> 0, dddddotalphaM3[] :> 0};
	tmp = tmp //.{ddddddotalphaT[] :> 0, ddddddotalphaT2[] :> 0, ddddddotalphaT3[] :> 0, ddddddotalphaM2[] :> 0, ddddddotalphaM3[] :> 0};
	tmp
]


(* ::Section::Closed:: *)
(*Tex Corrections*)


Tex[alphaT] ^= "\\alpha_\\textrm{T}";
Tex[alphaH] ^= "\\alpha_\\textrm{H}";


Tex[primealphaT] ^= "\\alpha^\\prime_\\textrm{T}";
Tex[primealphaH] ^= "\\alpha^\\prime_\\textrm{H}";


Tex[pprimealphaT] ^= "\\alpha^{\\prime\\prime}_\\textrm{T}";
Tex[pprimealphaH] ^= "\\alpha^{\\prime\\prime}_\\textrm{H}";


Tex[alphaM2] ^= "\\alpha_\\textrm{M2}";
Tex[alphaT2] ^= "\\alpha_\\textrm{T2}";
Tex[alphaH2] ^= "\\alpha_\\textrm{H2}";
Tex[alphaDEG] ^= "\\alpha_\\textrm{DEG}";


Tex[primealphaM2] ^= "\\alpha^\\prime_\\textrm{M2}";
Tex[primealphaT2] ^= "\\alpha^\\prime_\\textrm{T2}";
Tex[primealphaH2] ^= "\\alpha^\\prime_\\textrm{H2}";
Tex[primealphaDEG] ^= "\\alpha^\\prime_\\textrm{DEG}";


Tex[pprimealphaM2] ^= "\\alpha^{\\prime\\prime}_\\textrm{M2}";
Tex[pprimealphaT2] ^= "\\alpha^{\\prime\\prime}_\\textrm{T2}";
Tex[pprimealphaH2] ^= "\\alpha^{\\prime\\prime}_\\textrm{H2}";
Tex[pprimealphaDEG] ^= "\\alpha^{\\prime\\prime}_\\textrm{DEG}";


Tex[alphaM3] ^= "\\alpha_\\textrm{M3}";
Tex[alphaT3] ^= "\\alpha_\\textrm{T3}";
Tex[alphaH3] ^= "\\alpha_\\textrm{H3}";
Tex[alphaH4] ^= "\\alpha_\\textrm{H4}";


Tex[primealphaM3] ^= "\\alpha^\\prime_\\textrm{M3}";
Tex[primealphaT3] ^= "\\alpha^\\prime_\\textrm{T3}";
Tex[primealphaH3] ^= "\\alpha^\\prime_\\textrm{H3}";
Tex[primealphaH4] ^= "\\alpha^\\prime_\\textrm{H4}";


Tex[pprimealphaM3] ^= "\\alpha^{\\prime\\prime}_\\textrm{M3}";
Tex[pprimealphaT3] ^= "\\alpha^{\\prime\\prime}_\\textrm{T3}";
Tex[pprimealphaH3] ^= "\\alpha^{\\prime\\prime}_\\textrm{H3}";
Tex[pprimealphaH4] ^= "\\alpha^{\\prime\\prime}_\\textrm{H4}";
