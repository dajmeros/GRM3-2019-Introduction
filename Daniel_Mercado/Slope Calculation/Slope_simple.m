function [s] = Calc_Slope (dem,dx,dy)
%Simpler calculation method 
dzdx (1:1201,:) = ((max(dem(1:1202,:))) - (min(dem(1:1202,:))))/dx*2
dzdy (:,1:1201) = ((max(dem(:,1:1202))) - (min(dem(:,1:1202))))/dy*2
s = sqrt((dzdx^2)+(dzdy^2))
end