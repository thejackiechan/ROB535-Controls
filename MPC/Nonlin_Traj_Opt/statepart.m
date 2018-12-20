function [pd] = statepart(x,u) % derivative with respect to states
    a = 1.35;
    b = 1.45 ; 
    %L = a + b ;
    %Nw = 2;
    %f = 0.01;
    Iz = 2667;
    By=0.27;
    Cy=1.2;
    Dy=0.7;
    Ey=-1.6;
    Shy=0;
    %Svy=0;
    m=1400;
    g=9.806;
    
    
    pd = zeros(6,6) ;
    pd(:,2) = [cos(x(5));... % x(5) is psi
            
             (By*Cy*Dy*b*g*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),x(2)))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),x(2)))/17592186044416)))/By)))*sin(u(1))*((1007958012753983*...
             (x(4) + a*x(6))*(Ey - 1))/(17592186044416*(x(2))^2*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*(x(4) + a*x(6)))/(17592186044416*(x(2))^2*...
             (By^2*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*...
             ((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 - ...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - ...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1));

            %(By*Cy*Dy*b*g*sin(u(1))*cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) ... 
            %- atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By))) ...
            %*(((x(4) + a*x(6))*(Ey - 1))/(x(2)^2*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*(x(4) + a*x(6)))/(x(2)^2*(By^2*(Shy + ...
            %u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)* ...
            %(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)); ...
            
            sin(x(5)); ...
            
             - x(6) - ((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan2((x(4) - b*x(6)),x(2)))/17592186044416)*(Ey - 1) -...
             (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),x(2)))/17592186044416)))/By)))*((1007958012753983*(x(4) - b*x(6))*...
             (Ey - 1))/(17592186044416*(x(2))^2*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*(x(4) - b*x(6)))/(17592186044416*(x(2))^2*(By^2*...
             (Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
             (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))...
             /17592186044416)))/By)^2 + 1)) + (By*Cy*Dy*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*cos(u(1))*((1007958012753983*(x(4) + a*x(6))*(Ey - 1))/...
             (17592186044416*(x(2))^2*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*(x(4) + a*x(6)))/(17592186044416*(x(2))^2*(By^2*(Shy + ...
             (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/...
             ((a + b)*(By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
             (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/m;

            %- x(6) - ((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
            %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))*(((x(4) - b*x(6))*(Ey - 1))/(x(2)^2*((x(4) - b*x(6))^2/x(2)^2 + 1)) - ...
            %(Ey*(x(4) - b*x(6)))/(x(2)^2*(By^2*(Shy - atan2((x(4) - b*x(6)),x(2)))^2 + 1)*((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)* ...
            %(Shy - atan2((x(4) - b*x(6)),x(2))) - (Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)^2 + 1)) + (By*Cy*Dy*b*g*m*cos(u(1))* ...
            %cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
            %(((x(4) + a*x(6))*(Ey - 1))/(x(2)^2*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*(x(4) + a*x(6)))/(x(2)^2*(By^2*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)* ...
            %((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - ...
            %atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/m; ...
            0; ...
            
             ((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) -...
             (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)))*((1007958012753983*(x(4) - b*x(6))*...
             (Ey - 1))/(17592186044416*(x(2))^2*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*(x(4) - b*x(6)))/(17592186044416*(x(2))^2*(By^2*...
             (Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
             (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/...
             17592186044416)))/By)^2 + 1)) - (By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
             (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*cos(u(1))*((1007958012753983*(x(4) + a*x(6))*(Ey - 1))/...
             (17592186044416*(x(2))^2*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*(x(4) + a*x(6)))/(17592186044416*(x(2))^2*(By^2*(Shy + ...
             (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/...
             ((a + b)*(By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
             (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/Iz];

            
            %((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - (Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))* ...
            %(((x(4) - b*x(6))*(Ey - 1))/(x(2)^2*((x(4) - b*x(6))^2/x(2)^2 + 1)) - (Ey*(x(4) - b*x(6)))/(x(2)^2*(By^2*(Shy - atan2((x(4) - b*x(6)),x(2)))^2 + 1)* ...
            %((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
            %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)^2 + 1)) - (By*Cy*Dy*a*b*g*m*cos(u(1))*cos(Cy*atan(By*((Ey - 1)* ...
            %(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))*(((x(4) + a*x(6))*(Ey - 1))/ ...
            %(x(2)^2*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*(x(4) + a*x(6)))/(x(2)^2*(By^2*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)* ...
            %((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - ...
            %(Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/Iz];
        
    pd(:,4) = [-sin(x(5));...
                
                x(6)-(By*Cy*Dy*b*g*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy +...
                (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/...
                17592186044416)))/By)))*sin(u(1))*((1007958012753983*(Ey - 1))/(17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) -...
                (1007958012753983*Ey)/(17592186044416*(x(2))*(By^2*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*...
                (By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/...
                17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1));

                %x(6) - (By*Cy*Dy*b*g*sin(u(1))*cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
                %((Ey - 1)/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - Ey/(x(2)*(By^2*(Shy + u(1) - atan2((x(4) ... 
                %+ a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)* ...
                %(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2)))))/By)^2 + 1));...
                
                cos(x(5));...
                
                ((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) -...
                (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)))*((1007958012753983*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey)/(17592186044416*(x(2))*(By^2*(Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)) + (By*Cy*Dy*b*g*m*cos(Cy*atan(By*((Ey - 1)*...
                (Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
                (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*...
                cos(u(1))*((1007958012753983*(Ey - 1))/(17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) -...
                (1007958012753983*Ey)/(17592186044416*(x(2))*(By^2*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Ey - 1)*...
                (Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
                (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/m;

                %((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))*((Ey - 1)/(x(2)*((x(4) - ...
                %b*x(6))^2/x(2)^2 + 1)) - Ey/(x(2)*(By^2*(Shy - atan2((x(4) - b*x(6)),x(2)))^2 + 1)* ...
                %((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy - atan2((x(4) - ...
                %b*x(6)),x(2))) - (Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)^2 + 1)) + ...
                %(By*Cy*Dy*b*g*m*cos(u(1))*cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
                %((Ey - 1)/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - Ey/(x(2)*(By^2*(Shy + u(1) - ...
                %atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)* ...
                %(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + ...
                %u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/m; ...
                
                0;...
                
                -((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) -...
                (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)))*((1007958012753983*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey)/(17592186044416*(x(2))*(By^2*(Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/...
                17592186044416)))/By)^2 + 1)) - (By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*cos(u(1))*((1007958012753983*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey)/(17592186044416*(x(2))*(By^2*(Shy + (1007958012753983*u(1))/...
                17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Ey - 1)*...
                (Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy +...
                (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/Iz];

                %-((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))*((Ey - 1)/(x(2)* ...
                %((x(4) - b*x(6))^2/x(2)^2 + 1)) - Ey/(x(2)*(By^2*(Shy - atan2((x(4) - ...
                %b*x(6)),x(2)))^2 + 1)*((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)* ...
                %(Shy - atan2((x(4) - b*x(6)),x(2))) - (Ey*atan(By*(Shy - atan2((x(4) - ...
                %b*x(6)),x(2)))))/By)^2 + 1)) - (By*Cy*Dy*a*b*g*m*cos(u(1))*cos(Cy*atan(By*((Ey - 1)* ...
                %(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2)))))/By)))*((Ey - 1)/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - Ey/(x(2)* ...
                %(By^2*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + ...
                %1))))/((a + b)*(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/Iz];

    pd(:,5) = [-x(4)*cos(x(5)) - x(2)*sin(x(5));...
                0;...
                x(2)*cos(x(5)) - x(4)*sin(x(5));...
                0;...
                0;...
                0];
                
    pd(:,6) = [0;...
        
                x(4) - (By*Cy*Dy*b*g*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*sin(u(1))*((1007958012753983*a*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*a)/(17592186044416*(x(2))*(By^2*(Shy + (1007958012753983*u(1))/...
                17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/...
                ((a + b)*(By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
                (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1));

                %x(4) - (By*Cy*Dy*b*g*sin(u(1))*cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
                %((a*(Ey - 1))/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*a)/(x(2)*(By^2*(Shy + ...
                %u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/ ...
                %((a + b)*(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1));...
                
                0;...

                - (x(2)) - ((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan((x(4) - b*x(6))/(x(2))))/17592186044416)*(Ey - 1) -...
                (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)))*((1007958012753983*b*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*b)/(17592186044416*(x(2))*(By^2*(Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/...
                17592186044416)))/By)^2 + 1)) - (By*Cy*Dy*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*cos(u(1))*((1007958012753983*a*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*a)/(17592186044416*(x(2))*(By^2*(Shy +...
                (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Ey - 1)*...
                (Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) -...
                (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/m;

                %- x(2) - ((By*Cy*Dy*a*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))*((b*(Ey - 1))/(x(2)*((x(4) - ...
                %b*x(6))^2/x(2)^2 + 1)) - (Ey*b)/(x(2)*(By^2*(Shy - atan2((x(4) - b*x(6)),x(2)))^2 + 1)* ...
                %((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy - ...
                %atan2((x(4) - b*x(6)),x(2))) - (Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)^2 + ...
                %1)) - (By*Cy*Dy*b*g*m*cos(u(1))*cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + ...
                %a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
                %((a*(Ey - 1))/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*a)/(x(2)*(By^2*(Shy + u(1) - ...
                %atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)* ...
                %(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + u(1) - ...
                %atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/m;...
                
                1;...
                
                ((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) -...
                (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)))/By)))*((1007958012753983*b*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) - b*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*b)/(17592186044416*(x(2))*(By^2*(Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)^2 + 1)*((x(4) - b*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Shy -...
                (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/17592186044416)*(Ey - 1) - (Ey*atan(By*(Shy - (1007958012753983*atan2((x(4) - b*x(6)),(x(2))))/...
                17592186044416)))/By)^2 + 1)) + (By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)))*cos(u(1))*((1007958012753983*a*(Ey - 1))/...
                (17592186044416*(x(2))*((x(4) + a*x(6))^2/(x(2))^2 + 1)) - (1007958012753983*Ey*a)/(17592186044416*(x(2))*(By^2*(Shy +...
                (1007958012753983*u(1))/17592186044416 - (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)^2 + 1)*...
                ((x(4) + a*x(6))^2/(x(2))^2 + 1))))/((a + b)*(By^2*((Ey - 1)*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416) - (Ey*atan(By*(Shy + (1007958012753983*u(1))/17592186044416 -...
                (1007958012753983*atan2((x(4) + a*x(6)),(x(2))))/17592186044416)))/By)^2 + 1)))/Iz];

                %((By*Cy*Dy*a*b*g*m*cos(Cy*atan(By*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy - atan2((x(4) - b*x(6)),x(2)))))/By)))*((b*(Ey - 1))/(x(2)* ...
                %((x(4) - b*x(6))^2/x(2)^2 + 1)) - (Ey*b)/(x(2)*(By^2*(Shy - ...
                %atan2((x(4) - b*x(6)),x(2)))^2 + 1)*((x(4) - b*x(6))^2/x(2)^2 + 1))))/((a + b)* ...
                %(By^2*((Ey - 1)*(Shy - atan2((x(4) - b*x(6)),x(2))) - (Ey*atan(By*(Shy - ...
                %atan2((x(4) - b*x(6)),x(2)))))/By)^2 + 1)) + (By*Cy*Dy*a*b*g*m*cos(u(1))* ...
                %cos(Cy*atan(By*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - ...
                %(Ey*atan(By*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)))* ...
                %((a*(Ey - 1))/(x(2)*((x(4) + a*x(6))^2/x(2)^2 + 1)) - (Ey*a)/(x(2)*(By^2*(Shy + ...
                %u(1) - atan2((x(4) + a*x(6)),x(2)))^2 + 1)*((x(4) + a*x(6))^2/x(2)^2 + 1))))/((a + b)* ...
                %(By^2*((Ey - 1)*(Shy + u(1) - atan2((x(4) + a*x(6)),x(2))) - (Ey*atan(By*(Shy + ...
                %u(1) - atan2((x(4) + a*x(6)),x(2)))))/By)^2 + 1)))/Iz];          
            
end