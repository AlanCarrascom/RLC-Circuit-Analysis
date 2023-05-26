
%Grafica de la Solución a la ecuación diferencial de la Actividad 1 del
%Voltaje en el Capacitor en el Sistema de 2do Orden
%d^2Vc(t)/dt^2+(R/L)dVc(t)/dt+(1/LC)Vc(t)=(1/LC)Vg(t)
%R/L=1 1/LC=5 

clear%Borra todo lo que esté en el espacio de trabajo (WORKSPACE)
clc%Borra todo lo que esté en la ventana de comandos (command window)
close all%cierra toda ventana abierta...

%Función de Transferencia en tiempo continuo
R=1; L=1; C=1/5;%Parametros
num=(1/(L*C));
den=[1 R/L 1/(L*C)];
Hs=tf(num,den) 
step(Hs)%Respuesta al escalón
grid on
xlabel('t[s]')%Ponle etiqueta en x
ylabel('Vc(t) [V]')%Ponle etiqueta en y
title('Respuesta al impulso con "step" del sistema en tiempo continuo')%Ponle título

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Función de transferencia en tiempo discreto con los distintos tiempos de
%muestreo a partir de la F.T. de tiempo continuo
%hold on
for p=1:5;
    Ts=10/10^p;
    Hz=c2d(Hs,Ts,'zoh')
    figure
    step(Hz,'r --')
    grid on
    xlabel('n[z]')
    ylabel('Vc(t) [V]')
    title(['Apróximación en tiempo discreto mediante F.T.D. para un Ts=',num2str(Ts)])
end


