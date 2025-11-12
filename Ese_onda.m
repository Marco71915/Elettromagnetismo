A = input('Ampiezza:');
f = input('Frequenza [Hz]: ');
omega = 2*pi*f;
T = 2*pi/omega;

epso = 8.854e-12;
muo = 4*pi*1e-7;
epsr = input('costante dielettrica mezzo:');
mur = -1;
k = omega*sqrt(epso*epsr*muo*mur);
lambda = 2*pi/k;

t = 0: T/30:3*T;

z = 0: lambda/30 :5*lambda;

for intdt = 1 :length(t),
    for indz = 1 :length(z),
        u(indt, indz) = A *cos(omega*t(indt)-k*z(indz));
    end;
end;