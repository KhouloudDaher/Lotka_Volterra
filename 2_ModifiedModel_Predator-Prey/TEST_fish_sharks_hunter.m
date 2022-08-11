 a1=0.48069;a2=0.92718;b1=0.024822;b2=0.027564;c1=0.05;c2=0.01;
 f0=34;s0=10; 
[yy,t]=RK4(@fish_sharks,f0,s0,0,20,500,a1,b1,c1,a2,b2,c2);
subplot(311);
plot(yy(:,1),yy(:,2));grid;
xlabel('Fish')
ylabel('Sharks')
subplot(312);
plot(t,yy(:,1));grid;
ylabel('Fish')
xlabel('time')
subplot(313);
plot(t,yy(:,2));grid;
ylabel('Sharks')
xlabel('time')


pause;
a=length(yy(:,1));
close all;
figure(1);
for i=1:10:a
    f=fix(yy(i,1));
    s=fix(yy(i,2));
    subplot(121);
    scatter(rand(s,1),rand(s,1),20,'b','o');hold on;
    title(['Time=' num2str(i/50) ' ;Sharks=' num2str(s) ]);
    subplot(122);
     scatter(rand(f,1),rand(f,1),20,'g','*');
     title([' Fish=' num2str(f)]);
    pause(1);
    if (i~=501)   
        clf;
    end
   disp([i s f]);
end

