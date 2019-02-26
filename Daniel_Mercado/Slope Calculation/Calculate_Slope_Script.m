%Group Assignment 
%Calculating Slope Script
clearvars
clc
close all

addpath ('E:/Semester 2/GRM3')
dem = load("dem.mat")
%savepath E:/Semester 2/GRM3/
%save('slopemap.m')

dem = dem.dem   %Converts dem struct datatype to a single datatype
min(dem)
dx = 1201;
dy = 1201;
dzdx = zeros(dx,dy) %Arrays that need to be filled with later calculations
dzdy = zeros(dx,dy) 

%Need to modify
% dzdx (1:1201,:) = ((max(dem(1:1202,:))) - (min(dem(1:1202,:))))/dx
% dzdy (:,1:1201) = ((max(dem(:,1:1202))) - (min(dem(:,1:1202))))/dy

counterY = 1:dy; 
counterX = 1:dx;
low = min(dem)

%To calculate dzdy
%Need to do this as a function
for i = 1:counterY;
    for j = 1:counterX;
       dzdx(i,j) = (dem(i,j)- low)/dx;
       j = j+1;
    end
    i = i+1;
end

%i is the index of the row (example i=1 would refer to row 1)
%i is determined through a loop
dzdx (1:1201,:) = ((max(dem(1:1202,:))) - (min(dem(1:1202,:))))/dx*2
dzdy (:,1:1201) = ((max(dem(:,1:1202))) - (min(dem(:,1:1202))))/dy*2
s = sqrt((dzdx^2)+(dzdy^2))
%Indexing should be (1:dx, i) for rows
%Indexing should be (i,1:dx) for columns

slopemap = Calc_Slope(dzdx, dzdy)
disp (slopemap)
