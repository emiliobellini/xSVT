(* ::Package:: *)

(****   Metric   ****)


metricrules = {
	metricg[-a_?TangentM1`Q, -b_?TangentM1`Q] :> -timevec[-a] timevec[-b] scale[]^2, 
	metricg[-i_?TangentM3`Q, -j_?TangentM3`Q] :> scale[]^2 metric\[Gamma][-i, -j], 
	metricg[a_?TangentM1`Q, b_?TangentM1`Q] :> -timevec[a] timevec[b] scale[]^-2, 
	metricg[i_?TangentM3`Q, j_?TangentM3`Q] :> scale[]^-2 metric\[Gamma][i, j], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> -2 scale[]^2 pertpsi[LI[order]] timevec[-a] timevec[-b], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -j_?TangentM3`Q] :> 
		scale[]^2 (-2 pertphi[LI[order]] metric\[Gamma][-i, -j] + perth[LI[order], -i, -j] + PD[-i]@pertF[LI[order], -j] + PD[-j]@pertF[LI[order], -i] + 2 PD[-i]@PD[-j]@pertE[LI[order]]),
	Detmetricg[] :> -scale[]^8};


Print[Column[{"Metric Decomposition", ScreenDollarIndices[metricrules]}]]


(****   Scalar Field   ****)


scalarrules = Flatten[{
	scalarcov[] :> scalar[],
	pertscalarcov[LI[order_]] :> pertscalar[LI[order]],
	Xcov[]:>X[],
	pertXcov[LI[order_]]:>pertX[LI[order]]}];


Print[Column[{"Scalar field Decomposition", ScreenDollarIndices[scalarrules]}]]


(****   Matter Field   ****)


matterrules = Flatten[{
	densitycov[] :> density[],
	pressurecov[] :> pressure[],
	velocitycov[a_?TangentM1`Q] :> timevec[a] scale[]^-1,
	pertdensitycov[LI[order_]] :> density[] pertdensity[LI[order]],
	pertpressurecov[LI[order_]] :> pertpressure[LI[order]],
	MakeRule[{pertvelocitycov[LI[1], a], timevec[a] (pertmetricg[LI[1], -b, -c] timevec[b] timevec[c])/2/scale[]^3}],
	MakeRule[{pertvelocitycov[LI[2], c], timevec[c] (metric\[Gamma][-i, -j]*pertvelocitycov[LI[1], i]*pertvelocitycov[LI[1], j]*scale[] + (2*pertmetricg[LI[1], -i, -a]*pertvelocitycov[LI[1], i]*timevec[a])/scale[]^2 - pertvelocitycov[LI[1], a]*pertvelocitycov[LI[1], b]*scale[]*timevec[-a]*timevec[-b] + (2*pertmetricg[LI[1], -a, -b]*pertvelocitycov[LI[1], a]*timevec[b])/scale[]^2 + (pertmetricg[LI[2], -a, -b]*timevec[a]*timevec[b])/(2*scale[]^3))}],
	MakeRule[{pertvelocitycov[LI[1], i], (pertvelocityvec[LI[1], i] + metric\[Gamma][i, j] PD[-j]@pertvelocity[LI[1]]-scale[] metric\[Gamma][i, j] PD[-j]@pertB[LI[1]])/scale[]^2}],
	MakeRule[{pertvelocitycov[LI[2], i], (pertvelocityvec[LI[2], i] + metric\[Gamma][i, j] PD[-j]@pertvelocity[LI[2]]-scale[] metric\[Gamma][i, j] PD[-j]@pertB[LI[2]])/scale[]^2}],
	MakeRule[{pertshearcov[LI[1], -i, -j], (density[] + pressure[]) (pertshearten[LI[1], -i, -j] + PD[-i]@pertshearvec[LI[1], -j] + PD[-j]@pertshearvec[LI[1], -i] + 3/2 PD[-i]@PD[-j]@pertshear[LI[1]] - 1/2 metric\[Gamma][-i, -j] metric\[Gamma][k, l] PD[-k]@PD[-l]@pertshear[LI[1]])}],
	MakeRule[{pertshearcov[LI[2], -i, -j], (density[] + pressure[]) (pertshearten[LI[2], -i, -j] + PD[-i]@pertshearvec[LI[2], -j] + PD[-j]@pertshearvec[LI[2], -i] + 3/2 PD[-i]@PD[-j]@pertshear[LI[2]] - 1/2 metric\[Gamma][-i, -j] metric\[Gamma][k, l] PD[-k]@PD[-l]@pertshear[LI[2]])}],
	pertshearcov[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> 0,
	pertshearcov[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> 0,
	pertshearcov[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> 0
	}];


Print[Column[{"Stress-Energy Tensor Decomposition", ScreenDollarIndices[DownValues[stressenergy]]}]]


Print[Column[{"Matter field Decomposition", ScreenDollarIndices[matterrules]}]]


(****   Gauge Fields   ****)


gaugerules = {
	gauge[\[Mu]_] :> 0,
	pertgauge[LI[order_], a_?TangentM1`Q] :> timevec[a] pertgaugealpha[LI[order]], 
	pertgauge[LI[order_], i_?TangentM3`Q] :> Module[{j=DummyIn[TangentM3]},
		metric\[Gamma][i, j] (PD[-j]@pertgaugebeta[LI[order]] + pertgaugegamma[LI[order], -j])]};


Print[Column[{"Gauge Decomposition", ScreenDollarIndices[gaugerules]}]]


(****   Total   ****)


expandrules = Flatten[{metricrules, scalarrules, matterrules, gaugerules}];


Clear[metricrules, scalarrules, matterrules, gaugerules]
