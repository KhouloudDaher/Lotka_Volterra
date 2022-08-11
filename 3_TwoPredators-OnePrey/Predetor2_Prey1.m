function dy=Predetor2_Prey1(t,y,a1,b1,c1,a2,b2,a3,b3)
dy = zeros(3,1);    % a column vector
dy(1) = a1*y(1)-b1*y(1)*y(2)-c1*y(1)*y(3); %prey
dy(2) = -a2*y(2)+b2*y(1)*y(2); %predetor1
dy(3) = -a3*y(3)+b3*y(1)*y(3);%predetor2

