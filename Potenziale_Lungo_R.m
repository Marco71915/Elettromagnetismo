%% Potenziale prodotto da una carica posta nell'origine del sistema di riferimento (osservazione lungo R) 

epsilon_0 = 8.85e-12; %[F/m]

%inserimento interattivo del valore della quantità di carica
prompt = 'Inserire il valore della quantità di carica: Q =';

Q = input(prompt); % [C]

R = linspace(1e-3,1e-2,1001); %[m]

V = (1/(4*pi*epsilon_0))*(Q./R);

figure; %crea una nuova finestra grafica
plot(R,V); %crea un grafico bidimensionale (con R lungo l'asse x e V lungo l'asse y)
grid; %crea una grigia
grid minor %crea una griglia ancora più sottile
xlabel('R [m]')
ylabel('V(R) [V]')