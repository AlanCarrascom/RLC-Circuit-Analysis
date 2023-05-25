function y=voltaje_capacitor(n,c1,c2,d0,Vg)
    %Calcula el valor de Vc[n]
    if n<0
        y=0; %Si el indice es negativo
    elseif n==0
        y=d0*Vg; %Si el indice es cero
    else
        y=c1*vc(n-1,c1,c2,d0,Vg)-c2*vc(n-2,c1,c2,d0,Vg)+d0*Vg;
    end
end