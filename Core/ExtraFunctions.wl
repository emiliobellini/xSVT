(* ::Package:: *)

(****   SubX   ****)


tmpX=-1/2 metricg[\[Mu],\[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];
SubX0=MakeRule[{X[],Evaluate[Decomposition[0][tmpX]]}];
invSubX0 = {primescalar[]^n_/;EvenQ[n]:>(2 scale[]^2 X[])^(n/2), primescalar[]^n_/;OddQ[n]:>(2 scale[]^2 X[])^((n-1)/2) primescalar[]};


restoreXinG={Derivative[n_,m_][Gfun_][scalar[],x_]:>Derivative[n,m][Gfun][scalar[],X[]],Gfun_[scalar[],x_]:>Gfun[scalar[],X[]]};


tmpX = -1/2 metricg[\[Mu], \[Nu]] CD[-\[Mu]]@scalarcov[] CD[-\[Nu]]@scalarcov[];
SubXcov = MakeRule[{Xcov[], Evaluate[tmpX]}];
invSubXcov = Gfun_[scalarcov[],x_]:>Gfun[scalarcov[],Xcov[]];


(****   NoG's   ****)


NoG2[expr_]:=expr//.Derivative[__][G2fun][__]:>0//.G2fun[__]:>0
NoG3[expr_]:=expr//.Derivative[__][G3fun][__]:>0//.G3fun[__]:>0
NoG4[expr_]:=expr//.Derivative[__][G4fun][__]:>0//.G4fun[__]:>0
NoG5[expr_]:=expr//.Derivative[__][G5fun][__]:>0//.G5fun[__]:>0
NoF4[expr_]:=expr//.Derivative[__][F4fun][__]:>0//.F4fun[__]:>0
NoF5[expr_]:=expr//.Derivative[__][F5fun][__]:>0//.F5fun[__]:>0


(****   Remove G's   ****)


EQprimedensityS=TimeDer[EQdensityS//.SubX0]//.restoreXinG//ToCanonical;
EQprimepressureS=TimeDer[EQpressureS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimedensityS=TimeDer[EQprimedensityS//.SubX0]//.restoreXinG//ToCanonical;
EQpprimepressureS=TimeDer[EQprimepressureS//.SubX0]//.restoreXinG//ToCanonical;
EQppprimedensityS=TimeDer[EQpprimedensityS//.SubX0]//.restoreXinG//ToCanonical;


EQprimemass2=TimeDer[EQmass2//.SubX0]//.restoreXinG//ToCanonical;
EQpprimemass2=TimeDer[EQprimemass2//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaK=TimeDer[EQalphaK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaK=TimeDer[EQprimealphaK//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaB=TimeDer[EQalphaB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaB=TimeDer[EQprimealphaB//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaT=TimeDer[EQalphaT//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaT=TimeDer[EQprimealphaT//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaH=TimeDer[EQalphaH//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaH=TimeDer[EQprimealphaH//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaKK=TimeDer[EQalphaKK//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaKK=TimeDer[EQprimealphaKK//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaBB=TimeDer[EQalphaBB//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaBB=TimeDer[EQprimealphaBB//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaTT=TimeDer[EQalphaTT//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaTT=TimeDer[EQprimealphaTT//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaMM=TimeDer[EQalphaMM//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaMM=TimeDer[EQprimealphaMM//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaHH=TimeDer[EQalphaHH//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaHH=TimeDer[EQprimealphaHH//.SubX0]//.restoreXinG//ToCanonical;


EQprimealphaDEG=TimeDer[EQalphaDEG//.SubX0]//.restoreXinG//ToCanonical;
EQpprimealphaDEG=TimeDer[EQprimealphaDEG//.SubX0]//.restoreXinG//ToCanonical;


RemoveG2fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[TimeDer[EQpprimedensityS//.SubX0]==0//.restoreXinG,Derivative[3,1][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimealphaKK==0,Derivative[2,3][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimealphaK==0,Derivative[2,2][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimedensityS==0,Derivative[2,1][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimepressureS==0,Derivative[2,0][G2fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQprimealphaKK==0,Derivative[1,3][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaK==0,Derivative[1,2][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimedensityS==0,Derivative[1,1][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimepressureS==0,Derivative[1,0][G2fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQalphaKK==0,Derivative[0,3][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaK==0,Derivative[0,2][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQdensityS==0,Derivative[0,1][G2fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpressureS==0,G2fun[scalar[],X[]]]]//Expand;
	tmp
]


RemoveG3fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[EQpprimealphaBB==0,Derivative[2,2][G3fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimealphaB==0,Derivative[2,1][G3fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaBB==0,Derivative[1,2][G3fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaB==0,Derivative[1,1][G3fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaBB==0,Derivative[0,2][G3fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaB==0,Derivative[0,1][G3fun][scalar[],X[]]]]//Expand;
	tmp
]


RemoveG4fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[TimeDer[EQpprimemass2//.SubX0]==0//.restoreXinG,Derivative[3,0][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimemass2==0,Derivative[2,0][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimemass2==0,Derivative[1,0][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQmass2==0,G4fun[scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimealphaMM==0,Derivative[2,2][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQpprimealphaT==0,Derivative[2,1][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaMM==0,Derivative[1,2][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaT==0,Derivative[1,1][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaMM==0,Derivative[0,2][G4fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaT==0,Derivative[0,1][G4fun][scalar[],X[]]]];
	tmp
]


RemoveG5fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[EQpprimealphaTT==0,Derivative[2,1][G5fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQprimealphaTT==0,Derivative[1,1][G5fun][scalar[],X[]]]];
	tmp=tmp//.Flatten[Solve[EQalphaTT==0,Derivative[0,1][G5fun][scalar[],X[]]]];
	tmp
]


RemoveF4fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[EQpprimealphaHH==0,Derivative[2,1][F4fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQpprimealphaH==0,Derivative[2,0][F4fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQprimealphaHH==0,Derivative[1,1][F4fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQprimealphaH==0,Derivative[1,0][F4fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQalphaHH==0,Derivative[0,1][F4fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQalphaH==0,F4fun[scalar[],X[]]]]//Expand;
	tmp
]


RemoveF5fun[expr_]:=Module[{tmp},tmp=expr;
	tmp=tmp//.Flatten[Solve[EQpprimealphaDEG==0,Derivative[2,0][F5fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQprimealphaDEG==0,Derivative[1,0][F5fun][scalar[],X[]]]]//Expand;
	tmp=tmp//.Flatten[Solve[EQalphaDEG==0,F5fun[scalar[],X[]]]]//Expand;
	tmp
]
