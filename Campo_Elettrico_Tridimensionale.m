%% 2) Campo elettrico generato da una carica puntiforme posizionata nell'origine 
%(andamento del modulo nel piano x-y per z fissato)

epsilon_0=8.85e-12; %[F/m]
Q1=2e-9; %[C]
x=linspace(-1e-2,1e-2,101); %[m]  ---> m sta per metri
y=linspace(-1e-2,1e-2,101); %[m]
z=1e-2; %[m]

[X,Y]=meshgrid(x,y); %meshgrid(x, y); viene utilizzato per generare delle griglie 2D di coordinate
%basate sui vettori x e y.

Ex=(1/(4*pi*epsilon_0))*(Q1./((X.^2+Y.^2+z.^2).^(3/2)) ).*X; %[V/m]
Ey=(1/(4*pi*epsilon_0))*(Q1./((X.^2+Y.^2+z.^2).^(3/2)) ).*Y; %[V/m]
Ez=(1/(4*pi*epsilon_0))*(Q1./((X.^2+Y.^2+z.^2).^(3/2)) ).*z; %[V/m]

E=sqrt(Ex.^2+Ey.^2+Ez.^2); %[V/m]  ---> per trovare il modulo di E

% figure
% surf(X,Y,Ex,'FaceAlpha',1,'EdgeColor','interp','FaceColor','interp')
% % axis equal
% xlabel('x [m]')
% ylabel('y [m]')
% zlabel('Ex [V/m]')
% 
% figure
% surf(X,Y,Ey,'FaceAlpha',1,'EdgeColor','interp','FaceColor','interp')
% % axis equal
% xlabel('x [m]')
% ylabel('y [m]')
% zlabel('Ey [V/m]')
% 
% 
% figure
% surf(X,Y,Ez,'FaceAlpha',1,'EdgeColor','interp','FaceColor','interp')
% % axis equal
% xlabel('x [m]')
% ylabel('y [m]')
% zlabel('Ez [V/m]')


figure %figure serve per creare una nuova finestra grafica
surf(X,Y,E,'FaceAlpha',1,'EdgeColor','interp','FaceColor','interp') %Questo comando crea un grafico di
% superficie 3D utilizzando le matrici di coordinate X, Y e i valori di altezza E
%'FaceAlpha', 1: Imposta l'opacità della superficie. Il valore 1 significa che la superficie sarà 
% completamente opaca. I valori vanno da 0 (trasparente) a 1 (opaco)
%'EdgeColor', 'interp': il colore dei bordi verrà sfumato in base ai colori delle facce adiacenti
%'FaceColor', 'interp': i colori delle facce saranno sfumati in base ai valori di E

% axis equal ---> Questo comando imposta le proporzioni degli assi in modo che siano uguali
xlabel('x [m]')
ylabel('y [m]')
zlabel('|E| [V/m]')



figure;imagesc(x,y,E) %imagesc visualizza una matrice E come un'immagine
axis equal


figure;contourf(x,y,E,10) % A differenza del comando contour, che disegna solo le linee di contorno, 
%contourf riempie gli spazi tra i contorni con colori
axis equal


