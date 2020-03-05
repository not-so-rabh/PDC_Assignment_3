G0 = tf([10],[0 1]);
G1 = tf([1],[0 1],'InputDelay',3);
G2 = tf([1 - 4],[0 1]);
G3 = tf([1],[1 2]);
G4 = tf([1],[1 5]);
G = G0*G1*G2*G3*G4 
bode(G4);
bode(G3);
bode(G2);
bode(G1);
bode(G0);
bode(G)
impulseplot(G);
stepplot(G)