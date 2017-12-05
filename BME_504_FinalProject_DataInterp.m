% Proxy created to give descriptive variable readouts
% Fat Thickness, where each letter changes 0.1 inch, starting with A
% Distance from Electrode Center, where each number changes 0.1 inch
% starting with 0
% For example, A0 is 0.1 inch fat thickness and directly centered
% For example, C3 is 0.3 inch fat thickness and 0.3 inches from center

NodeDist = (0:0.078740158:8);

A0data = dlmread('.1_0.txt');
A1data = dlmread('.1_.1.txt');
A2data = dlmread('.1_.2.txt');
A3data = dlmread('.1_.3.txt');
A5data = dlmread('.1_.5.txt');
A10data = dlmread('.1_1.txt');

B0data = dlmread('.2_0.txt');
B1data = dlmread('.2_.1.txt');
B2data = dlmread('.2_.2.txt');
B3data = dlmread('.2_.3.txt');
B5data = dlmread('.2_.5.txt');
B10data = dlmread('.2_1.txt');

A0 = interp1(A0data(:,1),A0data(:,2),NodeDist);
A1 = interp1(A1data(:,1),A1data(:,2),NodeDist);
A2 = interp1(A2data(:,1),A2data(:,2),NodeDist);
A3 = interp1(A3data(:,1),A3data(:,2),NodeDist);
A5 = interp1(A5data(:,1),A5data(:,2),NodeDist);
A10 = interp1(A10data(:,1),A10data(:,2),NodeDist);
B0 = interp1(B0data(:,1),B0data(:,2),NodeDist);
B1 = interp1(B1data(:,1),B1data(:,2),NodeDist);
B2 = interp1(B2data(:,1),B2data(:,2),NodeDist);
B3 = interp1(B3data(:,1),B3data(:,2),NodeDist);
B5 = interp1(B5data(:,1),B5data(:,2),NodeDist);
B10 = interp1(B10data(:,1),B10data(:,2),NodeDist);

figure(1)
hold on
plot(NodeDist,A0)
plot(NodeDist,A1)
plot(NodeDist,A2)
plot(NodeDist,A3)
plot(NodeDist,A5)
plot(NodeDist,A10)
hold off
xlabel('Node Distance (Inches)')
ylabel('Extracellular Voltage (V)')
title('Same Fat Thickness with Electrode Moved from Center')
legend('A0','A1','A2','A3','A5','A10')

figure(2)
hold on
plot(NodeDist,B0)
plot(NodeDist,B1)
plot(NodeDist,B2)
plot(NodeDist,B3)
plot(NodeDist,B5)
plot(NodeDist,B10)
hold off
xlabel('Node Distance (Inches)')
ylabel('Extracellular Voltage (V)')
title('Same Fat Thickness with Electrode Moved from Center')
legend('B0','B1','B2','B3','B5','B10')