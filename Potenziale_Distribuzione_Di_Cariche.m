%% Potenziale prodotto da una distribuzione discreta di cariche 
clear
clc
close all

epsilon_0 = 8.85e-12; %[F/m]
prompt = 'Inserire il valore della costante dielettrica relativa: epsilon_r = ';
epsilon_r = input(prompt); 

epsilon = epsilon_r * epsilon_0; 


% definizione del piano di osservazione
x = linspace(-50e-2,50e-2,101); %[m]
y = linspace(-50e-2,50e-2,101); %[m]
z = 1e-3; %[m]
[X,Y] = meshgrid(x,y);
Z = z;

% definizione del numero di cariche
prompt = 'Inserire il numero di cariche: N = ';
N = input(prompt); 

% definizione dei valori delle quantità di cariche e le relative posizioni
Q = 1e-9*ones(1,N);%rand(1,N)*1e-9 + 1e-9;
for n = 1 : N
    indice_x = floor(1+(101-1)*rand(1,1));
    indice_y = floor(1+(101-1)*rand(1,1));
    x_Q(1,n) = x(indice_x);
    y_Q(1,n) = y(indice_y);
end
% x_Q = rand(1,N)*50e-2 - 25e-2;
% y_Q = rand(1,N)*50e-2 - 25e-2;
z_Q = 0;
figure;plot(x_Q*1e2,y_Q*1e2,'o')
xlabel('x [cm]')
ylabel('y [cm]')

V = 0;
for n = 1: N
    R = sqrt( (x_Q(1,n)-X).^2 + (y_Q(1,n)-Y).^2 + (z_Q-Z).^2 );
    V = V + (Q(1,n)/(4*pi*epsilon))*(1./R);
%     figure;surf(X,Y,V)
end

figure;
surf(X*1e2,Y*1e2,V)
xlabel('x [cm]')
ylabel('y [cm]')
zlabel('Potenziale [V]')