%% Potenziale prodotto da una carica posta in punto qualsiasi dello spazio (osservazione nel piano x-y per z fissato) 

epsilon_0 = 8.85e-12; %[F/m]

%inserimento interattivo del valore della quantità di carica
prompt = 'Inserire il valore della quantità di carica: Q = ';
Q = input(prompt); % [C]

%coordinate relative alla posizione della carica Q
prompt = 'Inserire il valore della coordinata x relativa alla carica x_Q = ';
x_Q = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata y relativa alla carica y_Q = ';
y_Q = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata z relativa alla carica z_Q = ';
z_Q = input(prompt); % [m]

x = linspace(-1e-2,1e-2,101); %[m]
y = linspace(-1e-2,1e-2,101); %[m]
z = 1e-2; %[m]
[X,Y] = meshgrid(x,y);
Z = z;

x = linspace(-1e-2,1e-2,101); %[m]
y = linspace(-1e-2,1e-2,101); %[m]
z = 1e-2; %[m]
[X,Y] = meshgrid(x,y);
Z = z;

R = sqrt( (x_Q-X).^2 + (y_Q-Y).^2 + (z_Q-Z).^2 );

%calcolo del potenziale nel piano x-y per z fissato
V = (Q/(4*pi*epsilon_0))*(1./R);

figure;
surf(X,Y,V)
xlabel('x [m]')
ylabel('y [m]')
zlabel('V(x,y) [V]')

