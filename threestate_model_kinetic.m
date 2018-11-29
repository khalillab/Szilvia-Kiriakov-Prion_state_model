%define constants and simulation time
global k1 k2 kirr i

t = 0:0.1:50;
%k1/k2 defines the equilibrium composition
k1 = 0.001;
%absolute value of k1, k2 determines the speed at which equilibrium is reached
k2 = 0.1;
%kirr defines how quickly the irreversibly aggregated material reaches
%equilibrium
kirr = [0.0001, 0.001, 0.01, 0.1, 1, 10];

prot_total = 100;

%initial values
A = 50;
S = 50;
I = 0;

%define ODEs


statevar = [A,S,I];

for i=1:length(kirr)
%solve ODEs
[time, statevars] = ode15s(@dydt_threestate, t, statevar);

%generate results

%plot results
figure
hold on
plot(t, statevars(:,1), 'r', 'LineWidth', 2)
plot(t, statevars(:,2), 'b', 'LineWidth', 2)
plot(t, statevars(:,3), 'k', 'LineWidth', 2)
xlabel('time')
ylabel('aggregated and soluble')
title(['A in red, S in blue, I in black, k1= ' num2str(k1) ', k2= ' num2str(k2) 'kirr =' num2str(kirr(i))])

end