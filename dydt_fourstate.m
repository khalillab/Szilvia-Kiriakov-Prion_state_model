function [ deriv ] = dydt_fourstate(t,statevar)
%ODEs for two state prion aggregation
%   Detailed explanation goes here

global k_S k_A k_TA k_rTA k_TS k_rTS



A = statevar(1);
S = statevar(2);
TA = statevar(3);
TS = statevar(4);

dS = -k_TA * S + k_rTA * TA + k_S * TS; 
dA = k_A * TA - k_TS * A + k_rTS * TS ;
dTA = k_TA * S - k_rTA * TA - k_A * TA;
dTS = k_TS * A - k_rTS * TS - k_S * TS;


deriv = [dA;dS;dTA;dTS];

end

