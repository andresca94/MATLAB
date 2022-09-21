%Simulaciones de MonteCarlo 
Num_sim = [10 100 500 1000 10000];
%L = 1
Max10 = xlsread('Plots.xlsx','C3:G3'); 
Media10 = xlsread('Plots.xlsx','C2:G2');
Desv10 = xlsread('Plots.xlsx','C4:G4');
%L = 1.5
Max15 = xlsread('Plots.xlsx','C7:G7'); 
Media15 = xlsread('Plots.xlsx','C6:G6');
Desv15 = xlsread('Plots.xlsx','C8:G8');
%L = 2.0
Max20 = xlsread('Plots.xlsx','C11:G11'); 
Media20 = xlsread('Plots.xlsx','C10:G10');
Desv20 = xlsread('Plots.xlsx','C12:G12');
%L = 2.5
Max25 = xlsread('Plots.xlsx','C15:G15'); 
Media25 = xlsread('Plots.xlsx','C14:G14');
Desv25 = xlsread('Plots.xlsx','C16:G16');
%L = 3
Max30 = xlsread('Plots.xlsx','C19:G19'); 
Media30 = xlsread('Plots.xlsx','C18:G18');
Desv30 = xlsread('Plots.xlsx','C20:G20');

%Plot Max
hold on
scatter(Num_sim,Max10)
ylabel('Probabilidad')
xlabel('Numero de Simulaciones')
scatter(Num_sim,Max15)
scatter(Num_sim,Max20)
scatter(Num_sim,Max25)
scatter(Num_sim,Max30)
legend('Max10','Max15','Max20','Max25','Max30')
title('P(FSmax) vs Numero de Simulaciones')
xlim([0 10000])
hold off

%Plot Media
hold on
scatter(Num_sim,Media10)
ylabel('Media')
xlabel('Numero de Simulaciones')
scatter(Num_sim,Media15)
scatter(Num_sim,Media20)
scatter(Num_sim,Media25)
scatter(Num_sim,Media30)
legend('Media10','Media15','Media20','Media25','Media30')
title('Media vs Numero de Simulaciones')
xlim([0 10000])
hold off

%Plot Desviacion
hold on
scatter(Num_sim,Desv10)
ylabel('Desviacion Estandar')
xlabel('Numero de Simulaciones')
scatter(Num_sim,Desv15)
scatter(Num_sim,Desv20)
scatter(Num_sim,Desv25)
scatter(Num_sim,Desv30)
legend('Desv10','Desv15','Desv20','Desv25','Desv30')
title('Desviación estándar vs Numero de Simulaciones')
xlim([0 10000])
hold off
%PDF Y CDF

%L = 1
y10 = xlsread('Montecarlo.xlsx','B4:EV4');
y100 = xlsread('Montecarlo.xlsx','B22:EV22');
y500 = xlsread('Montecarlo.xlsx','B40:EV40');
y1000 = xlsread('Montecarlo.xlsx','B58:EV58');
y10000 = xlsread('Montecarlo.xlsx','B76:EV76');
x = -5:.1:10;
hold on
plot(x,y10)
ylabel('P(FS)')
xlabel('FS')
plot(x,y100)
plot(x,y500)
plot(x,y1000)
plot(x,y10000)
legend('y10','y100','y500','y1000','y10000')
title('L = 1.0')

z10 = xlsread('Montecarlo.xlsx','B5:EV5');
z100 = xlsread('Montecarlo.xlsx','B23:EV23');
z500 = xlsread('Montecarlo.xlsx','B41:EV41');
z1000 = xlsread('Montecarlo.xlsx','B59:EV59');
z10000 = xlsread('Montecarlo.xlsx','B77:EV77');
x = -5:.1:10;
hold on
plot(x,z10)
ylabel('P(FS)')
xlabel('FS')
plot(x,z100)
plot(x,z500)
plot(x,z1000)
plot(x,z10000)
legend('z10','z100','z500','z1000','z10000')
title('L = 1.0')

%L = 1.5
y10 = xlsread('Montecarlo.xlsx','B7:EV7');
y100 = xlsread('Montecarlo.xlsx','B25:EV25');
y500 = xlsread('Montecarlo.xlsx','B43:EV43');
y1000 = xlsread('Montecarlo.xlsx','B61:EV61');
y10000 = xlsread('Montecarlo.xlsx','B79:EV79');
x = -5:.1:10;
hold on
plot(x,y10)
ylabel('P(FS)')
xlabel('FS')
plot(x,y100)
plot(x,y500)
plot(x,y1000)
plot(x,y10000)
legend('y10','y100','y500','y1000','y10000')
title('L = 1.5')

z10 = xlsread('Montecarlo.xlsx','B8:EV8');
z100 = xlsread('Montecarlo.xlsx','B26:EV26');
z500 = xlsread('Montecarlo.xlsx','B44:EV44');
z1000 = xlsread('Montecarlo.xlsx','B62:EV62');
z10000 = xlsread('Montecarlo.xlsx','B80:EV80');
x = -5:.1:10;
hold on
plot(x,z10)
ylabel('P(FS)')
xlabel('FS')
plot(x,z100)
plot(x,z500)
plot(x,z1000)
plot(x,z10000)
legend('z10','z100','z500','z1000','z10000')
title('L = 1.5')

%L = 2.0
y10 = xlsread('Montecarlo.xlsx','B10:EV10');
y100 = xlsread('Montecarlo.xlsx','B28:EV28');
y500 = xlsread('Montecarlo.xlsx','B46:EV46');
y1000 = xlsread('Montecarlo.xlsx','B64:EV64');
y10000 = xlsread('Montecarlo.xlsx','B82:EV82');
x = -5:.1:10;
hold on
plot(x,y10)
ylabel('P(FS)')
xlabel('FS')
plot(x,y100)
plot(x,y500)
plot(x,y1000)
plot(x,y10000)
legend('y10','y100','y500','y1000','y10000')
title('L = 2.0')
z10 = xlsread('Montecarlo.xlsx','B11:EV11');
z100 = xlsread('Montecarlo.xlsx','B29:EV29');
z500 = xlsread('Montecarlo.xlsx','B47:EV47');
z1000 = xlsread('Montecarlo.xlsx','B65:EV65');
z10000 = xlsread('Montecarlo.xlsx','B83:EV83');
x = -5:.1:10;
hold on
plot(x,z10)
ylabel('P(FS)')
xlabel('FS')
plot(x,z100)
plot(x,z500)
plot(x,z1000)
plot(x,z10000)
legend('z10','z100','z500','z1000','z10000')
title('L = 2.0')

%L = 2.5
y10 = xlsread('Montecarlo.xlsx','B13:EV13');
y100 = xlsread('Montecarlo.xlsx','B31:EV31');
y500 = xlsread('Montecarlo.xlsx','B49:EV49');
y1000 = xlsread('Montecarlo.xlsx','B67:EV67');
y10000 = xlsread('Montecarlo.xlsx','B85:EV85');
x = -5:.1:10;
hold on
plot(x,y10)
ylabel('P(FS)')
xlabel('FS')
plot(x,y100)
plot(x,y500)
plot(x,y1000)
plot(x,y10000)
legend('y10','y100','y500','y1000','y10000')
title('L = 2.5')
z10 = xlsread('Montecarlo.xlsx','B14:EV14');
z100 = xlsread('Montecarlo.xlsx','B32:EV32');
z500 = xlsread('Montecarlo.xlsx','B50:EV50');
z1000 = xlsread('Montecarlo.xlsx','B68:EV68');
z10000 = xlsread('Montecarlo.xlsx','B86:EV86');
x = -5:.1:10;
hold on
plot(x,z10)
ylabel('P(FS)')
xlabel('FS')
plot(x,z100)
plot(x,z500)
plot(x,z1000)
plot(x,z10000)
legend('z10','z100','z500','z1000','z10000')
title('L = 2.5')

%L = 3
y10 = xlsread('Montecarlo.xlsx','B16:EV16');
y100 = xlsread('Montecarlo.xlsx','B34:EV34');
y500 = xlsread('Montecarlo.xlsx','B52:EV52');
y1000 = xlsread('Montecarlo.xlsx','B70:EV70');
y10000 = xlsread('Montecarlo.xlsx','B88:EV88');
x = -5:.1:10;
hold on
plot(x,y10)
ylabel('P(FS)')
xlabel('FS')
plot(x,y100)
plot(x,y500)
plot(x,y1000)
plot(x,y10000)
legend('y10','y100','y500','y1000','y10000')
title('L = 3.0')
z10 = xlsread('Montecarlo.xlsx','B17:EV17');
z100 = xlsread('Montecarlo.xlsx','B35:EV35');
z500 = xlsread('Montecarlo.xlsx','B53:EV53');
z1000 = xlsread('Montecarlo.xlsx','B71:EV71');
z10000 = xlsread('Montecarlo.xlsx','B89:EV89');
x = -5:.1:10;
hold on
plot(x,z10)
ylabel('P(FS)')
xlabel('FS')
plot(x,z100)
plot(x,z500)
plot(x,z1000)
plot(x,z10000)
legend('z10','z100','z500','z1000','z10000')
title('L = 3.0')