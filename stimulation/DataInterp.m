% Proxy created to give descriptive variable readouts
% Fat Thickness, where each letter changes 0.1 inch, starting with A at 0.1
% inch
% Distance from Electrode Center, where each number changes 0.1 inch
% starting with 0 at 0 inch
% Inter-electrode Distance, where each Roman Numeral changes 0.1 inch
% starting with V at 0.5 inch
% For example, A0 is 0.1 inch fat thickness and directly centered
% For example, C3 is 0.3 inch fat thickness and 0.3 inches from center
% For example, AV is 0.1 inch fat thickness and 0.5 inch interelectrode
% distance
% A0 to J0 and A0 to A10 graph

NodeDist = (0:0.078740158:8);

A0_25data = dlmread('A0_2.5.txt');
A0_100data = dlmread('A0_10.txt');
A1_25data = dlmread('A.1_2.5.txt');
A3_25data = dlmread('A.3_2.5.txt');
A3_50data = dlmread('A.3_5.txt');
A5_25data = dlmread('A.5_2.5.txt');
A5_50data = dlmread('A.5_5.txt');
A10_75data = dlmread('A1_7.5.txt');
A10_100data = dlmread('A1_10.txt');
A10_125data = dlmread('A1_12.5.txt');

C0_25data = dlmread('C0_2.5.txt');
C0_50data = dlmread('C0_5.txt');
C1_25data = dlmread('C.1_2.5.txt');
C1_50data = dlmread('C.1_5.txt');
C3_25data = dlmread('C.3_2.5.txt');
C3_50data = dlmread('C.3_5.txt');
C5_50data = dlmread('C.5_5.txt');
C5_75data = dlmread('C.5_7.5.txt');
C5_100data = dlmread('C.5_10.txt');
C5_125data = dlmread('C.5_12.5.txt');
C10_75data = dlmread('C1_7.5.txt');
C10_100data = dlmread('C1_10.txt');
C10_125data = dlmread('C1_12.5.txt');

E0_25data = dlmread('E0_2.5.txt');
E0_50data = dlmread('E0_5.txt');
E1_25data = dlmread('E.1_2.5.txt');
E1_50data = dlmread('E.1_5.txt');
E3_50data = dlmread('E.3_5.txt');
E3_75data = dlmread('E.3_7.5.txt');
E5_50data = dlmread('E.5_5.txt');
E5_75data = dlmread('E.5_7.5.txt');
E10_100data = dlmread('E1_10.txt');
E10_125data = dlmread('E1_12.5.txt');

% B0data = dlmread('.2_0.txt');
% B1data = dlmread('.2_.1.txt');
% B2data = dlmread('.2_.2.txt');
% B3data = dlmread('.2_.3.txt');
% B5data = dlmread('.2_.5.txt');
% B10data = dlmread('.2_1.txt');
% 
% C0data = dlmread('.3_0.txt');
% C1data = dlmread('.3_.1.txt');
% C2data = dlmread('.3_.2.txt');
% C3data = dlmread('.3_.3.txt');
% C5data = dlmread('.3_.5.txt');
% C10data = dlmread('.3_1.txt');
% 
% E0data = dlmread('.5_0.txt');
% E1data = dlmread('.5_.1.txt');
% E2data = dlmread('.5_.2.txt');
% E3data = dlmread('.5_.3.txt');
% E5data = dlmread('.5_.5.txt');
% E10data = dlmread('.5_1.txt');
% 
% J0data = dlmread('1_0.txt');
% J1data = dlmread('1_.1.txt');
% J2data = dlmread('1_.2.txt');
% J3data = dlmread('1_.3.txt');
% J5data = dlmread('1_.5.txt');
% J10data = dlmread('1_1.txt');
% 
% AVdata = dlmread('.1inter.5.txt');
% AXdata = dlmread('.1inter1.txt');
% AXVdata = dlmread('.1inter1.5.txt');
% AXXdata = dlmread('.1inter2.txt');
% AXXVdata = dlmread('.1inter2.5.txt');

A0_25 = interp1(A0_25data(:,1),A0_25data(:,2),NodeDist);
A0_100 = interp1(A0_100data(:,1),A0_100data(:,2),NodeDist);
A1_25 = interp1(A1_25data(:,1),A1_25data(:,2),NodeDist);
A3_25 = interp1(A3_25data(:,1),A3_25data(:,2),NodeDist);
A3_50 = interp1(A3_50data(:,1),A3_50data(:,2),NodeDist);
A5_25 = interp1(A5_25data(:,1),A5_25data(:,2),NodeDist);
A5_50 = interp1(A5_50data(:,1),A5_50data(:,2),NodeDist);
A10_75 = interp1(A10_75data(:,1),A10_75data(:,2),NodeDist);
A10_100 = interp1(A10_100data(:,1),A10_100data(:,2),NodeDist);
A10_125 = interp1(A10_125data(:,1),A10_125data(:,2),NodeDist);

A0_25 = 1000*A0_25;
A0_100 = 1000*A0_100;
A1_25 = 1000*A1_25;
A3_25 = 1000*A3_25;
A3_50 = 1000*A3_50;
A5_25 = 1000*A5_25;
A5_50 = 1000*A5_50;
A10_75 = 1000*A10_75;
A10_100 = 1000*A10_100;
A10_125 = 1000*A10_125;

C0_25 = interp1(C0_25data(:,1),C0_25data(:,2),NodeDist);
C0_50 = interp1(C0_50data(:,1),C0_50data(:,2),NodeDist);
C1_25 = interp1(C1_25data(:,1),C1_25data(:,2),NodeDist);
C1_50 = interp1(C1_50data(:,1),C1_50data(:,2),NodeDist);
C3_25 = interp1(C3_25data(:,1),C3_25data(:,2),NodeDist);
C3_50 = interp1(C3_50data(:,1),C3_50data(:,2),NodeDist);
C5_50 = interp1(C5_50data(:,1),C5_50data(:,2),NodeDist);
C5_75 = interp1(C5_75data(:,1),C5_75data(:,2),NodeDist);
C5_100 = interp1(C5_100data(:,1),C5_100data(:,2),NodeDist);
C5_125 = interp1(C5_125data(:,1),C5_125data(:,2),NodeDist);
C10_75 = interp1(C10_75data(:,1),C10_75data(:,2),NodeDist);
C10_100 = interp1(C10_100data(:,1),C10_100data(:,2),NodeDist);
C10_125 = interp1(C10_125data(:,1),C10_125data(:,2),NodeDist);

C0_25 = 1000*C0_25;
C0_50 = 1000*C0_50;
C1_25 = 1000*C1_25;
C1_50 = 1000*C1_50;
C3_25 = 1000*C3_25;
C3_50 = 1000*C3_50;
C5_50 = 1000*C5_50;
C5_75 = 1000*C5_75;
C5_100 = 1000*C5_100;
C5_125 = 1000*C5_125;
C10_75 = 1000*C10_75;
C10_100 = 1000*C10_100;
C10_125 = 1000*C10_125;

E0_25 = interp1(E0_25data(:,1),E0_25data(:,2),NodeDist);
E0_50 = interp1(E0_50data(:,1),E0_50data(:,2),NodeDist);
E1_25 = interp1(E1_25data(:,1),E1_25data(:,2),NodeDist);
E1_50 = interp1(E1_50data(:,1),E1_50data(:,2),NodeDist);
E3_50 = interp1(E3_50data(:,1),E3_50data(:,2),NodeDist);
E3_75 = interp1(E3_75data(:,1),E3_75data(:,2),NodeDist);
E5_50 = interp1(E5_50data(:,1),E5_50data(:,2),NodeDist);
E5_75 = interp1(E5_75data(:,1),E5_75data(:,2),NodeDist);
E10_100 = interp1(E10_100data(:,1),E10_100data(:,2),NodeDist);
E10_125 = interp1(E10_125data(:,1),E10_125data(:,2),NodeDist);

E0_25 = 1000*E0_25;
E0_50 = 1000*E0_50;
E1_25 = 1000*E1_25;
E1_50 = 1000*E1_50;
E3_50 = 1000*E3_50;
E3_75 = 1000*E3_75;
E5_50 = 1000*E5_50;
E5_75 = 1000*E5_75;
E10_100 = 1000*E10_100;
E10_125 = 1000*E10_125;

% B0 = interp1(B0data(:,1),B0data(:,2),NodeDist);
% B1 = interp1(B1data(:,1),B1data(:,2),NodeDist);
% B2 = interp1(B2data(:,1),B2data(:,2),NodeDist);
% B3 = interp1(B3data(:,1),B3data(:,2),NodeDist);
% B5 = interp1(B5data(:,1),B5data(:,2),NodeDist);
% B10 = interp1(B10data(:,1),B10data(:,2),NodeDist);
% 
% C0 = interp1(C0data(:,1),C0data(:,2),NodeDist);
% C1 = interp1(C1data(:,1),C1data(:,2),NodeDist);
% C2 = interp1(C2data(:,1),C2data(:,2),NodeDist);
% C3 = interp1(C3data(:,1),C3data(:,2),NodeDist);
% C5 = interp1(C5data(:,1),C5data(:,2),NodeDist);
% C10 = interp1(C10data(:,1),C10data(:,2),NodeDist);
% 
% E0 = interp1(E0data(:,1),E0data(:,2),NodeDist);
% E1 = interp1(E1data(:,1),E1data(:,2),NodeDist);
% E2 = interp1(E2data(:,1),E2data(:,2),NodeDist);
% E3 = interp1(E3data(:,1),E3data(:,2),NodeDist);
% E5 = interp1(E5data(:,1),E5data(:,2),NodeDist);
% E10 = interp1(E10data(:,1),E10data(:,2),NodeDist);
% 
% J0 = interp1(J0data(:,1),J0data(:,2),NodeDist);
% J1 = interp1(J1data(:,1),J1data(:,2),NodeDist);
% J2 = interp1(J2data(:,1),J2data(:,2),NodeDist);
% J3 = interp1(J3data(:,1),J3data(:,2),NodeDist);
% J5 = interp1(J5data(:,1),J5data(:,2),NodeDist);
% J10 = interp1(J10data(:,1),J10data(:,2),NodeDist);
% 
% AV = interp1(AVdata(:,1),AVdata(:,2),NodeDist);
% AX = interp1(AXdata(:,1),AXdata(:,2),NodeDist);
% AXV = interp1(AXVdata(:,1),AXVdata(:,2),NodeDist);
% AXX = interp1(AXXdata(:,1),AXXdata(:,2),NodeDist);
% AXXV = interp1(AXXVdata(:,1),AXXVdata(:,2),NodeDist);

dlmwrite('A0_25.txt',A0_25,'delimiter',' ')
dlmwrite('A0_100.txt',A0_100,'delimiter',' ')
dlmwrite('A1_25.txt',A1_25,'delimiter',' ')
dlmwrite('A3_25.txt',A3_25,'delimiter',' ')
dlmwrite('A3_50.txt',A3_50,'delimiter',' ')
dlmwrite('A5_25.txt',A5_25,'delimiter',' ')
dlmwrite('A5_50.txt',A5_50,'delimiter',' ')
dlmwrite('A10_75.txt',A10_75,'delimiter',' ')
dlmwrite('A10_100.txt',A10_100,'delimiter',' ')
dlmwrite('A10_125.txt',A10_125,'delimiter',' ')

dlmwrite('C0_25.txt',C0_25,'delimiter',' ')
dlmwrite('C0_50.txt',C0_50,'delimiter',' ')
dlmwrite('C1_25.txt',C1_25,'delimiter',' ')
dlmwrite('C1_50.txt',C1_50,'delimiter',' ')
dlmwrite('C3_25.txt',C3_25,'delimiter',' ')
dlmwrite('C3_50.txt',C3_50,'delimiter',' ')
dlmwrite('C5_50.txt',C5_50,'delimiter',' ')
dlmwrite('C5_75.txt',C5_75,'delimiter',' ')
dlmwrite('C5_100.txt',C5_100,'delimiter',' ')
dlmwrite('C5_125.txt',C5_125,'delimiter',' ')
dlmwrite('C10_75.txt',C10_75,'delimiter',' ')
dlmwrite('C10_100.txt',C10_100,'delimiter',' ')
dlmwrite('C10_125.txt',C10_125,'delimiter',' ')

dlmwrite('E0_25.txt',E0_25,'delimiter',' ')
dlmwrite('E0_50.txt',E0_50,'delimiter',' ')
dlmwrite('E1_25.txt',E1_25,'delimiter',' ')
dlmwrite('E1_50.txt',E1_50,'delimiter',' ')
dlmwrite('E3_50.txt',E3_50,'delimiter',' ')
dlmwrite('E3_75.txt',E3_75,'delimiter',' ')
dlmwrite('E5_50.txt',E5_50,'delimiter',' ')
dlmwrite('E5_75.txt',E5_75,'delimiter',' ')
dlmwrite('E10_100.txt',E10_100,'delimiter',' ')
dlmwrite('E10_125.txt',E10_125,'delimiter',' ')

E0_25 = 1000*E0_25;
E0_50 = 1000*E0_50;
E1_25 = 1000*E1_25;
E1_50 = 1000*E1_50;
E3_50 = 1000*E3_50;
E3_75 = 1000*E3_75;
E5_50 = 1000*E5_50;
E5_75 = 1000*E5_75;
E10_100 = 1000*E10_100;
E10_125 = 1000*E10_125;

% dlmwrite('B0.txt',B0,'delimiter',' ')
% dlmwrite('B1.txt',B1,'delimiter',' ')
% dlmwrite('B2.txt',B2,'delimiter',' ')
% dlmwrite('B3.txt',B3,'delimiter',' ')
% dlmwrite('B5.txt',B5,'delimiter',' ')
% dlmwrite('B10.txt',B10,'delimiter',' ')
% 
% dlmwrite('C0.txt',C0,'delimiter',' ')
% dlmwrite('C1.txt',C1,'delimiter',' ')
% dlmwrite('C2.txt',C2,'delimiter',' ')
% dlmwrite('C3.txt',C3,'delimiter',' ')
% dlmwrite('C5.txt',C5,'delimiter',' ')
% dlmwrite('C10.txt',C10,'delimiter',' ')
% 
% dlmwrite('E0.txt',E0,'delimiter',' ')
% dlmwrite('E1.txt',E1,'delimiter',' ')
% dlmwrite('E2.txt',E2,'delimiter',' ')
% dlmwrite('E3.txt',E3,'delimiter',' ')
% dlmwrite('E5.txt',E5,'delimiter',' ')
% dlmwrite('E10.txt',E10,'delimiter',' ')
% 
% dlmwrite('J0.txt',J0,'delimiter',' ')
% dlmwrite('J1.txt',J1,'delimiter',' ')
% dlmwrite('J2.txt',J2,'delimiter',' ')
% dlmwrite('J3.txt',J3,'delimiter',' ')
% dlmwrite('J5.txt',J5,'delimiter',' ')
% dlmwrite('J10.txt',J10,'delimiter',' ')
% 
% dlmwrite('AV.txt',AV,'delimiter',' ')
% dlmwrite('AX.txt',AX,'delimiter',' ')
% dlmwrite('AXV.txt',AXV,'delimiter',' ')
% dlmwrite('AXX.txt',AXX,'delimiter',' ')
% dlmwrite('AXXV.txt',AXXV,'delimiter',' ')

% 2nd Difference Finder

% A0diff = zeros(1,101);
% J0diff = zeros(1,101);
% 
%    for n = 2:length(A0_25)-1; 
%        A0diff(n) = (A0(n-1)-2*A0(n)+ A0(n+1));
%        J0diff(n) = (J0(n-1)-2*J0(n)+ J0(n+1));
%    end
% 
% a0 = conv(A0diff,ones(5,1)/5, 'same');
% j0 = conv(J0diff,ones(5,1)/5, 'same');
% 
% NodeDist2 = NodeDist(1,2:102);

close all

% figure(1)
% hold on
% plot(NodeDist,A0,'k--')
% plot(NodeDist,A1,'--')
% plot(NodeDist,A2,'--')
% plot(NodeDist,A3,'--')
% plot(NodeDist,A5,'--')
% plot(NodeDist,A10,'--')
% plot(NodeDist,B0)
% plot(NodeDist,C0)
% plot(NodeDist,E0)
% plot(NodeDist,J0)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('0.1 inch Fat Thickness with Electrode Moved from Center')
% legend('A0','A1','A2','A3','A5','A10','B0','C0','E0','J0')
% 
% figure(2)
% hold on
% plot(NodeDist,B0)
% plot(NodeDist,B1)
% plot(NodeDist,B2)
% plot(NodeDist,B3)
% plot(NodeDist,B5)
% plot(NodeDist,B10)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('0.2 inch Fat Thickness with Electrode Moved from Center')
% legend('B0','B1','B2','B3','B5','B10')
% 
% figure(3)
% hold on
% plot(NodeDist,C0)
% plot(NodeDist,C1)
% plot(NodeDist,C2)
% plot(NodeDist,C3)
% plot(NodeDist,C5)
% plot(NodeDist,C10)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('0.3 inch Fat Thickness with Electrode Moved from Center')
% legend('C0','C1','B2','C3','C5','C10')
% 
% figure(4)
% hold on
% plot(NodeDist,E0)
% plot(NodeDist,E1)
% plot(NodeDist,E2)
% plot(NodeDist,E3)
% plot(NodeDist,E5)
% plot(NodeDist,E10)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('0.5 inch Fat Thickness with Electrode Moved from Center')
% legend('E0','E1','E2','E3','E5','E10')
% 
% figure(5)
% hold on
% plot(NodeDist,J0)
% plot(NodeDist,J1)
% plot(NodeDist,J2)
% plot(NodeDist,J3)
% plot(NodeDist,J5)
% plot(NodeDist,J10)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('1 inch Fat Thickness with Electrode Moved from Center')
% legend('J0','J1','J2','J3','J5','J10')
% 
% figure(6)
% hold on
% plot(NodeDist,AV)
% plot(NodeDist,AX)
% plot(NodeDist,AXV)
% plot(NodeDist,AXX)
% plot(NodeDist,AXXV)
% hold off
% xlabel('Node Distance (Inches)')
% ylabel('Extracellular Voltage (V)')
% title('0.1 inch Fat Thickness with Inter-Electrode Distance Varied')
% legend('AV','AX','AXV','AXX','AXXV')
% 
% figure(7)
% hold on
% plot(NodeDist2,a0)
% plot(NodeDist2,j0)
% plot(NodeDist2,a0new)
% plot(NodeDist2,a10new)
% legend('A0', 'J0', 'A0new', 'A10new'); 
% title('2nd Diff Voltage Distribution');
% xlabel('Node Distance (Inches)'); 
% ylabel('2nd Diff Voltage (V)'); 
% grid on
% grid minor
% 
% figure(8)
% hold on
% plot(NodeDist2,a000)
% legend('A000'); 
% title('2nd Diff Voltage Distribution');
% xlabel('Node Distance (Inches)'); 
% ylabel('2nd Diff Voltage (V)'); 
% grid on
% grid minor