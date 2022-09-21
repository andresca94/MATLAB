%Anexo C. GRÁFICAS 
%Se crean los vectores que contienen los valores de epsilon y de frecuencia, así como de cluster mayor, desviación estándar y número de clusters 
%vectores
epsilon = xlsread('tesisexce.xlsx','B3:O3');
epsilon_norm = xlsread('tesisexce.xlsx','B31:O31');
epsilon_m_norm = xlsread('tesisexce.xlsx','B62:O62');
cartago_nN = xlsread('tesisexce.xlsx','B7:O7');
cartago_cN = xlsread('tesisexce.xlsx','B6:O6');
cartago_mayor = xlsread('tesisexce.xlsx','B11:O11');
cartago_desv =  xlsread('tesisexce.xlsx','B12:O12');
 
medellin_nN = xlsread('tesisexce.xlsx','B20:O20');
medellin_cN = xlsread('tesisexce.xlsx','B19:O19');
medellin_mayor = xlsread('tesisexce.xlsx','B24:O24');
medellin_desv =  xlsread('tesisexce.xlsx','B25:O25');
 
%Normalizado
cartago_nN_norm = xlsread('tesisexce.xlsx','B40:O40');
cartago_cN_norm = xlsread('tesisexce.xlsx','B39:O39');
cartago_mayor_norm = xlsread('tesisexce.xlsx','B44:O44');
cartago_desv_norm =  xlsread('tesisexce.xlsx','B45:O45');
 
medellin_nN_norm = xlsread('tesisexce.xlsx','B56:O56');
medellin_cN_norm = xlsread('tesisexce.xlsx','B55:O55');
medellin_mayor_norm = xlsread('tesisexce.xlsx','B60:O60');
medellin_desv_norm =  xlsread('tesisexce.xlsx','B61:O61');
 
 
%logaritmos
log_epsilon = log10(epsilon);
log_cartago_nN = log10(cartago_nN);
log_cartago_cN = log10(cartago_cN);
log_cartago_mayor = log10(cartago_mayor);
log_cartago_desv =  log10(cartago_desv);
 
log_medellin_nN = log10(medellin_nN);
log_medellin_cN = log10(medellin_cN);
log_medellin_mayor = log10(medellin_mayor);
log_medellin_desv =  log10(medellin_desv);
 
%n/N vs Epsilon
hold on
scatter(epsilon,cartago_nN,500,'.','b')
scatter(epsilon,medellin_nN,500,'.','r')
ylabel('n/N')
xlabel('Epsilon')
plot(epsilon,cartago_nN,'b')
plot(epsilon,medellin_nN,'r')
legend('Cartago','Medellin')
title('n/N vs Epsilon')
 
%Logn/N vs LogEpsilon
hold on
scatter(log_epsilon,log_cartago_nN,500,'.','b')
scatter(log_epsilon,log_medellin_nN,500,'.','r')
ylabel('Log n/N')
xlabel('Log Epsilon')
plot(log_epsilon,log_cartago_nN,'b')
plot(log_epsilon,log_medellin_nN,'r')
legend('Cartago','Medellin')
title('n/N vs Epsilon')
 
%n/N vs Epsilon Normalizado
hold on
scatter(epsilon_norm,cartago_nN_norm,500,'.','b')
scatter(epsilon_m_norm,medellin_nN_norm,500,'.','r')
ylabel('n/N Normalizado')
xlabel('Epsilon Normalizado')
plot(epsilon_norm,cartago_nN_norm,'b')
plot(epsilon_m_norm,medellin_nN_norm,'r')
legend('Cartago','Medellin')
title('n/N Normalizado vs Epsilon Normalizado')
 

%c vs Epsilon
hold on
scatter(epsilon,cartago_cN,500,'.','b')
scatter(epsilon,medellin_cN,500,'.','r')
ylabel('c')
xlabel('Epsilon')
plot(epsilon,cartago_cN,'b')
plot(epsilon,medellin_cN,'r')
legend('Cartago','Medellin')
title('c vs Epsilon')
 
%Logc vs LogEpsilon
hold on
scatter(log_epsilon,log_cartago_cN,500,'.','b')
scatter(log_epsilon,log_medellin_cN,500,'.','r')
ylabel('Log c')
xlabel('Log Epsilon')
plot(log_epsilon,log_cartago_cN,'b')
plot(log_epsilon,log_medellin_cN,'r')
legend('Cartago','Medellin')
title('c vs Epsilon')
 
%c vs Epsilon Normalizado
hold on
scatter(epsilon_norm,cartago_cN_norm,500,'.','b')
scatter(epsilon_m_norm,medellin_cN_norm,500,'.','r')
ylabel('c')
xlabel('Epsilon')
plot(epsilon_norm,cartago_cN_norm,'b')
plot(epsilon_m_norm,medellin_cN_norm,'r')
legend('Cartago','Medellin')
title('c vs Epsilon')
 
%CLuster mayor vs Epsilon
hold on
scatter(epsilon,cartago_mayor,500,'.','b')
scatter(epsilon,medellin_mayor,500,'.','r')
ylabel('Cluster Mayor')
xlabel('Epsilon')
plot(epsilon,cartago_mayor,'b')
plot(epsilon,medellin_mayor,'r')
legend('Cartago','Medellin')
title('Cluster Mayor vs Epsilon')
 
%LognCluster Mayor vs LogEpsilon
hold on
scatter(log_epsilon,log_cartago_mayor,500,'.','b')
scatter(log_epsilon,log_medellin_mayor,500,'.','r')
ylabel('Log Cluster Mayor')
xlabel('Log Epsilon')
plot(log_epsilon,log_cartago_mayor,'b')
plot(log_epsilon,log_medellin_mayor,'r')
legend('Cartago','Medellin')
title('Cluster Mayor vs Epsilon')
 
%CLuster mayor vs Epsilon Normalizado
hold on
scatter(epsilon_norm,cartago_mayor_norm,500,'.','b')
scatter(epsilon_m_norm,medellin_mayor_norm,500,'.','r')
ylabel('Cluster Mayor')
xlabel('Epsilon')
plot(epsilon_norm,cartago_mayor_norm,'b')
plot(epsilon_m_norm,medellin_mayor_norm,'r')
legend('Cartago','Medellin')
title('Cluster Mayor vs Epsilon')
 
%Desv vs Epsilon
hold on
scatter(epsilon,cartago_desv,500,'.','b')
scatter(epsilon,medellin_desv,500,'.','r')
ylabel('Desviaci√≥n Estandar')
xlabel('Epsilon')
plot(epsilon,cartago_desv,'b')
plot(epsilon,medellin_desv,'r')
legend('Cartago','Medellin')
title('Desviaci√≥n Estandar vs Epsilon')
 
%LogDesv vs logEpsilon
hold on
scatter(log_epsilon,log_cartago_desv,500,'.','b')
scatter(log_epsilon,log_medellin_desv,500,'.','r')
ylabel('Log Desviaci√≥n Estandar')
xlabel('Log Epsilon')
plot(log_epsilon,log_cartago_desv,'b')
plot(log_epsilon,log_medellin_desv,'r')
legend('Cartago','Medellin')
title('Desviaci√≥n Estandar vs Epsilon')
 
%Desv vs Epsilon Normalizada
hold on
scatter(epsilon_norm,cartago_desv_norm,500,'.','b')
scatter(epsilon_m_norm,medellin_desv_norm,500,'.','r')
ylabel('Desviaci√≥n Estandar')
xlabel('Epsilon')
plot(epsilon_norm,cartago_desv_norm,'b')
plot(epsilon_m_norm,medellin_desv_norm,'r')
legend('Cartago','Medellin')
title('Desviaci√≥n Estandar vs Epsilon')
 
%frecuencia cartago 
frecuencia_cartago = xlsread('frecuencia.xlsx','A2:A3380');
%tbl1=tabulate(frecuencia_cartago);
No_nodos_c = xlsread('frecuencia.xlsx','I2:I136689');
frecuencia_c = xlsread('frecuencia.xlsx','J2:J136689');
scatter(No_nodos_c,frecuencia_c,200,'.')
ylabel('Frecuencia')
xlabel('No Nodos')
xlim([0 4000])
%frecuencia sin 0
frecuencia_sin0_c = zeros([136688 1]);
s1=136688;
for i=1:s1
    if  frecuencia_c(i) <= 0
        frecuencia_sin0_c(i) = NaN;
    else
        frecuencia_sin0_c(i) = frecuencia_c(i);
    end
end
scatter(No_nodos_c,frecuencia_sin0_c,200,'.')
ylabel('Frecuencia')
xlabel('No Nodos')
xlim([0 4000])
 
%histogram sin 0
histogram(frecuencia_sin0_c,634)
xlim([0 400])
ylim([0 100])
 
%logaritmo
log_No_nodos_c = log10(No_nodos_c);
log_frecuencia_c = log10(frecuencia_sin0_c);
scatter(log_No_nodos_c,log_frecuencia_c,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
 
%frecuencia medellin
frecuencia_medellin = xlsread('frecuencia.xlsx','C2:C2249');
%tbl2=tabulate(frecuencia_medellin);
No_nodos_m = xlsread('frecuencia.xlsx','O2:O159231');
frecuencia_m = xlsread('frecuencia.xlsx','P2:P159231');
scatter(No_nodos_m,frecuencia_m,200,'.')
ylabel('Frecuencia')
xlabel('No Nodos')
xlim([0 4000])
%frecuencia sin 0
frecuencia_sin0_m = zeros([159230 1]);
s2=159230;
for i=1:s2
    if  frecuencia_m(i) <= 0
        frecuencia_sin0_m(i) = NaN;
    else
        frecuencia_sin0_m(i) = frecuencia_m(i);
    end
end
scatter(No_nodos_m,frecuencia_sin0_m,200,'.')
xlim([0 4000])
ylabel('Frecuencia')
xlabel('No Nodos')
 
%histogram sin 0
max(frecuencia_sin0_m)
histogram(frecuencia_sin0_m,309)
xlim([0 300])
ylim([0 100])
 
%logaritmo
log_No_nodos_m = log10(No_nodos_m);
log_frecuencia_m = log10(frecuencia_sin0_m);
scatter(log_No_nodos_m,log_frecuencia_m,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
 
%truncar valores
trunc1 = zeros([136688 1]);
for i = 1:136688
    if log_No_nodos_c(i)>2
        trunc1(i)= NaN;
    else
        trunc1(i)=log_No_nodos_c(i);
    end
end
 
trunc2 = zeros([159230 1]);
for i = 1:159230
    if log_No_nodos_m(i)>2
        trunc2(i)= NaN;
    else
        trunc2(i)=log_No_nodos_m(i);
    end
end
 
%Doble plot trucado
scatter(trunc1,log_frecuencia_c,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
title('Ley de Potencia')
legend('Cartago','Medellin')
hold on
scatter(trunc2,log_frecuencia_m,200,'.','red')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
title('Ley de Potencia')
legend('Medellin')
hold off
 
%fitting
scatter(trunc1,log_frecuencia_c,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
title('Ley de Potencia')
 
scatter(trunc2,log_frecuencia_m,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
title('Ley de Potencia')
 
%Doble plot
log_No_nodos_c = log10(No_nodos_c);
log_frecuencia_c = log10(frecuencia_sin0_c);
scatter(log_No_nodos_c,log_frecuencia_c,200,'.')
ylabel('Log Frecuencia')
xlabel('Log No Nodos')
title('Ley de Potencia')
hold on
scatter(log_No_nodos_m,log_frecuencia_m,200,'.','r')
legend('Cartago','Medellin')
hold off
