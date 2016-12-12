(* ::Package:: *)

(****   Metric   ****)


metricrules = {metricg[-a_?TangentM1`Q, -b_?TangentM1`Q] :> -timevec[-a] timevec[-b] scale[]^2, 
	metricg[-i_?TangentM3`Q, -j_?TangentM3`Q] :> scale[]^2 metric\[Delta][-i, -j], 
	metricg[a_?TangentM1`Q, b_?TangentM1`Q] :> -timevec[a] timevec[b] scale[]^-2, 
	metricg[i_?TangentM3`Q, j_?TangentM3`Q] :> scale[]^-2 metric\[Delta][i, j], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> -2 scale[]^2 pertpsi[LI[order]] timevec[-a] timevec[-b], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> timevec[-a] scale[]^2 (PD[-i]@pertB[LI[order]] - pertS[LI[order], -i]), 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -j_?TangentM3`Q] :>
		Module[{k, l}, scale[]^2 (-2 pertphi[LI[order]] metric\[Delta][-i, -j] + perth[LI[order], -i, -j] + PD[-i]@pertF[LI[order], -j]
			+ PD[-j]@pertF[LI[order], -i] + 2 PD[-i]@PD[-j]@pertE[LI[order]])],
	Detmetricg[] :> -scale[]^8};


Print[Column[{"Metric Decomposition", metricrules}]]


(****   Scalar Field   ****)


scalarrules = {scalarcov[] :> scalar[], pertscalarcov[LI[order_]] :> -primescalar[]/scale[] pertscalar[LI[order]]};


Print[Column[{"Scalar field Decomposition", scalarrules}]]


(****   Matter Field   ****)


(* I am using the fact that velocitycov[\[Mu]] velocitycov[-\[Mu]] \[Equal] -1. If the metric is not conformal some of this should be changed *)


matterrules = Flatten[{mattercov[] :> matter[], pertmattercov[LI[order_]] :> pertmatter[LI[order]],
	densitycov[] :> density[],
	pressurecov[] :> pressure[],
	velocitycov[a_?TangentM1`Q] :> timevec[a] scale[]^-1,
	pertdensitycov[LI[order_]] :> density[] pertdensity[LI[order]],
	pertpressurecov[LI[order_]] :> pertpressure[LI[order]],
	MakeRule[{pertvelocitycov[LI[1], a], timevec[a] (pertmetricg[LI[1], -b, -c] timevec[b] timevec[c])/2/scale[]^3}],
	MakeRule[{pertvelocitycov[LI[1], i], (pertvelocityvec[LI[1], i] + metric\[Delta][i, j] PD[-j]@pertvelocity[LI[1]]-scale[] metric\[Delta][i, j] PD[-j]@pertB[LI[1]])/scale[]^2}],
	MakeRule[{pertshearcov[LI[1], -i, -j], (density[] + pressure[]) (pertshearten[LI[1], -i, -j] + PD[-i]@pertshearvec[LI[1], -j] + PD[-j]@pertshearvec[LI[1], -i] + 3/2 PD[-i]@PD[-j]@pertshear[LI[1]] - 1/2 metric\[Delta][-i, -j] metric\[Delta][k, l] PD[-k]@PD[-l]@pertshear[LI[1]])}],
	pertshearcov[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> 0,
	pertshearcov[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> 0,
	pertshearcov[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> 0}];


Print[Column[{"Stress-Energy Tensor Decomposition", DownValues[stressenergy]}]]


Print[Column[{"Matter field Decomposition", matterrules}]]


(****   Vector Field   ****)


vectorrules = {vectorcov[a_?TangentM1`Q] :> timevec[a] vector0[], 
	pertvectorcov[LI[order_], a_?TangentM1`Q] :> timevec[a] pertvector0[LI[order]],
	pertvectorcov[LI[order_], i_?TangentM3`Q] :> PD[i]@pertvector1[LI[order]]};


Print[Column[{"Vector field Decomposition", vectorrules}]]


(****   Tensor Field   ****)


tensorrules = {tensorcov[-a_?TangentM1`Q, -b_?TangentM1`Q] :> -timevec[-a] timevec[-b] scale2[]^2 lapse2[]^2, 
	tensorcov[-i_?TangentM3`Q, -j_?TangentM3`Q] :> scale2[]^2 metric\[Delta][-i, -j], 
	perttensorcov[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> -2 scale2[]^2 pertpsi2[LI[order]] timevec[-a] timevec[-b], 
	perttensorcov[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> timevec[-a] scale2[]^2 PD[-i]@pertB2[LI[order]], 
	perttensorcov[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> timevec[-a] scale2[]^2 PD[-i]@pertB2[LI[order]], 
	perttensorcov[LI[order_], -i_?TangentM3`Q, -j_?TangentM3`Q] :>
		Module[{k, l}, 2 scale2[]^2 (- pertphi2[LI[order]] metric\[Delta][-i, -j] + PD[-i]@PD[-j]@pertE2[LI[order]])]};


Print[Column[{"Tensor field Decomposition", tensorrules}]]


(****   Gauge Fields   ****)


gaugerules = {gauge[\[Mu]_] :> 0, pertgauge[LI[order_], a_?TangentM1`Q] :> timevec[a] pertgaugealpha[LI[order]], 
	pertgauge[LI[order_], i_?TangentM3`Q] :> Module[{j}, metric\[Delta][i, j] (PD[-j]@pertgaugebeta[LI[order]] + pertgaugegamma[LI[order], -j])]};


Print[Column[{"Gauge Decomposition", gaugerules}]]


(****   Total   ****)


expandrules = Flatten[{metricrules, scalarrules, matterrules, vectorrules, tensorrules, gaugerules}];


Clear[metricrules, scalarrules, matterrules, vectorrules, tensorrules, gaugerules]
