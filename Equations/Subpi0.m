(* Created with the Wolfram Language : www.wolfram.com *)
{HoldPattern[pi1[]] :> Module[{}, -(pprimescalar[]/scale[]^2) - 
    (2*hubbleC[]*primescalar[])/scale[]^2], HoldPattern[pi2[]] :> 
  Module[{}, pprimescalar[]^2/scale[]^4 - 
    (2*hubbleC[]*pprimescalar[]*primescalar[])/scale[]^4 + 
    (4*hubbleC[]^2*primescalar[]^2)/scale[]^4], 
 HoldPattern[pi3[]] :> Module[{}, -(pprimescalar[]^3/scale[]^6) + 
    (3*hubbleC[]*pprimescalar[]^2*primescalar[])/scale[]^6 - 
    (3*hubbleC[]^2*pprimescalar[]*primescalar[]^2)/scale[]^6 - 
    (2*hubbleC[]^3*primescalar[]^3)/scale[]^6], 
 HoldPattern[pi4[]] :> Module[{}, (-3*pprimescalar[]*primehubbleC[])/
     scale[]^4 - (6*hubbleC[]^3*primescalar[])/scale[]^4], 
 HoldPattern[pi5[]] :> Module[{}, (pprimescalar[]*primescalar[]^2)/
     scale[]^4 - (hubbleC[]*primescalar[]^3)/scale[]^4], 
 HoldPattern[pi6[]] :> Module[{}, 
   -((pprimescalar[]^2*primescalar[]^2)/scale[]^6) + 
    (2*hubbleC[]*pprimescalar[]*primescalar[]^3)/scale[]^6 - 
    (hubbleC[]^2*primescalar[]^4)/scale[]^6], 
 HoldPattern[pi7[]] :> Module[{}, (pprimescalar[]^3*primescalar[]^2)/
     scale[]^8 - (3*hubbleC[]*pprimescalar[]^2*primescalar[]^3)/scale[]^8 + 
    (3*hubbleC[]^2*pprimescalar[]*primescalar[]^4)/scale[]^8 - 
    (hubbleC[]^3*primescalar[]^5)/scale[]^8]}
