(* ::Package:: *)

(****   Metric   ****)


metricrules = {metricg[-a_?TangentM1`Q, -b_?TangentM1`Q] :> -timevec[-a] timevec[-b] scale[]^2, 
	metricg[-i_?TangentM3`Q, -j_?TangentM3`Q] :> scale[]^2 metric\[Delta][-i, -j], 
	metricg[a_?TangentM1`Q, b_?TangentM1`Q] :> -timevec[a] timevec[b] scale[]^-2, 
	metricg[i_?TangentM3`Q, j_?TangentM3`Q] :> scale[]^-2 metric\[Delta][i, j], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -b_?TangentM1`Q] :> -2 scale[]^2 pertpsi[LI[order]] timevec[-a] timevec[-b], 
	pertmetricg[LI[order_], -a_?TangentM1`Q, -i_?TangentM3`Q] :> timevec[-a] scale[]^2 PD[-i]@pertB[LI[order]], 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -a_?TangentM1`Q] :> timevec[-a] scale[]^2 PD[-i]@pertB[LI[order]], 
	pertmetricg[LI[order_], -i_?TangentM3`Q, -j_?TangentM3`Q] :>
		Module[{k, l}, 2 scale[]^2 (- pertphi[LI[order]] metric\[Delta][-i, -j] + PD[-i]@PD[-j]@pertE[LI[order]])],
	Detmetricg[] :> -scale[]^8};


Print[Column[{"Metric Decomposition", metricrules}]]


(****   Scalar Field   ****)


scalarrules = {scalarcov[] :> scalar[], pertscalarcov[LI[order_]] :> pertscalar[LI[order]]};


Print[Column[{"Scalar field Decomposition", scalarrules}]]


(****   Matter Field   ****)


matterrules = {mattercov[] :> matter[], pertmattercov[LI[order_]] :> pertmatter[LI[order]]};


Print[Column[{"Matter field Decomposition", matterrules}]]


(****   Vector Field   ****)


vectorrules = {vectorcov[-a_?TangentM1`Q] :> timevec[-a] vector0[], 
	pertvectorcov[LI[order_], -a_?TangentM1`Q] :> timevec[-a] pertvector0[LI[order]],
	pertvectorcov[LI[order_], -i_?TangentM3`Q] :> PD[-i]@pertvector1[LI[order]]};


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
	pertgauge[LI[order_], i_?TangentM3`Q] :> Module[{j}, metric\[Delta][i, j] PD[-j]@pertgaugebeta[LI[order]]]};


Print[Column[{"Gauge Decomposition", gaugerules}]]


(****   Total   ****)


expandrules = Flatten[{metricrules, scalarrules, matterrules, vectorrules, tensorrules, gaugerules}];


Clear[metricrules, scalarrules, matterrules, vectorrules, tensorrules, gaugerules]
