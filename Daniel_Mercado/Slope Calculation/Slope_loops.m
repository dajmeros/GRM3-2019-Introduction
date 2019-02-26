function [s] = Calc_Slope (dem,dx,dy)
%Calculates slope using loops
for i = 1:counterY;
    for j = 1:counterX;
       dzdx(i,j) = (dem(i,j)- low)/dx;
       j = j+1;
    end
    i = i+1;
end

