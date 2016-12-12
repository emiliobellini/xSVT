(* ::Package:: *)

(****   Manifolds   ****)


DefManifold[M1, 1, IndexRange[a, h]]
DefManifold[M3, 3, IndexRange[i, p]]
DefManifold[M4, 4, {\[Alpha], \[Beta], \[Eta], \[Lambda], \[Mu], \[Nu], \[Sigma], \[Tau]}]


(****   Metrics   ****)


DefMetric[-1, metricg[-\[Mu], -\[Nu]], CD, SymbolOfCovD -> {";", "\[EmptyDownTriangle]"},
	PrintAs -> "g"]
DefMetric[1, metric\[Delta][-i, -j], CDS, SymbolOfCovD -> {";", "\[Del]"},
	PrintAs -> "\[Delta]", FlatMetric -> True]


PrintAs[RiemannCD] ^= "R";
PrintAs[RicciCD] ^= "R";
PrintAs[RicciScalarCD] ^= "R";
PrintAs[EinsteinCD] ^= "G";
PrintAs[ChristoffelCD] ^= "\[CapitalGamma]";


(****   Tensors   ****)


(****   Metric   ****)


DefMetricPerturbation[metricg, pertmetricg, \[Epsilon]g];
PrintAs[pertmetricg] ^= "\[Delta]g";
DefMetricPerturbation[metric\[Delta], pertmetric\[Delta], \[Epsilon]\[Delta]];


DefTensor[timevec[a], M1, PrintAs -> "t"]


DefTensor[scale[], M4, PrintAs -> "a", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleC[], M4, PrintAs -> "\[ScriptCapitalH]", DefInfo -> {"tensor", "background"}]
DefTensor[hubbleP[], M4, PrintAs -> "H", DefInfo -> {"tensor", "background"}]


DefTensor[pertphi[LI[order]], M4, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPhi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpsi[LI[order]], M4, PrintAs -> "\!\(\*StyleBox[\"\[CapitalPsi]\",\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertB[LI[order]], M4, PrintAs -> "B",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertE[LI[order]], M4, PrintAs -> "E",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[pertS[LI[order], -i], M3, PrintAs -> "S",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertF[LI[order], -i], M3, PrintAs -> "F",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[perth[LI[order], -i, -j], M3, Symmetric[{-i, -j}], PrintAs -> "h",
	DefInfo -> {"tensor", "perturbation"}]


(****   Scalar Field   ****)


DefTensor[scalarcov[], M4, PrintAs -> "\[Phi]"]
DefTensorPerturbation[pertscalarcov[LI[order]], scalarcov[], M4, PrintAs -> "\[Delta]\[Phi]"]


DefTensor[scalar[], M4, PrintAs -> "\[Phi]", DefInfo -> {"tensor", "background"}]
DefTensor[pertscalar[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(V\), \(X\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


(****   Matter Field   ****)


DefTensor[mattercov[], M4, PrintAs -> "\[CurlyPhi]"]
DefTensorPerturbation[pertmattercov[LI[order]], mattercov[], M4, PrintAs -> "\[Delta]\[CurlyPhi]"]


DefTensor[matter[], M4, PrintAs -> "\[CurlyPhi]", DefInfo -> {"tensor", "background"}]
DefTensor[pertmatter[LI[order]], M4, PrintAs -> "\[Delta]\[CurlyPhi]",
	DefInfo -> {"tensor", "perturbation"}]


DefTensor[stressenergy[-\[Mu], -\[Nu]], M4, PrintAs -> "T"]


DefTensor[densitycov[], M4, PrintAs -> "\[Rho]"]
DefTensor[pressurecov[], M4, PrintAs -> "p"]
DefTensor[velocitycov[\[Mu]], M4, PrintAs -> "u"]
DefTensor[shearcov[-\[Mu], -\[Nu]], M4, PrintAs -> "\[Sigma]"]


DefTensorPerturbation[pertdensitycov[LI[order]], densitycov[], M4, PrintAs -> "\[Delta]\[Rho]"]
DefTensorPerturbation[pertpressurecov[LI[order]], pressurecov[], M4, PrintAs -> "\[Delta]p"]
DefTensorPerturbation[pertvelocitycov[LI[order], \[Mu]], velocitycov[\[Mu]], M4, PrintAs -> "\[Delta]u"]
DefTensorPerturbation[pertshearcov[LI[order], -\[Mu], -\[Nu]], shearcov[-\[Mu], -\[Nu]], M4, PrintAs -> "\[Delta]\[Sigma]"]


DefTensor[density[], M4, PrintAs -> "\[Rho]", DefInfo -> {"tensor", "background"}]
DefTensor[pressure[], M4, PrintAs -> "p", DefInfo -> {"tensor", "background"}]


DefTensor[pertdensity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvelocity[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(v\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpressure[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]p\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertshear[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Sigma]\), \(m\)]\)", DefInfo -> {"tensor", "perturbation"}]


(****   Vector Field   ****)


DefTensor[vectorcov[\[Mu]], M4, PrintAs -> "A"]
DefTensorPerturbation[pertvectorcov[LI[order], \[Mu]], vectorcov[\[Mu]], M4, PrintAs -> "\[Delta]A"]


DefTensor[vector0[], M4, PrintAs -> "A", DefInfo -> {"tensor", "background"}]


DefTensor[pertvector0[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]A\), \(0\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertvector1[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]A\), \(1\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


(****   Tensor Field   ****)


DefTensor[tensorcov[-\[Mu], -\[Nu]], M4, PrintAs -> "\!\(\*SubscriptBox[\(g\), \(2\)]\)"]
DefTensorPerturbation[perttensorcov[LI[order], -\[Mu], -\[Nu]], tensorcov[-\[Mu], -\[Nu]], M4,
	PrintAs -> "\!\(\*SubscriptBox[\(\[Delta]g\), \(2\)]\)"]


DefTensor[lapse2[], M4, PrintAs -> "N", DefInfo -> {"tensor", "background"}]
DefTensor[scale2[], M4, PrintAs -> "b", DefInfo -> {"tensor", "background"}]


DefTensor[hubbleC2[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalH]\), \(2\)]\)",
	DefInfo -> {"tensor", "background"}]
DefTensor[hubbleP2[], M4, PrintAs -> "\!\(\*SubscriptBox[\(H\), \(2\)]\)",
	DefInfo -> {"tensor", "background"}]


DefTensor[pertphi2[LI[order]], M4, PrintAs -> "\!\(\*
StyleBox[SubscriptBox[\"\[CapitalPhi]\", \"2\"],\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertpsi2[LI[order]], M4, PrintAs -> "\!\(\*
StyleBox[SubscriptBox[\"\[CapitalPsi]\", \"2\"],\nFontSize->14]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertB2[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(B\), \(2\)]\)",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertE2[LI[order]], M4, PrintAs -> "\!\(\*SubscriptBox[\(E\), \(2\)]\)",
	DefInfo -> {"tensor", "perturbation"}]


(****   k vectors   ****)


DefTensor[kvec[-i], M3, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]
DefTensor[kscal[], M4, PrintAs -> "k", DefInfo -> {"tensor", "k vector"}]


(****   Gauge Transformations   ****)


DefTensor[gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]
DefTensorPerturbation[pertgauge[LI[order], \[Mu]], gauge[\[Mu]], M4, PrintAs -> "\[Xi]"]


DefTensor[pertgaugealpha[LI[order]], M4, PrintAs -> "\[Alpha]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugebeta[LI[order]], M4, PrintAs -> "\[Beta]",
	DefInfo -> {"tensor", "perturbation"}]
DefTensor[pertgaugegamma[LI[order], -i], M4, PrintAs -> "\[Gamma]",
	DefInfo -> {"tensor", "perturbation"}]


(****   Parametrization Functions - Scalar   ****)


DefTensor[densityS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalE]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[pressureS[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[ScriptCapitalP]\), \(S\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[mass2[], M4, PrintAs -> "\!\(\*SuperscriptBox[SubscriptBox[\(M\), \(*\)], \(2\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaM[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(M\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaK[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(K\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaB[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(B\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaT[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(T\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaH[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(H\)]\)",
	DefInfo -> {"tensor", "building function"}]


(****   Parametrization Functions - Vector   ****)


DefTensor[alphaD3[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(D3\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaV0[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V0\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaV1[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V1\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaV2[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V2\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaV3[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V3\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaV4[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V4\)]\)",
	DefInfo -> {"tensor", "building function"}]
DefTensor[alphaV5[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(V5\)]\)",
	DefInfo -> {"tensor", "building function"}]


DefTensor[alphaL[], M4, PrintAs -> "\!\(\*SubscriptBox[\(\[Alpha]\), \(L\)]\)",
	DefInfo -> {"tensor", "building function"}]


(****   Scalar Functions   ****)


DefScalarFunction[LG, PrintAs -> "\!\(\*SubscriptBox[\(L\), \(G\)]\)"]


DefScalarFunction[V]
