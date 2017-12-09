% Electrode to Fiber Distance Data Processing Code
% used to view relationship of distance without varying fat

clc
clear all
close all

NodeDist = (0:0.078740158:8);

A0data = dlmread('e2f3.3.txt');
A1data = dlmread('e2f3.5.txt');
A2data = dlmread('e2f3.7.txt');
A3data = dlmread('e2f3.9.txt');

A0 = interp1(A0data(:,1),A0data(:,2),NodeDist);
A1 = interp1(A1data(:,1),A1data(:,2),NodeDist);
A2 = interp1(A2data(:,1),A2data(:,2),NodeDist);
A3 = interp1(A3data(:,1),A3data(:,2),NodeDist);

A = [A0; A1; A2; A3];
%%
figure(1)
plot(NodeDist, A*1000)
title('Extracellular Voltage Distribution'); xlabel('distance along nerve (in)')
ylabel('Voltage (mv)'); grid on; legend('.345 in from skin', '.325 in from skin',...
    '.305 in from skin', '.285 in from skin')
%%
for n = 2:length(A0)-1; 
    f0(n) = (A0(n-1)-2*A0(n)+ A0(n+1));
    f1(n) = (A1(n-1)-2*A1(n)+ A1(n+1));
    f2(n) = (A2(n-1)-2*A2(n)+ A2(n+1));
    f3(n) = (A3(n-1)-2*A3(n)+ A3(n+1));
end

f0c = conv(f0,ones(5,1)/5, 'same');
f1c = conv(f1,ones(5,1)/5, 'same');
f2c = conv(f2,ones(5,1)/5, 'same');
f3c = conv(f3,ones(5,1)/5, 'same');
f = [f0c;f1c;f2c;f3c];

figure(2)
plot(NodeDist(:, 2:102), f)
title('2nd Difference Voltage Variable Electrode to Fiber Distance')
grid on; legend('.345 in from skin', '.325 in from skin',...
    '.305 in from skin', '.285 in from skin')
xlabel('Distance along nerve (in)'); ylabel('2nd Diff (V)')