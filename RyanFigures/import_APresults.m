%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/Ryan/Desktop/Duke/neuron/nmbmodel/AP_results.xlsx
%    Worksheet: Sheet1
%
% To extend the code for use with different selected data or a different spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2017/12/10 16:22:18

%% Import the data
[~, ~, raw] = xlsread('/Users/Ryan/Desktop/Duke/neuron/nmbmodel/AP_results.xlsx','Sheet1');
xlabel = cell2mat(raw(3, 3:end));
ylabel = cell2mat(raw(4:end, 2)');
raw = raw(4:end,3:end);

%% Create output variable
data = reshape([raw{:}],size(raw));

xvalues = {'1.00', '1.75', '2.50', '3.00', '3.75', '4.25', '5.00', ...
    '7.50', '10.0', '12.5', '15.0', '17.5'};
yvalues = {'A: 0.00', 'A: 0.10', 'A: 0.30', 'A: 0.50', 'A: 1.00', ...
            'C: 0.00', 'C: 0.10', 'C: 0.30', 'C: 0.50', 'C: 1.00',...
            'E: 0.00', 'E: 0.10', 'E: 0.30', 'E: 0.50', 'E: 1.00',...
            'J: 0.00', 'J: 0.10', 'J: 0.30', 'J: 0.50', 'J: 1.00'};
yvalues1 = {'0.00', '0.10', '0.30', '0.50', '1.00'};
%{
h = heatmap(xvalues, yvalues, data)
h.Title = 'Currents that produce action potentials by lateral electrode position and fat thickness';
h.XLabel = 'Current (mA)';
h.YLabel = 'Fat Thickness (A-J) & Lateral Electrode Position (in)';
%set(h.XLabel, 'FontSize', 12)
%}

figure
subplot(4, 1, 1)
h1 = heatmap(xvalues, yvalues1, data(1:5, :))
title('(A) 0.1in fat');
subplot(4, 1, 2)
h2 = heatmap(xvalues, yvalues1, data(6:10, :))
h2.Title = '(B) 0.3in fat';
h2.YLabel = 'Lateral Electrode Position (in)';
subplot(4, 1, 3)
h3 = heatmap(xvalues, yvalues1, data(11:15, :))
h3.Title = '(C) 0.5in fat';
subplot(4, 1, 4)
h4 = heatmap(xvalues, yvalues1, data(16:20, :))
h4.Title = '(D) 1.0in fat';
h4.XLabel = 'Current (mA)';
suptitle('Currents that produce action potentials by lateral electrode position and fat thickness');


clearvars raw;