function dy=fish_sharks(t,y,a1,b1,c1,a2,b2,c2)
dy = zeros(2,1);    % a column vector

dy(1) = a1*y(1)-b1*y(1)*y(2)-c1*y(1); %fish
dy(2) = -a2*y(2)+b2*y(1)*y(2)-c2*y(2); %sharks

