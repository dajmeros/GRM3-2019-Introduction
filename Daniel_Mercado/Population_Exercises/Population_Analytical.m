clearvars
clc
close all

bp = 11.35e6;  %Belgian Population/ when the wild boar population equals belgian population
wbp = 50e3;   %Wild Boar Population
gr = 0.48; 

gr_row = linspace(0.01, 0.05, 25)    %from 0.01 to 0.05, 25 indices
y = 1./gr_row*log(bp/wbp)     %Notice the change to point division

%Plotting
plot(gr_row, y)
xlabel 'Growth rate'
ylabel 'Population'
title 'Wild Boar Population vs Growth Rate'