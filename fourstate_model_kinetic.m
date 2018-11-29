%define constants and simulation time
global k_S k_A k_TA k_rTA k_TS k_rTS

t = 0:0.1:1000;
k_S =0.1;
k_A = 0.1;
k_TS = 0;
k_rTS = 0.1;
k_TA = 0.01;
k_rTA = 0.01;

%initial values
S = 100 ;
A = 0 ;
TS = 0 ;
TA = 0 ;

%define ODEs

statevar = [A,S,TA,TS];

%solve ODEs
[time, statevars] = ode15s(@dydt_fourstate, t, statevar);


%generate results

%plot results
figure
hold on
plot(t, statevars(:,1), 'r', 'LineWidth', 2)
plot(t, statevars(:,2), 'b', 'LineWidth', 2)
plot(t, statevars(:,3), 'g', 'LineWidth', 2)
plot(t, statevars(:,4), 'k', 'LineWidth', 2)
xlabel('time')
ylabel('% protein')
title(['A in red, S in blue, TA in green, TS in black, k_S= ' num2str(k_S) ', k_A= ' num2str(k_A) ', k_{TA}= ' num2str(k_TA) ', k_{rTA}= ' num2str(k_rTA) ', k_{TS}= ' num2str(k_TS) 'k_{rTS}= ' num2str(k_rTS)])
