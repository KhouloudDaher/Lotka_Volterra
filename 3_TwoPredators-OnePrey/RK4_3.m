function [y,t]=RK4_3(F,x0,y0,z0,a,b,N,a1,b1,c1,a2,b2,a3,b3)
h=(b-a)/N;
y = zeros(N,3);
y(1,:)=[x0 y0 z0];t(1)=a;
for i=1:N
    t(i+1)=a+i*h;
    
    k1=feval(F,t(i),y(i,:),a1,b1,c1,a2,b2,a3,b3);
    
        
    k2=feval(F,t(i)+h/2,y(i,:)+(h/2).*k1',a1,b1,c1,a2,b2,a3,b3);
    


    k3=feval(F,t(i)+h/2,y(i,:)+(h/2).*k2',a1,b1,c1,a2,b2,a3,b3);
    

      
    k4=feval(F,t(i)+h,y(i,:)+h.*k3',a1,b1,c1,a2,b2,a3,b3);
    
    
 
    y(i+1,:)=y(i,:)+(h/6)*(k1+2*k2+2*k3+k4)';
    

    
end



