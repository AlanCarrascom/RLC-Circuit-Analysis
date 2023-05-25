%Discretización mediante diferencias finitas y su resolución por el método de recurrencia
% Ec. General y[n]-C1y[n-1]+C2y[n-2]=d0x[n]
%Para nuestro caso Vc[n]=d0Vg[n]+C1Vc[n-1]-C2Vc[n-2]
clear %borra el espacio de trabajo 
clc % borra la ventana de comandos
close all %Cierra todas las ventanas creadas
m=25;
R=1;
L=1;
C=1/5;
a1=R/L;
a0=1/(L*C);
b0=1/(L*C);
Vc=zeros();
n=zeros();
for p=1:5 %genera los tiempos de muestreo de Ts=1 disminuyendolo en 0.1 hasta 0.0001
    figure
    Ts=10/10^p;
    [C1,C2,d0]=constantes(a1,a0,b0,Ts);
   
    for c=1:m % Se crea Vcn por el método de recurrencia
        Vc(c)=vc(c-1,C1,C2,d0,1);
        n(c)=c-1;
    end
    format long
    Vc;
    plot(n,Vc,'LineWidth',2)
    hold on
    stem(n,Vc)
    grid on
    hold off
    xlabel('n[z]')
    ylabel('Vc(t) [V]')
    title('Apróximación por sistemas de tiempo discreto con Ts=',num2str(Ts))
   
end
    
    