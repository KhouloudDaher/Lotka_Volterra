a1=2;b1=0.005;c1=0.005;a2=1;b2=0.005;a3=1;b3=0.005;
x0=300;y0=150;z0=140; 
[yy,t]=RK4_3(@Predetor2_Prey1,x0,y0,z0,0,20,500,a1,b1,c1,a2,b2,a3,b3);
figure
plot3(yy(:,1),yy(:,2),yy(:,3),'o');grid;
xlabel('prey')
ylabel('predetor1')
zlabel('predetor2')
figure
subplot(311);
plot(t,yy(:,1),'r');grid;
ylabel('prey')
xlabel('time')
subplot(312);
plot(t,yy(:,2),'g');grid;
ylabel('predetor1')
xlabel('time')
subplot(313);
plot(t,yy(:,3));grid;
ylabel('predetor2')
xlabel('time')

pause;
a=length(yy(:,1));
close all;
figure(1);
for i=1:10:a
    r=fix(yy(i,1));
    p1=fix(yy(i,2));
    p2=fix(yy(i,3));
    subplot(131);
    scatter(rand(p1,1),rand(p1,1),20,'b','o');hold on;
    title(['Time=' num2str(i/50) ' ;predetor1=' num2str(p1) ]);
    subplot(132);
    scatter(rand(p2,1),rand(p2,1),20,'green','x');hold on;
    title(['Time=' num2str(i/50) ' ;predetor2=' num2str(p2) ]);
    subplot(133);
     scatter(rand(r,1),rand(r,1),20,'r','*');
     title([' prey=' num2str(r)]);
    pause(1);
    if (i~=501)   
        clf;
    end
   disp([i p1 p2 r]);
end



