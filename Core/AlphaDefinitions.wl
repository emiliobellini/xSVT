(* ::Package:: *)

EQmass2 = - mass2[] + 
	2 (G4fun[scalar[], X[]] -
	2 primescalar[]^2/(2 scale[]^2) Derivative[0, 1][G4fun][scalar[], X[]] -
	primescalar[]^2/(2 scale[]^2) (hubbleC[] primescalar[]/scale[]^2 Derivative[0, 1][G5fun][scalar[], X[]] -
	Derivative[1, 0][G5fun][scalar[], X[]]) +
	primescalar[]^4 F4fun[scalar[], X[]]/scale[]^4 -
	3 hubbleC[] primescalar[]^5 F5fun[scalar[], X[]]/scale[]^6) // ToCanonical;


EQalphaK = - hubbleC[]^2/scale[]^2 alphaK[] mass2[] +
	(6*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(3*hubbleC[]*primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^6 +
	(24*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(72*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(7*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(120*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 +
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 -
	(54*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^10 +
	(66*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(6*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^10 +
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
	(4*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^5 -
	(16*hubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^5 +
	(hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^7 +
	(30*hubbleC[]^2*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^7) -
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^7 +
	(6*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^9) -
	(2*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[] -
	(4*hubbleC[]*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^3 -
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^3 -
	(2*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 // ToCanonical;


EQalphaT = - alphaT[] mass2[] +
	(2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 -
	(pprimescalar[]*primescalar[]^2*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 +
	(2*hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^4 -
	(2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^4 +
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) -
	(2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2 // ToCanonical;


EQalphaH = - mass2[] alphaH[] -
	(2*primescalar[]^4*F4fun[scalar[], X[]])/(scale[]^4) +
	(6*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) // ToCanonical;


EQalphaKK = - hubbleC[]^2*mass2[]*alphaKK[]/scale[]^2 +
	(21*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/(2*scale[]^6) +
	(6*hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(primescalar[]^4*Derivative[0, 2][G2fun][scalar[], X[]])/(4*scale[]^4) -
	(hubbleC[]*primescalar[]^7*Derivative[0, 3][G3fun][scalar[], X[]])/(4*scale[]^8) +
	(hubbleC[]^2*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/(4*scale[]^10) -
	(primescalar[]^6*Derivative[0, 3][G2fun][scalar[], X[]])/(12*scale[]^6) -
	(hubbleC[]^2*primescalar[]^8*Derivative[0, 4][G4fun][scalar[], X[]])/(2*scale[]^10) -
	(hubbleC[]^3*primescalar[]^9*Derivative[0, 4][G5fun][scalar[], X[]])/(12*scale[]^12) +
	(4*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(primescalar[]^4*Derivative[1, 1][G3fun][scalar[], X[]])/(3*scale[]^4) -
	(2*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(7*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^6*Derivative[1, 2][G3fun][scalar[], X[]])/(12*scale[]^6) +
	(hubbleC[]*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/(2*scale[]^6) -
	(hubbleC[]^2*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/(4*scale[]^8) +
	(hubbleC[]*primescalar[]^7*Derivative[1, 3][G4fun][scalar[], X[]])/(2*scale[]^8) +
	(hubbleC[]^2*primescalar[]^8*Derivative[1, 3][G5fun][scalar[], X[]])/(4*scale[]^10) +
	(24*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 -
	(18*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(48*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/scale[]^10 +
	(5*hubbleC[]^2*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/(2*scale[]^10) -
	(3*hubbleC[]^3*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(2*scale[]^12) +
	(hubbleC[]^2*primescalar[]^10*Derivative[0, 3][F4fun][scalar[], X[]])/(2*scale[]^12) -
	(hubbleC[]^3*primescalar[]^11*Derivative[0, 3][F5fun][scalar[], X[]])/(2*scale[]^14) // ToCanonical;


EQalphaBB = - hubbleC[]*mass2[]*alphaBB[]/scale[] -
	(primescalar[]^5*Derivative[0, 2][G3fun][scalar[], X[]])/scale[]^5 -
	(12*hubbleC[]*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^5 -
	(7*hubbleC[]^2*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^7 -
	(4*hubbleC[]*primescalar[]^6*Derivative[0, 3][G4fun][scalar[], X[]])/scale[]^7 -
	(hubbleC[]^2*primescalar[]^7*Derivative[0, 3][G5fun][scalar[], X[]])/scale[]^9 -
	(4*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[] +
	(2*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^3 +
	(8*hubbleC[]*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^5 +
	(2*primescalar[]^5*Derivative[1, 2][G4fun][scalar[], X[]])/scale[]^5 +
	(2*hubbleC[]*primescalar[]^6*Derivative[1, 2][G5fun][scalar[], X[]])/scale[]^7 -
	(-(32*hubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^5 +
	(120*hubbleC[]^2*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^7 -
	(32*hubbleC[]*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^7 +
	(66*hubbleC[]^2*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^9) -
	(4*hubbleC[]*primescalar[]^8*Derivative[0, 2][F4fun][scalar[], X[]])/scale[]^9 +
	(6*hubbleC[]^2*primescalar[]^9*Derivative[0, 2][F5fun][scalar[], X[]])/(scale[]^11)) // ToCanonical;


EQalphaTT = - alphaTT[] mass2[] +
	2 primescalar[]^3 hubbleC[] Derivative[0, 1][G5fun][scalar[], X[]]/scale[]^4 // ToCanonical;


EQalphaMM = -mass2[]*alphaMM[] -
	(primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 -
	(primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^4 -
	(hubbleC[]*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/(2*scale[]^6) +
	(primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2 +
	(primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/(2*scale[]^4) // ToCanonical;


EQalphaHH = - mass2[] alphaHH[] -
	(4*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^4 +
	(18*hubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^6) -
	(primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/(scale[]^6) +
	(3*hubbleC[]*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^8) // ToCanonical;


EQalphaDEG = -alphaDEG[] mass2[] - 12 primescalar[]^5 hubbleC[]/scale[]^6 F5fun[scalar[],X[]]


EQBHdegeneracyG = primescalar[]^2/2/scale[]^2 Derivative[0,1][G5fun][scalar[],X[]] F4fun[scalar[],X[]]-
	3 F5fun[scalar[],X[]] (G4fun[scalar[],X[]]-
		2 primescalar[]^2/2/scale[]^2 Derivative[0,1][G4fun][scalar[],X[]]+
		primescalar[]^2/2/scale[]^2 Derivative[1,0][G5fun][scalar[],X[]]) // ToCanonical;


EQdensityS = -densityS[] -
	G2fun[scalar[], X[]] +
	(3*hubbleC[]^2)/scale[]^2 -
	(6*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 +
	(3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/scale[]^4 +
	(12*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^4 +
	(5*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(primescalar[]^2*Derivative[0, 1][G2fun][scalar[], X[]])/scale[]^2 +
	(6*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 -
	(30*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(42*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) -
	(6*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 +
	(6 hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) -
	(primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/scale[]^2 -
	(6*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], X[]])/scale[]^2 -
	(9*hubbleC[]^2*primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 -
	(6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/scale[]^4 -
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 // ToCanonical;


EQpressureS = - pressureS[] +
	G2fun[scalar[], X[]] -
	hubbleC[]^2/scale[]^2 +
	(2*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 -
	(2*primehubbleC[])/scale[]^2 +
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
	(4*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][scalar[], X[]])/scale[]^6 +
	(16*hubbleC[]*pprimescalar[]*primescalar[]^3*F4fun[scalar[], X[]])/scale[]^6 -
	(14*hubbleC[]^2*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 +
	(4*primehubbleC[]*primescalar[]^4*F4fun[scalar[], X[]])/scale[]^6 -
	(hubbleC[]^2*pprimescalar[]*primescalar[]^4*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 +
	(hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/scale[]^8 -
	(30*hubbleC[]^2*pprimescalar[]*primescalar[]^4*F5fun[scalar[], X[]])/(scale[]^8) +
	(30*hubbleC[]^3*primescalar[]^5*F5fun[scalar[], X[]])/(scale[]^8) -
	(12*hubbleC[]*primehubbleC[]*primescalar[]^5*F5fun[scalar[], X[]])/scale[]^8 +
	(4*hubbleC[]*pprimescalar[]*primescalar[]^5*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(4*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/scale[]^8 -
	(6*hubbleC[]^2*pprimescalar[]*primescalar[]^6*Derivative[0, 1][F5fun][scalar[], X[]])/(scale[]^10) +
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
	(3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][scalar[], X[]])/scale[]^6 +
	(4*hubbleC[]*primescalar[]^5*Derivative[1, 0][F4fun][scalar[], X[]])/scale[]^6 -
	(6*hubbleC[]^2*primescalar[]^6*Derivative[1, 0][F5fun][scalar[], X[]])/(scale[]^8) +
	(2*primescalar[]^2*Derivative[2, 0][G4fun][scalar[], X[]])/scale[]^2 +
	(2*hubbleC[]*primescalar[]^3*Derivative[2, 0][G5fun][scalar[], X[]])/scale[]^4 // ToCanonical;
