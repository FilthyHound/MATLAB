clear;

sir = @(t,x,c,i,N,D)[-x(1) * x(2) * c * i/N;          ...
                      x(1) * x(2) * c * i/N - x(2)/D; ...
                      x(2)/D];
                
[t, stocks] = ode23(sir,       ... % Function containing net flows
                   [0 20],     ... % Time vector (start & finish)
                   [9999 1 0], ... % State vector (SIR)
                   odeset(),   ... % MATLAB options
                   6,          ... % Average contacts/person
                   0.25,       ... % Probability of infection
                   10000,      ... % Total population
                   2);             % Recovery delay
               
plot(t, stocks), legend('S','I','R');
               

