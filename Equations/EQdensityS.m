(* Created with the Wolfram Language : www.wolfram.com *)
-densityS[] - Kfun[scalar[], X[]] + 
 (42*F5fun[scalar[], X[]]*hubbleC[]^3*primescalar[]^5)/scale[]^8 - 
 (30*F4fun[scalar[], X[]]*hubbleC[]^2*primescalar[]^4)/scale[]^6 + 
 (3*hubbleC[]^2)/scale[]^2 - (6*G4fun[scalar[], X[]]*hubbleC[]^2)/scale[]^2 - 
 (6*hubbleC[]^2*primescalar[]^6*Derivative[0, 1][F4fun][scalar[], X[]])/
  scale[]^8 + (6*hubbleC[]^3*primescalar[]^7*Derivative[0, 1][F5fun][
    scalar[], X[]])/scale[]^10 + 
 (3*hubbleC[]*primescalar[]^3*Derivative[0, 1][G3fun][scalar[], X[]])/
  scale[]^4 + (12*hubbleC[]^2*primescalar[]^2*Derivative[0, 1][G4fun][
    scalar[], X[]])/scale[]^4 + 
 (5*hubbleC[]^3*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/
  scale[]^6 + (primescalar[]^2*Derivative[0, 1][Kfun][scalar[], X[]])/
  scale[]^2 + (6*hubbleC[]^2*primescalar[]^4*Derivative[0, 2][G4fun][
    scalar[], X[]])/scale[]^6 + 
 (hubbleC[]^3*primescalar[]^5*Derivative[0, 2][G5fun][scalar[], X[]])/
  scale[]^8 - (primescalar[]^2*Derivative[1, 0][G3fun][scalar[], X[]])/
  scale[]^2 - (6*hubbleC[]*primescalar[]*Derivative[1, 0][G4fun][scalar[], 
    X[]])/scale[]^2 - (9*hubbleC[]^2*primescalar[]^2*
   Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^4 - 
 (6*hubbleC[]*primescalar[]^3*Derivative[1, 1][G4fun][scalar[], X[]])/
  scale[]^4 - (3*hubbleC[]^2*primescalar[]^4*Derivative[1, 1][G5fun][
    scalar[], X[]])/scale[]^6
