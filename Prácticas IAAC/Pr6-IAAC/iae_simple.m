function IAE = iae_simple(pid)

    Kp = pid(1);
    Ki = pid(2);
    Kd = pid(3);
    
    %simulamos el sistema y calculamos el error restando el input
    %del output
    
    options = simset('SrcWorkspace','current');
    [tout,yout] = sim('modelo_practica6',[0,40],options);
    
    IAEtrapz = trapz(tout,abs(yout(:,1)-(yout(:,2))));
    
IAE = IAEtrapz







%IAEtrapz = trapz(abs((yout(:,1)-yout(:,2))).*(tout(2)-tout(1)));
    %IAEsum = sum(abs((yout(:,1)-yout(:,2))).*(tout(2)-tout(1)));