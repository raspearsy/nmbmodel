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

C0data = dlmread('.3_0.txt');
C1data = dlmread('.3_.1.txt');
C2data = dlmread('.3_.2.txt');
C3data = dlmread('.3_.3.txt');
C5data = dlmread('.3_.5.txt');
C10data = dlmread('.3_1.txt');

E0data = dlmread('.5_0.txt');
E1data = dlmread('.5_.1.txt');
E2data = dlmread('.5_.2.txt');
E3data = dlmread('.5_.3.txt');
E5data = dlmread('.5_.5.txt');
E10data = dlmread('.5_1.txt');

J0data = dlmread('1_0.txt');
J1data = dlmread('1_.1.txt');
J2data = dlmread('1_.2.txt');
J3data = dlmread('1_.3.txt');
J5data = dlmread('1_.5.txt');
J10data = dlmread('1_1.txt');

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

C0 = interp1(C0data(:,1),C0data(:,2),NodeDist);
C1 = interp1(C1data(:,1),C1data(:,2),NodeDist);
C2 = interp1(C2data(:,1),C2data(:,2),NodeDist);
C3 = interp1(C3data(:,1),C3data(:,2),NodeDist);
C5 = interp1(C5data(:,1),C5data(:,2),NodeDist);
C10 = interp1(C10data(:,1),C10data(:,2),NodeDist);

E0 = interp1(E0data(:,1),E0data(:,2),NodeDist);
E1 = interp1(E1data(:,1),E1data(:,2),NodeDist);
E2 = interp1(E2data(:,1),E2data(:,2),NodeDist);
E3 = interp1(E3data(:,1),E3data(:,2),NodeDist);
E5 = interp1(E5data(:,1),E5data(:,2),NodeDist);
E10 = interp1(E10data(:,1),E10data(:,2),NodeDist);

J0 = interp1(J0data(:,1),J0data(:,2),NodeDist);
J1 = interp1(J1data(:,1),J1data(:,2),NodeDist);
J2 = interp1(J2data(:,1),J2data(:,2),NodeDist);
J3 = interp1(J3data(:,1),J3data(:,2),NodeDist);
J5 = interp1(J5data(:,1),J5data(:,2),NodeDist);
J10 = interp1(J10data(:,1),J10data(:,2),NodeDist);

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
title('0.1 inch Fat Thickness with Electrode Moved from Center')
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
title('0.2 inch Fat Thickness with Electrode Moved from Center')
legend('B0','B1','B2','B3','B5','B10')

figure(3)
hold on
plot(NodeDist,C0)
plot(NodeDist,C1)
plot(NodeDist,C2)
plot(NodeDist,C3)
plot(NodeDist,C5)
plot(NodeDist,C10)
hold off
xlabel('Node Distance (Inches)')
ylabel('Extracellular Voltage (V)')
title('0.3 inch Fat Thickness with Electrode Moved from Center')
legend('C0','C1','B2','C3','C5','C10')

figure(4)
hold on
plot(NodeDist,E0)
plot(NodeDist,E1)
plot(NodeDist,E2)
plot(NodeDist,E3)
plot(NodeDist,E5)
plot(NodeDist,E10)
hold off
xlabel('Node Distance (Inches)')
ylabel('Extracellular Voltage (V)')
title('0.5 inch Fat Thickness with Electrode Moved from Center')
legend('E0','E1','E2','E3','E5','E10')

figure(5)
hold on
plot(NodeDist,J0)
plot(NodeDist,J1)
plot(NodeDist,J2)
plot(NodeDist,J3)
plot(NodeDist,J5)
plot(NodeDist,J10)
hold off
xlabel('Node Distance (Inches)')
ylabel('Extracellular Voltage (V)')
title('1 inch Fat Thickness with Electrode Moved from Center')
legend('J0','J1','J2','J3','J5','J10')