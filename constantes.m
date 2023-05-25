%Esta funci�n entrega los valores c1, c2 y d0 que son las constantes tanto
%para el m�todo de discretizaci�n por diferencias finitas o ecuaci�n en
%diferencias o tambi�n por el m�todo de Funci�n de transferencia en tiempo
%discreto.

function [c1,c2,d0]= constantes(a1,a0,b0,Ts)
    %Calcula c1
c1=(2+a1*Ts)/(1+a1*Ts+a0*Ts^2);
    %calcula c2
c2=1/(1+a1*Ts+a0*Ts^2);
    %Calcula d0
d0=(Ts^2*b0)/(1+a1*Ts+a0*Ts^2);
