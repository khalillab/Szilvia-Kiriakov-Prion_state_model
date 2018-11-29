%define constants and simulation time
global k1 k2 KM1 KM2 Aggregase Solubilize prot_total

t = 0:0.1:50;
k1 = 0.1;
k2 = 1;
KM1 =10;
KM2 =10;

Aggregase =10;
Solubilize =10;

prot_total = 100;

%initial values
A=100;
S=0;

%define ODEs


statevar = [A,S];

%solve ODEs
[time, statevars] = ode15s(@dydt_twostate_MM, t, statevar);


%generate results

%plot results
figure
hold on
plot(t, statevars(:,1), 'r', 'LineWidth', 2)
plot(t, statevars(:,2), 'b', 'LineWidth', 2)
xlabel('time')
ylabel('aggregated and soluble')
title(['aggregated protein in red, soluble in black, k1= ' num2str(k1) ', k2= ' num2str(k2)])
