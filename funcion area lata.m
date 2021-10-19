% Title.          Área mínima lata de chocolate 
% Description     es un código para el área de una lata de 400g en su interior 
% Author           Adriana Trejo Patricio, jafet Martinez Meza ,
% Date.           202123653, 202123172
% Version.        1.1
% Usage 
% Notes.         Aprende bien a hace funciones 
% limpiar variables
clear
% Ejemplo mínimo de material para envase cilindrico
% Rango de 1..16 en i = 1
r=1:1:16;
% Valor de la funcion
ar=@(r) (pi()*(r.^2)) + (80./(r));
% función plotear
y = (pi()*(r.^2)) + (80./(r));
%función para determinar valor mínino
resr = fminbnd(ar,1,16);
%Dibujar x.y
plot(r, y)
%titulo 
title(['area min r =' num2str(resr)] );
% etiqueta para x
xlabel(['min r =' num2str(resr)]);
% etiquta para y 
ylabel(['min y = ' num2str( ar(resr) )] );
