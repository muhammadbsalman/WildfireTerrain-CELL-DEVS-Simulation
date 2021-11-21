#include(macros.inc)
[top]
components : WildFire

[WildFire]
type : cell
dim : (50,50)
delay : transport
defaultDelayTime  : 60000
border : nowrapped
neighbors : Wildfire(-1,-1) Wildfire(-1,0) Wildfire(-1,1)
neighbors : Wildfire(0,-1) Wildfire(0,0) Wildfire(0,1)
neighbors : Wildfire(1,-1) Wildfire(1,0) Wildfire(1,1)
initialvalue : 1
initialCellsValue : wildfire.val
localtransition : FireTransformation

[FireTransformation]
%agriculture, state = 1
rule : {5.21} {0.79*60000} {(0,0) = 1 and #macro(checkfire)}

%steep forest, state = 2
rule : {5.7} {0.3*60000} {(0,0) = 2 and #macro(checkfire)}

%dense forest, state = 3
rule : {5.91} {0.09*60000} {(0,0) = 3 and #macro(checkfire)}

%shrubland, state = 4
rule : {5.35} {0.65*60000} {(0,0) = 4 and #macro(checkfire)}

%gradual burnout, state = 6. Increase the strength of the fire
rule : {(0,0) + 0.1} {60000} {(0,0)>=5 and (0,0)<6}

%else for no vegetation or water
rule : {(0,0)} 60000 { t }