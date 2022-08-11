% Solves the Lotka-Volterra Competitive(logistic) model for two species.
% Species 1: dx1/dt = alpha1*x1[(K1-x1-beta*x2)/K1]
% Species 2: dx2/dt = alpha2*x2[(K2-x2-gamma*x1)/K2]
% where; K1&2 = carrying capacity, alpha1&2 = growth rate
% beta & gamma = inter-dependence of species
% Four cases are simulated based on the initial conditions and constant
% parameters.

clc
clear all

%inital population
a1 = 0.7; a2 = 0.7; b1 = 1.3; c = 1.3; K1 = 500 ; K2 = 500;
x10=11;y10=10; 

[y,t]=rk4(@f2,x10,y10,0,20,500,a1,a2,b1,c,K1,K2);

subplot(311);
plot(y(:,1),y(:,2));grid;
xlabel('species1')
ylabel('species2')
subplot(312);
plot(t,y(:,1));grid;
ylabel('species1')
xlabel('time')
subplot(313);
plot(t,y(:,2));grid;
ylabel('species2')
xlabel('time')

%animation
pause;
a=length(y(:,1));
close all;
figure(1);
for i=1:10:a
    s1=fix(y(i,1));
    s2=fix(y(i,2));
    subplot(121);
    scatter(rand(s2,1),rand(s2,1),20,'green','o');hold on;
    title(['Time=' num2str(i/50) ' ;species2=' num2str(s2) ]);
    subplot(122);
     scatter(rand(s1,1),rand(s1,1),20,'magenta','*');
     title([' species1=' num2str(s1)]);
    pause(1);
    if (i~=501)   
        clf;
    end
   disp([i s2 s1]);
end



