%%Anexo A. CÓDIGO CARTAGO

%% EXPLORANDO EL TIPO DE DATOS
 
% Data type
info = georasterinfo('TopoCartago.asc');
 
% Data reading and mapping 
[A,R,cmap] = readgeoraster('TopoCartago.asc','CoordinateSystemType','geographic', 'OutputType','double');
latlim = R.LatitudeLimits;
lonlim = R.LongitudeLimits;
usamap(latlim,lonlim)
geoshow(A,R,'DisplayType','surface')
demcmap(A)
view(3)
 
% Terrain data anlysis 
[aspect,slope,gradN,gradE] = gradientm(A,R);
%axesm('eqdcylin');
geoshow(slope,R,'DisplayType','surface')
%daspect([1 1 5])
title('Elevation Data')
colorbar
view(3)
 
 
%% Generación de la matriz An sin los valores de borde del raster -9999
%
s1 = 649;
s2 = 604;
An = zeros([649 604]);
 
for i = 1:s1
    for j = 1:s2
        if A(i,j) < 0
            An(i,j)= NaN;
        else 
            An(i,j)= A(i,j);
        end
    end
end
 
N = numel(An); %para el primer numero de nodos N de la matriz An
A2 = zeros([651 606]); 
A2(2:650,2:605)= An;
 
%Matrices dz_dx y dz_dy corresponden a las matrices de grandientes en la dirección NS Y WE , riserun en la matriz que relaciona los gradientes y slopedegres la matriz que contendrá cada valor de pendiente 
 
dz_dx = zeros([651 606]);
dz_dy=zeros([651 606]);
riserun=zeros([651 606]);
slopedegrees=zeros([651 606]);
 
%queen case 3FDWRD es el método de estimación por diferencias finitas que
%emplearemos en este programa
for i = 2:650
    for j = 2:605
       dz_dx(i,j)=((A2(i+1,j-1)+2*A2(i+1,j) + A2(i+1,j+1))-(A2(i-1,j-1) + 2*A2(i-1,j)+ A2(i-1,j+1)))/(8*30);
       dz_dy(i,j)=((A2(i-1,j+1)+2*A2(i,j+1) + A2(i+1,j+1))-(A2(i-1,j-1) + 2*A2(i,j-1)+ A2(i+1,j+1)))/(8*30);
       riserun(i,j)=sqrt((dz_dx(i,j))^2+(dz_dy(i,j))^2);
       slopedegrees(i,j)=atan(riserun(i,j))*57.29578;              
    end
end
 
%retornar a la dimension inicial la matriz slopedegres = sld2
sld = zeros([649 604]);
sld = A2(2:650,2:605);
 
sld2 = zeros([649 604]);
sld2 = slopedegrees(2:650,2:605);
 
 
 
% Filtering slopes 
%Se filtran los valores de pendiente mayores a 0 de la matriz sld2
 
s1 = 649;
s2 = 604;
filtred = zeros([649 604]); 
 
for i = 1:s1
    for j = 1:s2
        if sld2(i,j) > 0
            filtred(i,j)= sld2(i,j);
        else
            filtred(i,j) = NaN;
        end
    end
end
 
geoshow(filtred,R,'DisplayType','surface')
title('Elevation Data')
colorbar
 
%bordersout Se eliminan los bordes que tienen valores de pendiente mayores
%a 80 los cuales son errores de estimación en los bordes
filtred2 = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
       if  filtred(i,j)>80
           filtred2(i,j)= NaN;
             else
               filtred2(i,j) = filtred(i,j);
          end
    end
end
 
% Reclassify epsilon Se reclasifica la matriz filtred2 con los valores de
% epsilon para filtro de pendiente
filtred3 = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
       if  filtred2(i,j) < 0 %insert the same epsilon%
           filtred3(i,j)= 1;
             else
               filtred3(i,j) = filtred2(i,j);
          end
    end
end
 
filtred4 = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
       if  filtred3(i,j)> 0 %insert the same epsilon%
           filtred4(i,j)= 2;
             else
               filtred4(i,j) = filtred3(i,j);
          end
    end
end
 
filtred5 = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
        if isnan(filtred4(i,j))
            filtred5(i,j)= 0;
        else
            filtred5(i,j) = filtred4(i,j);
        end
    end
end
 
 
geoshow(filtred5,R,'DisplayType','surface') %save plot for the epsilon
title('Slope Data')
colorbar
surf(filtred5)
 
%Binary Se binariza la matriz en valores entre 0  y 1 
binary = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
        if filtred5(i,j) ~= 2
            binary(i,j)= 0;
        else
            binary(i,j) = filtred5(i,j);
        end
    end
end
 
%NaN y on
F = zeros([649 604]);
for i = 1:s1
    for j = 1:s2
        if binary(i,j) > 1
            F(i,j)= A(i,j);
        else
            F(i,j) = NaN;
        end
    end
end
 
%Nan sum para obtener numero total de nodos n inestables 
TF = isnan(F); %para el segundo n
S = sum(TF); 
P = sum(S); 
n = N - P;
 
geoshow(F,R,'DisplayType','surface')%save the plot slope
title('Slope Data')
colorbar 
surf(F) %save the plot
 
%contador de cluster guardar PixelIdxList
BW = zeros([649 604]);
BW = binary ;
CC = bwconncomp(BW);
%Transponer y concatenar PixelIdxList
B = transpose(PixelIdxList);
L = cell2mat(B);