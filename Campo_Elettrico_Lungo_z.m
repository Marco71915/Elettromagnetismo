%% 3) Campo elettrico generato da una carica puntiforme posizionata nell'origine 
% (andamento del modulo lungo l'asse z)

epsilon_0=8.85e-12; %[F/m]
Q1=2e-9; %[C]
x=0; %[m]
y=0; %[m]
z=linspace(1e-3,1e-2,1001); %[m]


x_pos=0; %[m]
y_pos=0; %[m]
z_pos=1e-4; %[m]


Ex=(1/(4*pi*epsilon_0))*(Q1./( ((x-x_pos).^2+(y-y_pos).^2+(z-z_pos).^2).^(3/2) )  ).*(x-x_pos); %[V/m]
Ey=(1/(4*pi*epsilon_0))*(Q1./( ((x-x_pos).^2+(y-y_pos).^2+(z-z_pos).^2).^(3/2) )  ).*(y-y_pos); %[V/m]
Ez=(1/(4*pi*epsilon_0))*(Q1./( ((x-x_pos).^2+(y-y_pos).^2+(z-z_pos).^2).^(3/2) )  ).*(z-z_pos); %[V/m]

E=sqrt(Ex.^2+Ey.^2+Ez.^2);
figure;plot(z,E)
xlabel('z [m]')
ylabel('|E| [V/m]')