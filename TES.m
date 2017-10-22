%% TES Plots
clear all
close all
clc

T = .0002; % period, sec
hz = 2; % sec^-1
amp = 45; % mA
t = [-.05:.0005:2]; %time in seconds
%% Define Singularity Functions %%
udelta = @(n,p) (n-p==0);		% u[n-p]  discrete signals only!
ustep = @(n,p) (n-p>=0);		% u[n-p]
uramp = @(n,p) (n-p>=0) .* (n-p);	% r[n-p]

%% Plot Time dependent signal
%%signal = amp*ustep(t,.15) - amp*ustep(t,.15+T) + amp*ustep(t,.65+T) - amp*ustep(t,.65+2*T)...
  %%  + amp*ustep(t,1.15+2*T) - amp*ustep(t,1.15+3*T) + amp*ustep(t,1.65+3*T) - amp*ustep(t,1.65+4*T);
t = 0 :1/1e5:1.99;
d = 0: 1/2:1.99;
cushion = zeros(1,10000);
signal_1 = amp* pulstran(t,d,'rectpuls', .0002)

%shift signal so you can see first one by .1 sec
time = 0:1/1e5:(1.99+1e-1);
signal = [cushion,signal_1];

% Plot
figure(1)
subplot(1,2,1)
plot(time,signal, 'LineWidth', 2)
xlabel('Time (sec)')
ylabel('Amplitude (mA)')
axis([0 2 0 50])
grid on
title('Current Stimulus')
%%
subplot(1,2,2)
plot(time,signal, 'LineWidth', 2)
title('Single Stimulus, PW = .2 msec')
xlabel('Time (sec)')
ylabel('Amplitude (mA)')
grid on
axis([.599 .601 0 50])

