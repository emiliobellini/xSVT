(* ::Package:: *)

SelectTensors[all_, info_] := Module[{tmp},
	tmp = Complement[all, Cases[all, x_ /; DefInfo[x] == False]];
	Cases[tmp, x_ /; StringMatchQ[DefInfo[x][[2]], info]]]


backtensors = SelectTensors[$Tensors, "background"];
perttensors = SelectTensors[$Tensors, "perturbation"];
funtensors = SelectTensors[$Tensors, "building function"];
ktensors = SelectTensors[$Tensors, "k vector"];


DerivedTensors[tensin_, type_] := Module[{tensout, print},

	If[StringMatchQ[type, "gauge"], tensout = ToExpression[ToString[tensin]<>"G"];
		print[expr_] := Subscript[expr, "G"]];
	If[StringMatchQ[type, "prime"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := expr';];
	If[StringMatchQ[type, "pprime"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := expr'';];
	If[StringMatchQ[type, "ppprime"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := expr''';];
	If[StringMatchQ[type, "dot"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := Overscript[expr, "\[Bullet]"]];
	If[StringMatchQ[type, "ddot"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := Overscript[expr, "\[Bullet]\[Bullet]"]];
	If[StringMatchQ[type, "dddot"], tensout = ToExpression[type<>ToString[tensin]];
		print[expr_] := Overscript[expr, "\[Bullet]\[Bullet]\[Bullet]"]];

	xTensorQ[tensout] ^= True;
	DefInfo[tensout] ^= {"tensor", DefInfo[tensin][[2]]<>" "<>type};
	SlotsOfTensor[tensout] ^= Evaluate[SlotsOfTensor[tensin]];
	SymmetryGroupOfTensor[tensout] ^= Evaluate[SymmetryGroupOfTensor[tensin]];
	DependenciesOfTensor[tensout] ^= Evaluate[DependenciesOfTensor[tensin]];
	HostsOf[tensout] ^= Evaluate[HostsOf[tensin]];
	PrintAs[Evaluate[tensout]] ^= Evaluate[ToString[print[PrintAs[Evaluate[tensin]]], StandardForm]];
	
	AppendTo[$Tensors, tensout];
]


DerivedTensors[#, "gauge"]&/@perttensors;


DerivedTensors[#, "prime"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


DerivedTensors[#, "pprime"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


DerivedTensors[#, "ppprime"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


DerivedTensors[#, "dot"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


DerivedTensors[#, "ddot"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


DerivedTensors[#, "dddot"]&/@Union[backtensors, perttensors, funtensors, SelectTensors[$Tensors, "perturbation gauge"]];


Clear[DerivedTensors, backtensors, perttensors, funtensors, ktensors]
