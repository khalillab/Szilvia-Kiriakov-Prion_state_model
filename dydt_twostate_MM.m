function [ deriv ] = dydt_twostate_MM(t,statevar)
%ODEs for two state prion aggregation
%   Detailed explanation goes here

global k1 k2 KM1 KM2 Aggregase Solubilize

S = statevar(2);

A = statevar(1);


dS = -k1 * Aggregase * S / (S + KM1) + k2 * Solubilize * A / (A + KM2);
dA = -k2 * Solubilize * A / (A + KM2) + k1 * Aggregase * S / (S + KM1);

deriv = [dA;dS];

end

