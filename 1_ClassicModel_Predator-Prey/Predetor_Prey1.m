function dy=Predetor_Prey1(t,y,a1,b1,a2,b2)
dy = zeros(2,1);    % a column vector
dy(1) = a1*y(1)-b1*y(1)*y(2); %Rabits %exponential growth
dy(2) = -a2*y(2)+b2*y(1)*y(2); %Foxes