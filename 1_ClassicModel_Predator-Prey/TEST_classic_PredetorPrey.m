 a1=2;a2=1;b1=0.005;b2=0.005;
 r0=500;f0=350; 
[yy,t]=RK4_1(@Predetor_Prey1,r0,f0,0,20,500,a1,b1,a2,b2);
subplot(311);
plot(yy(:,1),yy(:,2));grid;
xlabel('rabbits')
ylabel('foxes')
subplot(312);
plot(t,yy(:,1));grid;
ylabel('rabbits')
xlabel('time')
subplot(313);
plot(t,yy(:,2));grid;
ylabel('foxes')
xlabel('time')


pause;
a=length(yy(:,1));
close all;
figure(1);
for i=1:10:a
    r=fix(yy(i,1));
    f=fix(yy(i,2));
    subplot(121);
    scatter(rand(f,1),rand(f,1),20,'b','o');hold on;
    title(['Time=' num2str(i/50) ' ;Foxes=' num2str(f) ]);
    subplot(122);
     scatter(rand(r,1),rand(r,1),20,'r','*');
     title([' Rabits=' num2str(r)]);
    pause(1);
    if (i~=501)   
        clf;
    end
   disp([i f r]);
end





    
  
