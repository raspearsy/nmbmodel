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

%%

NodeDist = (0:0.078740158:8);

A0_17fdata = dlmread('A0_1.75.txt');
A0_25data = dlmread('A0_2.5.txt');
A0_100data = dlmread('A0_10.txt');
A1_17fdata = dlmread('A.1_1.75.txt');
A1_25data = dlmread('A.1_2.5.txt');
A3_17fdata = dlmread('A.3_1.75.txt');
A3_25data = dlmread('A.3_2.5.txt');
A3_50data = dlmread('A.3_5.txt');
A5_25data = dlmread('A.5_2.5.txt');
A5_50data = dlmread('A.5_5.txt');
A10_75data = dlmread('A1_7.5.txt');
A10_100data = dlmread('A1_10.txt');
A10_125data = dlmread('A1_12.5.txt');

C0_25data = dlmread('C0_2.5.txt');
C0_37fdata = dlmread('C0_3.75.txt');
C0_50data = dlmread('C0_5.txt');
C1_25data = dlmread('C.1_2.5.txt');
C1_37fdata = dlmread('C.1_3.75.txt');
C1_50data = dlmread('C.1_5.txt');
C3_37fdata = dlmread('C.3_3.75.txt');
C3_25data = dlmread('C.3_2.5.txt');
C3_50data = dlmread('C.3_5.txt');
C5_37fdata = dlmread('C.5_3.75.txt');
C5_50data = dlmread('C.5_5.txt');
C5_75data = dlmread('C.5_7.5.txt');
C5_100data = dlmread('C.5_10.txt');
C5_125data = dlmread('C.5_12.5.txt');
C10_75data = dlmread('C1_7.5.txt');
C10_100data = dlmread('C1_10.txt');
C10_125data = dlmread('C1_12.5.txt');

E0_25data = dlmread('E0_2.5.txt');
E0_37fdata = dlmread('E0_3.75.txt');
E0_42fdata = dlmread('E0_4.25.txt');
E0_50data = dlmread('E0_5.txt');
E1_25data = dlmread('E.1_2.5.txt');
E1_37fdata = dlmread('E.1_3.75.txt');
E1_42fdata = dlmread('E.1_4.25.txt');
E1_50data = dlmread('E.1_5.txt');
E3_37fdata = dlmread('E.3_3.75.txt');
E3_42fdata = dlmread('E.3_4.25.txt');
E3_50data = dlmread('E.3_5.txt');
E3_75data = dlmread('E.3_7.5.txt');
E5_50data = dlmread('E.5_5.txt');
E5_75data = dlmread('E.5_7.5.txt');
E10_100data = dlmread('E1_10.txt');
E10_125data = dlmread('E1_12.5.txt');

J0_75data = dlmread('J0_7.5.txt');
J0_100data = dlmread('J0_10.txt');
J1_75data = dlmread('J.1_7.5.txt');
J1_100data = dlmread('J.1_10.txt');
J3_75data = dlmread('J.3_7.5.txt');
J3_100data = dlmread('J.3_10.txt');
J5_100data = dlmread('J.5_10.txt');
J5_125data = dlmread('J.5_12.5.txt');
J10_125data = dlmread('J1_12.5.txt');
J10_150data = dlmread('J1_15.txt');
J10_175data = dlmread('J1_17.5.txt');

%%

A0_17f = interp1(A0_17fdata(:,1),A0_17fdata(:,2),NodeDist);
A0_25 = interp1(A0_25data(:,1),A0_25data(:,2),NodeDist);
A0_100 = interp1(A0_100data(:,1),A0_100data(:,2),NodeDist);
A1_17f = interp1(A1_17fdata(:,1),A1_17fdata(:,2),NodeDist);
A1_25 = interp1(A1_25data(:,1),A1_25data(:,2),NodeDist);
A3_17f = interp1(A3_17fdata(:,1),A3_17fdata(:,2),NodeDist);
A3_25 = interp1(A3_25data(:,1),A3_25data(:,2),NodeDist);
A3_50 = interp1(A3_50data(:,1),A3_50data(:,2),NodeDist);
A5_25 = interp1(A5_25data(:,1),A5_25data(:,2),NodeDist);
A5_50 = interp1(A5_50data(:,1),A5_50data(:,2),NodeDist);
A10_75 = interp1(A10_75data(:,1),A10_75data(:,2),NodeDist);
A10_100 = interp1(A10_100data(:,1),A10_100data(:,2),NodeDist);
A10_125 = interp1(A10_125data(:,1),A10_125data(:,2),NodeDist);

A0_17f = 1000*A0_17f;
A0_25 = 1000*A0_25;
A0_100 = 1000*A0_100;
A1_17f = 1000*A1_17f;
A1_25 = 1000*A1_25;
A3_17f = 1000*A3_17f;
A3_25 = 1000*A3_25;
A3_50 = 1000*A3_50;
A5_25 = 1000*A5_25;
A5_50 = 1000*A5_50;
A10_75 = 1000*A10_75;
A10_100 = 1000*A10_100;
A10_125 = 1000*A10_125;

C0_25 = interp1(C0_25data(:,1),C0_25data(:,2),NodeDist);
C0_37f = interp1(C0_37fdata(:,1),C0_37fdata(:,2),NodeDist);
C0_50 = interp1(C0_50data(:,1),C0_50data(:,2),NodeDist);
C1_25 = interp1(C1_25data(:,1),C1_25data(:,2),NodeDist);
C1_37f = interp1(C1_37fdata(:,1),C1_37fdata(:,2),NodeDist);
C1_50 = interp1(C1_50data(:,1),C1_50data(:,2),NodeDist);
C3_25 = interp1(C3_25data(:,1),C3_25data(:,2),NodeDist);
C3_37f = interp1(C3_37fdata(:,1),C3_37fdata(:,2),NodeDist);
C3_50 = interp1(C3_50data(:,1),C3_50data(:,2),NodeDist);
C5_37f = interp1(C5_37fdata(:,1),C5_37fdata(:,2),NodeDist);
C5_50 = interp1(C5_50data(:,1),C5_50data(:,2),NodeDist);
C5_75 = interp1(C5_75data(:,1),C5_75data(:,2),NodeDist);
C5_100 = interp1(C5_100data(:,1),C5_100data(:,2),NodeDist);
C5_125 = interp1(C5_125data(:,1),C5_125data(:,2),NodeDist);
C10_75 = interp1(C10_75data(:,1),C10_75data(:,2),NodeDist);
C10_100 = interp1(C10_100data(:,1),C10_100data(:,2),NodeDist);
C10_125 = interp1(C10_125data(:,1),C10_125data(:,2),NodeDist);

C0_25 = 1000*C0_25;
C0_37f = 1000*C0_37f;
C0_50 = 1000*C0_50;
C1_25 = 1000*C1_25;
C1_37f = 1000*C1_37f;
C1_50 = 1000*C1_50;
C3_25 = 1000*C3_25;
C3_37f = 1000*C3_37f;
C3_50 = 1000*C3_50;
C5_37f = 1000*C5_37f;
C5_50 = 1000*C5_50;
C5_75 = 1000*C5_75;
C5_100 = 1000*C5_100;
C5_125 = 1000*C5_125;
C10_75 = 1000*C10_75;
C10_100 = 1000*C10_100;
C10_125 = 1000*C10_125;

E0_25 = interp1(E0_25data(:,1),E0_25data(:,2),NodeDist);
E0_37f = interp1(E0_37fdata(:,1),E0_37fdata(:,2),NodeDist);
E0_42f = interp1(E0_42fdata(:,1),E0_42fdata(:,2),NodeDist);
E0_50 = interp1(E0_50data(:,1),E0_50data(:,2),NodeDist);
E1_25 = interp1(E1_25data(:,1),E1_25data(:,2),NodeDist);
E1_37f = interp1(E1_37fdata(:,1),E1_37fdata(:,2),NodeDist);
E1_42f = interp1(E1_42fdata(:,1),E1_42fdata(:,2),NodeDist);
E1_50 = interp1(E1_50data(:,1),E1_50data(:,2),NodeDist);
E3_37f = interp1(E3_37fdata(:,1),E3_37fdata(:,2),NodeDist);
E3_42f = interp1(E3_42fdata(:,1),E3_42fdata(:,2),NodeDist);
E3_50 = interp1(E3_50data(:,1),E3_50data(:,2),NodeDist);
E3_75 = interp1(E3_75data(:,1),E3_75data(:,2),NodeDist);
E5_50 = interp1(E5_50data(:,1),E5_50data(:,2),NodeDist);
E5_75 = interp1(E5_75data(:,1),E5_75data(:,2),NodeDist);
E10_100 = interp1(E10_100data(:,1),E10_100data(:,2),NodeDist);
E10_125 = interp1(E10_125data(:,1),E10_125data(:,2),NodeDist);

E0_25 = 1000*E0_25;
E0_37f = 1000*E0_37f;
E0_42f = 1000*E0_42f;
E0_50 = 1000*E0_50;
E1_25 = 1000*E1_25;
E1_37f = 1000*E1_37f;
E1_42f = 1000*E1_42f;
E1_50 = 1000*E1_50;
E3_37f = 1000*E3_37f;
E3_42f = 1000*E3_42f;
E3_50 = 1000*E3_50;
E3_75 = 1000*E3_75;
E5_50 = 1000*E5_50;
E5_75 = 1000*E5_75;
E10_100 = 1000*E10_100;
E10_125 = 1000*E10_125;

J0_75 = interp1(J0_75data(:,1),J0_75data(:,2),NodeDist);
J0_100 = interp1(J0_100data(:,1),J0_100data(:,2),NodeDist);
J1_75 = interp1(J1_75data(:,1),J1_75data(:,2),NodeDist);
J1_100 = interp1(J1_100data(:,1),J1_100data(:,2),NodeDist);
J3_75 = interp1(J3_75data(:,1),J3_75data(:,2),NodeDist);
J3_100 = interp1(J3_100data(:,1),J3_100data(:,2),NodeDist);
J5_100 = interp1(J5_100data(:,1),J5_100data(:,2),NodeDist);
J5_125 = interp1(J5_125data(:,1),J5_125data(:,2),NodeDist);
J10_125 = interp1(J10_125data(:,1),J10_125data(:,2),NodeDist);
J10_150 = interp1(J10_150data(:,1),J10_150data(:,2),NodeDist);
J10_175 = interp1(J10_175data(:,1),J10_175data(:,2),NodeDist);

J0_75 = 1000*J0_75;
J0_100 = 1000*J0_100;
J1_75 = 1000*J1_75;
J1_100 = 1000*J1_100;
J3_75 = 1000*J3_75;
J3_100 = 1000*J3_100;
J5_100 = 1000*J5_100;
J5_125 = 1000*J5_125;
J10_125 = 1000*J10_125;
J10_150 = 1000*J10_150;
J10_175 = 1000*J10_175;

%%

dlmwrite('A0_17.5.txt',A0_17f,'delimiter',' ')
dlmwrite('A0_25.txt',A0_25,'delimiter',' ')
dlmwrite('A0_100.txt',A0_100,'delimiter',' ')
dlmwrite('A1_17.5.txt',A1_17f,'delimiter',' ')
dlmwrite('A1_25.txt',A1_25,'delimiter',' ')
dlmwrite('A3_17.5.txt',A3_17f,'delimiter',' ')
dlmwrite('A3_25.txt',A3_25,'delimiter',' ')
dlmwrite('A3_50.txt',A3_50,'delimiter',' ')
dlmwrite('A5_25.txt',A5_25,'delimiter',' ')
dlmwrite('A5_50.txt',A5_50,'delimiter',' ')
dlmwrite('A10_75.txt',A10_75,'delimiter',' ')
dlmwrite('A10_100.txt',A10_100,'delimiter',' ')
dlmwrite('A10_125.txt',A10_125,'delimiter',' ')

dlmwrite('C0_25.txt',C0_25,'delimiter',' ')
dlmwrite('C0_37.5.txt',C0_37f,'delimiter',' ')
dlmwrite('C0_50.txt',C0_50,'delimiter',' ')
dlmwrite('C1_25.txt',C1_25,'delimiter',' ')
dlmwrite('C1_37.5.txt',C1_37f,'delimiter',' ')
dlmwrite('C1_50.txt',C1_50,'delimiter',' ')
dlmwrite('C3_25.txt',C3_25,'delimiter',' ')
dlmwrite('C3_37.5.txt',C3_37f,'delimiter',' ')
dlmwrite('C3_50.txt',C3_50,'delimiter',' ')
dlmwrite('C5_37.5.txt',C5_37f,'delimiter',' ')
dlmwrite('C5_50.txt',C5_50,'delimiter',' ')
dlmwrite('C5_75.txt',C5_75,'delimiter',' ')
dlmwrite('C5_100.txt',C5_100,'delimiter',' ')
dlmwrite('C5_125.txt',C5_125,'delimiter',' ')
dlmwrite('C10_75.txt',C10_75,'delimiter',' ')
dlmwrite('C10_100.txt',C10_100,'delimiter',' ')
dlmwrite('C10_125.txt',C10_125,'delimiter',' ')

dlmwrite('E0_25.txt',E0_25,'delimiter',' ')
dlmwrite('E0_37.5.txt',E0_37f,'delimiter',' ')
dlmwrite('E0_42.5.txt',E0_42f,'delimiter',' ')
dlmwrite('E0_50.txt',E0_50,'delimiter',' ')
dlmwrite('E1_25.txt',E1_25,'delimiter',' ')
dlmwrite('E1_37.5.txt',E1_37f,'delimiter',' ')
dlmwrite('E1_42.5.txt',E1_42f,'delimiter',' ')
dlmwrite('E1_50.txt',E1_50,'delimiter',' ')
dlmwrite('E3_37.5.txt',E3_37f,'delimiter',' ')
dlmwrite('E3_42.5.txt',E3_42f,'delimiter',' ')
dlmwrite('E3_50.txt',E3_50,'delimiter',' ')
dlmwrite('E3_75.txt',E3_75,'delimiter',' ')
dlmwrite('E5_50.txt',E5_50,'delimiter',' ')
dlmwrite('E5_75.txt',E5_75,'delimiter',' ')
dlmwrite('E10_100.txt',E10_100,'delimiter',' ')
dlmwrite('E10_125.txt',E10_125,'delimiter',' ')

dlmwrite('J0_75.txt',J0_75,'delimiter',' ')
dlmwrite('J0_100.txt',J0_100,'delimiter',' ')
dlmwrite('J1_75.txt',J1_75,'delimiter',' ')
dlmwrite('J1_100.txt',J1_100,'delimiter',' ')
dlmwrite('J3_75.txt',J3_75,'delimiter',' ')
dlmwrite('J3_100.txt',J3_100,'delimiter',' ')
dlmwrite('J5_100.txt',J5_100,'delimiter',' ')
dlmwrite('J5_125.txt',J5_125,'delimiter',' ')
dlmwrite('J10_125.txt',J10_125,'delimiter',' ')
dlmwrite('J10_150.txt',J10_150,'delimiter',' ')
dlmwrite('J10_175.txt',J10_175,'delimiter',' ')

%%

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