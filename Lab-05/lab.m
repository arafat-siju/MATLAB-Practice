clc;
syms n z a w


f = sin(w*n);


Z_tranz = ztrans(f) % computes the z transform
SZ_tranz = simplify(Z_tranz)
pretty(SZ_tranz)
f = iztrans(Z_tranz); % computes inverse z transform
pretty(ans)