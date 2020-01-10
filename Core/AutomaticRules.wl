(* ::Package:: *)

(****   Scalar-Vector-Tensor   ****)


If[$Scalar==0, AutomaticRules[#, {#[LI[order_]] :> 0}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==1];];


If[$Vector==0, AutomaticRules[#, {#[LI[order_], i_?TangentM3`pmQ] :> 0}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==2];];


If[$Tensor==0, AutomaticRules[#, {#[LI[order_], i_?TangentM3`pmQ, j_?TangentM3`pmQ] :> 0}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==3];];


(****   Covariant   ****)


(*These rules should be checked if the background is not FRW*)
AutomaticRules[metricg, {
	metricg[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	metricg[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0
	}]


Unprotect[delta];
AutomaticRules[delta, {
	delta[a_?TangentM1`pmQ, b_?TangentM1`pmQ] :> timevec[a] timevec[b],
	delta[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	delta[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0
	}]
Protect[delta];


AutomaticRules[timevec, {
	timevec[-a_?TangentM1`Q] timevec[a_?TangentM1`Q] :> 1,
	timevec[i_?TangentM3`pmQ] :> 0,
	PD[\[Mu]_]@timevec[b_] :> 0
	}]


AutomaticRules[pertmetric\[Gamma], {pertmetric\[Gamma][LI[order_], i_?TangentM3`pmQ, j_?TangentM3`pmQ] :> 0}]


(****   Stress Energy Tensor   ****)


AutomaticRules[stressenergy,
	{stressenergy[\[Mu]_?TangentM4`pmQ, \[Nu]_?TangentM4`pmQ] :> (densitycov[] + pressurecov[]) velocitycov[\[Mu]] velocitycov[\[Nu]] + pressurecov[] metricg[\[Mu], \[Nu]] + shearcov[\[Mu], \[Nu]]}]


AutomaticRules[velocitycov, {velocitycov[i_?TangentM3`pmQ] :> 0}]
AutomaticRules[shearcov, {
	shearcov[i_?TangentM3`pmQ, j_?TangentM3`pmQ] :> 0,
	shearcov[i_?TangentM3`pmQ, a_?TangentM1`pmQ] :> 0,
	shearcov[a_?TangentM1`pmQ, i_?TangentM3`pmQ] :> 0,
	shearcov[a_?TangentM1`pmQ, b_?TangentM1`pmQ] :> 0
	}]


(****   Background   ****)


AutomaticRules[primescale, {primescale[] :> scale[] hubbleC[]}];
AutomaticRules[dotscale, {dotscale[] :> scale[] hubbleP[]}];


AutomaticRules[#, {PD[i_?TangentM3`pmQ]@#[] :> 0}]&/@SelectTensors[$Tensors, "background*"];


AutomaticRules[#, {
	PD[-a_?TangentM1`Q]@#[] :> timevec[-a] ToExpression["prime"<>ToString[#]<>"[]"]
	}]&/@SelectTensors[$Tensors, "background"];


AutomaticRules[#, {
	PD[-a_?TangentM1`Q]@#[] :> timevec[-a] ToExpression["p"<>ToString[#]<>"[]"]
	}]&/@SelectTensors[$Tensors, "background *prime"];


(****   Divergence-Free Vectors   ****)


AutomaticRules[#, {
	PD[i_?TangentM3`Q]@#[LI[order_], -i_?TangentM3`Q] :> 0,
	PD[-i_?TangentM3`Q]@#[LI[order_], i_?TangentM3`Q] :> 0
	}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==2];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] #[LI[order_], -i_?TangentM3`Q] :> 0,
	kvec[-i_?TangentM3`Q] #[LI[order_], i_?TangentM3`Q] :> 0
	}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==2];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], -i_?TangentM3`Q] :> 0,
	kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], i_?TangentM3`Q] :> 0
	}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==2];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], -i_?TangentM3`Q] :> 0,
	kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], i_?TangentM3`Q] :> 0
	}]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==2];


(****   Divergence-Free and Traceless Tensors   ****)


AutomaticRules[#, {
	#[LI[order_], i_?TangentM3`Q, -i_?TangentM3`Q] :> 0,
	#[LI[order_], -i_?TangentM3`Q, i_?TangentM3`Q] :> 0, 
	PD[i_?TangentM3`Q]@#[LI[order_], -i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0,
	PD[-i_?TangentM3`Q]@#[LI[order_], i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0, 
    PD[i_?TangentM3`Q]@#[LI[order_], j_?TangentM3`pmQ, -i_?TangentM3`Q] :> 0,
    PD[-i_?TangentM3`Q]@#[LI[order_], j_?TangentM3`pmQ, i_?TangentM3`Q] :> 0
    }]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==3];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] #[LI[order_], -i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0,
	kvec[-i_?TangentM3`Q] #[LI[order_], i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0, 
    kvec[i_?TangentM3`Q] #[LI[order_], j_?TangentM3`pmQ, -i_?TangentM3`Q] :> 0,
    kvec[-i_?TangentM3`Q] #[LI[order_], j_?TangentM3`pmQ, i_?TangentM3`Q] :> 0
    }]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==3];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], -i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0,
	kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0, 
    kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], j_?TangentM3`pmQ, -i_?TangentM3`Q] :> 0,
    kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@#[LI[order_], j_?TangentM3`pmQ, i_?TangentM3`Q] :> 0
    }]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==3];


AutomaticRules[#, {
	kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], -i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0,
	kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], i_?TangentM3`Q, j_?TangentM3`pmQ] :> 0, 
    kvec[i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], j_?TangentM3`pmQ, -i_?TangentM3`Q] :> 0,
    kvec[-i_?TangentM3`Q] PD[a_?TangentM1`pmQ]@PD[b_?TangentM1`pmQ]@#[LI[order_], j_?TangentM3`pmQ, i_?TangentM3`Q] :> 0
    }]&/@Cases[SelectTensors[$Tensors, "perturbation*"], x_ /; Length[SlotsOfTensor[x]]==3];


(****   k vectors   ****)


AutomaticRules[#, {
	PD[ind1_]@#[ind2___] :> 0
	}]&/@SelectTensors[$Tensors, "k vector"];


AutomaticRules[kvec,
	{metric\[Gamma][i_?TangentM3`Q, j_?TangentM3`Q] kvec[-i_?TangentM3`Q] kvec[-j_?TangentM3`Q] :> kscal[]^2}];


(****   Derived Functions   ****)


AutomaticRules[#, {PD[i_?TangentM3`pmQ]@#[] :> 0}]&/@SelectTensors[$Tensors, "building function*"];


AutomaticRules[#, {PD[-a_?TangentM1`Q]@#[] :>
	timevec[-a] ToExpression["prime"<>ToString[#]<>"[]"]}]&/@SelectTensors[$Tensors, "building function"];


AutomaticRules[#, {PD[-a_?TangentM1`Q]@#[] :>
	timevec[-a] ToExpression["p"<>ToString[#]<>"[]"]}]&/@SelectTensors[$Tensors, "building function *prime"];


(****   Alphas   ****)


AutomaticRules[primemass2, {primemass2[] :> hubbleC[] mass2[] alphaM[]}]


AutomaticRules[dotmass2, {dotmass2[] :> hubbleP[] mass2[] alphaM[]}]
