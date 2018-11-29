function [ deriv ] = dydt_twostate(t,statevar)
%ODEs for two state prion aggregation
%   Detailed explanation goes here

global k1 k2

S = statevar(2);

A = statevar(1);

dS = -k1 * S + k2 * A;
dA = -k2 * A + k1 * S;

deriv = [dA;dS];

end

