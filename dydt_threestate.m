function [ deriv ] = dydt_threestate(t,statevar)
%ODEs for two state prion aggregation
%   Detailed explanation goes here

global k1 k2 i kirr

I = statevar(3);
S = statevar(2);
A = statevar(1);

dS = -k1 * S + k2 * A;
dA = -k2 * A + k1 * S - kirr(i) * A;
dI = kirr(i) * A;

deriv = [dA;dS;dI] ;

end

