%%%%%%%%%%%%%%%%%%%%
% Facultad de Ingeniería
% 
% Carrasco Meza Alan Michel
% Bravo Casto José Iván
% 
% 26 de mayo de 2023
%%%%%%%%%%%%%%%%%%%%

% SOLUCION DEL MODELO
% d^2Vc(t)/dt + R/L*dVc(t) = 1/LC*Vg(t)

% declaracion de la variable simbolica
syms Vc(t)

% declaracion de las constantes a=R/L y b=1/LC
a=1; b=5; Vg=1;

% definicion del modelo en sintaxis de Matlab
eqn = diff(Vc,2) + a*diff(Vc,1) + b*Vc == b*Vg;

% se define una diferencial de Vc para definir condiciones iniciales
DVc = diff(Vc);
condicionesIniciales=[DVc(0); Vc(0)]==[0;0];

% resolucion de la equacion diferencial mediante dsolve()
Vc(t) = dsolve(eqn,condicionesIniciales);

pretty(Vc(t))

t = 0:0.01:10;
plot(t,eval(Vc),"LineWidth",3)
xlabel("t[s]", FontSize=20,Interpreter="latex");
ylabel("Vc[V]",FontSize=20,Interpreter="latex");
title("Voltaje del capacitor respecto al tiempo en sistema RLC", FontSize=20,Interpreter="latex");
grid on;