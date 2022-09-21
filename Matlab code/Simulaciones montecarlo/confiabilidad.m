syms c phi gamma
Df = 0.5;
B = 0.5;
L = 3; %Cambiar L
HB = 0;
HL = 500;
V = 1100;
%Vesic F.C Portante
Nq = exp(1)^(pi*tan(phi))*(tan(deg2rad(45)+(phi/2)))^2;
Nc = (Nq-1)*cot(phi);
Ngamma = 2*(Nq+1)*tan(phi);
%Factores de Forma
Sc = 1+(Nq/Nc)*(B/L);
Sq = 1+(B/L)*tan(phi);
Sgamma = 0.9;
%Factores de Inclinación
m = (2+(L/B))/(1+(L/B));
Iq = (1-(HL/(V+B*L*0.6*c*cot(phi))))^m;
Igamma = (1-(HL/(V+0.6*c*cot(phi))))^(m+1);
Ic = Iq-((1-Iq)/(Nq-1));
%Factores de Profundidad
k = 1;
Dc = 1+0.4*k;
Dq = 1+(2*tan(phi))*(((1-sin(phi))^2)*k);
Dgamma = 1;
%Capacidad Portante
q = gamma*Df;
qult = (c*Nc*Sc*Dc*Ic)+(q*Nq*Sq*Dq*Iq)+(0.5*gamma*B*Ngamma*Sgamma*Igamma);
qadm = 100;
FS = qult/qadm;
%Derivadas parciales
FSc = diff(FS,c);
FSphi = diff(FS,phi);
FSgamma = diff(FS,gamma);