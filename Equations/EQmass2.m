(* Created with the Wolfram Language : www.wolfram.com *)
2*G4fun[scalar[], X[]] - mass2[] - 
 (2*primescalar[]^2*Derivative[0, 1][G4fun][scalar[], X[]])/scale[]^2 - 
 (hubbleC[]*primescalar[]^3*Derivative[0, 1][G5fun][scalar[], X[]])/
  scale[]^4 - (primescalar[]^4*Derivative[0, 2][G4funtilde][scalar[], X[]])/
  scale[]^4 - (hubbleC[]*primescalar[]^5*Derivative[0, 2][G5funtilde][
    scalar[], X[]])/(2*scale[]^6) + 
 (primescalar[]^2*Derivative[1, 0][G5fun][scalar[], X[]])/scale[]^2
