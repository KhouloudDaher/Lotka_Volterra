%Predator-prey function
function dxdt = f2(t,x,a1,a2,b,c,K1,K2)

dxdt = [0;0];
% %Unstable existence (either species could win). Winner based on the initial
% %population (set the difference of initial population of 1).


% %Stable coexistence
% a1 = 0.9; a2 = 0.5; b = 0.6; c = 0.7; K1 = 500 ; K2 = 700;

% %Competitive exclusion (different K)
% a1 = 0.7; a2 = 0.7; b = 0.6; c = 0.7; K1 = 500 ; K2 = 1000;

% %Competitive exclusion (different resources beta & gama)
% alp1ha1 = 0.7; a2 = 0.7; b = 0.6; c = 1.3; K1 = 500 ; K2 = 500;

dxdt(1) = a1*x(1) - (a1*(x(1)^2)/K1) - ((b*x(1)*x(2))/K1);
dxdt(2) = a2*x(2) - (a2*(x(2)^2)/K2) - ((c*x(1)*x(2))/K2);


