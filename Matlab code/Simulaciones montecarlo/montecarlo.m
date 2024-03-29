ciclos = 10000;
c = zeros(ciclos,1);
phi = zeros(ciclos,1);
gamma = zeros(ciclos,1);
Nq = zeros(ciclos,1);
Nc = zeros(ciclos,1);
Ngamma = zeros(ciclos,1);
Sc = zeros(ciclos,1);
Sq = zeros(ciclos,1);
Sgamma = 0.9;
Iq = zeros(ciclos,1);
Igamma = zeros(ciclos,1);
Ic = zeros(ciclos,1);
Dq = zeros(ciclos,1);
q = zeros(ciclos,1);
qult = zeros(ciclos,1);
FS = zeros(ciclos,1);
Df = 0.5;
B = 0.5; 
L = 3; %Cambiar L
m = (2+(L/B))/(1+(L/B));
HB = 0;
HL = 500;
V = 1100;
k = 1;
Dc = 1+0.4*k;
Dgamma = 1;
qadm = 100;
for i=1:1:ciclos
    c(i) = normrnd(5.23,2.09);
    phi(i) = normrnd(deg2rad(22.54),deg2rad(6.16));
    gamma(i) = normrnd(19.17,0.9184);
    Nq(i) = exp(1)^(pi*tan(phi(i)))*(tan(deg2rad(45)+(phi(i)/2)))^2;
    Nc(i) = (Nq(i)-1)*cot(phi(i));
    Ngamma(i) = 2*(Nq(i)+1)*tan(phi(i));
    Sc(i) = 1+(Nq(i)/Nc(i))*(B/L);
    Sq(i) = 1+(B/L)*tan(phi(i));
    Iq(i) = (1-(HL/(V+B*L*0.6*c(i)*cot(phi(i)))))^m;
    Igamma(i) = (1-(HL/(V+0.6*c(i)*cot(phi(i)))))^(m+1);
    Ic(i) = Iq(i)-((1-Iq(i))/(Nq(i)-1));
    Dq(i) = 1+(2*tan(phi(i)))*(((1-sin(phi(i)))^2)*k);
    q(i) = gamma(i)*Df;
    qult(i) = (c(i)*Nc(i)*Sc(i)*Dc*Ic(i))+(q(i)*Nq(i)*Sq(i)*Dq(i)*Iq(i))+(0.5*gamma(i)*B*Ngamma(i)*Sgamma*Igamma(i));
    FS(i) = qult(i)/qadm;
end
hold on
pFS = FS/ciclos;
histograma = histogram(FS);
histograma.Normalization = 'pdf';
ylabel('Frecuencia Relativa')
xlabel('Factor de seguridad')
xlim([-4 8])
media = mean(FS);
destand = std(FS);
x = -5:.1:10;
y = pdf('Normal',x,media,destand);
pdf = plot(x,y);
legend('histograma','pdf')
hold off
maximo = max(y);

%plot cdf
z = cdf('Normal',x,media,destand);
plot(x,z)