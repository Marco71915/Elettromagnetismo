%% Differenza di potenziale dovuto ad una carica posta in un punto qualsiasi dello spazio
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


%coordinate del punto iniziale A
prompt = 'Inserire il valore della coordinata x relativa al punto iniziale x_A = ';
x_A = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata y relativa al punto iniziale y_A = ';
y_A = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata z relativa al punto iniziale z_A = ';
z_A = input(prompt); % [m]


%coordinate del punto finale B
prompt = 'Inserire il valore della coordinata x relativa al punto finale x_B = ';
x_B = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata y relativa al punto finale y_B = ';
y_B = input(prompt); % [m]
prompt = 'Inserire il valore della coordinata z relativa al punto finale z_B = ';
z_B = input(prompt); % [m]

%distanza tra la posizione della carica e la posizione del punto A
R_A = sqrt( (x_Q-x_A)^2 + (y_Q-y_A)^2 + (z_Q-z_A)^2 );

%distanza tra la posizione della carica e la posizione del punto B
R_B = sqrt( (x_Q-x_B)^2 + (y_Q-y_B)^2 + (z_Q-z_B)^2 );

% Differenza tra il potenziale nel punto A e il punto potenziale nel punto B
V_AB = (Q/(4*pi*epsilon_0))*( (1./R_A)-(1./R_B))
