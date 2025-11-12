%% 1) Campo elettrico generato da una carica puntiforme posizionata nell'origine 
% (andamento del modulo lungo R)

epsilon_0=8.85e-12; %[F/m]
Q1=2e-9; %[C]
R=linspace(0.5e-3,1e-2,1001); %[m] con questo comando viene creato un vettore di 1001 punti tra 0.5e-3 e 1e-2

E=(1/(4*pi*epsilon_0))*(Q1./(R.^2)); %[V/m]

figure;plot(R,E) %figure serve per creare una nuova finestra grafica
%plot crea un grafico bidimensionale con R sull'asse orizzontale e E
%sull'asse verticale
xlabel('R [m]') %aggiunge un'etichetta all'asse x
ylabel('|E| [V/m]') %aggiunge un'etichetta all'asse y


